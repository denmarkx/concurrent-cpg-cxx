#pragma once
#include "ComponentGraphBase.h"
#include "graph/BasicBlockNode.h"
#include "llvm/IR/InstrTypes.h"
#include <array>

enum CFGEdgeType {
    COND_TRUE,
    COND_FALSE,
    UNWIND,
    SWITCH,
    CALL,
    DEFAULT,
};

inline const char* to_string(CFGEdgeType edgeType) {
    static const array edgeTypes = {
        "COND_TRUE",
        "COND_FALSE",
        "UNWIND",
        "SWITCH",
        "CALL",
        "DEFAULT",
    };
    static_assert(edgeTypes.size() == (size_t)CFGEdgeType::DEFAULT + 1);
    return edgeTypes.at(edgeType);
}

struct CFGEdge {
    Node *start;
    Node *end;
    CFGEdgeType type = CFGEdgeType::DEFAULT;
};

inline raw_ostream& operator<<(raw_ostream& out, const CFGEdge& edge) {
    out << "CFGEdge(" << edge.start->getName() << " -> " << edge.end->getName() <<
        ", type=" << edge.type << ")\n";
    return out;
}

class ControlFlowGraph : ComponentGraphBase {
public:
    ControlFlowGraph();
    void parseModule(const Module& module);
    EdgeInfo getProcessedEdges() const;

    static ControlFlowGraph* get();
    static ControlFlowGraph* _graph;

private:
    std::unordered_map<Node*, std::vector<CFGEdge>> _edges;
};
