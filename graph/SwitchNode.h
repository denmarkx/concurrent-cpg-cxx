#pragma once

#include "llvm/IR/Instructions.h"
#include "llvm/IR/InstrTypes.h"

#include "APIHelper.h"
#include "Node.h"
#include "graph/BranchNode.h"
#include "graph/GraphManager.h"
#include "graph/ICompareNode.h"
#include <utility>

// Represents the case within each switch statement
class SwitchCase : public Node {
public:
    SwitchCase() : Node(nullptr, "SwitchCondition") {}

    static SwitchCase* make(Node *lhs, Node *dest) {
        SwitchCase *node = new SwitchCase();
        node->addEdge("COMPARE_WITH", lhs);
        node->addEdge("DESTINATION", dest);
        return node;
    }
};

// https://llvm.org/docs/LangRef.html#switch-instruction
// switch <intty> <value>, label <defaultdest> [ <intty> <val>, label <dest> ... ]
class SwitchNode : public Node {
public:
    SwitchNode(const SwitchInst* I) : Node(I, "SwitchNode") {}

    static SwitchNode* make(const SwitchInst *I) {
        SwitchNode *node = new SwitchNode(I);

        Node *condNode = GraphManager::get()->getNode(I->getCondition());
        Node *defaultBlockNode = GraphManager::get()->getNodeFromOperand(I, 1);
        node->addEdge("CONDITION", condNode);
        node->addEdge("DEFAULT", defaultBlockNode);

        for (size_t i=2; i < I->getNumOperands(); i += 2) {
            Node *lhs = GraphManager::get()->getNodeFromOperand(I, i);
            Node *dest = GraphManager::get()->getNodeFromOperand(I, i+1);

            SwitchCase *switchCase = SwitchCase::make(lhs, dest);
            node->addEdge("CASE", switchCase);
        }
        return node;
    }
};
