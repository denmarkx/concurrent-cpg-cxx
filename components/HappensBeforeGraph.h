#pragma once

#include <stack>
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

    bool happensBefore(Node *a, Node *b);

    static HappensBeforeGraph* get();
    static HappensBeforeGraph* _instance;

private:
    void computeSCC();
    void connectSCC(Node*);

    void computeDAG();
    void computeReachability();

private:
    std::unordered_map<Node*, std::vector<Node*>> _graph;
    std::vector<std::vector<Node*>> _scc;
    std::unordered_map<Node*, int> _sccIds;
    std::unordered_map<Node*, int> _index;
    std::unordered_map<Node*, int> _link;
    std::unordered_map<Node*, bool> _state;
    std::vector<std::vector<int>> _dag;
    std::vector<llvm::BitVector> _reach;

    unsigned int _nextIdx = 0;
    std::stack<Node*> _stack;
};