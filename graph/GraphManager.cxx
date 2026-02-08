#include "GraphManager.h"

GraphManager::GraphManager() {}

void GraphManager::addNode(Node* node) {
    _nodes.push_back(node);
}

std::vector<Node*> GraphManager::getNodes() {
    return _nodes;
}

GraphManager* GraphManager::get() {
    if (_graph == nullptr) {
        _graph = new GraphManager();
    }
    return _graph;
}

GraphManager* GraphManager::_graph = nullptr;
