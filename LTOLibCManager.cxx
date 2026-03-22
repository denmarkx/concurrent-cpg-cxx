#include <llvm/IRReader/IRReader.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/Support/SourceMgr.h>
#include <stdexcept>

#include "LTOLibCManager.h"
#include "llvm/Analysis/CallGraph.h"
#include "llvm/IR/DerivedTypes.h"

LTOLibCManager::LTOLibCManager(const Module& mainModule) {
    LLVMContext ctx;
    SMDiagnostic error;
    _module = llvm::parseIRFile("files/std_rs_lto.bc", error, ctx);

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

    _manager = this;
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
        _funcLibCMap[parentFunc->getName().str()].push_back(LightFunction::fromFunction(func));
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
    if (!_funcLibCMap.contains(key->getName().str())) return false;

    std::vector<const LightFunction*> &values = _funcLibCMap[key->getName().str()];

    for (const LightFunction *lightFunc : values) {
        if (*lightFunc == *function) return true;
    }
    return false;
}

/*
 * Returns boolean indicating if the given function is exclusive to the LTO-compiled IR.
*/
bool LTOLibCManager::isLTOExclusiveFunc(const Module &module, const Function& func) {
    return !module.getFunction(func.getName());
}

/*
 * Returns a vector of LightFunctions of libc functions that are possibly called by f.
*/
const std::vector<const LightFunction*> LTOLibCManager::getLibCFunctions(const Function *f) {
    if (!_funcLibCMap.contains(f->getName().str())) return {};
    return _funcLibCMap[f->getName().str()];
}

bool LTOLibCManager::isEnabled() {
    return _manager != nullptr;
}

/**
 * Returns boolean indicating if the given llvm::Function matches LightFunction
 * by name, return type, and argument types/order. 
*/
bool operator==(const Function& function, const LightFunction& lightFunc) {
    if (function.getName().str() != lightFunc.name) return false;
    if (function.getReturnType()->getTypeID() != lightFunc.returnType) return false;
    if (function.arg_size() != lightFunc.argTypes.size()) return false;

    for (size_t i = 0; i < lightFunc.argTypes.size(); i++) {
        if (function.getArg(i)->getType()->getTypeID() != lightFunc.argTypes[i]) return false;
    }
    return true;
}

raw_fd_ostream& operator<<(raw_fd_ostream& out, const LightFunction& lightFunc) {
    out << "LightFunction {\n";
    out << "  Name: " << lightFunc.name << "\n";
    out << "  Return Type: " << lightFunc.returnType << "\n";
    out << "  Arg Types: [";
    for (Type::TypeID ty : lightFunc.argTypes) {
        out << ty << ", ";
    }
    out << "]\n}\n";
    return out;
}


LTOLibCManager* LTOLibCManager::get() {
    if (!_manager)
        // This is a bit different from our other singletons.
        // and that's only because we require the main module's reference for setup.
        // throw std::runtime_error("LTOLibCManager must be initialized prior to running ::get");
        return nullptr;
    return _manager;
}

LTOLibCManager* LTOLibCManager::_manager = nullptr;