#include "LoadNode.h"
#include "GraphManager.h"
#include <iostream>
#include <utility>

LoadNode::LoadNode(llvm::LoadInst *I) : Node(I, "LoadInst") {}

LoadNode* LoadNode::make(llvm::LoadInst *I) {
    LoadNode *node = new LoadNode(I);
    I->print(llvm::outs());
    std::cout << "\n";

    llvm::Value* src = I->getOperand(0);
    if (src == nullptr) return nullptr;

    Node* srcNode = GraphManager::get()->getNode(src);
    if (srcNode != nullptr) {
        node->registerLoadEdge(srcNode);
    } else {
        std::cout << "cant find srcnode?\n"; // from globals atm
    }
    return node;
}

void LoadNode::registerLoadEdge(Node* source) {
    _edges.push_back(pair("DEREFERENCES", source));
}
