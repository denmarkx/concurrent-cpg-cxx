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
        // just for testing/dev, need to find lock calls
        // i am assuming that there is only 1 basicblock in the routine atm
        CallInst *lock = nullptr;
        CallInst *unlock = nullptr;
        for (const Function *f : summary.functions) {
            for (const BasicBlock &b : *f) {
                for (const Instruction &I : b) {
                    errs() << I << "\n";
                    if (I.getOpcode() == Instruction::Call) {
                        const CallInst *call = dyn_cast<CallInst>(&I);
                        if (call->getCalledFunction()->getName().str() == "pthread_mutex_lock") {
                            lock = const_cast<CallInst*>(call);
                        } else {
                            unlock = const_cast<CallInst*>(call);
                        }
                    }
                }
            }
        }

        std::cout << InstructionOrdering::get()->getOrdering(lock, unlock) << "\n";
        std::cout << InstructionOrdering::get()->getOrdering(unlock, lock) << "\n";

        for (const Value *v : summary.reads) {
            const Instruction *instr = dyn_cast<Instruction>(v);
            errs() << *v << "\n";
            errs() << "\torder against most recent lock:" << InstructionOrdering::get()->getOrdering(instr, lock) << "\n";
            errs() << "\torder against most recent unlock:" << InstructionOrdering::get()->getOrdering(instr, unlock) << "\n";
        }

        for (const Value *v : summary.writes) {
            const Instruction *instr = dyn_cast<Instruction>(v);
            errs() << *v << "\n";
            errs() << "\torder against most recent lock:" << InstructionOrdering::get()->getOrdering(instr, lock) << "\n";
            errs() << "\torder against most recent unlock:" << InstructionOrdering::get()->getOrdering(instr, unlock) << "\n";
        }
    }

    static LocksetAnalysis* get() {
        static LocksetAnalysis* _object;
        return _object;
    }

private:
    uint32_t num_locks = 0;
};
