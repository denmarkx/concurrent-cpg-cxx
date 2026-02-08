#include "StackAllocation.h"
StackAllocation::StackAllocation(llvm::AllocaInst *I) : Node(I, "StackAllocation") {}

StackAllocation* StackAllocation::make(llvm::AllocaInst *I) {
    StackAllocation *node = new StackAllocation(I);
    return node;
}
