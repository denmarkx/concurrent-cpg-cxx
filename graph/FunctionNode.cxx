#include "FunctionNode.h"
#include <utility>

FunctionNode::FunctionNode(const std::string& name) : Node("Function", name) {}

FunctionNode* FunctionNode::make(llvm::Function &F) {
    FunctionNode *node = new FunctionNode(F.getName().str());
    return node;
}

void FunctionNode::addBlock(BasicBlockNode* block) {
    _edges.push_back(pair("BLOCKS", block));
    _blocks.push_back(block);
}
