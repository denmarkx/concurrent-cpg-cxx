#pragma once
#include "Node.h"
#include "llvm/IR/Instructions.h"

class StackAllocation : public Node {
public:
    StackAllocation(llvm::AllocaInst* I) : Node(I, "StackAllocation") {}

    static StackAllocation* make(llvm::AllocaInst *I) {
        StackAllocation *node = new StackAllocation(I);
        return node;
    }
};
