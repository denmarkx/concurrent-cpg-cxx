#include "ParamNode.h"

ParamNode::ParamNode(llvm::Value *I) : Node(I, "Parameter") {}

ParamNode* ParamNode::make(llvm::Value *I) {
    ParamNode *node = new ParamNode(I);
    return node;
}
