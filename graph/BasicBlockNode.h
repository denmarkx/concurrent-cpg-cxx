#pragma once
#include "llvm/IR/BasicBlock.h"

#include "Node.h"
#include <utility>

class BasicBlockNode : public Node {
public:
    BasicBlockNode(const BasicBlock* B) : Node(B, "Block") {}

    static BasicBlockNode* make(const BasicBlock *B) {
        BasicBlockNode *node = new BasicBlockNode(B);
        std::string name = "start";
        if (!B->isEntryBlock()) {
            name = "";
            llvm::raw_string_ostream stream(name);
            B->print(stream);
            name = name.substr(0, name.find_first_of(':'));
        }
        node->_name = name;
        return node;
    }

    void addNode(Node* node) {
        // While this is useful, it hurts. Perhaps we can
        // redefine this via cfg.
        // _edges.push_back(pair("BLOCK_CHILD", node));
    }
};
