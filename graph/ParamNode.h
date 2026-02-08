#pragma once
#include "Node.h"
#include "llvm/IR/Instructions.h"

class ParamNode : public Node {
public:
    ParamNode(llvm::Value *I);
    static ParamNode* make(llvm::Value* I);
};
