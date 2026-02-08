#include "GraphManager.h"
#include "Node.h"
#include "APIHelper.h"

Node::Node(llvm::Value* value, const std::string label) { 
    _idCounter++;
    _id = _idCounter;
    _label = label;
    _name = Util::getName(value);
    _labels.push_back(label);

    GraphManager::get()->addNode(value, this);
}

void Node::registerStoreEdge(Node* node) {
    _edges.push_back(pair("STORE", node));
}

unsigned int Node::getId() const {
    return _id;
}

const std::string& Node::getName() const {
    return _name;
}

const std::vector<std::string>& Node::getLabels() const {
    return _labels;
}

const std::vector<std::pair<std::string, Node*>>& Node::getEdges() const {
    return _edges;
}
