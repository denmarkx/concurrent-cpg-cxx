#pragma once
#include "Node.h"
#include "llvm/IR/Instructions.h"

class LoadNode : public Node {
public:
    LoadNode(llvm::LoadInst *I) : Node(I, "LoadInst") {}

    static LoadNode* make(llvm::LoadInst *I) {
        LoadNode *node = new LoadNode(I);

        llvm::Value* src = I->getOperand(0);
        if (src == nullptr) return nullptr;

        Node* srcNode = GraphManager::get()->getNode(src);
        if (srcNode != nullptr) {
            node->registerLoadEdge(srcNode);
        }
        return node;
    }

    void registerLoadEdge(Node* source) {
        _edges.push_back(pair("DEREFERENCES", source));
    }
};
