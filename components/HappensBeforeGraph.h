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

    bool operator==(HBNode *other) {
        return other->node == node && other->threadId == threadId;
    }
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

struct HBPairHash {
    std::size_t operator()(const std::pair<HBNode*, HBNode*>& p) const {
        auto h1 = std::hash<HBNode*>{}(p.first);
        auto h2 = std::hash<HBNode*>{}(p.second);

        // from boost::hash_combine
        return h1 ^ (h2 + 0x9e3779b9 + (h1 << 6) + (h1 >> 2));
    }
};

struct CacheHash {
    size_t operator()(const std::pair<Node*, uint32_t> &p) const {
        size_t h1 = std::hash<Node*>()(p.first);
        size_t h2 = std::hash<uint32_t>()(p.second);
        return h1 ^ (h2 << 32 | h2 >> 32);
    }
};

typedef std::unordered_set<std::pair<HBNode*, HBNode*>, HBPairHash> DeltaType;

class HappensBeforeGraph {
public:
    HappensBeforeGraph();

    void build(const Module &M);
    void buildFixedPointClosure();
    void buildTransitive();

    void buildThread(FunctionNode *entry);
    void buildAtomics(DeltaType& delta);
    void buildLocks(DeltaType& delta);
    void buildSeqCst(DeltaType& delta);

    void addEdge(HBNode* start, HBNode *end);
    bool hasEdge(HBNode *start, HBNode *end);

    HBNode* getOrCreateNode(Node *n, uint32_t tid);

    std::vector<HBNode*> getNodes();
    EdgeInfo getProcessedEdges() const;

    bool happensBefore(HBNode *a, HBNode *b);

    static HappensBeforeGraph* get();
    static HappensBeforeGraph* _instance;

private:
    void computeSCC();
    void connectSCC(HBNode*);

    void computeDAG();
    void computeReachability();

private:
    std::unordered_map<std::pair<Node*, uint32_t>, HBNode*, CacheHash> _nodeCache;
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