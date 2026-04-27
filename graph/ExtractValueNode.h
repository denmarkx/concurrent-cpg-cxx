#pragma once

#include "llvm/IR/Instructions.h"
#include "llvm/IR/BasicBlock.h"

#include "GraphManager.h"
#include "Node.h"

// https://llvm.org/docs/LangRef.html#extractvalue-instruction
class ExtractValueNode : public Node {
public:
    ExtractValueNode(const ExtractValueInst *I) : Node(I, "ExtractValueNode") {}

    static ExtractValueNode* make(const ExtractValueInst *I) {
        ExtractValueNode *node = new ExtractValueNode(I);

        // extractvalue <aggregate type> <val>, <idx>{, <idx>}*
        // where indices specify which value to extract from the aggregate.
        const Value *aggVal = I->getAggregateOperand();

        Node *aggNode = GraphManager::get()->getNode(aggVal);

        // TODO: support multiple indices.
        node->registerIndexEdge(aggNode, -1);
        return node;
    }

    void registerIndexEdge(Node *aggregate, int index) {
        // TODO: index should be a field prop
        _edges.push_back(pair("FIELD", aggregate));
    }
};
