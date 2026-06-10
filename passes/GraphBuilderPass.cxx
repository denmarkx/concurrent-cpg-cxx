#include "components/BidirectionalCallGraph.h"
#include "passes/GraphBuilderPass.h"

#include "graph/GraphBuilder.h"
#include "graph/GraphManager.h"
#include "graph/GraphParser.h"
#include "andersen/Andersen.h"

bool GraphBuilderPass::runOnModule(Module &M) {
    Andersen &AA = getAnalysis<AndersenAAWrapperPass>().getResult();
    GraphManager::get()->setAliasResult(AA);

    BidirectionalCallGraph *callGraph = new BidirectionalCallGraph(M);
    GraphManager::get()->setCallGraph(callGraph);


    GraphParser::handleGraph(M);
    return false;
}

void GraphBuilderPass::getAnalysisUsage(AnalysisUsage &AU) const {
    AU.addRequired<AndersenAAWrapperPass>();
    AU.setPreservesAll();
}

char GraphBuilderPass::ID = 0;
static RegisterPass<GraphBuilderPass> X("a", "b", true, true);
