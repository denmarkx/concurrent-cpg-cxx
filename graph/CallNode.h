#pragma once
#include "Node.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Use.h"
#include <vector>

class CallNode : public Node {
public:
    CallNode(llvm::CallInst *I);
    static CallNode* make(llvm::CallInst* I);

    void addArgument(llvm::Use *value);

private:
    std::vector<Node*> _arguments;
};
