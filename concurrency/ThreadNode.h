#pragma once

#include "concurrency/ConcurrencyManager.h"
#include "graph/CallNode.h"
#include "graph/FunctionNode.h"
#include "graph/GraphManager.h"
#include "graph/Node.h"
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

        node->_edges.push_back(pair("HANDLE", node->_handle));
        node->_edges.push_back(pair("ROUTINE", node->_routine));
        node->_edges.push_back(pair("CALLS", node->_routine));
        node->_edges.push_back(pair("ARGUMENTS", node->_argNode));
        return node;
    }

    Node* getDataNode() { return _argNode; }
    Node* getRoutine() { return _routine; }
    Node* getHandle() { return _handle; }

private:
    void identifyArgumentSequence(const CallBase *call) {
        // This is a seriously sparse determination effort and it is all done by inference.
        // TODO: there is a possible way to do this via pointer alias and def-use, but that's reserved for now.

        for (int i = 0; i < call->arg_size(); i++) {
            const Value *v = call->getOperand(i);
            if (!v->getType()->isPointerTy()) continue;

            // TODO:
            // rust will inline the vtable at the final arg here.
            // i dont know about c++
            // ..and c is trivial

            // for now, i'm going to force this:
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
        GraphManager::get()->getAliasResult()->getPointsToSet(nullptr, v, ptsSet);

        // TODO: this sort of draws back to a CFG / domtree
        // if there exists more than 1 function within ours ptsSet.
        for (const Value *v : ptsSet) {
            // this is a bit insane. i cant get the underlying type?
            if (v->getType()->isFunctionTy()) {
                // TODO: for now, we'll accept the first one i guess.
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
                    // TODO: i personally can't find anything that will differentiate between the routine
                    // from the 2 funcs present in the vtable. for rust, its guaranteed that the routine
                    // will be the last element in the vtable. for c++, it depends on ABI.
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
