#pragma once
#include "Node.h"
#include "graph/GraphManager.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Value.h"
#include <utility>

class BinaryOperatorNode : public Node {
public:
    BinaryOperatorNode(llvm::BinaryOperator *G) : Node(G, "BinaryOperatorNode") {}

    static BinaryOperatorNode* make(llvm::BinaryOperator *inst) {
        BinaryOperatorNode *node = new BinaryOperatorNode(inst);

        llvm::Value* lhs = inst->getOperand(0);
        Node* lhsNode = GraphManager::get()->getNode(lhs);

        llvm::Value* rhs = inst->getOperand(1);
        Node* rhsNode = GraphManager::get()->getNode(rhs);

        node->registerBinaryEdge(lhsNode, rhsNode);
        return node;
    }

    void registerBinaryEdge(Node* lhsNode, Node* rhsNode) {
        lhs = lhsNode;
        rhs = rhsNode;

        _edges.push_back(pair("LHS", lhsNode));
        _edges.push_back(pair("RHS", rhsNode));
    }

private:
    Node* lhs = nullptr;
    Node* rhs = nullptr;
};
