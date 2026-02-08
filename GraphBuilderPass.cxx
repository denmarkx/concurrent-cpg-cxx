#include "andersen/AndersenAA.h"
#include "graph/BasicBlockNode.h"
#include "graph/FunctionNode.h"
#include "graph/StackAllocation.h"
#include "graph/StoreNode.h"
#include "graph/LoadNode.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instructions.h"
#include "GraphBuilderPass.h"

#include <iostream>

bool GraphBuilderPass::runOnModule(Module &M) {
    for (Function &F : M) {
        FunctionNode* funcNode = FunctionNode::make(F);

        for (BasicBlock &B : F) {
            BasicBlockNode* blockNode = BasicBlockNode::make(B);
            funcNode->addBlock(blockNode);

            for (Instruction &I : B) {
                switch (I.getOpcode()) {
                    case Instruction::Alloca: {
                        StackAllocation::make(dyn_cast<AllocaInst>(&I));
                        break;
                    }
                    case Instruction::Store: {
                        StoreNode::make(dyn_cast<StoreInst>(&I));
                        break;
                    }
                    case Instruction::Load: {
                        LoadNode::make(dyn_cast<LoadInst>(&I));
                    }
                }
            }
        }
    }
    return false;
}

char GraphBuilderPass::ID = 0;
static RegisterPass<GraphBuilderPass> X("a", "b", true, true);
