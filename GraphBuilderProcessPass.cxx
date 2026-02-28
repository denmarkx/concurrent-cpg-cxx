#include "GraphBuilderProcessPass.h"
#include "concurrency/ConcurrencyPass.h"

bool GraphBuilderProcessPass::runOnModule(Module &M) {
    errs() << "final\n";
    ConcurrencyPass *pass = new ConcurrencyPass();
    pass->handleGlobals(M.globals());
    pass->run();
    return false;
}

void GraphBuilderProcessPass::getAnalysisUsage(AnalysisUsage &AU) const {
    AU.setPreservesAll();
}

char GraphBuilderProcessPass::ID = 0;
static RegisterPass<GraphBuilderProcessPass> X("e", "f", true, true);
