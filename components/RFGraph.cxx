#include "RFGraph.h"
#include "components/HappensBeforeGraph.h"
#include "graph/GraphManager.h"

void RFGraph::buildIndex() {
    GraphManager *graph = GraphManager::get();

    auto addUnique = [](std::vector<HBNode*> &vec, HBNode *n) {
        if (std::find(vec.begin(), vec.end(), n) == vec.end())
            vec.push_back(n);
    };

    for (HBNode *n : HappensBeforeGraph::get()->getNodes()) {
        auto objs = graph->getMemoryObjs(n->node->ptr);
        switch (n->node->getType()) {
            case NodeType::ATOMIC_STORE:
            case NodeType::STORE: {
                if (objs.empty())
                    addUnique(_unknownWrites, n);
                else
                    for (const Value *obj : objs)
                        addUnique(_writes[obj], n);
                break;
            }
            case NodeType::ATOMIC_LOAD:
            case NodeType::LOAD: {
                if (objs.empty())
                    addUnique(_unknownReads, n);
                else
                    for (const Value *obj : objs)
                        addUnique(_reads[obj], n);
                break;
            }
            // cmpxchg and rmw are atomically read and write.
            case NodeType::ATOMIC_RMW:
            case NodeType::ATOMIC_CMPXCHG: {
                if (objs.empty()) {
                    addUnique(_unknownReads, n);
                    addUnique(_unknownWrites, n);
                } else {
                    for (const Value *obj : objs) {
                        addUnique(_reads[obj], n);
                        addUnique(_writes[obj], n);
                    }
                }
                break;
            }
            case NodeType::MUTEX_UNLOCK: {
                if (objs.empty())
                    addUnique(_unknownWrites, n);
                else
                    for (const Value *obj : objs)
                        addUnique(_writesLock[obj], n);
                break;
            }
            case NodeType::MUTEX_LOCK: {
                if (objs.empty())
                    addUnique(_unknownReads, n);
                else
                    for (const Value *obj : objs)
                        addUnique(_readsLock[obj], n);
                break;
            }
            default: break;
        }
    }
}

void RFGraph::buildCandidates() {
    _pairs.clear();
    _nodes.clear();

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
            if (HappensBeforeGraph::get()->checkAlias(w, r, AliasResult::NoAlias)) continue;
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
    if (HappensBeforeGraph::get()->checkAlias(a, b, AliasResult::NoAlias)) return;
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

    if (!_writes.empty())
        errs() << "Writes:\n";
    for (const auto &x : _writes) {
        errs() << "    " << *x.first << "\n";
        for (const auto &y : x.second)
            errs() << "         - " << *y->node->getValue() << "\n";
    }

    if (!_reads.empty())
        errs() << "Reads:\n";
    for (const auto &x : _reads) {
        errs() << "    " << *x.first << "\n";
        for (const auto &y : x.second)
            errs() << "         - " << *y->node->getValue() << "\n";
    }

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

bool RFGraph::isRead(HBNode *n) {
    const Value *memObj = GraphManager::get()->getMemoryObj(n->node->ptr);
    if (!memObj)
        return std::find(_unknownReads.begin(),_unknownReads.end(), n) != _unknownReads.end();
    return std::find(_reads[memObj].begin(), _reads[memObj].end(), n) != _reads[memObj].end();
}

bool RFGraph::isWrite(HBNode *n) {
    const Value *memObj = GraphManager::get()->getMemoryObj(n->node->ptr);
    if (!memObj)
        return std::find(_unknownWrites.begin(), _unknownWrites.end(), n) != _unknownWrites.end();
    return std::find(_writes[memObj].begin(), _writes[memObj].end(), n) != _writes[memObj].end();
}

RFCandidateType& RFGraph::getWritesLock() { return _writesLock; }
RFCandidateType& RFGraph::getReadsLock() { return _readsLock; }

std::vector<HBNode*>& RFGraph::getUnknownWrites() { return _unknownWrites; }
std::vector<HBNode*>& RFGraph::getUnknownReads() { return _unknownReads; }

RFGraph::RFGraph() { _instance = this; }
RFGraph* RFGraph::get() { return _instance; }
RFGraph* RFGraph::_instance = nullptr;
