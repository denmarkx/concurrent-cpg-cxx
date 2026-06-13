#include "components/HappensBeforeGraph.h"
#include "components/ControlFlowGraph.h"
#include "components/RFGraph.h"
#include "concurrency/JoinNode.h"
#include "graph/CallNode.h"
#include "graph/FunctionNode.h"
#include "graph/GraphManager.h"
#include "graph/Node.h"
#include "graph/ReturnNode.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/IR/Attributes.h"
#include "llvm/Support/AtomicOrdering.h"
#include <queue>
#include <unordered_set>

bool wantDebug = false;

void HappensBeforeGraph::build(const Module &M) {
    const Function *n = M.getFunction("main");
    buildThread(GraphManager::get()->getNode<FunctionNode>(n)); 

    std::vector<ThreadNode*> threads = ConcurrencyManager::get()->getConcurrencyNodes<ThreadNode>();
    for (ThreadNode *node : threads)
        buildThread(dynamic_cast<FunctionNode*>(node->getRoutine()));

    buildTransitive();
}

/*
 * Computes the least fixed point of (HB, RF) pair.
 * It is required to build transitively before calling this!!
*/
void HappensBeforeGraph::buildFixedPointClosure() {
    DeltaType delta;
    RFGraph *rfg = RFGraph::get();

    while (true) {
        delta = {};
        rfg->buildCandidates();
        rfg->filter();

        buildAtomics(delta);
        buildLocks(delta);
        buildSeqCst(delta);
        buildTransitive();
        if (delta.empty()) break;
    }
}

void HappensBeforeGraph::buildThread(FunctionNode *entry) {
    uint32_t threadId = _registrar.getOrCreate(dyn_cast<Function>(entry->getValue()));

    std::unordered_map<FunctionNode*, Node*> callSiteStack;

    Node *prev = nullptr;
    for (auto &x : ControlFlowGraph::get()->traverse(entry, threadId > 0)) {
        if (CallNode *call = dynamic_cast<CallNode*>(x)) {
            FunctionNode *callee = dynamic_cast<FunctionNode*>(call->getCalledFunctionNode());
            if (callee)
                callSiteStack[callee] = call;
        }

        if (ReturnNode *ret = dynamic_cast<ReturnNode*>(x)) {
            if (prev)
                addEdge(getOrCreateNode(prev, threadId), getOrCreateNode(x, threadId));

            FunctionNode *enclosing = dynamic_cast<FunctionNode*>(ret->getFunction());
            if (callSiteStack.contains(enclosing)) {
                Node *postCall = ControlFlowGraph::get()->getNextInBlock(callSiteStack[enclosing]);
                if (postCall) {
                    addEdge(
                        getOrCreateNode(x, threadId),
                        getOrCreateNode(postCall, threadId)
                    );
                }
            }
            prev = nullptr;
            continue;
        }

        // There exists a HB edge between the spawn call and the first node of the thread
        // the HB edge will have a threadId of the threadNode's routine.
        if (ThreadNode *tn = dynamic_cast<ThreadNode*>(x)) {
            uint32_t childThreadId = _registrar.getOrCreate(tn->getRoutineFunc());
            addEdge(
                getOrCreateNode(tn, childThreadId),
                getOrCreateNode(tn->getRoutine(), childThreadId)
            );

            if(JoinNode *join = dynamic_cast<JoinNode*>(tn->getHandle())) {
                // for all exits: exit -> Join(t)
                FunctionNode *routine = dynamic_cast<FunctionNode*>(tn->getRoutine());
                for (auto &exit : routine->getTerminators()) {
                    addEdge(
                        getOrCreateNode(exit, childThreadId),
                        getOrCreateNode(join, childThreadId)
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
            addEdge(getOrCreateNode(prev, threadId), getOrCreateNode(x, threadId));
        }
        prev = x;
    }
}

void HappensBeforeGraph::buildAtomics(DeltaType& delta) {
    // HB edges for atomics (need to move elsewhere)
    for (auto &[w, r] : RFGraph::get()->pairs()) {
        // for atomics.ll, w is a release and r is an acquire, but that needs to be a cond
        if (w->threadId == r->threadId) continue;

        bool testW = (
            w->node->getType() == NodeType::ATOMIC_STORE ||
            w->node->getType() == NodeType::ATOMIC_CMPXCHG ||
            w->node->getType() == NodeType::ATOMIC_RMW
        ) && (isAtLeastOrStrongerThan(w->node->getAtomicOrder(), AtomicOrdering::Release));
        
        bool testR = (
            r->node->getType() == NodeType::ATOMIC_LOAD ||
            r->node->getType() == NodeType::ATOMIC_CMPXCHG ||
            r->node->getType() == NodeType::ATOMIC_RMW
        ) && (isAtLeastOrStrongerThan(r->node->getAtomicOrder(), AtomicOrdering::Acquire));

        if (testW && testR && !hasEdge(w, r)) {
            addEdge(w, r);
            delta.insert({w, r});
        }
    }
}

void HappensBeforeGraph::buildLocks(DeltaType& delta) {
    RFGraph *rfg = RFGraph::get();
    auto add = [&](HBNode *w, HBNode *r) {
        if (w->threadId == r->threadId) return;

        // Check if same lock:
        const Value *lockA = GraphManager::get()->getMemoryObj(w->node->ptr);
        lockA = lockA ? lockA : w->node->ptr;

        const Value *lockB = GraphManager::get()->getMemoryObj(r->node->ptr);
        lockB = lockB ? lockB : r->node->ptr;

        if (lockA != lockB) {
            return;
        };
        if (checkAlias(w, r, AliasResult::NoAlias)) {
            return;
        };
        if (happensBefore(r, w)) return;
        if (hasEdge(w, r)) return;
        addEdge(w, r);
        delta.insert({w, r});
    };

    for (auto &[obj, rels] : rfg->getWritesLock()) {
        if (auto it = rfg->getReadsLock().find(obj); it != rfg->getReadsLock().end()) {
            for (HBNode *rel : rels) {
                for (HBNode *acq : it->second)
                    add(rel, acq);
            }
        }
        for (HBNode *rel : rels) {
            for (HBNode *acq : rfg->getUnknownReads()) 
                add(rel, acq);
        }
    }

    for (HBNode *rel : rfg->getUnknownWrites()) {
        for (auto &[obj, acqs] : rfg->getReadsLock()) {
            for (HBNode *acq : acqs)
                add(rel, acq);
        }
        for (HBNode *acq : rfg->getUnknownReads())
            add(rel, acq);
    }
}

void HappensBeforeGraph::buildSeqCst(DeltaType& delta) {
    std::vector<HBNode*> seqCsts;
    for (HBNode *n : getNodes()) {
        if (n->node->getAtomicOrder() == AtomicOrdering::SequentiallyConsistent)
            seqCsts.push_back(n);
    }

    for (unsigned int i=0; i < seqCsts.size(); i++) {
        for (unsigned int j=i+1; j < seqCsts.size(); j++) {
            HBNode *a = seqCsts[i];
            HBNode *b = seqCsts[j];

            if (a->threadId == b->threadId) continue;
            if (checkAlias(a, b, AliasResult::NoAlias)) continue;
            if (!hasEdge(a, b)) {
                addEdge(a, b);
                delta.insert({a, b});
            }
            if (!hasEdge(b, a)) {
                addEdge(b, a);
                delta.insert({b, a});
            }
        }
    }
}

void HappensBeforeGraph::buildTransitive() {
    _index.clear();
    _link.clear();
    _state.clear();
    _sccIds.clear();
    _scc.clear();
    _dag.clear();
    _reach.clear();
    _nextIdx = 0;
    while (!_stack.empty())
        _stack.pop();

    computeSCC();
    computeDAG();
    computeReachability();
}

const Function* HappensBeforeGraph::getThread(uint32_t threadId) {
    return _registrar.getThreadById(threadId);
}

void HappensBeforeGraph::addEdge(HBNode *start, HBNode *end) {
    if (!hasEdge(start, end))
        _graph[start].push_back(end);
}

bool HappensBeforeGraph::hasEdge(HBNode *start, HBNode *end) {
    if (!_graph.contains(start)) return false;
    auto itr = _graph[start];
    return std::find(itr.begin(), itr.end(), end) != itr.end();
}

std::vector<HBNode*> HappensBeforeGraph::getNodes() {
    std::unordered_set<HBNode*> seen;
    for (const auto &[n, children] : _graph) {
        seen.insert(n);
        for (HBNode *c : children)
            seen.insert(c);
    }
    return std::vector<HBNode*>(seen.begin(), seen.end());
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

HBNode* HappensBeforeGraph::getOrCreateNode(Node *n, uint32_t tid) {
    assert(n != nullptr);

    auto key = std::make_pair(n, tid);
    auto [it, inserted] = _nodeCache.emplace(key, nullptr);
    if (inserted)
        it->second = new HBNode(n, tid);
    return it->second;
}

/*
 * Tarjan's Strongly Connected Components algorithm.
 *   The only cycle really expected is seq_cst..anything else
 *   should be marked properly for rq1.
*/
void HappensBeforeGraph::computeSCC() {
    std::unordered_set<HBNode*> all;
    for (auto &[n, children] : _graph) {
        all.insert(n);
        for (HBNode *c : children)
            all.insert(c);
    }
    for (HBNode *n : all) {
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

    auto it = _graph.find(n);
    if (it == _graph.end()) return;

    for (HBNode *c : it->second) {
        if (!_index.contains(c)) {
            connectSCC(c);
            _link[n] = min(_link[n], _link[c]);
        } else if (_state[c]) {
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

bool HappensBeforeGraph::checkAlias(HBNode *a, HBNode *b, AliasResult expected) {
    if (!a->node->ptr || !b->node->ptr)
        return expected == AliasResult::NoAlias;

    Andersen *aa = GraphManager::get()->getAliasResult();

    int ctxIdA = aa->getSupercedingContextID(getThread(a->threadId), a->node->ptr);
    int ctxIdB = aa->getSupercedingContextID(getThread(b->threadId), b->node->ptr);

    AliasResult result = AliasResult::NoAlias;
    if (ctxIdA >= 0 && ctxIdB >= 0)
        result = aa->alias(a->node->ptr, b->node->ptr, ctxIdA, ctxIdB);
    else
        result = aa->alias(a->node->ptr, b->node->ptr);

    if (expected == AliasResult::NoAlias && (result != AliasResult::NoAlias))
        return false;
    if (expected == AliasResult::MayAlias && (result == AliasResult::NoAlias))
        return false;
    if (expected == AliasResult::MustAlias && (result == AliasResult::NoAlias))
        return false;
    return true;

}

HappensBeforeGraph::HappensBeforeGraph() { _instance = this; }
HappensBeforeGraph* HappensBeforeGraph::get() { return _instance; }
HappensBeforeGraph* HappensBeforeGraph::_instance = nullptr;
