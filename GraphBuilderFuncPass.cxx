#include <llvm/Analysis/MemorySSA.h>
#include <stdexcept>

#include "GraphBuilderFuncPass.h"
#include "GraphBuilderPass.h"
#include "graph/BasicBlockNode.h"
#include "graph/GraphManager.h"
#include "graph/BasicBlockNode.h"

bool GraphBuilderFuncPass::runOnFunction(Function &func) {
    auto &tree = getAnalysis<DominatorTreeWrapperPass>().getDomTree();

    for (BasicBlock &block : func) {
        DomTreeNode *node = tree.getNode(&block);
        if (!node) continue;

        BasicBlockNode *blockNode = GraphManager::get()->getNode<BasicBlockNode>(&block);
        if (!blockNode) throw std::runtime_error("GBFP: can't find blockNode");

        DomTreeNode *iDomNode = node->getIDom();
        if (iDomNode && iDomNode->getBlock()) {
            BasicBlockNode *dominatorNode = GraphManager::get()->
                getNode<BasicBlockNode>(iDomNode->getBlock());
            if (!dominatorNode) throw std::runtime_error("GBFP: can't find dominatorNode");

            blockNode->addDominator(dominatorNode);
            dominatorNode->addDominates(blockNode);

            // errs() << " Block " << block.getName() << " dominated by "
                // << iDomNode->getBlock()->getName() << "\n";
        }
    }
    return false;
}

void GraphBuilderFuncPass::getAnalysisUsage(AnalysisUsage &AU) const {
    AU.addRequired<DominatorTreeWrapperPass>();
    AU.addRequired<GraphBuilderPass>();
    AU.setPreservesAll();
}

char GraphBuilderFuncPass::ID = 0;
static RegisterPass<GraphBuilderFuncPass> X("b", "c", true, true);
