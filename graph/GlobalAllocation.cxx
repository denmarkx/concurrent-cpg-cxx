#include "GlobalAllocation.h"
#include "llvm/IR/GlobalVariable.h"
#include <iostream>

GlobalAllocation::GlobalAllocation(llvm::GlobalVariable &G)
    : Node(&G, "GlobalAllocation") {}

GlobalAllocation* GlobalAllocation::make(llvm::GlobalVariable &G) {
    GlobalAllocation *node = new GlobalAllocation(G);
    return node;
}
