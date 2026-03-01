#pragma once

#include <llvm/IR/Instructions.h>
#include <cstdint>
#include <unordered_set>
#include <vector>

#include "concurrency/ConcurrencyPass.h"
#include "graph/InstructionOrdering.h"
#include "llvm/IR/Instruction.h"
using namespace llvm;

class LocksetAnalysis {
public:

    void handleThread(const ThreadSummary &summary) {
        std::unordered_set<const Value *> lcl;
        for (const Value *lock : summary.locks) {
            const Instruction* lockInst = dyn_cast<Instruction>(lock);

            for (const Value *v : summary.writes) {
                const Instruction *instr = dyn_cast<Instruction>(v);
                errs() << "\n\n";
                InstructionOrdering::Ordering orderAgainstLock = InstructionOrdering::get()->getOrdering(instr,
                    lockInst, dyn_cast<Function>(summary.routineNode->getValue()));
                if (orderAgainstLock == InstructionOrdering::Ordering::AFTER)
                    lcl.insert(v);
                errs() << *v << "\n";
                errs() << "\torder against lock: " << InstructionOrdering::get()->getOrderName(orderAgainstLock) << "\n";
            }
            break;
        }

        std::vector<const Value*> temp;
        for (const Value *v : lcl) {
            temp.push_back(v);
        }

        std::vector<int> a;

        for (const Value *lock : summary.unlocks) {
            const Instruction* lockInst = dyn_cast<Instruction>(lock);

            size_t i = 0;
            for (const Value *v : temp) {
                const Instruction *instr = dyn_cast<Instruction>(v);
                InstructionOrdering::Ordering orderAgainstLock = InstructionOrdering::get()->getOrdering(instr,
                    lockInst, dyn_cast<Function>(summary.routineNode->getValue()));
                errs() << *v << "\n";
                errs() << "\torder against unlock: " << InstructionOrdering::get()->getOrderName(orderAgainstLock) << "\n";
                if (orderAgainstLock == InstructionOrdering::Ordering::BEFORE) {
                    // lcl.erase(lcl.begin() + i);
                    a.push_back(i);
                    // errs() << "removing " << i << '\n';
                }
                i++;
            }
            break;
        }

        errs() << "\n==============================================\n";
        size_t i = 0;
        for (const Value* v : lcl) {
            if (std::find(a.begin(), a.end(), i) != a.end())
                continue;
            errs() << "\t" << *v << "\n";
            i++;
        }

        for (const Value *v : summary.writes) {
            if (!lcl.contains(v)) {
                errs() << "\t" << *v << "\n";
            }
        }

        errs() << "==============================================\n";
    }

    static LocksetAnalysis* get() {
        static LocksetAnalysis* _object;
        return _object;
    }

private:
    uint32_t num_locks = 0;
};
