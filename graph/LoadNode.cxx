#include "LoadNode.h"
#include "GraphManager.h"
#include <iostream>

LoadNode::LoadNode(llvm::LoadInst *I) : Node(I, "LoadInst") {}

LoadNode* LoadNode::make(llvm::LoadInst *I) {
    LoadNode *node = new LoadNode(I);
    I->print(llvm::outs());
    std::cout << "\n";

    llvm::Value* src = I->getOperand(0);
    std::cout << "src = " << (GraphManager::get()->getNode(src) != nullptr) << "\n";

    return node;
}
