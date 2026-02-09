#include "GraphManager.h"
#include "LiteralNode.h"
#include "APIHelper.h"
#include "GraphParser.h"
#include "NullNode.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/MemoryLocation.h"

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

bool GraphManager::hasNode(llvm::Value* value) {
    return _valueNodeMap[value] != nullptr;
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

Node* GraphManager::getNodeOrNull(llvm::Value *value) {
    return _valueNodeMap[value];
}

GraphManager* GraphManager::get() {
    if (_graph == nullptr) {
        _graph = new GraphManager();
    }
    return _graph;
}

void GraphManager::setAliasResult(AndersenAAResult &AA) {
    _AA = &AA;
}

AndersenAAResult* GraphManager::getAliasResult() {
    return _AA;
}

bool GraphManager::alias(Value* v1, Value* v2) {
    MemoryLocation L1(v1, MemoryLocation::UnknownSize);
    MemoryLocation L2(v1, MemoryLocation::UnknownSize);
    return _AA->alias(L1, L2) != AliasResult::NoAlias;
}

GraphManager* GraphManager::_graph = nullptr;
