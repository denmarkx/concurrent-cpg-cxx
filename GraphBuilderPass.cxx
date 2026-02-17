#include <llvm/Analysis/MemorySSA.h>

#include "BidirectionalCallGraph.h"
#include "graph/GraphBuilder.h"
#include "graph/GraphManager.h"
#include "graph/GraphParser.h"
#include "GraphBuilderPass.h"
#include "andersen/AndersenAA.h"

bool GraphBuilderPass::runOnModule(Module &M) {
    AndersenAAResult &AA = getAnalysis<AndersenAAWrapperPass>().getResult();
    GraphManager::get()->setAliasResult(AA);

    BidirectionalCallGraph *callGraph = new BidirectionalCallGraph(M);
    GraphManager::get()->setCallGraph(callGraph);

    GraphManager::get()->setMemorySSACall(
        [this](Function &F) -> MemorySSA& {
            return this->getAnalysis<MemorySSAWrapperPass>(F).getMSSA();
        });    

    GraphParser::handleGraph(M);
    return false;
}

void GraphBuilderPass::getAnalysisUsage(AnalysisUsage &AU) const {
    AU.addRequired<MemorySSAWrapperPass>();
    AU.addRequired<AndersenAAWrapperPass>();
    AU.setPreservesAll();
}

char GraphBuilderPass::ID = 0;
static RegisterPass<GraphBuilderPass> X("a", "b", true, true);
