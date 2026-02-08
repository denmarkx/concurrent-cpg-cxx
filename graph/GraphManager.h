#pragma once

#include "Node.h"

#include <vector>
using namespace std;

class GraphManager {
public:
    GraphManager();
    GraphManager(const GraphManager& other) = delete;
    void addNode(Node* node);
    std::vector<Node*> getNodes();

    static GraphManager* get();
    static GraphManager* _graph;

private:
    std::vector<Node*> _nodes;
};
