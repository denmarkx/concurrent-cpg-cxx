#pragma once
#include "Node.h"
#include "BasicBlockNode.h"

#include "llvm/IR/Function.h"
#include <vector>

class FunctionNode : public Node {
public:
    FunctionNode(const std::string& name);
    static FunctionNode* make(llvm::Function& F);

    void addBlock(BasicBlockNode* block);

private:
    std::vector<BasicBlockNode*> _blocks;
};
