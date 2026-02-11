#pragma once
#include "Node.h"
#include "llvm/IR/BasicBlock.h"
#include <utility>

class BasicBlockNode : public Node {
public:
    BasicBlockNode(const BasicBlock* B) : Node(B, "Block") {}

    static BasicBlockNode* make(const BasicBlock *B) {
        BasicBlockNode *node = new BasicBlockNode(B);
        return node;
    }

    void addNode(Node* node) {
        // While this is useful, it hurts. Perhaps we can
        // redefine this via cfg.
        // _edges.push_back(pair("BLOCK_CHILD", node));
    }
};
