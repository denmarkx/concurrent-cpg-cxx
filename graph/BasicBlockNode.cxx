#include "BasicBlockNode.h"

BasicBlockNode::BasicBlockNode(llvm::BasicBlock& B) : Node(&B, "Block") {}

BasicBlockNode* BasicBlockNode::make(llvm::BasicBlock &B) {
    BasicBlockNode *node = new BasicBlockNode(B);
    return node;
}
