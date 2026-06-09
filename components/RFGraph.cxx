#include "RFGraph.h"
#include "components/HappensBeforeGraph.h"
#include "graph/GraphManager.h"

void RFGraph::build() {
    GraphManager *graph = GraphManager::get();
    for (HBNode *n : HappensBeforeGraph::get()->getNodes()) {
        switch (n->node->getType()) {
            case NodeType::ATOMIC_STORE:
            case NodeType::STORE: {
                const Value *memObj = graph->getMemoryObj(n->node->ptr);
                if (memObj)
                    _writes[memObj].push_back(n);
                else
                    _unknownWrites.push_back(n);
                break;
            }
            case NodeType::ATOMIC_LOAD:
            case NodeType::LOAD: {
                const Value *memObj = graph->getMemoryObj(n->node->ptr);
                if (memObj)
                    _reads[memObj].push_back(n);
                else
                    _unknownReads.push_back(n);
                break;
            }
            // cmpxchg and rmw are atomically read and write.
            case NodeType::ATOMIC_CMPXCHG: {
                const Value *memObj = graph->getMemoryObj(n->node->ptr);
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
            default: break;
        }
    }

    for (auto &[obj, reads] : _reads) {
        if (auto it = _writes.find(obj); it != _writes.end()) {
            for (HBNode *r : reads) {
                for (HBNode *w : it->second) {
                    errs() << "rf graph:\n";
                    errs() << "  w = " << *w->node->getValue() << "\n";
                    errs() << "  r = " << *r->node->getValue() << "\n";
                    add(w, r);
                }
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

    if (std::find(_nodes.begin(), _nodes.end(), a) == _nodes.end())
        _nodes.push_back(a);
    if (std::find(_nodes.begin(), _nodes.end(), b) == _nodes.end())
        _nodes.push_back(b);
}

std::vector<HBNode*>& RFGraph::getNodes() {
    return _nodes;
}

RFGraphType& RFGraph::pairs() {
    return _pairs;
}

RFGraph::RFGraph() { _instance = this; }
RFGraph* RFGraph::get() { return _instance; }
RFGraph* RFGraph::_instance = nullptr;
