#pragma once
#include "Node.h"
#include "llvm/IR/Instructions.h"

class StackAllocation : public Node {
public:
    StackAllocation(llvm::AllocaInst* I);
    static StackAllocation* make(llvm::AllocaInst* I);
};
