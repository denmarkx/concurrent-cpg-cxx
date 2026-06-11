#include "components/ControlFlowGraph.h"
#include "concurrency/ThreadNode.h"
#include "graph/BranchNode.h"
#include "graph/CallNode.h"
#include "graph/FunctionNode.h"
#include "graph/GraphManager.h"
#include "graph/Node.h"
#include "graph/PhiNode.h"

#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/CFG.h"
#include <string>

ControlFlowGraph::ControlFlowGraph() { _graph = this; };

void ControlFlowGraph::parseModule(const Module& module) {
    GraphManager *graph = GraphManager::get();

    for (FunctionNode *funcNode : graph->getAllNodesOf<FunctionNode>()) {
        if (funcNode->isDeclaration()) continue;

        // Connect F -> start block:
        BasicBlockNode *startBlockNode = funcNode->getStartBlock();
        assert(startBlockNode != nullptr);

        _edges[funcNode].push_back( CFGEdge { funcNode, startBlockNode, CFGEdgeType::DEFAULT } );

        for (BasicBlockNode *bb : funcNode->getBlocks()) {
            Node *prevNode = bb;

            for (Node *instr : bb->getInstructions()) {
                errs() << *instr->getValue() << "\n";
                switch (instr->getType()) {
                    // Call / Invoke: handle regular call path
                    //  Invoke: also handles path to unwind block.
                    case NodeType::CALL_INVOKE: {
                        CallNode *node = dynamic_cast<CallNode*>(instr);
                        assert(node != nullptr);

                        for (Node *candidateFunc : node->getCalledFunctions()) {
                            if (candidateFunc)
                                _edges[node].push_back( CFGEdge { node, candidateFunc, CFGEdgeType::CALL } );
                        }

                        Node *invokeDefault = node->getInvokeDefault();
                        if (invokeDefault)
                            _edges[node].push_back( CFGEdge { node, invokeDefault, CFGEdgeType::DEFAULT });

                        // Handle unwind path:
                        Node *invokeUnwind = node->getInvokeUnwind();
                        if (invokeUnwind)
                            _edges[node].push_back( CFGEdge { node, invokeUnwind, CFGEdgeType::UNWIND } );
                        break;
                    }

                    case NodeType::THREAD_SPAWN: {
                        if (ThreadNode *tNode = dynamic_cast<ThreadNode*>(instr))
                            _edges[instr].push_back( CFGEdge { instr, tNode->getRoutine(), CFGEdgeType::CALL } ); 
                        break;
                    }

                    // Conditional br instructions: handle path to true and false blocks.
                    case NodeType::BR: {
                        BranchNode *node = dynamic_cast<BranchNode*>(instr);
                        assert(node != nullptr);

                        if (node->isConditional()) {
                            Node *trueNode = node->getTruePath();
                            assert(trueNode != nullptr);

                            Node *falseNode = node->getFalsePath();
                            assert(falseNode != nullptr);

                            // Connect to both nodes:
                            _edges[node].push_back( CFGEdge { node, trueNode, CFGEdgeType::COND_TRUE } );
                            _edges[node].push_back( CFGEdge { node, falseNode, CFGEdgeType::COND_FALSE } );
                        } else {
                            Node *uncondPath = node->getUnconditionalPath();
                            assert(uncondPath != nullptr);

                            _edges[node].push_back( CFGEdge { node, uncondPath, CFGEdgeType::DEFAULT } );
                        }
                        break;
                    }

                    case NodeType::PHI_NODE: {
                        PhiNode *node = dynamic_cast<PhiNode*>(instr);
                        assert(node != nullptr);

                        for (Node *candidateNode : node->getCandidateBlocks()) {
                            assert(candidateNode != nullptr);
                            _edges[node].push_back( CFGEdge { node, candidateNode, CFGEdgeType::PHI_CANDIDATE });
                        }
                        break;
                    }
                    default: break;
                }

                // If our previous node was a call, then we switch that to be the called function's terminators:
                // TODO: the determination of function terminators should be delegated to FunctionNode and not here
                if (prevNode) {
                    if (CallNode *callNode = dynamic_cast<CallNode*>(prevNode)) {
                        if (callNode->getCalledFunction()) {
                            FunctionNode *fNode = dynamic_cast<FunctionNode*>(callNode->getCalledFunctionNode());
                            if (fNode && fNode->getTerminator())
                                prevNode = fNode->getTerminator();
                        }
                    }
                }

                if (prevNode && instr)
                    _edges[prevNode].push_back( CFGEdge { prevNode, instr, CFGEdgeType::DEFAULT });

                if (instr)
                    prevNode = instr;
            }
        }
    }
}

EdgeInfo ControlFlowGraph::getProcessedEdges() const {
    EdgeInfo info;

    for (auto &[root, children] : _edges) {
        for (const CFGEdge &edge : children) {
            info.push_back({
                std::to_string(root->getId()),
                "CFG",
                std::to_string(edge.end->getId()),
                {
                    {"type", to_string(edge.type)},
                }
            });
        }
    }
    return info;
}

/*
 * Interprocedural DFG from parameter to end of CFG.
 * TODO: will probably loop for a cycle
*/
std::vector<Node*> ControlFlowGraph::traverse(Node* start, bool followCalls) {
    std::vector<Node*> s{start};
    std::queue<Node*> q;
    q.push(start);

    while (!q.empty()) {
        Node *n = q.front();
        q.pop();
        for (auto edge : _edges[n]) {

            // TODO: this doesnt belong in the primary trav func:
            // Thread routines are done separately.
            if (ThreadNode *tn = dynamic_cast<ThreadNode*>(n))
                if (edge.end == tn->getRoutine()) continue;
            if (!followCalls && edge.type == CALL) continue;

            if (std::find(s.begin(), s.end(), edge.end) != s.end()) continue;

            s.push_back(edge.end);
            q.push(edge.end);
        }
    }
    return s;
}

ControlFlowGraph* ControlFlowGraph::get() { return _graph; }
ControlFlowGraph* ControlFlowGraph::_graph = nullptr;
