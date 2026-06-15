#ifndef LLVM_TRANSFORMS_OptCFG_H
#define LLVM_TRANSFORMS_OptCFG_H

#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/PassManager.h"
using namespace llvm;

class OptCFG : public PassInfoMixin<OptCFG> {
public:
    PreservedAnalyses run(Module &F, ModuleAnalysisManager &AM);

private:
    typedef std::unordered_map<Function*, Function*> DispatchesToMap;

    bool simplifyUnreachableUsages(BasicBlock*);
    Function* considerFunctionInlining(Function *prevFunction, Function *function, DispatchesToMap& dispatchesTo);
    void startFunctionInlining(iterator_range<Module::iterator> functions);
    bool containsOnlyCallInstrs(BasicBlock *block);
    bool removeUnreachableFunction(Function*);

};

#endif
