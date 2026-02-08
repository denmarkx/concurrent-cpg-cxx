#include "andersen/AndersenAA.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/CallGraph.h"
#include "llvm/Analysis/MemoryLocation.h"
#include "llvm/Analysis/ValueTracking.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instruction.h"
#include "llvm/ADT/SCCIterator.h"

#include "ConstructionPass.h"

#include <iostream>
#include <memory>

/**
 * Returns Usage (unsigned int[0-2]) indicating the usage of the data pointer (read or write). 
*/
Usage ConstructionPass::identifyDataUsage(std::shared_ptr<ThreadContext> thread) {
    AndersenAAResult &AA = getAnalysis<AndersenAAWrapperPass>().getResult();
    MemoryLocation L1(thread->data, MemoryLocation::UnknownSize);
    Usage usage = Usage::Unknown;

    for (BasicBlock &B : *thread->routine) {
        for (Instruction &I : B) {
            switch (I.getOpcode()) {
                case Instruction::Load: {
                    MemoryLocation L2(&I, MemoryLocation::UnknownSize);
                    AliasResult r2 = AA.alias(L1, L2);

                    if (r2 != AliasResult::NoAlias) usage = Usage::Read;
                    break;
                }
                case Instruction::Store: {
                    StoreInst *store = dyn_cast<StoreInst>(&I);
                    Value *v = store->getOperand(1);
                    MemoryLocation L2(v, MemoryLocation::UnknownSize);
                    AliasResult r = AA.alias(L1, L2);

                    if (r != AliasResult::NoAlias) return Usage::Write;
                }
                // case Instruction::Call: {}
            }
        }
    }
    return usage;
}

bool ConstructionPass::runOnModule(Module &M) {
    AndersenAAResult &AA = getAnalysis<AndersenAAWrapperPass>().getResult();

    // Function *test = M.getFunction("main");
    // for (BasicBlock &B : *test) {
    //     for (Instruction &I : B) {
    //         LoadInst *alloca = dyn_cast<LoadInst>(&I);
    //         if (alloca == nullptr) continue;
    //         alloca->print(outs());
    //         std::vector<const Value*> ptsSet;
    //         AA.getPointsToSet(alloca, ptsSet);
    //         std::cout << "\tptsSet size = " << ptsSet.size() << "\n\n\n";
    //         for (auto &v : ptsSet) {
    //             v->print(outs());
    //             std::cout << "\n";
    //         }
    //     }
    // }

    Function *createThread = M.getFunction("pthread_create");
    for (User *user : createThread->users()) {
        CallInst *call = dyn_cast<CallInst>(user);
        if (call == nullptr) continue;

        // We'll eventually need to go into the thread routines
        // to see where if they read/write to a global if this is null.
        Value* data = call->getArgOperand(3);

        std::shared_ptr<ThreadContext> thread = std::make_shared<ThreadContext>(
            call->getArgOperand(0),
            call,
            dyn_cast<Function>(call->getArgOperand(2)),
            data,
            nullptr
        );
        _threads.push_back(thread);
        _functionThreadMap[thread->routine].insert(thread);
        if (data == nullptr) continue;
        unsigned int usageIdx = identifyDataUsage(thread);

        MemoryLocation L2(data, MemoryLocation::UnknownSize);
        bool inserted = false;
        for (auto &[k, v] : _sharedDataMap) {
            MemoryLocation L1(k, MemoryLocation::UnknownSize);
            AliasResult res = AA.alias(L1, L2);
            if (res != AliasResult::NoAlias) {
                v[usageIdx].insert(thread);
                inserted = true;
            }
        }

        if (!inserted) {
            _sharedDataMap[data][usageIdx].insert(thread);
        }
    }

    Function *joinThread = M.getFunction("pthread_join");
    if (joinThread != nullptr) {
        for (User *user : joinThread->users()) {
            CallInst *call = dyn_cast<CallInst>(user);
            if (call == nullptr) continue;

            for (Use &handleUse : call->getArgOperand(0)->uses()) {
                // We're looking for a load instruction only because
                // pthread_join(h,.. where h is a copied i64. At least someone
                // must alias our handle pointer given to a pthread_create.
                if (LoadInst *load = dyn_cast<LoadInst>(handleUse)) {
                    Value* pointer = load->getOperand(0);
                    std::cout << "ptr = \n\n";
                    pointer->print(outs());
                    MemoryLocation L2(pointer, MemoryLocation::UnknownSize);
                    for (auto &T : _threads) {
                        MemoryLocation L1(T->handle, MemoryLocation::UnknownSize);
                        AliasResult res = AA.alias(L1, L2);
                        if (res != AliasResult::NoAlias) {
                            // It is possible that this aliases to more than 1 thread.
                            // ..but that is technically incorrect user code for pthread_create.
                            // and such, the last thread create is actually the "correct one", but
                            // there is nothing stopping the other threads from executing in the short interim.
                            (*T).join = call;
                        }
                    }
                }
            }
        }
    }

    for (auto &t : _threads) {
        std::cout << "Thread:\n";
        std::cout << "Join:\n";
        if ((*t).join != nullptr) {
            (*t).join->print(outs());
            std::cout << "\n";
        } else {
            std::cout << "  (none)\n";
        }
        std::cout << "\n";
    }

    for (auto &[k, v] : _sharedDataMap) {
        k->print(outs());
        std::cout << "\n";
        std::cout << "\n  read\n";
        for (auto &s : v[0]) {
            std::cout << "  " << s << "\n";
        }
        std::cout << "  write\n";
        for (auto &s : v[1]) {
            std::cout << "  " << s << "\n";
        }
    }

    CallGraph graph(M);
    for (scc_iterator<CallGraph*> it = scc_begin(&graph); !it.isAtEnd(); ++it) {
        for (CallGraphNode *node : *it) {
            Function *f = node->getFunction();
            if (f && !f->isDeclaration()) {
                walkFunction(f);
            }
        }
    }

    return false;
}

void ConstructionPass::walkFunction(Function *f) {
    _worklist.push_back(&f->getEntryBlock().front());

    while (!_worklist.empty()) {
        Instruction *instr = _worklist.front();
        _worklist.pop_front();
        
        if (!_visited.insert(instr).second) continue;

        processInstruction(instr);

        if (instr->isTerminator()) {
            for (unsigned i = 0; i < instr->getNumSuccessors(); ++i) {
                _worklist.push_back(&instr->getSuccessor(i)->front());
            }
        } else if (instr->getNextNode()) {
            _worklist.push_back(instr->getNextNode());
        }
        
        if (auto *Call = dyn_cast<CallInst>(instr)) {
            if (Function *Callee = Call->getCalledFunction()) {
                if (!Callee->isDeclaration() && 
                    !_visited.count(&Callee->getEntryBlock().front())) {
                    _worklist.push_back(&Callee->getEntryBlock().front());
                }
            }
        }
    }
}

void ConstructionPass::processInstruction(Instruction *instr) {
    AndersenAAResult &AA = getAnalysis<AndersenAAWrapperPass>().getResult();
    if (_functionThreadMap.find(instr->getFunction()) == _functionThreadMap.end()) return;

    if (CallInst *call = dyn_cast<CallInst>(instr)) {
        if (call->getCalledFunction()->getName() == "pthread_mutex_lock") {
            std::cout << "Mutex LOCKED.\n";
        }
        if (call->getCalledFunction()->getName() == "pthread_mutex_unlock") {
            std::cout << "Mutex UNLOCKED.\n";
        }
    }

    if (StoreInst *store = dyn_cast<StoreInst>(instr)) {
        MemoryLocation L1(store->getOperand(1), MemoryLocation::UnknownSize);
        for (auto &[k, v] : _sharedDataMap) {
            MemoryLocation L2(k, MemoryLocation::UnknownSize);
            if (AA.alias(L1, L2) != AliasResult::NoAlias) {
                std::cout << "write action on shared data.\n";
            }  
        }
    }
}

void ConstructionPass::getAnalysisUsage(AnalysisUsage &AU) const {
    AU.addRequired<AndersenAAWrapperPass>();
    AU.setPreservesAll();
}

char ConstructionPass::ID = 0;
static RegisterPass<ConstructionPass> X("a", "b", true, true);
