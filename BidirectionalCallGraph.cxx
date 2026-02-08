#include "BidirectionalCallGraph.h"
#include <iostream>

BidirectionalCallGraph::BidirectionalCallGraph(Module& module): CallGraph(module) {
    reverseGraph(module);
}

void BidirectionalCallGraph::reverseGraph(Module& module) {
    for (auto it = begin(); it != end(); it++) {
        // *it = map<const Function*, unique<CallGraphNode>>
        CallGraphNode *node = (*it).second.get();
        const Function *function = (*it).first;
        _funcMap[function] = node;

        for (auto nodeIt = node->begin(); nodeIt != node->end(); nodeIt++) {
            // *nodeIt = pair<optional<WeakTrackingVH>, CallGraphNode*>;
            CallGraphNode *other = (*nodeIt).second;
            _graph[other].insert(node);
        }
    }
}

bool BidirectionalCallGraph::isReverseReachable(Function* top, Function* current) {
    if (top == current) return true;

    // Get CallGraphNode from current function.
    const CallGraphNode* node = _funcMap[current];

    // Check who calls current:
    for (auto &it : _graph[node]) {
        // Get the function of it:
        Function* caller = it->getFunction();

        if (isReverseReachable(top, caller)) {
            return true;
        }
    }

    return false;
}


void BidirectionalCallGraph::printReverse() {
    for (auto &[k, v] : _graph) {
        if (k->getFunction() == nullptr) continue;
        
        std::cout << k->getFunction()->getName().str() << "\n";
        for (auto &node : v) {
            if (node->getFunction() == nullptr) continue;
            std::cout << "  " << node->getFunction()->getName().str() << "\n";
        }
        std::cout << "\n";
    }
}

void BidirectionalCallGraph::printReverse(const Function* function) {
    const CallGraphNode* node = getOrInsertFunction(function);
    printReverse(node);
}

void BidirectionalCallGraph::printReverse(const CallGraphNode* node) {
    if (node->getFunction() == nullptr) return;

    std::cout << node->getFunction()->getName().str() << "\n";
    for (auto &node : _graph[node]) {
        if (node->getFunction() == nullptr) continue;
        std::cout << "  " << node->getFunction()->getName().str() << "\n";
    }
    std::cout << "\n";
}


void BidirectionalCallGraph::printReverseAll(const Function* function) {
    const CallGraphNode* node = _funcMap[function];
    recursivePrintAll(node);
}

void BidirectionalCallGraph::recursivePrintAll(const CallGraphNode* node) {
    if (_graph.find(node) == _graph.end()) return;
    if (_graph[node].size() == 0) return;
    if (node->getFunction() == nullptr) return;

    for (auto &node : _graph[node]) {
        if (node->getFunction() == nullptr) continue;
        std::cout << node->getFunction()->getName().str() << "\n";
        recursivePrintAll(node);
    }
}
