#include "graph/GraphParser.h"
#include "GraphBuilderPass.h"
#include "andersen/AndersenAA.h"

bool GraphBuilderPass::runOnModule(Module &M) {
    AndersenAAResult &AA = getAnalysis<AndersenAAWrapperPass>().getResult();
    GraphManager::get()->setAliasResult(AA);

    GraphParser::handleGraph(M);
    return false;
}

void GraphBuilderPass::getAnalysisUsage(AnalysisUsage &AU) const {
    AU.addRequired<AndersenAAWrapperPass>();
    AU.setPreservesAll();
}

char GraphBuilderPass::ID = 0;
static RegisterPass<GraphBuilderPass> X("a", "b", true, true);
