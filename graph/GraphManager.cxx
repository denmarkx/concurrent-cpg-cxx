#include "GraphManager.h"
#include "LiteralNode.h"
#include "APIHelper.h"
#include "GraphParser.h"
#include "NullNode.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/MemoryLocation.h"

GraphManager::GraphManager() {}

void GraphManager::addNode(const Value* value, Node* node) {
    _nodes.push_back(node);

    if (value == nullptr) return;
    _valueNodeMap[value] = node;
}

std::vector<Node*> GraphManager::getNodes() const {
    return _nodes;
}

bool GraphManager::hasNode(const Value* value) {
    return _valueNodeMap[value] != nullptr;
}

Node* GraphManager::getNode(const Instruction* instr) {
    Node* node = _valueNodeMap[instr];
    if (node == nullptr) {
        node = GraphParser::handleNode(instr);
    }
    return node;
}

Node* GraphManager::getNode(const Value* value) {
    Node* node = _valueNodeMap[value];
    if (node == nullptr) {
        node = GraphParser::handleNode(value);
    }
    return node;
}

Node* GraphManager::getNodeFromOperand(const Instruction* instr, unsigned int idx) {
    const Value *operand = instr->getOperand(idx);
    return getNode(operand);
}

Node* GraphManager::getNodeOrNull(const Value *value) {
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

AndersenAAResult* GraphManager::getAliasResult() const {
    return _AA;
}

bool GraphManager::alias(const Value* v1, const Value* v2) {
    MemoryLocation L1(v1, MemoryLocation::UnknownSize);
    MemoryLocation L2(v1, MemoryLocation::UnknownSize);
    return _AA->alias(L1, L2) != AliasResult::NoAlias;
}


void GraphManager::setMemorySSACall(MSSAGet getter) { 
    _mssaGetter = std::move(getter);
}

MemorySSA &GraphManager::getMemorySSAResult(const Function* F) const {
    // this may be hacky
    Function &constFunc = const_cast<Function &>(*F);
    return _mssaGetter(constFunc);
}

void GraphManager::setCallGraph(BidirectionalCallGraph *callGraph) {
    _callGraph = callGraph;
}

BidirectionalCallGraph* GraphManager::getCallGraph() { 
    return _callGraph;
};

GraphManager* GraphManager::_graph = nullptr;
