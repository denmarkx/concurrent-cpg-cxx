#include "RFGraph.h"
#include "components/HappensBeforeGraph.h"
#include "graph/GraphManager.h"

void RFGraph::build() {
    for (Node *n : GraphManager::get()->getNodes()) {
        switch (n->getType()) {
            case NodeType::STORE: {
                errs() << "writes for k = " << *GraphManager::get()->getMemoryObj(n->ptr) << "\n";
                _writes[GraphManager::get()->getMemoryObj(n->ptr)].push_back(n);
                break;
            }
            case NodeType::LOAD: {
                errs() << "reads for k = " << *GraphManager::get()->getMemoryObj(n->ptr) << "\n";
                _reads[GraphManager::get()->getMemoryObj(n->ptr)].push_back(n);
                break;
            }
            default: break;
        }
    }

    for (auto &[obj, reads] : _reads) {
        if (auto it = _writes.find(obj); it != _writes.end()) {
            for (Node *r : reads) {
                for (Node *w : it->second) {
                    errs() << "rf graph:\n";
                    errs() << "  w = " << *w->getValue() << "\n";
                    errs() << "  r = " << *r->getValue() << "\n";
                    add(w, r);
                }
            }
        }

        // TODO: unknown read and writes??
    }
}

bool RFGraph::isValid(Node *w, Node *r) {
    auto check = [&](const std::vector<Node*>& ws) -> bool {
        for (Node *wp : ws) {
            if (wp == w || wp == r) continue;
            if (GraphManager::get()->getAliasResult()->alias(
               w->ptr, r->ptr) == AliasResult::NoAlias) continue;
            if (HappensBeforeGraph::get()->happensBefore(w, wp) &&
                HappensBeforeGraph::get()->happensBefore(wp, r)) return false;
        }
        return true;
    };

    const Value *rObj = GraphManager::get()->getMemoryObj(r->ptr);
    if (rObj) {
        if (auto it=_writes.find(rObj); it != _writes.end())
            if (!check(it->second)) return false;
    } else {
        for (auto &[obj, writes] : _writes)
            if (!check(writes)) return false;
    }

    // TODO: unknowns not handled.
    return true;
}

void RFGraph::add(Node *a, Node *b) {
    if (a == b) return;

    // TODO: need to fix graphmanager::alias
    if (GraphManager::get()->getAliasResult()->alias(
        a->ptr, b->ptr) == AliasResult::NoAlias) return;

    if (HappensBeforeGraph::get()->happensBefore(b, a)) return;
    _pairs.push_back({a, b});
}

RFGraphType& RFGraph::pairs() {
    return _pairs;
}

RFGraph::RFGraph() { _instance = this; }
RFGraph* RFGraph::get() { return _instance; }
RFGraph* RFGraph::_instance = nullptr;
