#pragma once
#include "Node.h"
#include "llvm/IR/BasicBlock.h"

class BasicBlockNode : public Node {
public:
    BasicBlockNode(const std::string& name);
    static BasicBlockNode* make(llvm::BasicBlock& F);
};
