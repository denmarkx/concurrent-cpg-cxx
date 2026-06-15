#include "RFGraph.h"

#include "llvm/Analysis/ValueTracking.h"

#include "components/HappensBeforeGraph.h"
#include "graph/GraphManager.h"

void RFGraph::buildIndex() {
    auto addUnique = [](std::vector<HBNode*> &vec, HBNode *n) {
        if (std::find(vec.begin(), vec.end(), n) == vec.end())
            vec.push_back(n);
    };

    auto isThreadLocal = [](const llvm::Value *ptr) -> bool {
        if (!ptr) return false;
        const llvm::Value *obj = llvm::getUnderlyingObject(ptr, 16);
        if (llvm::isa<llvm::AllocaInst>(obj)) return true;
        if (const auto *inst = llvm::dyn_cast<llvm::Instruction>(obj))
            if (llvm::isa<llvm::AllocaInst>(llvm::getUnderlyingObject(inst, 16)))
                return true;
        return false;
    };

    for (HBNode *n : HappensBeforeGraph::get()->getNodes()) {
        if (isThreadLocal(n->node->ptr)) continue;
        if (!n->node->ptr) {
            switch (n->node->getType()) {
                case NodeType::ATOMIC_STORE:
                case NodeType::STORE:
                    addUnique(_unknownWrites, n);
                    break;
                case NodeType::ATOMIC_LOAD:
                case NodeType::LOAD:
                    addUnique(_unknownReads, n);
                    break;
                case NodeType::ATOMIC_RMW:
                case NodeType::ATOMIC_CMPXCHG:
                    addUnique(_unknownReads, n);
                    addUnique(_unknownWrites, n);
                    break;
                default: break;
            }
            continue;
        }

        const llvm::Value *key = n->node->ptr;

        switch (n->node->getType()) {
            case NodeType::ATOMIC_STORE:
            case NodeType::STORE:
                addUnique(_writes[key], n);
                break;
            case NodeType::ATOMIC_LOAD:
            case NodeType::LOAD:
                addUnique(_reads[key], n);
                break;
            case NodeType::ATOMIC_RMW:
            case NodeType::ATOMIC_CMPXCHG:
                addUnique(_reads[key], n);
                addUnique(_writes[key], n);
                break;
            default: break;
        }
    }
}

void RFGraph::buildCandidates() {
    _pairs.clear();
    _nodes.clear();

    auto getCtxId = [](HBNode *n) -> int {
        const llvm::Function *thread = HappensBeforeGraph::get()->getThread(n->threadId);
        return GraphManager::get()->getAliasResult()->getSupercedingContextID(thread, n->node->ptr);
    };

    auto keysAlias = [&](const llvm::Value *wKey, const llvm::Value *rKey,
                          const std::vector<HBNode*> &writes,
                          const std::vector<HBNode*> &reads) -> bool {
        if (wKey == rKey) return true;
        for (HBNode *w : writes) {
            int ctxW = getCtxId(w);
            if (ctxW < 0) continue;
            for (HBNode *r : reads) {
                int ctxR = getCtxId(r);
                if (ctxR < 0) continue;
                AliasResult ar = GraphManager::get()->getAliasResult()
                    ->alias(wKey, rKey, (unsigned)ctxW, (unsigned)ctxR);
                if (ar != AliasResult::NoAlias) return true;
                return false;
            }
        }
        return true;
    };

    for (auto &[rKey, reads] : _reads) {
        for (auto &[wKey, writes] : _writes) {
            if (!keysAlias(wKey, rKey, writes, reads)) continue;
            for (HBNode *r : reads)
                for (HBNode *w : writes)
                    add(w, r);
        }
        for (HBNode *r : reads)
            for (HBNode *w : _unknownWrites)
                add(w, r);
    }

    for (HBNode *r : _unknownReads) {
        for (auto &[wKey, writes] : _writes)
            for (HBNode *w : writes)
                add(w, r);
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

    int ctxId = GraphManager::get()->getAliasResult()->getSupercedingContextID(
        HappensBeforeGraph::get()->getThread(r->threadId), r->node->ptr);
    auto rObjs = GraphManager::get()->getMemoryObjs(r->node->ptr, ctxId != -1 ? ctxId : ~0u);
    for (const Value *rObj : rObjs) {
        if (rObj) {
            if (auto it=_writes.find(rObj); it != _writes.end())
                if (!check(it->second)) return false;
        } else {
            for (auto &[obj, writes] : _writes)
                if (!check(writes)) return false;
        }
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
    if (std::find(_unknownReads.begin(),_unknownReads.end(), n) != _unknownReads.end())
        return true;
    return std::find(_reads[n->node->ptr].begin(),_reads[n->node->ptr].end(), n) != _reads[n->node->ptr].end();
}

bool RFGraph::isWrite(HBNode *n) {
    if (std::find(_unknownWrites.begin(),_unknownWrites.end(), n) != _unknownWrites.end())
        return true;
    return std::find(_writes[n->node->ptr].begin(),_writes[n->node->ptr].end(), n) != _writes[n->node->ptr].end();
}

RFCandidateType& RFGraph::getWritesLock() { return _writesLock; }
RFCandidateType& RFGraph::getReadsLock() { return _readsLock; }

std::vector<HBNode*>& RFGraph::getUnknownWrites() { return _unknownWrites; }
std::vector<HBNode*>& RFGraph::getUnknownReads() { return _unknownReads; }

RFGraph::RFGraph() { _instance = this; }
RFGraph* RFGraph::get() { return _instance; }
RFGraph* RFGraph::_instance = nullptr;
