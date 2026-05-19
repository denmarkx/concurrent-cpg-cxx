#pragma once

#include "llvm/Analysis/CallGraph.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
using namespace llvm;

#include <unordered_map>
#include <unordered_set>
#include <string>

// TODO: while this inherits callgraph, there currently exists
//  no methods similar to callgraph's for _graph (ie: begin, end, etc.)
//  the same applies to callgraphnode

// another probable TODO is that this can probably be a singleton
// since we don't actually modify anything within our analysis.
class BidirectionalCallGraph : public CallGraph {
public:
    BidirectionalCallGraph(Module& module);
    void printReverse();
    void printReverse(const Function* function);
    void printReverse(const CallGraphNode* node);
    void printReverseAll(const Function* function);
    bool isReverseReachable(Function* top, Function* current);

private:
    void reverseGraph(Module& module);
    void recursivePrintAll(const CallGraphNode* node);

private:
    std::unordered_map<const Function*, const CallGraphNode*> _funcMap;
    std::unordered_map<const CallGraphNode*, std::unordered_set<CallGraphNode*>> _graph;
};
