#pragma once

#include <unordered_map>
#include <vector>

#include "components/ComponentGraphBase.h"
#include "concurrency/ThreadNode.h"
#include "graph/Node.h"

class HappensBeforeGraph {
public:
    HappensBeforeGraph();
    void build(ThreadNode *entry);
    void addEdge(Node* start, Node* end);
    EdgeInfo getProcessedEdges() const;

    static HappensBeforeGraph* get();
    static HappensBeforeGraph* _instance;

private:
    std::unordered_map<Node*, std::vector<Node*>> _graph;
};