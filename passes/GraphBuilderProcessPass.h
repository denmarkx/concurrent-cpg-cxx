#pragma once

#include "llvm/Analysis/Passes.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include <chrono>
using namespace llvm;

class GraphBuilderProcessPass : public ModulePass {
public:
    GraphBuilderProcessPass() : ModulePass(ID) {}
    bool runOnModule(Module &M) override;
    void getAnalysisUsage(AnalysisUsage &AU) const override;

private:
    void printElapsed(std::string s, std::chrono::time_point<std::chrono::system_clock> start,
        std::chrono::time_point<std::chrono::system_clock> end);

public:
    static char ID;
};
