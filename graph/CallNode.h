#pragma once
#include "GraphManager.h"
#include "Node.h"
#include "graph/IntrinsicHandler.h"

#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/MemoryLocation.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Use.h"
#include "llvm/IR/Value.h"

#include <stdexcept>
#include <vector>

class CallNode : public Node {
public:
    CallNode(const CallBase *I, std::string label="CallInst") : Node(I, label) {}

    static CallNode* make(const CallBase* I) {
        std::vector<const llvm::Function *> functions{};
        Value *funcPtrV = nullptr; // Corresponds to a loadinst.

        const Function *calledFunc = I->getCalledFunction();

        if (I->isInlineAsm()) return nullptr;
        if (!calledFunc) {
            // This always (maybe?) is a function pointer. We'll try to resolve it..
            funcPtrV = I->getOperand(0);
            std::vector<const llvm::Value *> ptsSet{};
            AndersenAAResult *AA = GraphManager::get()->getAliasResult();
            AA->getPointsToSet(funcPtrV, ptsSet);

            functions.reserve(ptsSet.size());
            for (auto &v : ptsSet) {
                if (const Function* f = dyn_cast<Function>(v)) {
                    functions.push_back(f);
                }
            }
            // If functions len is 0, we sort of don't have a possible path towards
            // any sort of function (which would actually be an oddity)
            // TODO: though, I wouldn't return null here..
            if (functions.size() == 0) return nullptr;
        }
        if (Node::isIgnoredIntrinsic(calledFunc)) return nullptr;
        if (calledFunc && calledFunc->getIntrinsicID() > 0) {
            IntrinsicHandler::handleIntrinsic(I);
            return nullptr;
        }

        CallNode *node = new CallNode(I);

        size_t index = 0;
        for (const Use &arg : I->args()) {
            node->addArgument(&arg, index);
            index++;
        }

        // If functions len is 0 and we got to this point, then
        // we can just use I->getCalledFunction
        if (functions.size() == 0) {
            LOG_DEBUG("Direct function call to " + Util::getName(I->getCalledFunction()));
            node->addCalledFunction(calledFunc);
        } else if (functions.size() == 1) {
            // If it's 1, we can technically say that this funcptr goes here.
            LOG_DEBUG("Indirect call to " + Util::getName(functions[0]));
            node->addCalledFunction(functions[0]);
        } else {
            // > 1 is a bit of an assumption as we don't know where this will go.
            // ..but we can say that we may call any of these.
            for (const Function* f : functions) {
                // TODO: though, we can probably add an edge property.
                LOG_DEBUG("Indirect call to " + Util::getName(f));
                node->addCalledFunction(f);
            }
        }


        // In my opinion, the optimizations should at least try to
        // resolve the function pointer for at trivial cases.
        // Otherwise, we are left with a disconnected graph for operand 0.
        if (functions.size() > 0 && funcPtrV != nullptr) {
            node->addFunctionPointer(funcPtrV);
        }
        return node;
    }

    void addFunctionPointer(const Value* value) {
        Node *ptrNode = GraphManager::get()->getNode(value);
        _edges.push_back(pair("FUNCTION_POINTER", ptrNode));
    }

    void addArgument(const Use *value, size_t index) {
        Node *argNode = GraphManager::get()->getNode(value->get());
        if (argNode == nullptr) return;

        argNode->addProperty("argumentIndex", std::to_string(index));

        _edges.push_back(pair("ARGUMENT", argNode));
        _arguments.push_back(argNode);
    }

    void addCalledFunction(const Function *function) {
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
            const Value* argument = argNode->getValue();

            Value* param = function->getArg(i);
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
