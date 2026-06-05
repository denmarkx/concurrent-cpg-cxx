#pragma once

#include <stack>
#include <unordered_map>
#include <vector>

#include "components/ComponentGraphBase.h"
#include "concurrency/ThreadNode.h"
#include "graph/Node.h"

struct HBNode {
    Node *node;
    uint32_t threadId;
};

struct ThreadRegistrar {
    uint32_t _next=0;
    std::unordered_map<const llvm::Function*, uint32_t> entry2Thread;

    uint32_t getOrCreate(const llvm::Function *entry) {
        auto [it, inserted] = entry2Thread.emplace(entry, _next);
        if (inserted) ++_next;
        return it->second;
    }
};

class HappensBeforeGraph {
public:
    HappensBeforeGraph();
    void build(FunctionNode *entry);
    void buildTransitive();
    void addEdge(HBNode* start, HBNode *end);
    EdgeInfo getProcessedEdges() const;

    std::vector<HBNode*> getNodes();

    bool happensBefore(HBNode *a, HBNode *b);

    static HappensBeforeGraph* get();
    static HappensBeforeGraph* _instance;

private:
    void computeSCC();
    void connectSCC(HBNode*);

    void computeDAG();
    void computeReachability();

private:
    std::unordered_map<HBNode*, std::vector<HBNode*>> _graph;
    std::vector<std::vector<HBNode*>> _scc;
    std::unordered_map<HBNode*, int> _sccIds;
    std::unordered_map<HBNode*, int> _index;
    std::unordered_map<HBNode*, int> _link;
    std::unordered_map<HBNode*, bool> _state;
    std::vector<std::vector<int>> _dag;
    std::vector<llvm::BitVector> _reach;

    ThreadRegistrar _registrar;

    unsigned int _nextIdx = 0;
    std::stack<HBNode*> _stack;
};