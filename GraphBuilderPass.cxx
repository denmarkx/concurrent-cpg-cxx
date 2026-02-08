#include "graph/GraphParser.h"
#include "GraphBuilderPass.h"

bool GraphBuilderPass::runOnModule(Module &M) {
    GraphParser::handleGraph(M);
    return false;
}

char GraphBuilderPass::ID = 0;
static RegisterPass<GraphBuilderPass> X("a", "b", true, true);
