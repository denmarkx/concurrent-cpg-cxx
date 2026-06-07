#include "passes/GraphBuilderProcessPass.h"
#include "components/ControlFlowGraph.h"
#include "components/HappensBeforeGraph.h"
#include "components/RFGraph.h"
#include "concurrency/ConcurrencyPass.h"
#include "graph/GraphManager.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"

bool GraphBuilderProcessPass::runOnModule(Module &M) {
    ConcurrencyPass *pass = new ConcurrencyPass();
    pass->handleGlobals(M.globals());
    // pass->run();

    ControlFlowGraph *cfg = new ControlFlowGraph();
    cfg->parseModule(M);

    HappensBeforeGraph *hbg = new HappensBeforeGraph();

    const Function *n = M.getFunction("main");
    hbg->build(GraphManager::get()->getNode<FunctionNode>(n));

    std::vector<ThreadNode*> threads = ConcurrencyManager::get()->getConcurrencyNodes<ThreadNode>();
    for (ThreadNode *node : threads)
        HappensBeforeGraph::get()->build(dynamic_cast<FunctionNode*>(node->getRoutine()));

    hbg->buildTransitive();

    RFGraph *rfg = new RFGraph();
    rfg->build();

    // HB edges for atomics (need to move elsewhere)
    for (auto &[w, r] : rfg->pairs()) {
        // for atomics.ll, w is a release and r is an acquire, but that needs to be a cond
        if (w->threadId == r->threadId) continue;

        bool testW = 1; // TODO: needs to check for ordering >= release
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
