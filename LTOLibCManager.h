#pragma once
#include <llvm/IR/Module.h>
#include <llvm/ADT/DenseMap.h>

#include <memory>
#include <vector>
using namespace llvm;

class LTOLibCManager {
public:
    LTOLibCManager(const Module& module);

private:
    void handleUser(const Module& module,
        std::vector<const Function*> &visited, const User *user, const Function& func);
    bool isLTOExclusiveFunc(const Module &module, const Function& function);
    bool containsLibCFunc(const Function *key, const Function *function);

private:
    std::unique_ptr<Module> _module;

    // function -> {libc funcs}
    DenseMap<const Function*, std::vector<const Function*>> _funcLibCMap;
};
