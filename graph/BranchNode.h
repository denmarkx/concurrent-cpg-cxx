#pragma once

#include "llvm/IR/Instructions.h"
#include "llvm/IR/InstrTypes.h"

#include "utility/APIHelper.h"
#include "Node.h"
#include "graph/GraphManager.h"
#include <utility>

// https://llvm.org/docs/LangRef.html#br-instruction
// br i1 <cond>, label <iftrue>, label <iffalse>
// br label <dest>
class BranchNode : public Node {
public:
    BranchNode(const BranchInst* I) : Node(I, "BranchNode") {}

    static BranchNode* make(const BranchInst *I) {
        BranchNode *node = new BranchNode(I);
        node->_conditional = I->isConditional();

        if (I->isConditional()) {
            Node *condNode = GraphManager::get()->getNode(I->getCondition());

            // These operands are switched..?
            node->_truePath = GraphManager::get()->getNodeFromOperand(I, 2);
            node->_falsePath = GraphManager::get()->getNodeFromOperand(I, 1);

            node->addEdge("CONDITION", condNode);
        } else
            node->_unconditionalPath = GraphManager::get()->getNode(I->getSuccessor(0));
        return node;
    }

    NodeType getType() { return NodeType::BR; }

    bool isConditional() {
        return _conditional;
    }

    Node* getUnconditionalPath() {
        return _unconditionalPath;
    }

    Node* getTruePath() {
        return _truePath;
    }

    Node* getFalsePath() {
        return _falsePath;
    }

private:
    NodeType _type = NodeType::BR;
    bool _conditional = false;

    Node* _unconditionalPath = nullptr;
    Node* _truePath = nullptr;
    Node* _falsePath = nullptr;

};
