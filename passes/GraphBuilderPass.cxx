#include "components/BidirectionalCallGraph.h"
#include "passes/GraphBuilderPass.h"

#include "graph/GraphBuilder.h"
#include "graph/GraphManager.h"
#include "graph/GraphParser.h"
#include "andersen/Andersen.h"

#include <chrono>

bool GraphBuilderPass::runOnModule(Module &M) {
    Andersen &AA = getAnalysis<AndersenAAWrapperPass>().getResult();
    GraphManager::get()->setAliasResult(AA);

    BidirectionalCallGraph *callGraph = new BidirectionalCallGraph(M);
    GraphManager::get()->setCallGraph(callGraph);


    auto start = std::chrono::high_resolution_clock::now();
    GraphParser::handleGraph(M);
    auto end = std::chrono::high_resolution_clock::now();

    auto elapsed = std::chrono::duration_cast<std::chrono::seconds>(end-start).count();
    if (elapsed == 0)
        errs() << "[Primary Graph]: Overall Time: " << 
            std::chrono::duration_cast<std::chrono::milliseconds>(end-start).count() << "ms\n";
    else
        errs() << "[Primary Graph]: Overall Time: " << 
            std::chrono::duration_cast<std::chrono::seconds>(end-start).count() << "s\n";
    return false;
}

void GraphBuilderPass::getAnalysisUsage(AnalysisUsage &AU) const {
    AU.addRequired<AndersenAAWrapperPass>();
    AU.setPreservesAll();
}

char GraphBuilderPass::ID = 0;
static RegisterPass<GraphBuilderPass> X("a", "b", true, true);
