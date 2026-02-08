#pragma once
#include "Node.h"
#include "llvm/IR/Instructions.h"

class LiteralNode : public Node {
public:
    LiteralNode(llvm::Value *I);
    static LiteralNode* make(llvm::Value* I);
};
