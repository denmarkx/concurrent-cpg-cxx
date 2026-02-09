#include "GraphManager.h"
#include "Node.h"
#include "APIHelper.h"

Node::Node(llvm::Value* value, const std::string label) { 
    _idCounter++;
    _id = _idCounter;
    _label = label;
    _name = Util::getName(value);
    _labels.push_back(label);
    _value = value;

    GraphManager::get()->addNode(value, this);
}

llvm::Value* Node::getValue() {
    return _value;
}

bool Node::isIgnoredIntrinsic(Value* value) {
    return std::find(IgnoredIntrinsics.begin(), IgnoredIntrinsics.end(),
        value->getName().str()) != IgnoredIntrinsics.end();
}

void Node::registerStoreEdge(Node* node) {
    _edges.push_back(pair("STORE", node));
}

void Node::registerAliasEdge(Node* node) {
    _edges.push_back(pair("REFERS_TO", node));
}

void Node::registerCopyEdge(Node* node) {
    _edges.push_back(pair("COPY", node));
}

void Node::registerGEPEdge(Node* node) {
    // TODO: while technically a read, its a read of n bits.
    // though technically we are bordering on the edge of field sensitivity with geps at all.
    // an alias is a better term, but that still is ambiguous in terms of stride.
    _edges.push_back(pair("ALIAS", node));
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
