#pragma once

#include "llvm/IR/Instructions.h"
#include "llvm/IR/BasicBlock.h"

#include "GraphManager.h"
#include "Node.h"

// https://llvm.org/docs/LangRef.html#insertvalue-instruction
class InsertValueNode : public Node {
public:
    InsertValueNode(const InsertValueInst *I) : Node(I, "InsertValueNode") {}

    static InsertValueNode* make(const InsertValueInst *I) {
        InsertValueNode *node = new InsertValueNode(I);

        // <result> = insertvalue <aggregate type> <val>, <ty> <elt>, <idx>{, <idx>}*
        // where <ty> is the element type and <elt> is the element value.
        // where <idx> is the indices of the aggregate.

        // where <val> may be poison and indicative of a new aggregate.

        const Value *aggVal = I->getAggregateOperand();
        Node *aggNode = GraphManager::get()->getNode(aggVal);

        if (aggNode) // will be null if poison 
            node->registerAggregateValue(aggNode);

        const Value *insVal = I->getInsertedValueOperand();
        Node *insValNode = GraphManager::get()->getNode(insVal);
        node->registerFieldValue(insValNode, -1);
        return node;
    }

    void registerAggregateValue(Node *node) {
        addEdge("PREVIOUS_AGGREGATE", node);
    }

    void registerFieldValue(Node *node, int idx) {
        addEdge("FIELD", node, "index", std::to_string(idx));
    }
};
