#pragma once

#include "graph/GraphManager.h"
#include "graph/Node.h"
#include <llvm/IR/Instructions.h>
#include <llvm/IR/Intrinsics.h>
#include <llvm/IR/IntrinsicInst.h>
#include <string>

using namespace llvm;

namespace IntrinsicHandler {
    inline void handleIntrinsic(const CallInst *call) {
        const Function *f = call->getCalledFunction();

        switch (f->getIntrinsicID()) {
            // @llvm.dbg.declare<ptr, !xx,..>
            case Intrinsic::IndependentIntrinsics::dbg_declare: {
                const DbgDeclareInst* inst = dyn_cast<DbgDeclareInst>(call);
                const Value* src = inst->getVariableLocationOp(0);
                const DILocalVariable *srcDI = inst->getVariable();

                if (src == nullptr || srcDI == nullptr) return;
                
                Node *srcNode = GraphManager::get()->getNode(src);
                if (srcNode == nullptr) return;

                srcNode->addProperty("file", srcDI->getFilename().str());
                srcNode->addProperty("line", std::to_string(srcDI->getLine()));
            }
        }
    }
};