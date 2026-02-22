#pragma once

#include "andersen/AndersenAA.h"
#include "concurrency/ConcurrencyManager.h"
#include "concurrency/ThreadNode.h"
#include "graph/GraphManager.h"

#include "llvm/Analysis/CallGraph.h"
#include "llvm/Analysis/MemorySSA.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Use.h"
#include "llvm/Support/raw_ostream.h"

#include <unordered_set>
#include <utility>
#include <vector>
using namespace llvm;

enum Usage {
    UNKNOWN,
    READ,
    WRITE,
};

struct ThreadSummary {
    Node* routineNode;
    ThreadNode* threadNode;
    std::unordered_set<const Value*> writes;
    std::unordered_set<const Value*> reads;
    std::unordered_set<const Function*> functions;

    /**
     * Boolean indicating if <v> is apart of any functions that the thread calls. 
    */
    bool isApartOfThread(const Instruction *v) {
        return functions.contains(v->getFunction());
    }
};

inline raw_ostream& operator<<(raw_ostream& out, const ThreadSummary& summary) {
    out << "ThreadSummary:\n";
    out << "  Routine: " << summary.routineNode->getValue()->getName() << "\n";
    out << "  Args: " << *summary.threadNode->getDataNode()->getValue() << "\n";
    out << "  Functions:\n";
    for (const Function *f : summary.functions) {
        out << "     " << f->getName() << "\n";
    }
    out << "  Reads: ";
    if (summary.reads.size() == 0) {
        out << " (empty)\n";
    } else {
        out << "\n";
        for (const Value *v : summary.reads) {
            out << "   " << *v << "\n";
        }
    }
    out << "  Writes: ";
    if (summary.writes.size() == 0) { 
        out << " (empty)\n";
    } else {
        out << "\n";
        for (const Value *v : summary.writes) {
            out << "   " << *v << "\n";
        }
    }
    return out;
}

#include "concurrency/LocksetAnalysis.h"
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

        for (ThreadSummary *summary : _summaries) {
            LocksetAnalysis::get()->handleThread(*summary);
        }
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
        if (f->isDeclaration()) return;
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
        if (!summary->isApartOfThread(instr)) return;

        switch(instr->getOpcode()) {
            case Instruction::Load: {
                const LoadInst *load = dyn_cast<LoadInst>(instr);
                std::pair<Usage, const Instruction*> usages = checkLoadUsages(load);
                if (usages.second) {
                    saveUsage(usages.first, usages.second, summary);
                }
                break;
            }
            default:
                errs() << "handleUsageInstruction: unhandled opcode: "
                    << instr->getOpcodeName() << "\n";
        }
    }

    std::pair<Usage, const Instruction*> checkLoadUsages(const LoadInst *load) {
        for (const User *user : load->users()) {
            if (const StoreInst *store = dyn_cast<StoreInst>(user)) {
                return pair(Usage::WRITE, store);
            }
        }
        return pair(Usage::UNKNOWN, nullptr);
    }

    void saveUsage(Usage usage, const Instruction *instr, ThreadSummary *summary) {
        if (usage == Usage::READ) {
            summary->reads.insert(instr);
        } else if (usage == Usage::WRITE) {
            summary->writes.insert(instr);
        }
    }

private:
    std::unordered_map<const Value*, 
        std::vector<ThreadNode*>> _sharedVariableMap;
    std::vector<ThreadSummary*> _summaries;
};
