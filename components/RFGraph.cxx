#include "RFGraph.h"
#include "components/HappensBeforeGraph.h"
#include "graph/GraphManager.h"

void RFGraph::buildIndex() {
    GraphManager *graph = GraphManager::get();
    for (HBNode *n : HappensBeforeGraph::get()->getNodes()) {
        const Value *memObj = graph->getMemoryObj(n->node->ptr);
        switch (n->node->getType()) {
            case NodeType::ATOMIC_STORE:
            case NodeType::STORE: {
                if (memObj)
                    _writes[memObj].push_back(n);
                else
                    _unknownWrites.push_back(n);
                break;
            }
            case NodeType::ATOMIC_LOAD:
            case NodeType::LOAD: {
                if (memObj)
                    _reads[memObj].push_back(n);
                else
                    _unknownReads.push_back(n);
                break;
            }
            // cmpxchg and rmw are atomically read and write.
            case NodeType::ATOMIC_RMW:
            case NodeType::ATOMIC_CMPXCHG: {
                if (memObj) {
                    _reads[memObj].push_back(n);
                    _writes[memObj].push_back(n);
                }
                else {
                    _unknownReads.push_back(n);
                    _unknownWrites.push_back(n);
                }
                break;
            }
            case NodeType::MUTEX_UNLOCK: {
                if (memObj)
                    _writesLock[memObj].push_back(n);
                else
                    _unknownWrites.push_back(n);
                break;
            }
            case NodeType::MUTEX_LOCK: {
                if (memObj)
                    _readsLock[memObj].push_back(n);
                else
                    _unknownReads.push_back(n);
                break;
            }
            default: break;
        }
    }
}

void RFGraph::buildCandidates() {
    _pairs.clear();

    for (auto &[obj, reads] : _reads) {
        if (auto it = _writes.find(obj); it != _writes.end()) {
            for (HBNode *r : reads) {
                for (HBNode *w : it->second)
                    add(w, r);
            }
        }
        for (HBNode *r : reads) {
            for (HBNode *w : _unknownWrites)
                add(w, r);
        }
    }

    for (HBNode *r : _unknownReads) {
        for (auto& [obj, writes] : _writes) {
            for (HBNode *w : writes)
                add(w, r);
        }
        for (HBNode *w : _unknownWrites)
            add(w, r);
    }
}

/*
 * Filters according to isValid(w, r).
*/
void RFGraph::filter() {
    std::erase_if(_pairs, [this](auto &pair) {
        return !isValid(pair.first, pair.second);
    });
}

bool RFGraph::isValid(HBNode *w, HBNode *r) {
    auto check = [&](const std::vector<HBNode*>& ws) -> bool {
        for (HBNode *wp : ws) {
            if (wp == w || wp == r) continue;
            if (GraphManager::get()->getAliasResult()->alias(
               w->node->ptr, r->node->ptr) == AliasResult::NoAlias) continue;
            if (HappensBeforeGraph::get()->happensBefore(w, wp) &&
                HappensBeforeGraph::get()->happensBefore(wp, r)) return false;
        }
        return true;
    };

    const Value *rObj = GraphManager::get()->getMemoryObj(r->node->ptr);
    if (rObj) {
        if (auto it=_writes.find(rObj); it != _writes.end())
            if (!check(it->second)) return false;
    } else {
        for (auto &[obj, writes] : _writes)
            if (!check(writes)) return false;
    }

    return check(_unknownWrites);
}

void RFGraph::add(HBNode *a, HBNode *b) {
    if (a == b) return;

    // TODO: need to fix graphmanager::alias
    if (GraphManager::get()->getAliasResult()->alias(
        a->node->ptr, b->node->ptr) == AliasResult::NoAlias) return;

    if (HappensBeforeGraph::get()->happensBefore(b, a)) return;
    _pairs.push_back({a, b});

    HBNode *ia = HappensBeforeGraph::get()->getOrCreateNode(a->node, a->threadId);
    HBNode *ib = HappensBeforeGraph::get()->getOrCreateNode(b->node, b->threadId);

    if (std::find(_nodes.begin(), _nodes.end(), ia) == _nodes.end())
        _nodes.push_back(ia);
    if (std::find(_nodes.begin(), _nodes.end(), ib) == _nodes.end())
        _nodes.push_back(ib);
}

void RFGraph::debug() {
    errs() << "reads = " << _reads.size() << "\n";
    errs() << "writes = " << _writes.size() << "\n";
    errs() << "_unknownReads = " << _unknownReads.size() << "\n";
    errs() << "_unknownWrites = " << _unknownWrites.size() << "\n";

    if (!_unknownReads.empty())
        errs() << "Unknown Reads:\n";
    for (const auto &x : _unknownReads)
        errs() << "    " << *x->node->getValue() << "\n";

    if (!_unknownWrites.empty())
        errs() << "Unknown Writes:\n";
    for (const auto &x : _unknownWrites)
        errs() << "    " << *x->node->getValue() << "\n";
}

std::vector<HBNode*>& RFGraph::getNodes() {
    return _nodes;
}

RFGraphType& RFGraph::pairs() {
    return _pairs;
}

RFCandidateType& RFGraph::getWritesLock() { return _writesLock; }
RFCandidateType& RFGraph::getReadsLock() { return _readsLock; }

std::vector<HBNode*>& RFGraph::getUnknownWrites() { return _unknownWrites; }
std::vector<HBNode*>& RFGraph::getUnknownReads() { return _unknownReads; }

RFGraph::RFGraph() { _instance = this; }
RFGraph* RFGraph::get() { return _instance; }
RFGraph* RFGraph::_instance = nullptr;
