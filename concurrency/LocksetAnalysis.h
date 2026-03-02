#pragma once

#include <algorithm>
#include <iterator>
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
        std::vector<const Value *> handledInstructions;
        std::vector<const Value *> declaredAfterLock;

        for (const Value *lock : summary.locks) {
            const Instruction* lockInst = dyn_cast<Instruction>(lock);

            for (const Value *v : summary.writes) {
                const Instruction *instr = dyn_cast<Instruction>(v);

                InstructionOrdering::Ordering orderAgainstLock = InstructionOrdering::get()->getOrdering(
                    instr, lockInst, dyn_cast<Function>(summary.routineNode->getValue()));

                if (orderAgainstLock == InstructionOrdering::Ordering::AFTER)
                    declaredAfterLock.push_back(v);
            }
            break;
        }

        for (const Value *lock : summary.unlocks) {
            const Instruction* lockInst = dyn_cast<Instruction>(lock);

            for (size_t i = 0; i < declaredAfterLock.size(); i++) {
                const Instruction *instr = dyn_cast<Instruction>(declaredAfterLock[i]);

                InstructionOrdering::Ordering orderAgainstLock = InstructionOrdering::get()->getOrdering(
                    instr, lockInst, dyn_cast<Function>(summary.routineNode->getValue()));

                if (orderAgainstLock == InstructionOrdering::Ordering::BEFORE) {
                    handledInstructions.push_back(declaredAfterLock[i]);
                    std::erase_if(declaredAfterLock, [&declaredAfterLock, &i](const Value *e) {
                        return e == declaredAfterLock[i];
                    });
                }
            }
        }

        errs() << "\n==============================================\n";
        for (const Value *v : summary.writes) {
            if (std::find(handledInstructions.begin(), handledInstructions.end(), v) != handledInstructions.end())
                continue;
            errs() << "\t" << *v << "\n";
        }

        for (const Value* v : declaredAfterLock) {
            errs() << "\t" << *v << "\n";
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
