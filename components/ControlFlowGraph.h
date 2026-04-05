#pragma once
#include "ComponentGraphBase.h"
#include "graph/BasicBlockNode.h"
#include <array>

enum CFGEdgeType {
    COND_TRUE,
    COND_FALSE,
    UNWIND,
    SWITCH,
    DEFAULT,
};

inline const char* to_string(CFGEdgeType edgeType) {
    static const array edgeTypes = {
        "COND_TRUE",
        "COND_FALSE",
        "UNWIND",
        "SWITCH",
        "DEFAULT",
    };
    static_assert(edgeTypes.size() == (size_t)CFGEdgeType::DEFAULT + 1);
    return edgeTypes.at(edgeType);
}

struct CFGEdge {
    BasicBlockNode *start;
    BasicBlockNode *end;
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
    void handleBasicBlock(const BasicBlock& block);
    const CFGEdgeType getCFGEdgeType(const BasicBlock& start, const BasicBlock& end) const;

private:
    std::unordered_map<BasicBlockNode*, std::vector<CFGEdge>> _edges;
};
