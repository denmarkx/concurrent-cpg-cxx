#include "andersen/AndersenAA.h"
#include "graph/BasicBlockNode.h"
#include "graph/FunctionNode.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instruction.h"
#include "GraphBuilderPass.h"

#include <iostream>

bool GraphBuilderPass::runOnModule(Module &M) {
    for (Function &F : M) {
        FunctionNode* funcNode = FunctionNode::make(F);
        for (BasicBlock &B : F) {
            BasicBlockNode* blockNode = BasicBlockNode::make(B);
            funcNode->addBlock(blockNode);
            for (Instruction &I : B) {
                
            }
        }
    }
    return false;
}

char GraphBuilderPass::ID = 0;
static RegisterPass<GraphBuilderPass> X("a", "b", true, true);
