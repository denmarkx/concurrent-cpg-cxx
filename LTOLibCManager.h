#pragma once
#include "llvm/Support/raw_ostream.h"
#include <llvm/IR/Module.h>
#include <llvm/ADT/DenseMap.h>

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

class LTOLibCManager {
public:
    LTOLibCManager(const Module& module);
    LTOLibCManager(const LTOLibCManager& other) = delete;

    const std::vector<const LightFunction*> getLibCFunctions(const Function *f);

    static LTOLibCManager* get();
    static LTOLibCManager* _manager;

private:
    void handleUser(const Module& module,
        std::vector<const Function*> &visited, const User *user, const Function& func);
    bool isLTOExclusiveFunc(const Module &module, const Function& function);
    bool containsLibCFunc(const Function *key, const Function *function);

private:
    std::unique_ptr<Module> _module;

    // function -> {libc funcs}
    std::unordered_map<std::string, std::vector<const LightFunction*>> _funcLibCMap;
};
