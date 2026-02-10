#pragma once
#include "Node.h"
#include "llvm/IR/Instructions.h"

class StackAllocation : public Node {
public:
    StackAllocation(const AllocaInst* I) : Node(I, "StackAllocation") {}

    static StackAllocation* make(const AllocaInst *I) {
        StackAllocation *node = new StackAllocation(I);
        return node;
    }
};
