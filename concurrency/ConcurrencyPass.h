#pragma once

#include "andersen/AndersenAA.h"
#include "concurrency/ConcurrencyManager.h"
#include "concurrency/ThreadNode.h"
#include "graph/GraphManager.h"
#include "llvm/ADT/iterator_range.h"
#include "llvm/Analysis/CallGraph.h"
#include "llvm/Analysis/MemorySSA.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Use.h"
#include "llvm/Support/raw_ostream.h"
#include <algorithm>
#include <iterator>
#include <unordered_map>
#include <unordered_set>
#include <vector>
using namespace llvm;

struct ThreadSummary {
    Node* routineNode;
    ThreadNode* threadNode;
    std::unordered_set<Node*> writes;
    std::unordered_set<Node*> reads;
    std::unordered_set<const Function*> functions;
};

inline raw_ostream& operator<<(raw_ostream& out, const ThreadSummary& summary) {
    out << "ThreadSummary:\n";
    out << "  Routine: " << summary.routineNode->getValue()->getName() << "\n";
    out << "  Args: " << *summary.threadNode->getDataNode()->getValue() << "\n";
    out << "  Functions:\n";
    for (const Function *f : summary.functions) {
        out << "  " << f->getName() << "\n";
    }
    return out;
}

class ConcurrencyPass {
public:
    void run() {
        std::vector<ThreadNode*> threads = 
            ConcurrencyManager::get()->getConcurrencyNodes<ThreadNode>();
        for (auto *node : threads) {
            handleThreadNode(node);
        }
        computeThreadSummaries();
        printSummaries();
    }

    void printSharedMap() {
        for (auto &[k, v] : _sharedVariableMap) {
            errs() << *k << "\n";
            if (v.size() == 0) {
                errs() <<  "  (no shared variables)\n";
            } else {
                for (auto *n : v) {
                    errs() << "  " << *n->getValue() << "\n";
                }
            }
            errs() << "\n";
        }
    }

    void printSummaries() {
        for (ThreadSummary *summary : _summaries) {
            errs() << *summary << "\n";
        }
    }

    /**
     * We're interested in usages of globals from within threads. 
    */
    void handleGlobals(iterator_range<Module::global_iterator> it) {
        AndersenAAResult *result = GraphManager::get()->getAliasResult();
        for (GlobalVariable &g : it) {
            // Just not really constant globals.
            // TODO: interested in what happens if we use const_cast on a global in cxx.
            if (g.isConstant()) continue;
            for (User *user : g.users()) {
                // errs() << *user << "\n";
            }
        }
    }

private:
    void handleThreadNode(ThreadNode *node) {
        std::vector<const llvm::Value *> ptsSet{};
        GraphManager::get()->getAliasResult()->getPointsToSet(
            node->getDataNode()->getValue(), ptsSet);

        for (const Value *v : ptsSet) {
            _sharedVariableMap[v].push_back(node);
        }

        // TODO: i don't think its necessary to model threadnodes who don't have a routine.
        Node* routine = node->getRoutine();
        if (routine && !doesSummaryExist(routine)) {
            _summaries.push_back(new ThreadSummary{routine, node});
        }
    }

    /**
     * Returns boolean indicating if summary exists for given routine. 
    */
    bool doesSummaryExist(Node *routine) {
        return std::find_if(_summaries.begin(), _summaries.end(),
            [routine](const ThreadSummary *s){
             return s->routineNode == routine;
        }) != _summaries.end();
    }

    void computeThreadSummaries() {
        for (ThreadSummary *summary : _summaries) {
            const Function *routine = dyn_cast<Function>(
                summary->routineNode->getValue());
            summary->functions.insert(routine);
            collectFunctionUsage(summary, routine);
            collectSharedUsage(summary);
        }
    }

    void collectFunctionUsage(ThreadSummary *summary, const Function* f) {
        auto callGraph = GraphManager::get()->getCallGraph();
        for (auto &cgNode : *callGraph->getOrInsertFunction(f)) {
            summary->functions.insert(cgNode.second->getFunction());
            collectFunctionUsage(summary, cgNode.second->getFunction());
        }
    }

    void collectSharedUsage(ThreadSummary *summary) {
        const Function *routine = dyn_cast<Function>(summary->routineNode->getValue());
        const Value *data = routine->getArg(0);

        std::vector<const Value *> ptsSet{};
        GraphManager::get()->getAliasResult()->getPointsToSet(data, ptsSet);

        for (const Value *v : ptsSet) {
            std::vector<const Value *> innerSet{};
            GraphManager::get()->getAliasResult()->getPointsFromSet(v, innerSet);
            for (const Value *w : innerSet) {
                if (auto *instr = dyn_cast<Instruction>(w)) {
                    handleUsageInstruction(instr, summary);
                }
            }
        }
    }

    void handleUsageInstruction(const Instruction *instr, ThreadSummary *summary) {
        if (instr->getOpcode() == Instruction::Alloca) return;
        errs() << *instr << "\n"; // need to get usages
    }

private:
    std::unordered_map<const Value*, 
        std::vector<ThreadNode*>> _sharedVariableMap;
    std::vector<ThreadSummary*> _summaries;
};
