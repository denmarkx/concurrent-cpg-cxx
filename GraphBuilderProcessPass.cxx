#include "GraphBuilderProcessPass.h"
#include "components/ControlFlowGraph.h"
#include "concurrency/ConcurrencyPass.h"
#include "llvm/IR/Instructions.h"

bool GraphBuilderProcessPass::runOnModule(Module &M) {
    ConcurrencyPass *pass = new ConcurrencyPass();
    pass->handleGlobals(M.globals());
    pass->run();

    const Function *F = M.getFunction("_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h0bf3243cbfc3701cE");
    GraphManager::get()->getAliasResult()->printTransitivePointsToSet(F->getArg(0));

    errs() << "============ F2 =================\n";
    errs() << "============ F2 =================\n";
    errs() << "============ F2 =================\n";
    const Function *F2 = M.getFunction("_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17hcac0d9034fc41565E");
    // GraphManager::get()->getAliasResult()->printTransitivePointsToSet(F2->getArg(0));
    auto x = GraphManager::get()->getAliasResult()->getContextIDs(F2->getArg(0));

    const Function *F3 = M.getFunction("_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h36633d4df7a099c3E");
    int i = 0;
    for (const auto &bb : *F2) {
        for (const auto &instr : bb) {
            // if (isa<LoadInst>(instr)) {
                // errs() << "i=" << i << ": " << instr << "\n";
                // GraphManager::get()->getAliasResult()->printTransitivePointsToSet(&instr);
            // }
        }
    }
    errs() << "================================================\n";
    GraphManager::get()->getAliasResult()->printTransitivePointsToSet(F3->getArg(0));

    ControlFlowGraph *cfg = new ControlFlowGraph();
    cfg->parseModule(M);
    return false;
}

void GraphBuilderProcessPass::getAnalysisUsage(AnalysisUsage &AU) const {
    AU.setPreservesAll();
}

char GraphBuilderProcessPass::ID = 0;
static RegisterPass<GraphBuilderProcessPass> X("e", "f", true, true);
