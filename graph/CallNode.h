#pragma once
#include "GraphManager.h"
#include "Node.h"

#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/MemoryLocation.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Use.h"
#include "llvm/IR/Value.h"

#include <vector>

class CallNode : public Node {
public:
    CallNode(llvm::CallInst *I) : Node(I, "CallInst") {}

    static CallNode* make(llvm::CallInst* I) {
        if (I->isInlineAsm() || !I->getCalledFunction()) return nullptr;

        CallNode *node = new CallNode(I);

        for (llvm::Use &arg : I->args()) {
            node->addArgument(&arg);
        }

        node->addCalledFunction(I->getCalledFunction());
        return node;
    }

    void addArgument(llvm::Use *value) {
        Node *argNode = GraphManager::get()->handlePrimitive(value->get());
        if (argNode == nullptr) return;

        _edges.push_back(pair("ARGUMENT", argNode));
        _arguments.push_back(argNode);
    }

    void addCalledFunction(llvm::Function *function) {
        // CallNode's internal container of functions is a list..
        // only because the instruction here may be a function pointer
        // pointing to any number of functions.
        // ..though I haven't actually confirmed what LLVM does here.
        Node *funcNode = GraphManager::get()->getNode(function);

        _edges.push_back(pair("CALLS", funcNode));
        _functions.push_back(funcNode);

        if (function->isDeclaration()) return;

        for (int i = 0; i < _arguments.size(); i++) {
            Node* argNode = _arguments[i];
            llvm::Value* argument = argNode->getValue();

            llvm::Value* param = function->getArg(i);
            Node* paramNode = GraphManager::get()->getNode(param);

            if (GraphManager::get()->alias(argument, param)) {
                paramNode->registerAliasEdge(argNode);
            } else {
                paramNode->registerCopyEdge(argNode);
            }
        }
    }

private:
    std::vector<Node*> _arguments;
    std::vector<Node*> _functions;
};
