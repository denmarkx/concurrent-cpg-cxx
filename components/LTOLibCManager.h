#pragma once
#include "llvm/IR/Instructions.h"
#include "llvm/Support/raw_ostream.h"
#include <llvm/IR/Module.h>
#include <llvm/ADT/DenseMap.h>
#include "llvm/IR/Constants.h"

#include <unordered_map>
#include <memory>
#include <vector>
#include <string>
using namespace llvm;

/*
 * Contains the function's name, return value, and corresponding argument types.
 * This is useful for matching functions between modules.
*/
struct LightFunction {
    std::string name;
    Type::TypeID returnType;
    std::vector<Type::TypeID> argTypes;

    static LightFunction* fromFunction(const Function& f) {
        LightFunction* lightFunc = new LightFunction();
        lightFunc->name = f.getName().str();
        lightFunc->returnType = f.getReturnType()->getTypeID();
        for (const Argument &arg : f.args()) {
            lightFunc->argTypes.push_back(arg.getType()->getTypeID());
        }
        return lightFunc;
    }

    friend bool operator==(const Function& function, const LightFunction& lightFunc);
    friend raw_fd_ostream& operator<<(raw_fd_ostream& out, const LightFunction& lightFunc);
};

struct UnixSystemCall {
    unsigned int sysCode = 0;
    unsigned int flags = 0;

    static UnixSystemCall* fromCall(const CallBase *c) {
        const Function *f = c->getCalledFunction();
        if (!f) return nullptr;
        if (f->getName() != "syscall") return nullptr;
        if (c->getNumOperands() < 2) return nullptr;

        UnixSystemCall *usc = new UnixSystemCall();

        // Operand 0 and 2 must be constant ints.
        const ConstantInt *o1 = dyn_cast<ConstantInt>(c->getOperand(0));
        const ConstantInt *o2 = dyn_cast<ConstantInt>(c->getOperand(2));

        if (!o1 || !o2) return nullptr;

        usc->sysCode = o1->getZExtValue();
        usc->flags = o2->getZExtValue();
        return usc;
    }

    friend bool operator==(const CallBase& call, const UnixSystemCall& sysCall);
};

class LTOLibCManager {
public:
    LTOLibCManager(const Module& module);
    LTOLibCManager(const LTOLibCManager& other) = delete;

    const std::vector<const LightFunction*> getLibCFunctions(const Function *f);
    const std::vector<const UnixSystemCall*> getSysCallFunctions(const Function *f);


    static bool isEnabled();

    static LTOLibCManager* get();
    static LTOLibCManager* _manager;

private:
    void handleUser(const Module& module, std::vector<const Function*> &visited,
        const User *user, const User *baseUser, const Function& func);
    bool isLTOExclusiveFunc(const Module &module, const Function& function);
    bool containsLibCFunc(const Function *key, const Function *function);

private:
    std::unique_ptr<Module> _module;

    // function -> {libc funcs}
    std::unordered_map<std::string, std::vector<const LightFunction*>> _funcLibCMap;

    // function -> {linux syscall funcs}
    std::unordered_map<std::string, std::vector<const UnixSystemCall*>> _funcSysCallMap;
};
