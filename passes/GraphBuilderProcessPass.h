#pragma once

#include "llvm/Analysis/Passes.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
using namespace llvm;

class GraphBuilderProcessPass : public ModulePass {
public:
    GraphBuilderProcessPass() : ModulePass(ID) {}
    bool runOnModule(Module &M) override;
    void getAnalysisUsage(AnalysisUsage &AU) const override;

public:
    static char ID;
};
