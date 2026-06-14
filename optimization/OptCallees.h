#ifndef LLVM_TRANSFORMS_MYOPTPASS_H
#define LLVM_TRANSFORMS_MYOPTPASS_H

#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/PassManager.h"
using namespace llvm;

class OptCallees : public PassInfoMixin<OptCallees> {
public:
    PreservedAnalyses run(Module &F, ModuleAnalysisManager &AM);

private:
    void replaceCall(Function*, std::vector<Function*>);
};

#endif
