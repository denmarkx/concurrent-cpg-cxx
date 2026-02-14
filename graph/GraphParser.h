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
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/Value.h"
#include "llvm/ADT/TypeSwitch.h"
#include "GraphManager.h"
#include "concurrency/ConcurrencyManager.h"
#include "concurrency/JoinNode.h"
#include "concurrency/ThreadNode.h"
#include "graph/BinaryOperatorNode.h"
#include "graph/BranchNode.h"
#include "graph/CastNode.h"
#include "graph/GetElementPtrNode.h"
#include "graph/GlobalConstant.h"
#include "graph/ICompareNode.h"
#include "graph/LiteralNode.h"
#include "graph/SwitchNode.h"
using namespace llvm;

#include <type_traits>

namespace GraphParser {

    template <typename T, typename U>
    std::enable_if_t<std::is_base_of_v<Node, T>, T*>
    inline handleNode(const Value* instruction) {
        assert (instruction != nullptr);
        T* node = nullptr;
        if (!GraphManager::get()->hasNode(instruction)) {
            node = T::make(dyn_cast<const U>(instruction));
        } else {
            Node* generic = GraphManager::get()->getNodeOrNull(instruction);
            if (!generic) return nullptr;
            node = dynamic_cast<T*>(generic);
        }
        return node;
    }

    inline Node* handleNode(const Value* value) {
        assert (value != nullptr);
        Node *n = nullptr;
        TypeSwitch<const Value *>(value)
            .Case<Function>([&](const Function *F) { n = handleNode<FunctionNode, Function>(F); })
            .Case<BasicBlock>([&](const BasicBlock *B) { n = handleNode<BasicBlockNode, BasicBlock>(B); })
            .Case<BinaryOperator>([&](const BinaryOperator *I) { n = handleNode<BinaryOperatorNode, BinaryOperator>(I); })
            .Case<ConstantInt>([&](const ConstantInt *I) { n = handleNode<LiteralNode, Value>(I); })
            .Default([](const Value* v) { return nullptr; });
        return n;
    }

    inline Node* handleStore(const Instruction* instr) {
        assert (instr != nullptr);
        const StoreInst *store = dyn_cast<StoreInst>(instr);
        Value* src = store->getOperand(0);
        Value* dest = store->getOperand(1);
        Node *srcNode = GraphManager::get()->getNode(src);
        Node *destNode = GraphManager::get()->getNode(dest);

        if (srcNode && destNode) srcNode->registerStoreEdge(destNode);
        return nullptr;
    }

    inline Node* handleReturn(const Instruction *instr) {
        assert (instr != nullptr);
        const ReturnInst *ret = dyn_cast<ReturnInst>(instr);
        Value *retValue = ret->getReturnValue();

        if (retValue == nullptr) return nullptr; // ret void
        Node *retNode = GraphManager::get()->getNode(retValue);

        const Function *f = instr->getFunction();
        FunctionNode *funcNode = dynamic_cast<FunctionNode*>(
            GraphManager::get()->getNode(f));
        funcNode->addReturn(retNode);
        return nullptr;
    }


    inline Node* handleNode(const Instruction* instr) {
        assert (instr != nullptr);
        switch (instr->getOpcode()) {
            case Instruction::Alloca: return handleNode<StackAllocation, AllocaInst>(instr);
            case Instruction::Load: return handleNode<LoadNode, LoadInst>(instr);
            case Instruction::GetElementPtr: return handleNode<GetElementPtrNode, GetElementPtrInst>(instr);
            case Instruction::Call: {
                const CallInst *callInst = dyn_cast<CallInst>(instr);
                if (auto cOp = ConcurrencyManager::get()->getConcurrencyOperation(callInst->getCalledFunction())) {
                    switch (cOp) {
                        case ThreadOperation::CREATE: return handleNode<ThreadNode, CallInst>(callInst);
                        case ThreadOperation::JOIN: return handleNode<JoinNode, CallInst>(callInst);
                        default: return handleNode<CallNode, CallInst>(callInst);
                    }
                }
                return handleNode<CallNode, CallInst>(instr);
            }
            case Instruction::Invoke: return handleNode<CallNode, InvokeInst>(instr);
            case Instruction::Store: return handleStore(instr);
            case Instruction::Ret: return handleReturn(instr);
            case Instruction::ICmp: return handleNode<ICompareNode, ICmpInst> (instr);
            case Instruction::Br: return handleNode<BranchNode, BranchInst> (instr);
            case Instruction::Switch: return handleNode<SwitchNode, SwitchInst> (instr);

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
                return handleNode<CastNode, CastInst>(instr);
            }
        }
        return handleNode(dynamic_cast<const Value*>(instr));
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
            FunctionNode* funcNode = handleNode<FunctionNode, Function>(&F);

            for (BasicBlock &B : F) {
                BasicBlockNode* blockNode = handleNode<BasicBlockNode, BasicBlock>(&B);
                blocks.push_back(blockNode);
                funcNode->addBlock(blockNode);
    
                for (Instruction &I : B) {
                    Node* node = handleNode(&I);
                    blockNode->addNode(node);
                }
            }
        }

        for (BasicBlockNode* block : blocks) {
            for (auto *s : successors(dyn_cast<BasicBlock>(block->getValue()))) {
                Node* next = GraphManager::get()->getNodeOrNull(s);
                if (next)
                    block->registerCFGEdge(next);
            }
        }
    }
};