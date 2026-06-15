#pragma once

#include "BasicBlockNode.h"
#include "CallNode.h"
#include "FunctionNode.h"
#include "GlobalAllocation.h"
#include "Node.h"
#include "StackAllocation.h"
#include "LoadNode.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/Value.h"
#include "llvm/ADT/TypeSwitch.h"
#include "GraphManager.h"
#include "concurrency/ConcurrencyManager.h"
#include "concurrency/ConcurrencyPass.h"
#include "concurrency/JoinNode.h"
#include "concurrency/ThreadNode.h"
#include "graph/AtomicCmpXChgNode.h"
#include "graph/AtomicRMWNode.h"
#include "graph/BinaryOperatorNode.h"
#include "graph/BlockComplexity.h"
#include "graph/BranchNode.h"
#include "graph/CastNode.h"
#include "graph/ExtractValueNode.h"
#include "graph/FenceNode.h"
#include "graph/GetElementPtrNode.h"
#include "graph/GlobalConstant.h"
#include "graph/ICompareNode.h"
#include "graph/InsertValueNode.h"
#include "graph/InstructionOrdering.h"
#include "graph/LiteralNode.h"
#include "graph/MutexNode.h"
#include "graph/PhiNode.h"
#include "graph/ReturnNode.h"
#include "graph/StoreNode.h"
#include "graph/SwitchNode.h"
#include "llvm/Pass.h"
#include <stdexcept>
#include <type_traits>
using namespace llvm;

// #define CHECK_SKIPPED 0

namespace GraphParser {

    template <typename T, typename U>
    std::enable_if_t<std::is_base_of_v<Node, T>, T*>
    inline handleNode(const Value* instruction, bool cloning=false) {
        assert (instruction != nullptr);
        T* node = nullptr;
        if (cloning || !GraphManager::get()->hasNode(instruction)) {
            node = T::make(dyn_cast<const U>(instruction));
        } else {
            Node* generic = GraphManager::get()->getNodeOrNull(instruction);
            if (!generic) return nullptr;
            node = dynamic_cast<T*>(generic);
        }
        return node;
    }

    inline Node* handleNode(const Value* value, bool cloning=false) {
        assert (value != nullptr);
        
        Node *n = nullptr;
        TypeSwitch<const Value *>(value)
            .Case<Function>([&](const Function *F) { n = handleNode<FunctionNode, Function>(F, cloning); })
            .Case<BasicBlock>([&](const BasicBlock *B) { n = handleNode<BasicBlockNode, BasicBlock>(B, cloning); })
            .Case<BinaryOperator>([&](const BinaryOperator *I) { n = handleNode<BinaryOperatorNode, BinaryOperator>(I, cloning); })
            .Case<ConstantInt>([&](const ConstantInt *I) { n = handleNode<LiteralNode, Value>(I, cloning); })
            .Default([](const Value* v) { return nullptr; });
        return n;
    }

    inline Node* handleStore(const Instruction* instr, bool cloning=false) {
        assert (instr != nullptr);
        const StoreInst *store = dyn_cast<StoreInst>(instr);
        Value* src = store->getOperand(0);
        Value* dest = store->getOperand(1);
        Node *srcNode = GraphManager::get()->getNode(src);
        Node *destNode = GraphManager::get()->getNode(dest);

        if (srcNode && destNode) {
            if (instr->isAtomic()) {
                srcNode->registerAtomicStoreEdge(destNode, store);
                GraphManager::get()->insertStore(srcNode, destNode, store->getOrdering());
            } else {
                srcNode->registerStoreEdge(destNode);
                GraphManager::get()->insertStore(srcNode, destNode);
            }
        }
        return handleNode<StoreNode, StoreInst>(instr, cloning);
    }

    inline Node* handleReturn(const Instruction *instr, bool cloning=false) {
        assert (instr != nullptr);
        const ReturnInst *ret = dyn_cast<ReturnInst>(instr);
        Value *retValue = ret->getReturnValue();

        const Function *f = instr->getFunction();
        FunctionNode *funcNode = dynamic_cast<FunctionNode*>(
            GraphManager::get()->getNode(f));

        ReturnNode *retNode = new ReturnNode(ret);
        if (retValue == nullptr) { // ret void or null or const
            retNode = handleNode<ReturnNode, ReturnInst>(instr, cloning);
        } else {
            Node *retItem = GraphManager::get()->getNode(retValue);
            retNode->registerEdge(retItem);
        }

        funcNode->addReturn(retNode);
        return retNode;
    }
    
    inline Node* handleCallInvoke(const Instruction* instr, bool cloning=false) {
        const CallBase *callBase = dyn_cast<CallBase>(instr);

        auto cOp = ConcurrencyManager::get()->getConcurrencyOperation(callBase->getCalledFunction());
        if (cOp == ThreadOperation::NONE)
            cOp = ConcurrencyManager::get()->getConcurrencyOperation(callBase);

        if (cOp != ThreadOperation::NONE) {
            Node *concurrencyNode = nullptr;
            switch (cOp) {
                case ThreadOperation::CREATE: { concurrencyNode = handleNode<ThreadNode, CallBase>(callBase, cloning); break; }
                case ThreadOperation::JOIN: { concurrencyNode = handleNode<JoinNode, CallBase>(callBase, cloning); break; }
                case ThreadOperation::LOCK: { concurrencyNode = handleNode<MutexNode, CallBase>(callBase, cloning); break; }
                case ThreadOperation::UNLOCK: { concurrencyNode = handleNode<MutexNode, CallBase>(callBase, cloning); break; }
                default: return handleNode<CallNode, CallInst>(callBase, cloning);
            }

            // It's possible that this might have a higher level caller:
            // I suppose just for now, this can be reserved for joins.
            if (cOp == JOIN || cOp == LOCK || cOp == UNLOCK) {
                std::vector<const CallBase*> higherCalls = ConcurrencyManager::get()->getHighestLevelCall(callBase);

                // If there exists a higher call, we'll treat that as the join instead of the lower one.
                // ..but it's already registered, so de-reg it:
                if (!higherCalls.empty()) {
                    ConcurrencyManager::get()->unregisterNode(concurrencyNode);
                    GraphManager::get()->removeNode(concurrencyNode);
                }

                for (const auto &x : higherCalls) {
                    // These may actually already exist:
                    Node *candidate = GraphManager::get()->getNode(x);
                    if (candidate)
                        GraphManager::get()->removeNode(candidate);

                    // Then register these new ones in its place:
                    switch(cOp) {
                        case ThreadOperation::JOIN: { handleNode<JoinNode, CallBase>(x, cloning); break; }
                        case ThreadOperation::LOCK:
                        case ThreadOperation::UNLOCK: { handleNode<MutexNode, CallBase>(x, cloning); break; }
                        default: break;
                    }
                }
            }
        }
        return handleNode<CallNode, CallBase>(instr, cloning);
    }


    inline Node* handleNode(const Instruction* instr, bool cloning=false) {
        assert (instr != nullptr);
        switch (instr->getOpcode()) {
            case Instruction::Alloca: return handleNode<StackAllocation, AllocaInst>(instr, cloning);
            case Instruction::Load: return handleNode<LoadNode, LoadInst>(instr, cloning);

            case Instruction::GetElementPtr: return handleNode<GetElementPtrNode, GetElementPtrInst>(instr, cloning);
            case Instruction::ExtractValue: return handleNode<ExtractValueNode, ExtractValueInst>(instr, cloning);
            case Instruction::InsertValue: return handleNode<InsertValueNode, InsertValueInst>(instr, cloning);

            case Instruction::Call:
            case Instruction::Invoke: return handleCallInvoke(instr, cloning);

            case Instruction::Store: return handleStore(instr, cloning);
            case Instruction::Ret: return handleReturn(instr, cloning);
            case Instruction::ICmp: return handleNode<ICompareNode, ICmpInst> (instr, cloning);
            case Instruction::Br: return handleNode<BranchNode, BranchInst> (instr, cloning);
            case Instruction::Switch: return handleNode<SwitchNode, SwitchInst> (instr, cloning);

            case Instruction::PHI: return handleNode<PhiNode, PHINode>(instr, cloning);

            case Instruction::AtomicRMW: return handleNode<AtomicRMWNode, AtomicRMWInst>(instr, cloning);
            case Instruction::AtomicCmpXchg: return handleNode<AtomicCmpXChgNode, AtomicCmpXchgInst>(instr, cloning);
            case Instruction::Fence: return handleNode<FenceNode, FenceInst>(instr, cloning);

            case Instruction::Trunc:
            case Instruction::ZExt:
            case Instruction::SExt:
            case Instruction::FPToUI:
            case Instruction::FPToSI:
            case Instruction::UIToFP:
            case Instruction::SIToFP:
            case Instruction::FPTrunc:
            case Instruction::FPExt:
            case Instruction::PtrToInt:
            case Instruction::IntToPtr:
            case Instruction::BitCast:
            case Instruction::AddrSpaceCast: {
                return handleNode<CastNode, CastInst>(instr, cloning);
            }
        }
        Node *valueHandle = handleNode(dynamic_cast<const Value*>(instr), cloning);

        #ifdef CHECK_SKIPPED
            if (!valueHandle) {
                errs() << "\033[93mUnhandled: " << *instr << "\033[0m\n";
                errs() << "    TypeID = " << instr->getOpcode() << "\n";
            }
        #endif

        return valueHandle;
    }

    inline void associateTerminators() {
        for (Node *n : GraphManager::get()->getAllNodesOf<ReturnNode>()) {
            FunctionNode *funcNode = dynamic_cast<FunctionNode*>(n->getFunction());
            assert(funcNode != nullptr);
            funcNode->addTerminator(n);
        }
    }

    inline void handleGraph(Module &M) {
        for (GlobalVariable &G : M.globals()) {
            if (!G.isConstant()) {
                handleNode<GlobalAllocation, GlobalVariable>(&G);
            } else {
                handleNode<GlobalConstant, GlobalVariable>(&G);
            }
        }

        std::vector<BasicBlockNode*> blocks;

        for (Function &F : M) {
            ConcurrencyManager::get()->discoverSyncFunctions(&F);
            FunctionNode* funcNode = handleNode<FunctionNode, Function>(&F);
            if (!funcNode) continue;

            for (BasicBlock &B : F) {
                BlockComplexity::get()->handleBlock(&B);
                InstructionOrdering::get()->handleBasicBlock(&B);

                BasicBlockNode* blockNode = handleNode<BasicBlockNode, BasicBlock>(&B);
                if (!blockNode) continue;
                blocks.push_back(blockNode);
                blockNode->setFunction(funcNode);
                funcNode->addBlock(blockNode);
    
                for (Instruction &I : B) {
                    Node* node = handleNode(&I);
                    if (!node) continue;

                    BlockComplexity::get()->handleInstruction(&I);
                    InstructionOrdering::get()->handleInstruction(&I);
                    blockNode->addNode(node);
                    node->setFunction(funcNode);
                }
            }
        }

        for (BasicBlockNode* block : blocks) {
            for (auto *s : successors(dyn_cast<BasicBlock>(block->getValue()))) {
                Node* next = GraphManager::get()->getNodeOrNull(s);
                // if (next)
                    // block->registerCFGEdge(next);
            }
        }

        associateTerminators();
    }

    /*
     * Cloning a function, as-is, is destructive if not used properly.
     * This will clone all nodes under the function intraprocedurally.
     *
     * Currently, this is used just to handle the case of function pointers
     * when we can reasonably prove the caller from the callsite.
    */
    inline FunctionNode* cloneFunction(FunctionNode *root) {
        std::vector<Node*> newNodes;

        const Function *f = dyn_cast<Function>(root->getValue());
        assert(f != nullptr);

        FunctionNode *newFuncNode = handleNode<FunctionNode, Function>(f, true);
        assert(newFuncNode != nullptr);

        for (const BasicBlock &block : *f) {
            BasicBlockNode *newBlock = handleNode<BasicBlockNode, BasicBlock>(&block, true);
            if (!newBlock) continue;

            newFuncNode->addBlock(newBlock);
            newBlock->setFunction(newFuncNode);

            for (const Instruction &instr : block) {
                Node *newNode = handleNode(&instr, true);
                if (!newNode) continue;

                newBlock->addNode(newNode);
                newNode->setFunction(newFuncNode);

                if (instr.getOpcode() == Instruction::Ret)
                    newFuncNode->addTerminator(newNode);
            }
        }
        return newFuncNode;
    }
};
