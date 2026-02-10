#pragma once
#include "Node.h"
#include "llvm/IR/Instructions.h"

class LiteralNode : public Node {
public:
    LiteralNode(const Value *I) : Node(I, "Literal") {}

    static LiteralNode* make(const Value *I) {
        LiteralNode *node = new LiteralNode(I);
        return node;
    }
};
