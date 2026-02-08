#include "StoreNode.h"
#include "GraphManager.h"
#include <iostream>
#include <utility>

// XXX: this actually isnt needed since stores arent an ssa instr.

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
    node->registerStoreEdge(src, dest);
    return node;
}

void StoreNode::registerStoreEdge(llvm::Value* source, llvm::Value* dest) {
    Node *srcNode = GraphManager::get()->getNode(source);
    Node *destNode = GraphManager::get()->getNode(dest);

    if (srcNode == nullptr || destNode == nullptr) return;
    srcNode->registerStoreEdge(destNode);
}
