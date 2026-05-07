#include "GraphBuilderProcessPass.h"
#include "components/ControlFlowGraph.h"
#include "concurrency/ConcurrencyPass.h"

bool GraphBuilderProcessPass::runOnModule(Module &M) {
    ConcurrencyPass *pass = new ConcurrencyPass();
    pass->handleGlobals(M.globals());
    pass->run();

    ControlFlowGraph *cfg = new ControlFlowGraph();
    cfg->parseModule(M);
    return false;
}

void GraphBuilderProcessPass::getAnalysisUsage(AnalysisUsage &AU) const {
    AU.setPreservesAll();
}

char GraphBuilderProcessPass::ID = 0;
static RegisterPass<GraphBuilderProcessPass> X("e", "f", true, true);
