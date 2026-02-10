#pragma once
#include "Node.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/Instructions.h"

class GlobalAllocation : public Node {
public:
    GlobalAllocation(const GlobalVariable *G) : Node(G, "GlobalAllocation") {}

    static GlobalAllocation* make(const GlobalVariable *G) {
        GlobalAllocation *node = new GlobalAllocation(G);
        return node;
    }

};
