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

    void addNode(Value* value, Node* node);
    std::vector<Node*> getNodes();

    Node* getNode(Value* value);
    Node* getNode(Instruction* instr);
    Node* handlePrimitive(Value* value);
    bool hasNode(Value* value);
    Node* getNodeOrNull(Value *value);

    bool alias(Value* v1, Value* v2);

    void setAliasResult(AndersenAAResult &AA);
    AndersenAAResult* getAliasResult();

    static GraphManager* get();
    static GraphManager* _graph;

private:
    std::vector<Node*> _nodes;
    std::unordered_map<Value*, Node*> _valueNodeMap;

    AndersenAAResult* _AA;
};
