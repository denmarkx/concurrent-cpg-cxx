#pragma once
#include "Node.h"
#include "llvm/IR/Instructions.h"

class GlobalAllocation : public Node {
public:
    GlobalAllocation(llvm::GlobalVariable &G);
    static GlobalAllocation* make(llvm::GlobalVariable &G);
};
