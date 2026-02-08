#pragma once

#include "Node.h"
#include "llvm/IR/Value.h"

#include <unordered_map>
#include <vector>
using namespace std;

class GraphManager {
public:
    GraphManager();
    GraphManager(const GraphManager& other) = delete;

    void addNode(llvm::Value* value, Node* node);
    std::vector<Node*> getNodes();

    Node* getNode(llvm::Value* value);
    Node* handlePrimitive(llvm::Value* value);

    static GraphManager* get();
    static GraphManager* _graph;

private:
    std::vector<Node*> _nodes;
    std::unordered_map<llvm::Value*, Node*> _valueNodeMap;
};
