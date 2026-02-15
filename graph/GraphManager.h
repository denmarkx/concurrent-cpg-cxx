#pragma once

#include "BidirectionalCallGraph.h"
#include "Node.h"
#include "llvm/Analysis/MemorySSA.h"
#include "llvm/IR/Value.h"
#include "andersen/AndersenAA.h"

#include <unordered_map>
#include <vector>
using namespace std;
using namespace llvm;

class GraphManager {
public:
    GraphManager();
    GraphManager(const GraphManager& other) = delete;

    void addNode(const Value* value, Node* node);
    std::vector<Node*> getNodes() const;

    Node* getNode(const Value* value);
    Node* getNode(const Instruction* instr);
    Node* getNodeFromOperand(const Instruction* instr, unsigned int idx);

    bool hasNode(const Value* value);
    Node* getNodeOrNull(const Value *value);

    bool alias(const Value* v1, const Value* v2);

    void setAliasResult(AndersenAAResult &AA);
    AndersenAAResult* getAliasResult() const;

    void setMemorySSAResult(const Function* F, MemorySSA &MSAA);
    MemorySSA* getMemorySSAResult(const Function* F) const;

    void setCallGraph(BidirectionalCallGraph *callGraph);
    BidirectionalCallGraph* getCallGraph();

    static GraphManager* get();
    static GraphManager* _graph;

private:
    std::vector<Node*> _nodes;
    std::unordered_map<const Value*, Node*> _valueNodeMap;
    std::unordered_map<const Function*, MemorySSA*> _memorySSAMap;

    AndersenAAResult* _AA;
    BidirectionalCallGraph* _callGraph;
};
