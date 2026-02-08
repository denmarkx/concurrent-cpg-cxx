#pragma once
#include "Node.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/Instructions.h"

class GlobalAllocation : public Node {
public:
    GlobalAllocation(llvm::GlobalVariable *G) : Node(G, "GlobalAllocation") {}

    static GlobalAllocation* make(llvm::GlobalVariable *G) {
        GlobalAllocation *node = new GlobalAllocation(G);
        return node;
    }

};
