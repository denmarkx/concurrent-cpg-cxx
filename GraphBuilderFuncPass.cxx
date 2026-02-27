#include <llvm/Analysis/MemorySSA.h>

#include "GraphBuilderFuncPass.h"
#include "GraphBuilderPass.h"

bool GraphBuilderFuncPass::runOnFunction(Function &func) {
    auto &tree = getAnalysis<DominatorTreeWrapperPass>().getDomTree();

    for (BasicBlock &block : func) {
        DomTreeNode *node = tree.getNode(&block);
        if (!node) continue;

        DomTreeNode *iDomNode = node->getIDom();
        if (iDomNode && iDomNode->getBlock()) {
            errs() << " Block " << block.getName() << " dominated by "
                << iDomNode->getBlock()->getName() << "\n";
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
