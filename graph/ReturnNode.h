#pragma once
#include "Node.h"
#include "graph/GraphManager.h"
#include "llvm/IR/Instructions.h"

class ReturnNode : public Node {
public:
    ReturnNode(const ReturnInst* I) : Node(I, "ReturnNode") {}

    static ReturnNode* make(const ReturnInst *I) {
        ReturnNode *node = new ReturnNode(I);
        return node;
    }

    void registerEdge(Node* retval) {
        addEdge("RETURNS", retval);
    }

    NodeType getType() { return NodeType::RET; }

private:
    NodeType _type = NodeType::RET;
};
