#pragma once
#include "Node.h"
#include "BasicBlockNode.h"
#include "ParamNode.h"

#include "llvm/IR/Function.h"
#include <vector>

class FunctionNode : public Node {
public:
    FunctionNode(llvm::Function& F);
    static FunctionNode* make(llvm::Function& F);

    void addBlock(BasicBlockNode* block);
    void addParam(ParamNode* param);

private:
    std::vector<BasicBlockNode*> _blocks;
    std::vector<ParamNode*> _params;
};
