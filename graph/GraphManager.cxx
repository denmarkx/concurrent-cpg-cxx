#include "GraphManager.h"
#include "components/LTOLibCManager.h"
#include "utility/APIHelper.h"

#include "LiteralNode.h"
#include "GraphParser.h"
#include "NullNode.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/MemoryLocation.h"
#include "llvm/Support/AtomicOrdering.h"

GraphManager::GraphManager() {}

void GraphManager::addNode(const Value* value, Node* node) {
    _nodes.push_back(node);

    if (value == nullptr) return;
    _valueNodeMap[value] = node;
}

void GraphManager::removeNode(const Node* node) {
    std::erase(_nodes, node);
    _valueNodeMap.erase(node->getValue());
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
    // We should always try to see if this is an instruction.
    if (const Instruction *instr = dyn_cast<Instruction>(value))
        return getNode(instr);

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

void GraphManager::setAliasResult(Andersen &AA) {
    _AA = &AA;
}

Andersen* GraphManager::getAliasResult() const {
    return _AA;
}

bool GraphManager::alias(const Value* v1, const Value* v2) {
    MemoryLocation L1(v1, MemoryLocation::UnknownSize);
    MemoryLocation L2(v1, MemoryLocation::UnknownSize);
    // return _AA->alias(L1, L2) != AliasResult::NoAlias;
    return false;
}

void GraphManager::insertStore(Node *src, Node *dst, AtomicOrdering atomicType) {
    _stores.push_back({src, dst, atomicType});
}

std::vector<StoreInfo> GraphManager::getAtomicStores(AtomicOrdering atomicType) {
    std::vector<StoreInfo> s;
    for (const auto &x : _stores) {
        if (x.atomicType == atomicType)
            s.push_back(x);
    }
    return s;
}

std::vector<Node*> GraphManager::getAtomicLoads(AtomicOrdering atomicType, Node *node) {
    std::vector<Node*> s;
    for (const auto &x : getAllNodesOf<LoadNode>()) {
        if (x->atomicType == atomicType && x->_src == node) 
            s.push_back(x->_src);
    }
    return s;
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


void GraphManager::setupLTOManager(Module &module) {
    _ltoMgr = new LTOLibCManager(module);
}

LTOLibCManager* GraphManager::getLTOMgr() {
    return _ltoMgr;
}

const llvm::Value* GraphManager::getMemoryObj(const llvm::Value *ptr) {
    if (!ptr) return nullptr;

    const llvm::Value *obj = llvm::getUnderlyingObject(ptr, 8);

    if (llvm::isa<llvm::GlobalValue>(obj) || llvm::isa<llvm::AllocaInst>(obj) || llvm::isa<llvm::Argument>(obj))
        return obj;

    if (auto *callInst = dyn_cast<CallInst>(obj)) {
        if (isHeapAllocator(callInst->getCalledFunction()))
            return callInst;
    }

    // TODO: need to go through AA
    return nullptr;
}

bool GraphManager::isHeapAllocator(llvm::Function *func) {
    if (!func) return false;
    StringRef name = func->getName();
    return name == "malloc" || name == "calloc" || name == "realloc" || name == "__rust_alloc" \
        || name == "exchange_malloc" || name == "_Znwm" || name == "_Znam" || func->hasFnAttribute(Attribute::AllocSize);
}



GraphManager* GraphManager::_graph = nullptr;
