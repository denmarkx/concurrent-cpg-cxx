#include "CallNode.h"
#include "GraphManager.h"
#include <iostream>
#include <utility>

CallNode::CallNode(llvm::CallInst *I) : Node(I, "CallInst") {}

CallNode* CallNode::make(llvm::CallInst *I) {
    CallNode *node = new CallNode(I);

    for (llvm::Use &arg : I->args()) {
        node->addArgument(&arg);
    }

    return node;
}

void CallNode::addArgument(llvm::Use *value) {
    Node *argNode = GraphManager::get()->getNode(value->get());
    if (argNode == nullptr) return;

    _edges.push_back(pair("ARGUMENT", argNode));
    _arguments.push_back(argNode);
}
