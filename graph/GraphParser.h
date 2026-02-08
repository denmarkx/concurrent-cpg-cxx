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
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/Value.h"
#include "llvm/ADT/TypeSwitch.h"
using namespace llvm;

#include <type_traits>

namespace GraphParser {

    template <typename T, typename U>
    std::enable_if_t<std::is_base_of_v<Node, T>, T*>
    inline handleNode(Value* instruction) {
        return T::make(dyn_cast<U>(instruction));
    }

    inline Node* handleNode(Value* value) {
        TypeSwitch<Value *>(value)
            .Case<Function>([](Function *F) { return handleNode<FunctionNode, Function>(F); })
            .Case<BasicBlock>([](BasicBlock *B) { return handleNode<BasicBlockNode, BasicBlock>(B); })
            .Default([](Value* v) { return nullptr; });
        return nullptr;
    }

    inline Node* handleStore(Instruction* instr) {
        StoreInst *store = dyn_cast<StoreInst>(instr);
        Value* src = store->getOperand(0);
        Value* dest = store->getOperand(1);
        Node *srcNode = GraphManager::get()->getNode(src);
        Node *destNode = GraphManager::get()->getNode(dest);

        if (srcNode && destNode) srcNode->registerStoreEdge(destNode);
        return nullptr;
    }

    inline Node* handleNode(Instruction* instr) {
        switch (instr->getOpcode()) {
            case Instruction::Alloca: return handleNode<StackAllocation, AllocaInst>(instr);
            case Instruction::Load: return handleNode<LoadNode, LoadInst>(instr);
            case Instruction::Call: return handleNode<CallNode, CallInst>(instr);
            case Instruction::Store: return handleStore(instr);
        }
        return nullptr;
    }

    inline void handleGraph(Module &M) {
        for (GlobalVariable &G : M.globals()) {
            if (!G.isConstant()) {
                handleNode<GlobalAllocation, GlobalVariable>(&G);
            }
        }

        for (Function &F : M) {
            FunctionNode* funcNode = handleNode<FunctionNode, Function>(&F);

            for (BasicBlock &B : F) {
                BasicBlockNode* blockNode = handleNode<BasicBlockNode, BasicBlock>(&B);
                funcNode->addBlock(blockNode);
    
                for (Instruction &I : B) {
                    Node* node = handleNode(&I);
                }
            }
        }
    }
};