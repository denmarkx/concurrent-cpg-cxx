#pragma once
#include "GraphManager.h"
#include "Node.h"

#include "llvm/IR/Instructions.h"
#include "llvm/IR/Use.h"

#include <vector>

class CallNode : public Node {
public:
    CallNode(llvm::CallInst *I) : Node(I, "CallInst") {}

    static CallNode* make(llvm::CallInst* I) {
        CallNode *node = new CallNode(I);

        for (llvm::Use &arg : I->args()) {
            node->addArgument(&arg);
        }

        return node;
    }

    void addArgument(llvm::Use *value) {
        Node *argNode = GraphManager::get()->handlePrimitive(value->get());
        if (argNode == nullptr) return;

        _edges.push_back(pair("ARGUMENT", argNode));
        _arguments.push_back(argNode);
    }

private:
    std::vector<Node*> _arguments;
};
