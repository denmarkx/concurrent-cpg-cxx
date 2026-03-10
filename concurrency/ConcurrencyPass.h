#pragma once

#include "andersen/AndersenAA.h"
#include "concurrency/ConcurrencyManager.h"
#include "concurrency/ThreadNode.h"
#include "graph/GraphManager.h"

#include "llvm/Analysis/CallGraph.h"
#include "llvm/Analysis/MemorySSA.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/GlobalValue.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Use.h"
#include "llvm/Support/raw_ostream.h"

#include <algorithm>
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
    std::unordered_set<const Value*> locks;
    std::unordered_set<const Value*> unlocks;
    std::unordered_set<const Function*> functions;

    /**
     * Boolean indicating if <v> is apart of any functions that the thread calls. 
    */
    bool isApartOfThread(const Instruction *v) {
        return functions.contains(v->getFunction());
    }
};

inline void writeSummarySet(raw_ostream& out, std::string title,
    const std::unordered_set<const Value*>& set) {
    
    out << "  " + title + ":";
    if (set.size() == 0) {
        out << " (empty)\n";
        return;
    }

    out << "\n";
    for (const Value *v : set) {
        out << "   " << *v << "\n";
    }
}

inline raw_ostream& operator<<(raw_ostream& out, const ThreadSummary& summary) {
    out << "ThreadSummary:\n";
    out << "  Routine: " << summary.routineNode->getValue()->getName() << "\n";
    out << "  Args: " << *summary.threadNode->getDataNode()->getValue() << "\n";
    out << "  Functions:\n";
    for (const Function *f : summary.functions) {
        if (f)
            out << "     " << f->getName() << "\n";
    }

    writeSummarySet(out, "Reads", summary.reads);
    writeSummarySet(out, "Writes", summary.writes);
    writeSummarySet(out, "Locks", summary.locks);
    writeSummarySet(out, "Unlocks", summary.unlocks);
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
            // summary->functions.insert(routine);
            collectFunctionUsage(summary, routine);
            // collectSharedUsage(summary);
            // associateLocks(summary);
        }
    }

    void associateLocks(ThreadSummary *summary) {
        for (const Function *func : summary->functions) {
            std::optional<pair<ThreadOperation, const CallInst*>> syncInfo = ConcurrencyManager::get()->getSyncCall(func);
            if (syncInfo) {
                if (syncInfo->first == ThreadOperation::LOCK)
                    summary->locks.insert(syncInfo->second);
                else
                    summary->unlocks.insert(syncInfo->second);
            }
        }
    }

    void collectFunctionUsage(ThreadSummary *summary, const Function* f) {
        if (!f || f->isDeclaration()) return;
        if (f != summary->routineNode->getValue())
            if (summary->functions.contains(f)) return;
        summary->functions.insert(f);

        auto callGraph = GraphManager::get()->getCallGraph();
        // TODO: the next thing this shit doesnt handle is the case
        // of a function pointer being explicitly given and not in any aggregate structure
        // ie:
        // call i32 @__rust_try(ptr @_ZN3std9panicking3try7do_call17hd9d5ae0f25cea609E, ...
        // where ptr %0 (which is do_call) is unresolved even though it is the most simplistic
        // thing you could ever imagine.
        for (auto &cgNode : *callGraph->getOrInsertFunction(f)) {
            // TODO: insanely rust-specific (see callnode.h)
            // also TODO: callgraph doesnt allow any flexibility on func ptrs.
            if (!cgNode.second->getFunction()) {
                // we're going to pretend that this leads where we want it to.
                // but unfortunately this is a weak vh tracking node
                // so i have to do this MESS:
                if (f->arg_size() == 0) continue;
                std::vector<const Value*> ptsSet;
                GraphManager::get()->getAliasResult()->getPointsToSet(f->getArg(0), ptsSet);
                auto it = std::find_if(ptsSet.begin(), ptsSet.end(), [&](const Value *v){
                    return v->getName().str() == "vtable.2";
                });
                if (it != ptsSet.end()) {
                    const GlobalVariable *table = dyn_cast<GlobalVariable>(*it);
                    const Function *f2 = dyn_cast<Function>(table->getInitializer()->getAggregateElement(2));
                    // summary->functions.insert(f2);
                    collectFunctionUsage(summary, f2);
                    continue;
                } else {
                    // looking at the ptsTo set for ptr %0 in __rust_try actually is correct.
                    // but the callGraph doesn't know about that so we have to do another hack:
                    if (f->getName() == "__rust_try") {
                        errs() << *f << "\n";
                        errs() << f->arg_size() << "\n";

                        std::vector<const Value*> ptsSet;
                        GraphManager::get()->getAliasResult()->getPointsToSet(f->getArg(0), ptsSet);
                        auto it = std::find_if(ptsSet.begin(), ptsSet.end(), [&](const Value *v) {
                            errs() << v->getName() << "\n";
                            return v->getName().str() == "_ZN3std9panicking3try7do_call17hd9d5ae0f25cea609E";
                        });
                        collectFunctionUsage(summary, dyn_cast<Function>(*it));
                    }
                }
            }
            // summary->functions.insert(cgNode.second->getFunction());
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
