#include "LiteralNode.h"

LiteralNode::LiteralNode(llvm::Value *I) : Node(I, "Literal") {}

LiteralNode* LiteralNode::make(llvm::Value *I) {
    LiteralNode *node = new LiteralNode(I);
    return node;
}
