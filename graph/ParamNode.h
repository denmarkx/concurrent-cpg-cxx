#pragma once
#include "Node.h"
#include "llvm/IR/Instructions.h"

class ParamNode : public Node {
public:
    ParamNode(llvm::Value *I) : Node(I, "Parameter") {};

    static ParamNode* make(llvm::Value *I) {
        ParamNode *node = new ParamNode(I);
        return node;
    }
};
