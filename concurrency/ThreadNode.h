#pragma once

#include "concurrency/ConcurrencyManager.h"
#include "graph/CallNode.h"
#include "graph/FunctionNode.h"
#include "graph/GraphManager.h"
#include "graph/Node.h"
#include "llvm/IR/Attributes.h"
#include <stdexcept>
#include <unordered_set>
#include <utility>

/**
 * https://www.man7.org/linux/man-pages/man3/pthread_create.3.html
 * pthread_create(pthread_t thread, pthread_attr_t attr, <func ptr> <arg ptr>)
*/
class ThreadNode : public CallNode {
public:
    ThreadNode(const CallBase* I) : CallNode(I, "ThreadOperation") {}

    static ThreadNode* make(const CallBase *I) {
        ThreadNode *node = new ThreadNode(I);

        node->addProperty("operation", "CREATE_THREAD");
        ConcurrencyManager::get()->registerNode(node);

        // If we're a higher-level call, our arguments probably don't
        // match the order expected from pthread_create. We have to figure this out ourselves.
        if (ConcurrencyManager::get()->isHigherLevelCall(I)) {
            node->identifyArgumentSequence(I);

        } else {
            node->_handle = GraphManager::get()->getNodeFromOperand(I, 0);
            node->_routine = GraphManager::get()->getNodeFromOperand(I, 2);
            node->_argNode = GraphManager::get()->getNodeFromOperand(I, 3);

            // There may be a point where we aren't given a direct function.
            // In this case, we make an attempt to resolve the routine.
            if (!node->_routine->getValue()->getType()->isFunctionTy())
                node->revisitRoutine();
        }

        node->addEdge("ROUTINE", node->_routine);
        node->addEdge("DATA", node->_argNode);
        return node;
    }

    void addHandleEdge(Node *handle) {
        addEdge("JOIN", handle);
        _handle = handle;
    }

    const Function *getRoutineFunc() { return dyn_cast<Function>(_routine->getValue()); }

    Node* getDataNode() { return _argNode; }
    Node* getRoutine() { return _routine; }
    Node* getHandle() { return _handle; }

private:
    void identifyArgumentSequence(const CallBase *call) {
        // If we can identify the highest level:
        const CallBase *highestCall = ConcurrencyManager::get()->getHighestLevelCall(call)[0];
        if (highestCall) {
            // ..and identify that it either returns a ptr or contains at least 1 sret ptr,
            // we can infer that the ptr is the thread handle.
            int numSrets = 0;
            const Value *sret = nullptr;
            for (int i = 0; i < highestCall->arg_size(); i++) {
                if (highestCall->paramHasAttr(i, Attribute::StructRet)) {
                    numSrets++;
                    sret = highestCall->getArgOperand(i);
                }
            }

            if (numSrets == 1) {
                _handle = GraphManager::get()->getNode(sret);
            } 
        }

        for (int i = 0; i < call->arg_size(); i++) {
            const Value *v = call->getOperand(i);
            if (!v->getType()->isPointerTy()) continue;

            if (!_handle)
                _handle = GraphManager::get()->getNodeFromOperand(call, 0);
            _argNode = GraphManager::get()->getNodeFromOperand(call, 2);

            if (const GlobalVariable *global = dyn_cast<GlobalVariable>(v)) {
                _routine = GraphManager::get()->getNode(global->getInitializer()->getAggregateElement(2));
            }
        }
    }


    void revisitRoutine() {
        const Value *val = _routine->getValue();
        const Function *f = getLogicalRoutine(val);
        if (f)
            _routine = GraphManager::get()->getNode(f);
    }

    const Function* getLogicalRoutine(const Value *v) {
        std::vector<const Value *> ptsSet;
        GraphManager::get()->getAliasResult()->getPointsToSet(v, ptsSet);

        // if there exists more than 1 function within ours ptsSet.
        for (const Value *v : ptsSet) {
            if (v->getType()->isFunctionTy()) {
                return dyn_cast<Function>(v);
            }

            // For global-scope-defined structs and arrs.
            if (const GlobalVariable *global = dyn_cast<GlobalVariable>(v)) {
                Type *vTy = global->getValueType();
                if (vTy->isAggregateType() && global->hasInitializer()) {
                    return handleAggregateRoutineType(global->getInitializer(), vTy);
                }
            }
        }

        return nullptr;
    }

    bool handleSingleElement(const Value *v, const Function **f) {
        errs() << v->getName() << "\n";
        return false;
    }

    void handleFunctionRoutineType(const Value *value) {

    }

    const Function* handleAggregateRoutineType(const Constant *value, const Type* ty) {
        const Function *f = nullptr;

        if (ty->isStructTy()) {
            const StructType *strct = dyn_cast<StructType>(ty);
            for (int i = 0; i < ty->getStructNumElements(); i++) {
                if (i == 2) {
                    errs() << "returning f\n";
                    return dyn_cast<Function>(value->getAggregateElement(i));
                }
                handleSingleElement(value->getAggregateElement(i), &f);
            }
        } else if (ty->isArrayTy()) {
            const ArrayType *arrType = dyn_cast<ArrayType>(ty);
            throw std::runtime_error("handleAggregateRoutineType[array]: not implemented");
        } else {
            throw std::runtime_error("value is not a struct or array, but is an aggregate ty.");
        }

        return f;
    }

private:
    std::unordered_set<const Value*> seen;

    Node* _handle = nullptr;
    Node* _routine = nullptr;
    Node* _argNode = nullptr;
};
