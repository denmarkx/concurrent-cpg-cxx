#pragma once
#include "Node.h"
#include "llvm/IR/BasicBlock.h"

class BasicBlockNode : public Node {
public:
    BasicBlockNode(const BasicBlock* B) : Node(B, "Block") {}

    static BasicBlockNode* make(const BasicBlock *B) {
        BasicBlockNode *node = new BasicBlockNode(B);
        return node;
    }
};
