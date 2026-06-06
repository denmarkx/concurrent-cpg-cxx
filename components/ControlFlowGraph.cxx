#include "components/ControlFlowGraph.h"
#include "concurrency/ThreadNode.h"
#include "graph/CallNode.h"
#include "graph/FunctionNode.h"
#include "graph/GraphManager.h"
#include "graph/Node.h"

#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/CFG.h"
#include <string>

ControlFlowGraph::ControlFlowGraph() { _graph = this; };

// TODO: i dont know why this doesnt flow through nodes instead of doing this raw instruction shit
void ControlFlowGraph::parseModule(const Module& module) {
    for (const Function &f : module) {
        if (f.isIntrinsic()) continue;

        FunctionNode *funcNode = GraphManager::get()->getNode<FunctionNode>(&f);
        assert(funcNode != nullptr);

        // Connect F -> start block:
        auto startBlock = f.begin();
        if (startBlock != f.end()) {
            Node *startBlockNode = GraphManager::get()->getNode(&*startBlock);
            assert (startBlockNode != nullptr);

            _edges[funcNode].push_back( CFGEdge { funcNode, startBlockNode, CFGEdgeType::DEFAULT } );

        }

        for (const BasicBlock &bb : f) {
            // TODO: need to read more into how atomic instrs actually work in llvm
            Node *prevNode = GraphManager::get()->getNode(&bb);

            for (const Instruction &instr : bb) {
                switch (instr.getOpcode()) {

                    // Call / Invoke: handle regular call path
                    //  Invoke: also handles path to unwind block.
                    case Instruction::Call:
                    case Instruction::Invoke: {
                        const CallBase *call = dyn_cast<CallBase>(&instr);
                        assert(call != nullptr);

                        Node *node = GraphManager::get()->getNode(call);
                        if (!node || !call->getCalledFunction()) break;

                        Node *toNode = GraphManager::get()->getNode(call->getCalledFunction());
                        assert(toNode != nullptr);

                        // TODO: see top TODO because this is shit
                        if (ThreadNode *tNode = dynamic_cast<ThreadNode*>(node)) {
                            _edges[node].push_back( CFGEdge { node, tNode->getRoutine(), CFGEdgeType::CALL } ); 
                            break;
                        }

                        if (!call->getCalledFunction()) break; // TODO
                        if (call->getCalledFunction()->isIntrinsic() || call->isInlineAsm()) break;

                        _edges[node].push_back( CFGEdge { node, toNode, CFGEdgeType::CALL } );

                        // Handle unwind path:
                        if (const InvokeInst *invoke = dyn_cast<InvokeInst>(&instr)) {
                            Node *unwindNode = GraphManager::get()->getNode(invoke->getUnwindDest());
                            if (unwindNode)
                                _edges[node].push_back( CFGEdge { node, unwindNode, CFGEdgeType::UNWIND } );
                        }
                        break;
                    }

                    // Conditional br instructions: handle path to true and false blocks.
                    case Instruction::Br: {
                        const BranchInst *br = dyn_cast<BranchInst>(&instr);
                        Node *node = GraphManager::get()->getNode(br);

                        if (node == nullptr) break;
                        if (br->isUnconditional()) break;

                        Node *trueNode = GraphManager::get()->getNode(br->getOperand(1));
                        assert(trueNode != nullptr);

                        Node *falseNode = GraphManager::get()->getNode(br->getOperand(2));
                        assert(falseNode != nullptr);

                        // Connect to both nodes:
                        _edges[node].push_back( CFGEdge { node, trueNode, CFGEdgeType::COND_TRUE } );
                        _edges[node].push_back( CFGEdge { node, falseNode, CFGEdgeType::COND_FALSE } );
                        break;
                    }

                    // TODO: this doesnt actually belong here anymore since its non-cfg
                    case Instruction::Ret: {
                        const ReturnInst *inst = dyn_cast<ReturnInst>(&instr);

                        Node *node = funcNode->getReturnNode();
                        if (!node || !inst->getReturnValue()) break;

                        // Connects to each node who originally called.
                        for (const User *user : f.users()) {
                            if (const CallBase *callInst = dyn_cast<CallBase>(user)) {
                                Node *callNode = GraphManager::get()->getNode(callInst);
                                if (!callNode) continue;

                                node->addEdge("RETURN_BIND", callNode);
                            }
                        }
                        break;
                    }
                }

                // Connect prev -> this node.
                if (GraphManager::isNonSSA(instr.getOpcode()))
                    continue;

                // If our previous node was a call, then we switch that to be the called function's terminators:
                // TODO: the determination of function terminators should be delegated to FunctionNode and not here
                if (prevNode) {
                    if (CallNode *callNode = dynamic_cast<CallNode*>(prevNode)) {
                        if (callNode->getCalledFunction()) {
                          for (const BasicBlock& fbb : *callNode->getCalledFunction()) {
                              // errs() << *(&*fbb.begin() + fbb.size()-2) << "\n";
                              // I suppose the problem here is that there may not always be a Node instance of this instr because its non SSA.
                              prevNode = GraphManager::get()->getNode(&*fbb.begin() + fbb.size()-2);
                          }
                      }
                    }
                }

                Node *node = GraphManager::get()->getNode(&instr);

                if (prevNode && node)
                    _edges[prevNode].push_back( CFGEdge { prevNode, node, CFGEdgeType::DEFAULT });

                // This may sometimes be set to null because we deliberately don't have nodes
                // for every single instruction (IE: unconditional brs).
                prevNode = node;
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
std::vector<Node*> ControlFlowGraph::traverse(Node* start) {
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
            if (edge.type == CALL) continue;

            s.push_back(edge.end);
            q.push(edge.end);
        }
    }
    return s;
}

ControlFlowGraph* ControlFlowGraph::get() { return _graph; }
ControlFlowGraph* ControlFlowGraph::_graph = nullptr;
