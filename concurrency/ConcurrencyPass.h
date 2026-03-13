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
#include "llvm/IR/ValueHandle.h"
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
            collectFunctionUsage(summary, routine, {});
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

    void collectFunctionUsage(ThreadSummary *summary, const Function* f, std::optional<WeakTrackingVH> prevInstr) {
        if (!f || f->isDeclaration()) return;
        if (f != summary->routineNode->getValue())
            if (summary->functions.contains(f)) return;
        summary->functions.insert(f);

        auto callGraph = GraphManager::get()->getCallGraph();
        for (auto &cgNode : *callGraph->getOrInsertFunction(f)) {
            if (!cgNode.second->getFunction() && prevInstr) {
                // It's more intuitive to have a flow/field/context sensitive Andersen's alias implementation.
                // Though, we may be able to get by without that for now.
                const CallBase *originalCall = dyn_cast<CallBase>(*prevInstr);
                if (!originalCall) continue;

                const CallBase *currentCall = dyn_cast<CallBase>(*cgNode.first);
                if (!currentCall) continue;

                // We're going to make a very naive attempt to resolve this indirect call.
                const Function *next = attemptIndirectCallResolution(originalCall, currentCall);
                if (next) {
                    collectFunctionUsage(summary, next, cgNode.first);
                    continue;
                }

                // If we're down here, we couldn't resolve this indirect call.
                // Our next attempt will be to see if this points to anything.
                std::vector<const Value*> ptsSet;
                GraphManager::get()->getAliasResult()->getPointsToSet(currentCall->getCalledOperand(), ptsSet);

                for (const Value* val : ptsSet) {
                    if (const Function *next = dyn_cast<Function>(val)) {
                        // For any function within our ptsTo set, we'll say that we may go here next.
                        // Obviously an over-approximation, but this is our last resort.
                        collectFunctionUsage(summary, next, cgNode.first);
                    }
                }
            }
            collectFunctionUsage(summary, cgNode.second->getFunction(), cgNode.first);
        }
    }

    // TODO: this doesn't belong in this class
    /*
     * Attempts to resolve the function of an indirect call in the most simple case:
     *  the function is directly passed as a function's argument
     *  and that parameter is directly used as-is.
     *
     * Example: I = call @__rust_try(ptr @_ZN3std9panicking3try7do_call17h8f189a79418b1601E,...
     * @__rust_try(ptr %0..)
     *  call %0 -> call @_ZN3std9panicking3try7do_call17h8f189a79418b1601 for call I
    */
    const Function* attemptIndirectCallResolution(const CallBase *originalCall, const CallBase *currCall) {
        int correspondingParam = -1;
        const Value *indirect = currCall->getCalledOperand();

        // Check if the operand we are calling is a parameter.
        for (size_t i=0; i < currCall->arg_size(); i++) {
            if (currCall->getFunction()->getArg(i) == indirect) {
                correspondingParam = i;
                break;
            }
        }

        // We don't consider traversing backwards on def-use since we ONLY
        // handle cases of functions being directly passed. 
        if (correspondingParam < 0) return nullptr;

        // Check to make sure the corresponding argument passed to original is a function type.
        const Value *candidate = originalCall->getOperand(correspondingParam);
        if (const Function *candidateFunc = dyn_cast<Function>(candidate))
            return candidateFunc;

        return nullptr;
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
