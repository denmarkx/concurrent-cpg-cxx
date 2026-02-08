#include "GraphManager.h"
#include "Node.h"

Node::Node(const std::string label, const std::string name) { 
    _idCounter++;
    _id = _idCounter;
    _label = label;
    _name = name;
    _labels.push_back(label);

    GraphManager::get()->addNode(this);
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
