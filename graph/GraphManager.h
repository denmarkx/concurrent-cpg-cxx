#pragma once

#include "Node.h"
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

    bool hasNode(const Value* value);
    Node* getNodeOrNull(const Value *value);

    bool alias(const Value* v1, const Value* v2);

    void setAliasResult(AndersenAAResult &AA);
    AndersenAAResult* getAliasResult() const;

    static GraphManager* get();
    static GraphManager* _graph;

private:
    std::vector<Node*> _nodes;
    std::unordered_map<const Value*, Node*> _valueNodeMap;

    AndersenAAResult* _AA;
};
