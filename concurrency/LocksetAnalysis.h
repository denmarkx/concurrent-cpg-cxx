#pragma once

#include <llvm/IR/Instructions.h>
#include <cstdint>

#include "concurrency/ConcurrencyPass.h"
#include "graph/InstructionOrdering.h"
#include "llvm/IR/Instruction.h"
using namespace llvm;

class LocksetAnalysis {
public:

    void handleThread(const ThreadSummary &summary) {
        for (const Value *lock : summary.locks) {
            const Instruction* lockInst = dyn_cast<Instruction>(lock);
            for (const Value *v : summary.reads) {
                const Instruction *instr = dyn_cast<Instruction>(v);
                InstructionOrdering::Ordering orderAgainstLock = InstructionOrdering::get()->getOrdering(instr, lockInst);
                errs() << *v << "\n";
                errs() << "\torder against most recent lock: " << InstructionOrdering::get()->getOrderName(orderAgainstLock) << "\n";
            }

            for (const Value *v : summary.writes) {
                const Instruction *instr = dyn_cast<Instruction>(v);
                errs() << "\n\n";
                InstructionOrdering::Ordering orderAgainstLock = InstructionOrdering::get()->getOrdering(instr, lockInst);
                errs() << *v << "\n";
                errs() << "\torder against most recent lock: " << InstructionOrdering::get()->getOrderName(orderAgainstLock) << "\n";
            }
        }
    }

    static LocksetAnalysis* get() {
        static LocksetAnalysis* _object;
        return _object;
    }

private:
    uint32_t num_locks = 0;
};
