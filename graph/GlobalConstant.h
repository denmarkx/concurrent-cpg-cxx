#pragma once
#include "Node.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/Instructions.h"

class GlobalConstant : public Node {
public:
    GlobalConstant(const GlobalVariable *G) : Node(G, "GlobalConstant") {}

    static GlobalConstant* make(const GlobalVariable *G) {
        GlobalConstant *node = new GlobalConstant(G);
        return node;
    }

};
