#pragma once
#include "Node.h"
#include "llvm/IR/BasicBlock.h"

class BasicBlockNode : public Node {
public:
    BasicBlockNode(llvm::BasicBlock& B);
    static BasicBlockNode* make(llvm::BasicBlock& B);
};
