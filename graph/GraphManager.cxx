#include "GraphManager.h"
#include "LiteralNode.h"
#include "APIHelper.h"
#include "GraphParser.h"
#include "NullNode.h"

GraphManager::GraphManager() {}

void GraphManager::addNode(llvm::Value* value, Node* node) {
    _nodes.push_back(node);

    if (value == nullptr) return;
    _valueNodeMap[value] = node;
}

Node* GraphManager::handlePrimitive(llvm::Value* value) {
    Node* node = _valueNodeMap[value];
    if (node == nullptr) {
        if (value->getType()->isPointerTy()) {
            // TODO: maybe another way to do this?
            std::string name = Util::getName(value);
            if (name == "ptr null") return NullNode::make();
        }
        node = LiteralNode::make(value);
    }
    return node;
}

std::vector<Node*> GraphManager::getNodes() {
    return _nodes;
}

Node* GraphManager::getNode(llvm::Instruction* instr) {
    Node* node = _valueNodeMap[instr];
    if (node == nullptr) {
        node = GraphParser::handleNode(instr);
    }
    return node;
}

Node* GraphManager::getNode(llvm::Value* value) {
    Node* node = _valueNodeMap[value];
    if (node == nullptr) {
        node = GraphParser::handleNode(value);
    }
    return node;
}

GraphManager* GraphManager::get() {
    if (_graph == nullptr) {
        _graph = new GraphManager();
    }
    return _graph;
}

GraphManager* GraphManager::_graph = nullptr;
