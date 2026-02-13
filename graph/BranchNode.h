#pragma once

#include "llvm/IR/Instructions.h"
#include "llvm/IR/InstrTypes.h"

#include "APIHelper.h"
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
        if (I->isUnconditional()) return nullptr;

        BranchNode *node = new BranchNode(I);

        Node *condNode = GraphManager::get()->getNode(I->getCondition());

        // These operands are switched..?
        Node *nodeT = GraphManager::get()->getNodeFromOperand(I, 2);
        Node *nodeF = GraphManager::get()->getNodeFromOperand(I, 1);

        node->_edges.push_back(pair("CONDITION", condNode));
        node->_edges.push_back(pair("TRUE", nodeT));
        node->_edges.push_back(pair("FALSE", nodeF));
        return node;
    }
};
