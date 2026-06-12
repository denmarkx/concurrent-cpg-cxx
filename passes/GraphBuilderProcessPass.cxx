#include "passes/GraphBuilderProcessPass.h"
#include "components/ControlFlowGraph.h"
#include "components/HappensBeforeGraph.h"
#include "components/RFGraph.h"
#include "concurrency/ConcurrencyPass.h"
#include "graph/GraphManager.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"

bool GraphBuilderProcessPass::runOnModule(Module &M) {
    auto start = std::chrono::high_resolution_clock::now();
    ConcurrencyPass *pass = new ConcurrencyPass();
    pass->handleGlobals(M.globals());
    pass->run();
    auto end = std::chrono::high_resolution_clock::now();
    printElapsed("[ConcurrencyPass]: Elapsed Time: ", start, end);

    auto startCFG = std::chrono::high_resolution_clock::now();

    ControlFlowGraph *cfg = new ControlFlowGraph();
    cfg->parseModule(M);

    auto endCFG = std::chrono::high_resolution_clock::now();
    printElapsed("[ControlFlowGraph]: Elapsed Time: ", startCFG, endCFG);

    auto startHB = std::chrono::high_resolution_clock::now();

    HappensBeforeGraph *hbg = new HappensBeforeGraph();
    hbg->build(M);
    return false;

    auto endHB = std::chrono::high_resolution_clock::now();
    printElapsed("[HappensBeforeGraph]: Elapsed Time: ", startHB, endHB);

    auto startRFG = std::chrono::high_resolution_clock::now();

    RFGraph *rfg = new RFGraph();
    rfg->buildIndex();

    auto endRFG = std::chrono::high_resolution_clock::now();
    printElapsed("[RF Candidates]: Elapsed Time: ", startHB, endHB);

    auto startFPA = std::chrono::high_resolution_clock::now();

    hbg->buildFixedPointClosure();

    auto endFPA = std::chrono::high_resolution_clock::now();
    printElapsed("[FPA]: Elapsed Time: ", startHB, endHB);

    for (HBNode *a : rfg->getNodes()) {
        for (HBNode *b : rfg->getNodes()) {
            if (a->threadId == b->threadId) continue;
            if (GraphManager::get()->getAliasResult()->alias(a->node->ptr, b->node->ptr) == AliasResult::NoAlias) continue;
            if (!hbg->happensBefore(a, b) && !hbg->happensBefore(b, a)) {
                errs() << " === XX ===\n";
                errs() << "  A (T: " << a->threadId << "): " << *a->node->getValue() << "\n";
                errs() << "  B (T: " << b->threadId << "): " << *b->node->getValue() << "\n";
                errs() << "  A <<= B : " << hbg->happensBefore(a, b) << "\n";
                errs() << "  B <<= A : " << hbg->happensBefore(b, a) << "\n";
            }
        }
    }

    return false;
}

void GraphBuilderProcessPass::printElapsed(std::string s,
    std::chrono::time_point<chrono::system_clock> start, std::chrono::time_point<chrono::system_clock> end) {
    auto e = std::chrono::duration_cast<std::chrono::seconds>(end-start).count();

    if (e == 0)
        errs() << s << std::chrono::duration_cast<std::chrono::milliseconds>(end-start).count() << "ms\n";
    else    
        errs() << s << std::chrono::duration_cast<std::chrono::seconds>(end-start).count() << "s\n";
}

void GraphBuilderProcessPass::getAnalysisUsage(AnalysisUsage &AU) const {
    AU.setPreservesAll();
}

char GraphBuilderProcessPass::ID = 0;
static RegisterPass<GraphBuilderProcessPass> X("e", "f", true, true);
