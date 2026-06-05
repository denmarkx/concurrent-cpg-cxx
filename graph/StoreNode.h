#pragma once

#include "Node.h"
#include "GraphManager.h"

#include "llvm/IR/Instructions.h"
#include "llvm/Support/AtomicOrdering.h"

class StoreNode : public Node {
public:
    StoreNode(const StoreInst *I) : Node(I, "StoreInst") {}

    static StoreNode* make(const StoreInst *I) {
        StoreNode *node = new StoreNode(I);

        Value* src = I->getOperand(0);
        Value* dst = I->getOperand(1);
        if (src == nullptr) return nullptr;
        if (dst == nullptr) return nullptr;

        Node* srcNode = GraphManager::get()->getNode(src);
        if (srcNode == nullptr) return node;
        node->_src = srcNode;

        Node* dstNode = GraphManager::get()->getNode(dst);
        if (dstNode == nullptr) return node;
        node->ptr = dst;

        if (I->isAtomic()) {
            // node->registerLoadEdge(srcNode);
            node->handleAtomicInstruction(I);
            return node;
        }

        // node->registerLoadEdge(srcNode);
        return node;
    }

    // void registerStoreEdge(Node* source) {
    //     addEdge("STORE", source);
    // }

    void handleAtomicInstruction(const StoreInst *instr) {
        addProperty("isAtomic", "true");
        addProperty("ordering", toIRString(instr->getOrdering()));
        atomicType = instr->getOrdering();
    }

    AtomicOrdering atomicType = AtomicOrdering::NotAtomic;
    Node *_src = nullptr;

    NodeType getType() { return NodeType::STORE; }

private:
    NodeType _type = NodeType::STORE;
};
