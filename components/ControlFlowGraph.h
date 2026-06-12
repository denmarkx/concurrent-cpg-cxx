#pragma once
#include "ComponentGraphBase.h"
#include "graph/BasicBlockNode.h"
#include "graph/CallNode.h"
#include "graph/FunctionNode.h"
#include "llvm/IR/InstrTypes.h"
#include <array>
#include <stack>

enum CFGEdgeType {
    COND_TRUE,
    COND_FALSE,
    UNWIND,
    SWITCH,
    CALL,
    PHI_CANDIDATE,
    RETURN,
    DEFAULT,
};

inline const char* to_string(CFGEdgeType edgeType) {
    static const array edgeTypes = {
        "COND_TRUE",
        "COND_FALSE",
        "UNWIND",
        "SWITCH",
        "CALL",
        "PHI_CANDIDATE",
        "RETURN",
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

    std::vector<Node*> traverse(Node*, bool followCalls=true);
    Node* getNextInBlock(Node*);

    static ControlFlowGraph* get();
    static ControlFlowGraph* _graph;

private:
    void parseFunction(FunctionNode*, CallNode*, bool isCloned=false);
    void addEdge(Node*, Node*, CFGEdgeType);
    void removeNode(Node*, std::vector<Node*>& removed);
    void clean();

    bool requiresCloning(FunctionNode*);

private:
    std::unordered_map<Node*, std::vector<CFGEdge>> _edges;
    std::unordered_map<Node*, std::vector<Node*>> _reverseEdgesMap;
    std::unordered_map<FunctionNode*, unsigned int> _numTimesCloned;
    std::unordered_map<FunctionNode*, Node*> _previousClonedFuncMap;

    std::vector<Node*> _visited;
    std::vector<FunctionNode*> _originalClonedFunctions;
};
