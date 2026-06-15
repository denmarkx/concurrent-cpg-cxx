#include "OptCFG.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Verifier.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/ADT/TypeSwitch.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"

using namespace llvm;

PreservedAnalyses OptCFG::run(Module &M, ModuleAnalysisManager &AM) {
    for (auto it = M.begin(); it != M.end();) {
        Function &F = *it;
        auto n = std::next(it);
        if (removeUnreachableFunction(&F)) {
            it = n;
            continue;
        }
        ++it;
    }

    for (auto it = M.begin(); it != M.end();) {
        Function &F = *it;
        if (F.isDeclaration()) {
            ++it;
            continue;
        }

        for (auto blockIt = F.begin(); blockIt != F.end();) {
            BasicBlock &block = *blockIt;
            if (isa<UnreachableInst>(block.back())){
                if (simplifyUnreachableUsages(&block)) {
                    auto n = std::next(blockIt);
                    DeleteDeadBlock(&block);
                    blockIt = n;
                    continue;
                }
            }
            ++blockIt;
        }
        ++it;
    }

    startFunctionInlining(M.functions());

    return PreservedAnalyses::none();
}

bool OptCFG::removeUnreachableFunction(Function *f) {
    if (f->isDeclaration() || f->isIntrinsic() || f->hasExternalLinkage() || f->hasWeakLinkage()) return false;

    int numUnreachableBlocks = 0;
    for (auto blockIt = f->begin(); blockIt != f->end();) {
        BasicBlock &block = *blockIt;
        if (isa<UnreachableInst>(block.back()))
            numUnreachableBlocks++;
        ++blockIt;
    }

    bool removed = false;
    if (numUnreachableBlocks == std::distance(f->begin(), f->end())) {
        for (auto it = f->users().begin(); it != f->users().end();) {
            User *user = *it;
            auto n = std::next(it);
            if (isa<GlobalAlias>(user)) {
                GlobalAlias *alias = dyn_cast<GlobalAlias>(user);
                if (alias->getNumUses() == 0)
                    alias->removeFromParent();
                it = n;
                continue;
            }
            ++it;
        }
        f->replaceAllUsesWith(UndefValue::get(f->getType()));
        f->eraseFromParent();
        removed = true;
    }
    return removed;
}

bool OptCFG::simplifyUnreachableUsages(BasicBlock *block) {\
    SmallVector<User *, 16> users(block->users());
    for (User *user : users) {
        TypeSwitch<Value*>(user)
            .Case<BranchInst>([&](BranchInst *branch) {
                if (branch->isConditional()) {
                    BasicBlock *pred = branch->getParent();
                    if (branch->getSuccessor(0) == block || branch->getSuccessor(1) == block)
                        block->removePredecessor(pred);

                    BasicBlock *successor = branch->getSuccessor(0);

                    // Successor that is not block will be our true successor:
                    if (successor == block) successor = branch->getSuccessor(1); 
                    branch->replaceAllUsesWith(UndefValue::get(branch->getType()));

                    // New unconditional br, remove the old one:
                    BranchInst* unconditionalInstr = BranchInst::Create(successor);
                    unconditionalInstr->insertAfter(branch);
                    branch->eraseFromParent();
                }
            })
            .Case<InvokeInst>([&](InvokeInst *invoke) {
                if (invoke->getUnwindDest() == block) {
                    BasicBlock *invokeBB = invoke->getParent();
                    // This gets turned into a regular call instruction
                    // and the instr br label replaces the <to label> portion of invoke.
                    llvm::SmallVector<llvm::Value*, 8> args(invoke->args());
                    llvm::SmallVector<llvm::OperandBundleDef, 1> bundles;
                    invoke->getOperandBundlesAsDefs(bundles);

                    CallInst* call = CallInst::Create(
                        invoke->getFunctionType(),
                        invoke->getCalledOperand(),
                        args, bundles, "", invoke
                    );
                    call->setCallingConv(invoke->getCallingConv());
                    call->setAttributes(invoke->getAttributes());
                    call->setDebugLoc(invoke->getDebugLoc());
                    if (invoke->hasMetadata())
                        call->copyMetadata(*invoke);
                    invoke->replaceAllUsesWith(call);

                    if (invoke->getNormalDest())
                        BranchInst::Create(invoke->getNormalDest(), call->getParent());
                    block->removePredecessor(invokeBB);
                    invoke->eraseFromParent();
                }
            })
            .Default([&](Value *other) {});
    }

    // While the simplification on the br instr will stay, we don't remove
    // this block if there exists any users.
    auto it = block->users();
    return std::distance(it.begin(), it.end()) == 0;
}

/**
 * In addition to partial inlining, but not as aggressive as full.
 * This is geared more towards to monomorphized functions that
 * act as a dispatcher (eg: returns void, calls other methods).
 * 
*/
void OptCFG::startFunctionInlining(iterator_range<Module::iterator> iterator) {
    // F -> Final (where final cannot be a dispatcher).
    std::unordered_map<Function*, Function*> dispatchesTo;

    for (Function &function : iterator) {
        // Traverse through the calls downwards until we get to a non-dispatch:
        if (dispatchesTo.find(&function) == dispatchesTo.end()) {
            Function* nonDispatch = considerFunctionInlining(nullptr, &function, dispatchesTo);
        }
    }

    for (auto const& x : dispatchesTo) {
        Function *dispatch = x.first;
        Function *f = x.second;

        auto users = dispatch->users();

        // Get pointers to only calls. setCalledFunction will
        // modify the users iterator (which is why we split this)
        std::vector<CallInst*> calls;
        for (auto it = users.begin(); it != users.end(); ++it) {
            if (auto *call = dyn_cast<CallInst>(*it)) {
                calls.push_back(call);
            }
        }

        // All calls to dispatch are now replaced with a call to f.
        for (CallInst* call : calls) {
            call->setCalledFunction(f);
        }

        users = dispatch->users();
        if (std::distance(users.begin(), users.end()) == 0) {
            dispatch->eraseFromParent();
        }
    }
}

Function* OptCFG::considerFunctionInlining(Function *prevFunction, Function *function, DispatchesToMap &dispatchesTo) {
    if (dispatchesTo.find(function) != dispatchesTo.end()) return dispatchesTo[function];

    if (
        function->getReturnType()->isVoidTy() &&
        function->size() == 1 && // (bblock size)
        containsOnlyCallInstrs(&function->front()) &&
        function->front().size() <= 2
        ) {

        // Iterate through calls:
        Function *nonDispatch = nullptr;
        for (Instruction &inst : function->front()) {
            CallInst *call = dyn_cast<CallInst>(&inst);
            if (!call || call->isInlineAsm()) continue;
            if (call->getCalledFunction() == nullptr) continue;
            if (call->getCalledFunction()->isIntrinsic()) continue;
            nonDispatch = considerFunctionInlining(function, call->getCalledFunction(), dispatchesTo);
        }
        
        if (nonDispatch != nullptr) dispatchesTo[function] = nonDispatch;
        return nonDispatch;
    } else if (prevFunction != nullptr && prevFunction->getReturnType() == function->getReturnType()) {
        return function;
    }
    return nullptr;
}

/**
 * T/F for all instructions in block are Call Instructions
 * Explicitly checking for x is (CallInst, ReturnInst)
*/
bool OptCFG::containsOnlyCallInstrs(BasicBlock *block) {
    return std::all_of(block->begin(), block->end(), [](Instruction &instr) {
        return isa<CallInst>(instr) || isa<ReturnInst>(instr);
    });
}
