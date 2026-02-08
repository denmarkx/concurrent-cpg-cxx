#pragma once

#include "llvm/ADT/DenseSet.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Analysis/Passes.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/MemoryLocation.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
using namespace llvm;

#include <unordered_map>
#include <unordered_set>
#include <vector>
#include <memory>
#include <deque>

struct ThreadContext {
    Value* handle;
    CallInst* call;
    Function* routine;
    Value* data;
    CallInst* join;
};

typedef std::shared_ptr<ThreadContext> ThreadContextPtr;
typedef std::array<std::unordered_set<std::shared_ptr<ThreadContext>>, 2> ThreadAccessGroups;

enum Usage {
    Read,
    Write,
    Unknown,
};

class ConstructionPass : public ModulePass {
public:
    ConstructionPass() : ModulePass(ID) {}
    bool runOnModule(Module &M) override;
    void getAnalysisUsage(AnalysisUsage &AU) const override;
    Usage identifyDataUsage(std::shared_ptr<ThreadContext> thread);

    void walkFunction(Function *f);
    void processInstruction(Instruction *instr);

public:
    static char ID;

private:
    std::unordered_map<Function*, std::unordered_set<ThreadContextPtr>> _functionThreadMap;
    std::vector<ThreadContextPtr> _threads;
    std::unordered_map<Value*, ThreadAccessGroups> _sharedDataMap;

    std::deque<Instruction*> _worklist;
    DenseSet<Instruction*> _visited;
};
