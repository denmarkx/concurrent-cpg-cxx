#include "BasicBlockNode.h"

BasicBlockNode::BasicBlockNode(const std::string& name) : Node("Block", name) {}

BasicBlockNode* BasicBlockNode::make(llvm::BasicBlock &B) {
    BasicBlockNode *node = new BasicBlockNode(B.getName().str());
    return node;
}
