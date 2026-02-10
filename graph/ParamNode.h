#pragma once
#include "Node.h"
#include "llvm/IR/Instructions.h"

class ParamNode : public Node {
public:
    ParamNode(const Value *I) : Node(I, "Parameter") {};

    static ParamNode* make(const Value *I) {
        ParamNode *node = new ParamNode(I);
        return node;
    }
};
