#include <llvm/Analysis/MemorySSA.h>

#include "BidirectionalCallGraph.h"
#include "graph/GraphManager.h"
#include "graph/GraphParser.h"
#include "GraphBuilderPass.h"
#include "andersen/AndersenAA.h"

bool GraphBuilderPass::runOnModule(Module &M) {
    AndersenAAResult &AA = getAnalysis<AndersenAAWrapperPass>().getResult();
    GraphManager::get()->setAliasResult(AA);

    BidirectionalCallGraph *callGraph = new BidirectionalCallGraph(M);
    GraphManager::get()->setCallGraph(callGraph);

    for (Function &F : M) {
        if (F.isDeclaration()) continue;
        auto &MSAA = getAnalysis<MemorySSAWrapperPass>(F).getMSSA();
        GraphManager::get()->setMemorySSAResult(&F, MSAA);
    }

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
