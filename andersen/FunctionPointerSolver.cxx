#include "Andersen.h"
#include "NodeFactory.h"

/*
 * Re-runs an additional Andersens pass dedicated to resolving function pointers.
 * During initial constraint creation, we keep track of what calls do not have
 * a constant function attached. After the first pass, we leverage the ptsTo set
 * of the called operand and attach it to whatever functions we point to.
 * 
 * TODO: This only does a one round pass..meaning any deferred function pointers
 *       that were not resolved during the second pass are left unresolved.
*/
void Andersen::solveFunctionPointers() {
    if (deferredFuncPointers.empty()) return;

    for (const DeferredFunctionPointer& fp : deferredFuncPointers) {
        const CallBase *cs = fp.value;
        const Context *ctx = fp.ctx;

        // Initially, we abstain from creating a context during scanFunction
        // on indirect calls.
        Context *calleeCtx = nodeFactory.createContext(const_cast<Context*>(ctx), cs);

        std::vector<const llvm::Value*> ptsSet;
        getPointsToSet(fp.value->getCalledOperand(), ptsSet, fp.ctx->id);

        for (const auto &v: ptsSet) {
            if (!isa<Function>(v)) continue;

            const llvm::Function *f = dyn_cast<Function>(v);
            setupFunctionConstraints(calleeCtx, f);
            addReturnConstraintForCall(calleeCtx, ctx, cs, f);
            addArgumentConstraintForCall(calleeCtx, ctx, cs, f);
        }
    }

    optimizeConstraints();
    solveConstraints();
}
