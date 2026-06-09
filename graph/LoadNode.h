#pragma once

#include "Node.h"
#include "GraphManager.h"

#include "llvm/IR/Instructions.h"
#include "llvm/Support/AtomicOrdering.h"

class LoadNode : public Node {
public:
    LoadNode(const LoadInst *I) : Node(I, "LoadInst") {}

    static LoadNode* make(const LoadInst *I) {
        LoadNode *node = new LoadNode(I);

        Value* src = I->getOperand(0);
        if (src == nullptr) return nullptr;

        Node* srcNode = GraphManager::get()->getNode(src);
        if (srcNode == nullptr) return node;
        node->_src = srcNode;
        node->ptr = src;

        if (I->isAtomic()) {
            node->registerLoadEdge(srcNode);
            node->handleAtomicInstruction(I);
            return node;
        }

        node->registerLoadEdge(srcNode);
        return node;
    }

    void registerLoadEdge(Node* source) {
        addEdge("DEREFERENCES", source);
    }

    void handleAtomicInstruction(const LoadInst *instr) {
        addProperty("isAtomic", "true");
        addProperty("ordering", toIRString(instr->getOrdering()));
        setAtomicOrder(instr->getOrdering());
    }

    Node *_src = nullptr;

    NodeType getType() {
        if (getAtomicOrder() != llvm::AtomicOrdering::NotAtomic)
            return NodeType::ATOMIC_LOAD;
        return NodeType::LOAD;
    }

private:
    NodeType _type = NodeType::LOAD;
};
