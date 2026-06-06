#include "passes/GraphBuilderProcessPass.h"
#include "components/ControlFlowGraph.h"
#include "components/HappensBeforeGraph.h"
#include "components/RFGraph.h"
#include "concurrency/ConcurrencyPass.h"
#include "graph/GraphManager.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Support/AtomicOrdering.h"

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
    hbg->build(GraphManager::get()->getNode<FunctionNode>(n));
    for (const auto &bb : *n) {
        for (const auto &i : bb) {
            if (i.getOpcode() == Instruction::Call) {
                ThreadNode *x = GraphManager::get()->getNode<ThreadNode>(&i);
                HappensBeforeGraph::get()->build(dynamic_cast<FunctionNode*>(x->getRoutine()));
            }
        }
    }

    hbg->buildTransitive();

    // this is sort of illogical, but just testing the transitive closure i guess
    const Function *f = M.getFunction("secondary");
    for (const auto &bb : *f) {
        for (const auto &i : bb) {
            if (i.getOpcode() == Instruction::Load) {
                // errs() << "hb = " << HappensBeforeGraph::get()->happensBefore(
                    // GraphManager::get()->getNode(f),
                    // GraphManager::get()->getNode(&i)
                // ) << "\n";
            }
        }
    }

    const Function *f2 = M.getFunction("routine");

    // errs() << "hb xxx = " << HappensBeforeGraph::get()->happensBefore(
    //     GraphManager::get()->getNode(f),
    //     GraphManager::get()->getNode(f2)
    // ) << "\n";


    // cfg->traverse(GraphManager::get()->getNode(n));

    // ∀ release, ∀ acquire: mayalias(robj, aobj) -> r hb a
    // probably be better if we track these lazily
    errs() << "trying to get atomic stores for: " << (int)(AtomicOrdering::Release) << "\n";
    for (const auto &x : GraphManager::get()->getAtomicStores(AtomicOrdering::Release)) {
        errs() << "x = " << x.dst->getName() << "\n";
        for (const auto &y : GraphManager::get()->getAtomicLoads(AtomicOrdering::Acquire, x.dst)) {
            errs() << "y = " << y->getName() << "\n";
            errs() << GraphManager::get()->getAliasResult()->alias(x.dst->getValue(), y->getValue()) << "\n";
        }
    }

    RFGraph *rfg = new RFGraph();
    rfg->build();

    // better alternative to the shit from above
    for (auto &[w, r] : rfg->pairs()) {
        // for atomics.ll, w is a release and r is an acquire, but that needs to be a cond
        if (w->threadId == r->threadId) continue;

        bool testW = 0; // TODO: needs to check for ordering >= release
        bool testR = 1; // TODO: check for ordering >= acq
        if (testW && testR)
            HappensBeforeGraph::get()->addEdge(w, r);
    }
    hbg->buildTransitive();

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

void GraphBuilderProcessPass::getAnalysisUsage(AnalysisUsage &AU) const {
    AU.setPreservesAll();
}

char GraphBuilderProcessPass::ID = 0;
static RegisterPass<GraphBuilderProcessPass> X("e", "f", true, true);
