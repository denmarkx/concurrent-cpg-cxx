#include <llvm/Support/raw_ostream.h>
#include <llvm/IR/DebugInfoMetadata.h>

#include "GraphManager.h"
#include "Node.h"
#include "APIHelper.h"

Node::Node(const Value* value, const std::string label) { 
    _idCounter++;
    _id = _idCounter;
    _label = label;
    _name = Util::getName(value);
    _labels.push_back(label);
    _value = value;

    GraphManager::get()->addNode(value, this);
    if (value != nullptr) {
        setDefaultProperties(value);
        if (const Instruction *I = dyn_cast<Instruction>(value)) {
           handleDebugInfo(I);
        }
    }

    path = new AccessPath();
    path->field = this;
}

AccessPath* Node::getAccessPath() {
    return path;
}

void Node::setDefaultProperties(const Value *value) {
    std::string code = "";
    raw_string_ostream stream(code);
    value->print(stream);

    addProperty("code", code);
}

void Node::handleDebugInfo(const Instruction *instr) {
    if (!instr->hasMetadata()) return;

    const DebugLoc &loc = instr->getDebugLoc();

    addProperty("column", std::to_string(loc.getCol()));
    addProperty("line", std::to_string(loc.getLine()));

    DIScope *scope = dyn_cast<DIScope>(loc.getScope());
    addProperty("file", scope->getFilename().str());
}

bool Node::isIgnoredIntrinsic(const Value* value) {
    if (value == nullptr) return false;
    return std::find(IgnoredIntrinsics.begin(), IgnoredIntrinsics.end(),
        value->getName().str()) != IgnoredIntrinsics.end();
}

void Node::addProperty(std::string key, std::string value) {
    _properties[key] = value;
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

void Node::registerFieldEdge(Node* node) {
    _edges.push_back(pair("FIELD", node));
}

void Node::registerCFGEdge(Node* node) {
    _edges.push_back(pair("CFG", node));
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

const std::unordered_map<std::string, std::string>& Node::getProperties() const {
    return _properties;
}

const Value* Node::getValue() const {
    return _value;
}
