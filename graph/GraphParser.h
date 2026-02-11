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
#include "graph/BinaryOperatorNode.h"
#include "graph/GetElementPtrNode.h"
#include "graph/GlobalConstant.h"
#include "graph/LiteralNode.h"
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
            case Instruction::Call: return handleNode<CallNode, CallInst>(instr);
            case Instruction::Store: return handleStore(instr);
            case Instruction::Ret: return handleReturn(instr);
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

        for (Function &F : M) {
            FunctionNode* funcNode = handleNode<FunctionNode, Function>(&F);

            for (BasicBlock &B : F) {
                BasicBlockNode* blockNode = handleNode<BasicBlockNode, BasicBlock>(&B);
                funcNode->addBlock(blockNode);
    
                for (Instruction &I : B) {
                    Node* node = handleNode(&I);
                    blockNode->addNode(node);
                }
            }
        }
    }
};