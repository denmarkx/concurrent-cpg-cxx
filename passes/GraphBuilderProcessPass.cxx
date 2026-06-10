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
    pass->run();

    ControlFlowGraph *cfg = new ControlFlowGraph();
    cfg->parseModule(M);

    HappensBeforeGraph *hbg = new HappensBeforeGraph();
    hbg->build(M);

    RFGraph *rfg = new RFGraph();
    rfg->buildIndex();

    hbg->buildFixedPointClosure();

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
