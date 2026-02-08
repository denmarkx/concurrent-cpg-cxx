#include "GraphManager.h"
#include "LiteralNode.h"

GraphManager::GraphManager() {}

void GraphManager::addNode(llvm::Value* value, Node* node) {
    _nodes.push_back(node);
    _valueNodeMap[value] = node;
}

Node* GraphManager::handlePrimitive(llvm::Value* value) {
    Node* node = _valueNodeMap[value];
    if (node == nullptr) {
        node = LiteralNode::make(value);
    }
    return node;
}

std::vector<Node*> GraphManager::getNodes() {
    return _nodes;
}

Node* GraphManager::getNode(llvm::Value* value) {
    Node* node = _valueNodeMap[value];
    return node;
}

GraphManager* GraphManager::get() {
    if (_graph == nullptr) {
        _graph = new GraphManager();
    }
    return _graph;
}

GraphManager* GraphManager::_graph = nullptr;
