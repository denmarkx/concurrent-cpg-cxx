#include "components/HappensBeforeGraph.h"
#include "components/ControlFlowGraph.h"

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



HappensBeforeGraph::HappensBeforeGraph() { _instance = this; }
HappensBeforeGraph* HappensBeforeGraph::get() { return _instance; }
HappensBeforeGraph* HappensBeforeGraph::_instance = nullptr;
