#include "StoreNode.h"
#include "GraphManager.h"
#include <iostream>

StoreNode::StoreNode(llvm::StoreInst *I) : Node(I, "StoreInst") {}

StoreNode* StoreNode::make(llvm::StoreInst *I) {
    StoreNode *node = new StoreNode(I);
    I->print(llvm::outs());
    std::cout << "\n";

    llvm::Value* src = I->getOperand(0);
    Node* srcNode = GraphManager::get()->handlePrimitive(src);
    std::cout << "src = " << (GraphManager::get()->getNode(src) != nullptr) << "\n";
    llvm::Value* dest = I->getOperand(1);
    std::cout << "dest = " << (GraphManager::get()->getNode(dest) != nullptr) << "\n\n";

    return node;
}
