#include "components/HappensBeforeGraph.h"
#include "components/ControlFlowGraph.h"
#include <queue>
#include <unordered_set>

void HappensBeforeGraph::build(ThreadNode *entry) {
    Node *prev = nullptr;
    for (auto &x : ControlFlowGraph::get()->traverse(entry->getRoutine())) {
        if (isa<Function>(x->getValue()))
            errs() << "  --> [F] " << x->getName() << "\n";
        else if (isa<BasicBlock>(x->getValue()))
            errs() << "  --> [B] " << x->getName() << "\n";
        else
            errs() << "  --> " << *x->getValue() << "\n";
        if (prev)
            _graph[prev].push_back(x);
        prev = x;
    }

    computeSCC();
    computeDAG();
    computeReachability();
}

void HappensBeforeGraph::addEdge(Node *start, Node *end) {
    _graph[start].push_back(end);
}

EdgeInfo HappensBeforeGraph::getProcessedEdges() const {
    EdgeInfo info;

    for (auto &[root, children] : _graph) {
        for (const Node *n : children) {
            info.push_back({
                std::to_string(root->getId()),
                "HAPPENS_BEFORE",
                std::to_string(n->getId()),
                {},
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

void HappensBeforeGraph::connectSCC(Node *n) {
    _index[n] = _nextIdx;
    _link[n] = _nextIdx;
    _nextIdx++;

    _stack.push(n);
    _state[n] = true;

    for (Node *c : _graph[n]) {
        if (!_index.contains(c)) {
            connectSCC(c);
            _link[n] = min(_link[n], _link[c]);
        } else if (_state[n]) {
            _link[n] = min(_link[n], _index[c]);
        }
    }

    if (_link[n] == _index[n]) {
        int sccIdx = _scc.size();
        
        std::vector<Node*> localScc;
        while(true) {
            Node *c = _stack.top();
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
        for (Node *c : children) {
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

bool HappensBeforeGraph::happensBefore(Node *a, Node *b) {
    return _reach[_sccIds[a]].test(_sccIds[b]);
}

HappensBeforeGraph::HappensBeforeGraph() { _instance = this; }
HappensBeforeGraph* HappensBeforeGraph::get() { return _instance; }
HappensBeforeGraph* HappensBeforeGraph::_instance = nullptr;
