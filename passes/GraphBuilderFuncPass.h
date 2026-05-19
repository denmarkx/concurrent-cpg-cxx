#pragma once

#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Analysis/Passes.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Pass.h"
using namespace llvm;

class GraphBuilderFuncPass : public FunctionPass {
public:
    GraphBuilderFuncPass() : FunctionPass(ID) {}
    bool runOnFunction(Function &F) override;
    void getAnalysisUsage(AnalysisUsage &AU) const override;

public:
    static char ID;
};
