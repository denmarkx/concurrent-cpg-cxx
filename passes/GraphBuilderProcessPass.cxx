#include "passes/GraphBuilderProcessPass.h"
#include "components/ControlFlowGraph.h"
#include "components/HappensBeforeGraph.h"
#include "concurrency/ConcurrencyPass.h"
#include "graph/AtomicRMWNode.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"

bool GraphBuilderProcessPass::runOnModule(Module &M) {
    ConcurrencyPass *pass = new ConcurrencyPass();
    pass->handleGlobals(M.globals());
    // pass->run();

    // const Function *F = M.getFunction("_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h0bf3243cbfc3701cE");
    // // GraphManager::get()->getAliasResult()->printPointsToSet(F->getArg(0));

    // const Function *F2 = M.getFunction("_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17hcac0d9034fc41565E");
    // GraphManager::get()->getAliasResult()->printPointsToSet(F2->getArg(0));
    // errs() << "============ F2 =================\n";

    // const Function *F3 = M.getFunction("_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h36633d4df7a099c3E");
    // GraphManager::get()->getAliasResult()->printPointsToSet(F3->getArg(0));

    ControlFlowGraph *cfg = new ControlFlowGraph();
    cfg->parseModule(M);

    HappensBeforeGraph *hbg = new HappensBeforeGraph();

    const Function *n = M.getFunction("main");
    for (const auto &bb : *n) {
        for (const auto &i : bb) {
            if (i.getOpcode() == Instruction::Call) {
                ThreadNode *x = GraphManager::get()->getNode<ThreadNode>(&i);
                HappensBeforeGraph::get()->build(x);
            }
        }
    }
    // cfg->traverse(GraphManager::get()->getNode(n));

    // ∀ release, ∀ acquire: mayalias(robj, aobj) -> r hb a
    // probably be better if we track these lazily
    for (AtomicRMWNode *n : GraphManager::get()->getAllNodesOf<AtomicRMWNode>()) {
        
    }
    return false;
}

void GraphBuilderProcessPass::getAnalysisUsage(AnalysisUsage &AU) const {
    AU.setPreservesAll();
}

char GraphBuilderProcessPass::ID = 0;
static RegisterPass<GraphBuilderProcessPass> X("e", "f", true, true);
