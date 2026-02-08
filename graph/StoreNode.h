#pragma once
#include "Node.h"
#include "llvm/IR/Instructions.h"

class StoreNode : public Node {
public:
    StoreNode(llvm::StoreInst* I);
    static StoreNode* make(llvm::StoreInst* I);
};
