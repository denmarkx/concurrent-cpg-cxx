#include "OptCallees.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Verifier.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Transforms/Utils/ValueMapper.h"
#include "llvm/Transforms/Utils/Cloning.h"

using namespace llvm;

/*
 * Since we deliberately use -O0, we won't get the luxury of having functions passed as arguments
 * automatically handled. I can't actually seem to find what LLVM optimization pass does this
 * ..but it more than likely is inline (which kills some things).
*/
PreservedAnalyses OptCallees::run(Module &M, ModuleAnalysisManager &AM) {
    std::unordered_map<CallBase*, std::vector<Function*>> parentToNewCalledFuncs;
    std::vector<Function*> candidates;

    for (const Function &F : M) {
        for (const BasicBlock &bb : F) {
            for (const Instruction &instr : bb) {
                if (!isa<CallInst>(instr) && !isa<InvokeInst>(instr)) continue;
                if (!instr.hasMetadata(LLVMContext::MD_callees)) continue;

                const CallBase *call = dyn_cast<CallBase>(&instr);

                // For the simplest case of the called operand being a parameter:
                const Argument *arg = dyn_cast<Argument>(call->getCalledOperand());
                if (!arg) continue;

                for (const User *user : F.users()) {
                    CallBase *parentCall = const_cast<CallBase*>(dyn_cast<CallBase>(user));
                    if (!parentCall) continue;
                    if (!parentCall || parentCall->getCalledFunction() != &F) continue;

                    const Function *func = dyn_cast<Function>(
                        parentCall->getOperand(arg->getArgNo()));
                    assert(func != nullptr);
                    parentToNewCalledFuncs[parentCall].push_back(const_cast<Function*>(func));
                }
            }
        }
    }

    for (auto &[parentCall, newCallFuncs] : parentToNewCalledFuncs) {
        Function *oldFunction = const_cast<Function*>(parentCall->getCalledFunction());
        assert(oldFunction != nullptr);

        ValueToValueMapTy vmap;

        // This will automatically append .<n> where n increments to the name
        Function *clonedFunc = CloneFunction(oldFunction, vmap, nullptr);

        replaceCall(clonedFunc, newCallFuncs);
        parentCall->setCalledFunction(clonedFunc);

        if (std::find(candidates.begin(), candidates.end(), oldFunction) == candidates.end())
            candidates.push_back(oldFunction);
    }

    for (Function *f : candidates) {
        if (f->getNumUses() == 0)
            f->eraseFromParent();
    }

    return PreservedAnalyses::none();
}

/*
 * This performs the same thing as the top for loop. We can't map old call -> new call
 * since we clone the function containing the new call (and by extension, clone the
 * individual instructions yielding new memory addresses). 
 * The iterators for f and bb are stable enough for this.
*/
void OptCallees::replaceCall(Function* f, std::vector<Function*> newCalledFuncs) {
    std::vector<CallBase*> erased;
    auto it = newCalledFuncs.begin();

    for (const BasicBlock &bb : *f) {
        for (const Instruction &instr : bb) {
            if (!isa<CallInst>(instr) && !isa<InvokeInst>(instr)) continue;
            if (!instr.hasMetadata(LLVMContext::MD_callees)) continue;

            CallBase *call = const_cast<CallBase*>(dyn_cast<CallBase>(&instr));

            // For the simplest case of the called operand being a parameter:
            const Argument *arg = dyn_cast<Argument>(call->getCalledOperand());
            if (!arg) continue;

            erased.push_back(call);
            
            CallBase *newCall = cast<CallBase>(call->clone());
            newCall->setMetadata(LLVMContext::MD_callees, nullptr);
            newCall->setCalledFunction(*it++);
            newCall->insertBefore(call);
            call->replaceAllUsesWith(newCall);
        }
    }

    for (CallBase *old : erased)
        old->eraseFromParent();
}
