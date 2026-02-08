#include "FunctionNode.h"
#include "ParamNode.h"
#include "llvm/IR/Argument.h"
#include <utility>

FunctionNode::FunctionNode(llvm::Function &F) : Node(&F, "Function") {}

FunctionNode* FunctionNode::make(llvm::Function &F) {
    FunctionNode *node = new FunctionNode(F);

    for (llvm::Argument &arg : F.args()) {
        ParamNode *param = new ParamNode(&arg);
        node->addParam(param);
    }

    return node;
}

void FunctionNode::addBlock(BasicBlockNode* block) {
    _edges.push_back(pair("BLOCKS", block));
    _blocks.push_back(block);
}

void FunctionNode::addParam(ParamNode* param) {
    _edges.push_back(pair("PARAMETER", param));
    _params.push_back(param);
}
