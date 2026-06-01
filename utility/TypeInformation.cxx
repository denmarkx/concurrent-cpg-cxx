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
    if (const AllocaInst *alloca = dyn_cast<AllocaInst>(origin))
        return alloca->getAllocatedType();
    else if (const GetElementPtrInst *gep = dyn_cast<GetElementPtrInst>(origin))
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
        seen.insert(cur);

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
            .Default([&worklist](const Value* v) {
                // I suppose the last option here would be to check the users:
                // TODO: this is more of a hack just so I can move on from this bullshit
                // i need to think of better ways to do this.
                for (const User *user : v->users()) {
                    // TODO: this is more of a hack just so I can move on from this bullshit
                    if (const CallBase *call = dyn_cast<CallBase>(user)) {
                        if (call->getCalledFunction()->getName() == "llvm.memcpy.p0.p0.i64") {
                            if (v == call->getOperand(0))
                                worklist.push(call->getOperand(1));
                            else
                                worklist.push(call->getOperand(0));
                        } else {
                            int i = 0;
                            for (const auto &arg : call->args()) {
                                if (arg == v)
                                    if (call->getCalledFunction()) {
                                        for (const auto &x : call->getCalledFunction()->getArg(i)->users()) {
                                            // errs() << "arg user = " << *x << "\n";
                                            worklist.push(x);
                                        }
                                    }
                                i++;
                            }
                        }
                    }
                    worklist.push(user);
                }
                return nullptr;
            });

        if (origin) return origin;
    }

    return nullptr;
}
