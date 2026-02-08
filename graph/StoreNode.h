#pragma once
#include "Node.h"
#include "llvm/IR/Instructions.h"
#include <vector>

class StoreNode : public Node {
public:
    StoreNode(llvm::StoreInst* I);
    static StoreNode* make(llvm::StoreInst* I);
    void registerStoreEdge(llvm::Value* value, llvm::Value* dest);
};
