#include "ControlFlowGraph.h"
#include "graph/BasicBlockNode.h"
#include "graph/GraphManager.h"

#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/Instructions.h"
#include <string>

ControlFlowGraph::ControlFlowGraph() { _graph = this; };

void ControlFlowGraph::parseModule(const Module& module) {
    for (const Function &f : module) {
        for (const BasicBlock &bb : f) {
            handleBasicBlock(bb);
        }
    }
}

void ControlFlowGraph::handleBasicBlock(const BasicBlock& block) {
    BasicBlockNode *startNode = GraphManager::get()->getNode<BasicBlockNode>(&block);

    for (auto it = succ_begin(&block); it != succ_end(&block); ++it) {
        BasicBlockNode *endNode = GraphManager::get()->getNode<BasicBlockNode>(*it);

        _edges[startNode].push_back(CFGEdge { startNode, endNode, getCFGEdgeType(block, **it) });
    }
}

const CFGEdgeType ControlFlowGraph::getCFGEdgeType(
    const BasicBlock& start, const BasicBlock& end) const {

    CFGEdgeType edgeType = CFGEdgeType::DEFAULT;

    for (auto user : end.users()) {
        const Instruction *instr = dyn_cast<Instruction>(user);
        assert(instr != nullptr);

        bool gotEdgeType = false;
        switch(instr->getOpcode()) {
            case Instruction::Br: {
                const BranchInst *br = dyn_cast<BranchInst>(instr);

                if (br->isUnconditional()) {
                    gotEdgeType = true;
                    break;
                }

                // Conditional needs to check if both start and end are as operands.
                const BasicBlock *trueOp = dyn_cast<BasicBlock>(br->getOperand(1));
                assert(trueOp != nullptr);

                const BasicBlock *falseOp = dyn_cast<BasicBlock>(br->getOperand(2));
                assert(falseOp != nullptr);

                if (trueOp == &start && falseOp == &end) {
                    edgeType = CFGEdgeType::COND_FALSE;
                    gotEdgeType = true;
                    break;
                }

                if (falseOp == &start && trueOp == &end) {
                    edgeType = CFGEdgeType::COND_TRUE;
                    gotEdgeType = true;
                    break;
                }
                break;
            }

            case Instruction::Invoke: {
                const InvokeInst *invoke = dyn_cast<InvokeInst>(instr);
                if (invoke->getUnwindDest() == &end) {
                    edgeType = CFGEdgeType::UNWIND;
                    gotEdgeType = true;
                }
                break;
            }

            case Instruction::Switch: {
                edgeType = CFGEdgeType::SWITCH;
                gotEdgeType = true;
                break;
            }
        }

        if (gotEdgeType) break;
    }

    return edgeType;
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
