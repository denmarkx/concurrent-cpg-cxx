#pragma once
#include "Node.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/Instructions.h"

class GlobalConstant : public Node {
public:
    GlobalConstant(llvm::GlobalVariable *G) : Node(G, "GlobalConstant") {}

    static GlobalConstant* make(llvm::GlobalVariable *G) {
        GlobalConstant *node = new GlobalConstant(G);
        return node;
    }

};
