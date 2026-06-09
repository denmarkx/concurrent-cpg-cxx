#include "components/HappensBeforeGraph.h"
#include "components/ControlFlowGraph.h"
#include "concurrency/JoinNode.h"
#include "graph/FunctionNode.h"
#include "graph/GraphManager.h"
#include <queue>
#include <unordered_set>

bool wantDebug = false;
void HappensBeforeGraph::build(FunctionNode *entry) {
    uint32_t threadId = _registrar.getOrCreate(dyn_cast<Function>(entry->getValue()));

    Node *prev = nullptr;
    for (auto &x : ControlFlowGraph::get()->traverse(entry, threadId > 0)) {
        // There exists a HB edge between the spawn call and the first node of the thread
        // the HB edge will have a threadId of the threadNode's routine.
        if (ThreadNode *tn = dynamic_cast<ThreadNode*>(x)) {
            uint32_t childThreadId = _registrar.getOrCreate(tn->getRoutineFunc());
            addEdge(
                new HBNode(tn, childThreadId),
                new HBNode(tn->getRoutine(), childThreadId)
            );

            if(JoinNode *join = dynamic_cast<JoinNode*>(tn->getHandle())) {
                // for all exits: exit -> Join(t)
                FunctionNode *routine = dynamic_cast<FunctionNode*>(tn->getRoutine());
                for (auto &exit : routine->getTerminators()) {
                    addEdge(
                        new HBNode(exit, childThreadId),
                        new HBNode(join, childThreadId)
                    );
                }
            }
        }

        if (wantDebug) {
            if (isa<Function>(x->getValue()))
                errs() << "  --> [F] " << x->getName() << "\n";
            else if (isa<BasicBlock>(x->getValue()))
                errs() << "  --> [B] " << x->getName() << "\n";
            else
                errs() << "  --> " << *x->getValue() << "\n";
        }
        if (prev) {
            if (wantDebug)
                errs() << "new HBNode (tId = " << threadId << "\n";
            addEdge(new HBNode(prev, threadId), new HBNode(x, threadId));
        }
        prev = x;
    }
}

void HappensBeforeGraph::buildTransitive() {
    computeSCC();
    computeDAG();
    computeReachability();
}

void HappensBeforeGraph::addEdge(HBNode *start, HBNode *end) {
    _graph[start].push_back(end);
}

std::vector<HBNode*> HappensBeforeGraph::getNodes() {
    std::vector<HBNode*> r;
    for (const auto &[n, c] : _graph)
        r.push_back(n);
    return r;
}

EdgeInfo HappensBeforeGraph::getProcessedEdges() const {
    EdgeInfo info;

    for (auto &[root, children] : _graph) {
        for (const HBNode *n : children) {
            info.push_back({
                std::to_string(root->node->getId()),
                "HAPPENS_BEFORE",
                std::to_string(n->node->getId()),
                {{"threadId", std::to_string(root->threadId)}},
            });
        }
    }
    return info;
}

/*
 * Tarjan's Strongly Connected Components algorithm.
 *   The only cycle really expected is seq_cst..anything else
 *   should be marked properly for rq1.
*/
void HappensBeforeGraph::computeSCC() {
    for (auto &[n, children] : _graph) {
        if (!_index.contains(n))
            connectSCC(n);
    }
}

void HappensBeforeGraph::connectSCC(HBNode *n) {
    _index[n] = _nextIdx;
    _link[n] = _nextIdx;
    _nextIdx++;

    _stack.push(n);
    _state[n] = true;

    for (HBNode *c : _graph[n]) {
        if (!_index.contains(c)) {
            connectSCC(c);
            _link[n] = min(_link[n], _link[c]);
        } else if (_state[n]) {
            _link[n] = min(_link[n], _index[c]);
        }
    }

    if (_link[n] == _index[n]) {
        int sccIdx = _scc.size();
        
        std::vector<HBNode*> localScc;
        while(true) {
            HBNode *c = _stack.top();
            _stack.pop();
            _state[c] = false;
            _sccIds[c] = sccIdx;
            localScc.push_back(c);
            if (c == n) break;
        }
        _scc.push_back(std::move(localScc));
    }
}

void HappensBeforeGraph::computeDAG() {
    int n = _scc.size();
    std::vector<std::unordered_set<int>> local(n);

    for (auto &[n, children] : _graph) {
        int idx = _sccIds[n];
        for (HBNode *c : children) {
            int cIdx = _sccIds[c];
            if (idx != cIdx)
                local[idx].insert(cIdx);
        }
    }

    _dag.resize(n);
    for (unsigned int i=0; i < n; ++i) {
        _dag[i].assign(local[i].begin(), local[i].end());
    }
}

/*
 * Reachability over topological order.
 * Since HB is gonna be crucial for lockset and other,
 * the best thing that I could think of is doing bitset reachability
 * to allow for O(1) lookups on HB.
*/ 
void HappensBeforeGraph::computeReachability() {
    int n = _scc.size();
    
    std::vector<int> topOrder;
    int numD = _dag.size();

    std::vector<int> degree(numD, 0);
    for (unsigned int i=0; i < numD; ++i) {
        for (int x : _dag[i])
            ++degree[x];
    }

    std::queue<int> q;
    for (unsigned int i=0; i < numD; ++i) {
        if (degree[i] == 0)
            q.push(i);
    }

    while (!q.empty()) {
        int x = q.front();
        q.pop();
        topOrder.push_back(x);
        for (int y : _dag[x]) {
            if (--degree[y] == 0)
                q.push(y);
        }
    }

    _reach.clear();
    _reach.reserve(n);

    for (unsigned int i=0; i < n; ++i) {
        _reach.emplace_back(n);
        _reach[i].set(i);
    }

    for (auto it = topOrder.rbegin(); it != topOrder.rend(); ++it) {
        int x = *it;
        for (int v : _dag[x])
            _reach[x] |= _reach[v];
    }
}

bool HappensBeforeGraph::happensBefore(HBNode *a, HBNode *b) {
    return _reach[_sccIds[a]].test(_sccIds[b]);
}

HappensBeforeGraph::HappensBeforeGraph() { _instance = this; }
HappensBeforeGraph* HappensBeforeGraph::get() { return _instance; }
HappensBeforeGraph* HappensBeforeGraph::_instance = nullptr;
