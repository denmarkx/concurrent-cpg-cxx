#include <llvm/IRReader/IRReader.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/Support/SourceMgr.h>

#include "LTOLibCManager.h"
#include "llvm/Analysis/CallGraph.h"

LTOLibCManager::LTOLibCManager(const Module& mainModule) {
    LLVMContext ctx;
    SMDiagnostic error;
    _module = llvm::parseIRFile("std_rs_lto.bc", error, ctx);

    if (!_module) {
        error.print("", errs());
        return;
    }

    // This is a heavy assumption that all declarations and non-intrinsics are
    // considered apart of libc/libc++ (or other lower level libraries).
    // We'll accept the liberal approximation here.
    for (const Function &func : *_module) {
        if (func.isDeclaration() && !func.isIntrinsic()) {
            std::vector<const Function*> visited;
            for (const User *user : func.users()) {
                handleUser(mainModule, visited, user, func);
            }
        }
    }
}

void LTOLibCManager::handleUser(const Module& module, std::vector<const Function*> &visited,
        const User *user, const Function& func) {
    // If this appears in a global, we're gonna say this is unhandled.
    // Though, I suppose that's a TODO given that there may be a
    // case of a function pointer to a libc call. (which is weird IMO)
    const Instruction *instr = dyn_cast<Instruction>(user);
    if (!instr) return;

    const Function *parentFunc = instr->getFunction();
    assert(parentFunc != nullptr);

    // Ignore if already seen.
    if (std::find(visited.begin(), visited.end(), parentFunc) != visited.end()) return;
    visited.push_back(parentFunc);

    // If the function calling us is non-LTO-exclusive, we can add to the map.
    if (!isLTOExclusiveFunc(module, *parentFunc)) {
        if (containsLibCFunc(parentFunc, &func)) return;
        // TODO: this is incorrect since we can't really guarantee
        // the lifetime of this module throughout the remainder of the program
        // (only because we don't really need it?) UNLESS we can keep it alive forever.
        // though this will absolutely screw any obj comparisons.
        _funcLibCMap[parentFunc].push_back(&func);
        // errs() << parentFunc->getName() << " ---> " << func.getName() << "\n";
        return;
    }

    // If we're LTO-exclusive, we need to go up.
    for (const User *higherUser : parentFunc->users()) {
        handleUser(module, visited, higherUser, func);
    }
}

/*
 * Returns boolean indicating if <function> is in _funcLibCMap[key].
*/
bool LTOLibCManager::containsLibCFunc(const Function* key, const Function* function) {
    if (!_funcLibCMap.contains(key)) return false;

    std::vector<const Function*> &values = _funcLibCMap[key];
    return std::find(values.begin(), values.end(), function) != values.end();
}

/*
 * Returns boolean indicating if the given function is exclusive to the LTO-compiled IR.
*/
bool LTOLibCManager::isLTOExclusiveFunc(const Module &module, const Function& func) {
    return !module.getFunction(func.getName());
}
