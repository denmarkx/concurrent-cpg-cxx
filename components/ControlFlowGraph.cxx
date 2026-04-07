#include "ControlFlowGraph.h"
#include "graph/GraphManager.h"
#include "graph/Node.h"

#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/CFG.h"
#include <string>

ControlFlowGraph::ControlFlowGraph() { _graph = this; };

void ControlFlowGraph::parseModule(const Module& module) {
    for (const Function &f : module) {
        if (f.isIntrinsic()) continue;

        Node *funcNode = GraphManager::get()->getNode(&f);
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

                        if (!call->getCalledFunction()) break; // TODO
                        if (call->getCalledFunction()->isIntrinsic() || call->isInlineAsm()) break;

                        Node *node = GraphManager::get()->getNode(call);
                        assert(node != nullptr);

                        Node *toNode = GraphManager::get()->getNode(call->getCalledFunction());
                        assert(toNode != nullptr);

                        _edges[node].push_back( CFGEdge { node, toNode, CFGEdgeType::CALL } );

                        // Handle unwind path:
                        if (const InvokeInst *invoke = dyn_cast<InvokeInst>(&instr)) {
                            Node *unwindNode = GraphManager::get()->getNode(invoke);
                            if (unwindNode)
                                _edges[node].push_back( CFGEdge { node, toNode, CFGEdgeType::UNWIND } );
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
                }

                // Connect prev -> this node.
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

ControlFlowGraph* ControlFlowGraph::get() { return _graph; }
ControlFlowGraph* ControlFlowGraph::_graph = nullptr;
