#pragma once
#include "Node.h"
#include "llvm/IR/BasicBlock.h"

class BasicBlockNode : public Node {
public:
    BasicBlockNode(llvm::BasicBlock* B) : Node(B, "Block") {}

    static BasicBlockNode* make(llvm::BasicBlock *B) {
        BasicBlockNode *node = new BasicBlockNode(B);
        return node;
    }
};
