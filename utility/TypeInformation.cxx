#include "TypeInformation.h"

#include <llvm/Analysis/ValueTracking.h>
#include <llvm/ADT/TypeSwitch.h>
#include <unordered_set>
#include <queue>

/*
 * Attempts to resolve the type of the given value.
*/
const Type* TypeInformation::resolveType(const Value *v) {
    const Value *origin = traceOrigin(v);
    if (!origin) return nullptr;

    // Few things to try and do here: simplest case would be if
    //  its a GEP or an Alloca..because a type is required there.
    if (const AllocaInst *alloca = dyn_cast<AllocaInst>(v))
        return alloca->getAllocatedType();
    if (const GetElementPtrInst *gep = dyn_cast<GetElementPtrInst>(v))
        return gep->getSourceElementType();

    return nullptr;
}

/*
 * Attempts to trace the origin of the given value to the original
 * stack allocation or an instruction that provides any sort of type value.
*/
const Value* TypeInformation::traceOrigin(const Value *v) {
    std::queue<const llvm::Value*> worklist;
    std::unordered_set<const llvm::Value*> seen;
    const Value *origin = nullptr;

    worklist.push(v);
    while (!worklist.empty()) {
        const Value *cur = worklist.front();
        worklist.pop();

        if (seen.contains(cur)) continue;
        seen.insert(v);

        // We might be a parameter:
        if (const Argument *arg = dyn_cast<Argument>(cur)) {
            // In that case, we can go back to the callers and get the argument.
            for (const User *user : arg->getParent()->users()) {
                if (const CallBase *call = dyn_cast<CallBase>(user)) {
                    worklist.push(call->getArgOperand(arg->getArgNo()));
                    continue;
                }
            }
        }

        // There are only a few types that can elicit useful information.
        TypeSwitch<const Value *>(cur) 
            .Case<AllocaInst>([&](const AllocaInst *instr) {
                origin = instr;
            })
            .Case<GetElementPtrInst>([&](const GetElementPtrInst *gep) {
                // If the src type is an aggregate, this is okay.
                if (gep->getSourceElementType()->isAggregateType())
                    origin = gep;
                else
                    // otherwise... move up:
                    cur = gep->getOperand(0);
            })
            .Case<LoadInst>([&](const LoadInst *instr) {
                cur = getUnderlyingObject(instr->getOperand(0));
            })
            .Default([](const Value* v) { return nullptr; });

        if (origin) return origin;
    }

    return nullptr;
}
