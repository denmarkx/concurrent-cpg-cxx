#pragma once
#include "Node.h"
#include "llvm/IR/Instructions.h"

class LoadNode : public Node {
public:
    LoadNode(llvm::LoadInst *I);

    void registerLoadEdge(Node* source);
    static LoadNode* make(llvm::LoadInst* I);
};
