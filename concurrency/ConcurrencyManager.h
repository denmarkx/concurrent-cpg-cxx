#pragma once

#include "components/LTOLibCManager.h"
#include "graph/Node.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Value.h"
#include <llvm/IR/Function.h>
#include <queue>
#include <stdexcept>
#include <unordered_map>
#include <utility>
#include <vector>
using namespace llvm;

enum ThreadOperation {
    NONE,
    CREATE,
    JOIN,
    LOCK,
    UNLOCK
};

const ThreadOperation SyncOperations[2] = {
    ThreadOperation::LOCK, ThreadOperation::UNLOCK
};

struct OperationInfo {
    ThreadOperation opCode;
    Type::TypeID returnType;
    std::vector<Type::TypeID> parameters;

    template<typename... VArgs>
    OperationInfo(ThreadOperation code, Type::TypeID retType, VArgs... args)
        : opCode(code), returnType(retType) {
            (parameters.push_back(args), ...);
        }

    bool checkFunction(const Function *func) const {
        if (!func) return false;
        if (func->getReturnType()->getTypeID() != returnType) return false;

        size_t numParams = std::distance(func->args().begin(), func->args().end());
        if (numParams != parameters.size()) return false;

        for (size_t i=0; i < numParams; i++) {
            Value* operand = func->getArg(i);
            if (operand->getType()->getTypeID() != parameters[i]) return false;
        }
        return true;
    }

    bool checkFunction(const LightFunction *func) const {
        if (!func) return false;
        if (returnType != func->returnType) return false;
        if (parameters.size() != func->argTypes.size()) return false;
        for (size_t i=0; i < parameters.size(); i++) {
            if (parameters[i] != func->argTypes[i]) return false;
        }
        return true;
    }
};

typedef std::unordered_map<std::string, OperationInfo> OperationMapType;

class ConcurrencyManager {
public:
    void registerNode(Node* node) {
        _concurrencyNodes.push_back(node);
    }

    void unregisterNode(Node *node) {
        std::erase(_concurrencyNodes, node);
    }

    void discoverSyncFunctions(const Function *func) {
        ThreadOperation opCode = getConcurrencyOperation(func);
        if (isSyncOperation(opCode)) propagateLockCall(func, opCode);
    }

    std::optional<pair<ThreadOperation, const CallInst*>> getSyncCall(const Function *func) {
        if (!_syncFunctions.contains(func)) return {};
        return _syncFunctions[func];
    }

    template <typename T>
    std::vector<T*> getConcurrencyNodes() {
        std::vector<T*> nodes;
        for (Node *n : _concurrencyNodes) {
            if (auto castNode = dynamic_cast<T*>(n)) {
                nodes.push_back(castNode);
            }
        }
        return nodes;
    }

    bool isSyncOperation(ThreadOperation opCode) {
        for (int i = 0; i < (sizeof(SyncOperations) / sizeof(SyncOperations[0])); i++) {
            if (SyncOperations[i] == opCode) return true;
        }
        return false;
    }

    /*
     * Returns boolean indicating if the concurrency operation was discovered
     * through the LTOLibCManager (ie: std::sys::thread::Thread::new -> .. -> pthread_create).
     * 
     * This assumes that the call's function was already confirmed to be a concurrency operation.
     * NOTE: this function should be renamed. this only gets the DIRECT "high-level call" and not the HIGHEST level.
    */
    bool isHigherLevelCall(const CallBase *call) {
        const Function *f = call->getCalledFunction();
        if (!f) return false;
        return _operationMap.find(f->getName().str()) == _operationMap.end();
    }

    /*
     * Given a low-level call (ie: pthread_create), walk backwards through the CFG to
     * identify a function from within _highLevelOperationMap.
    */
    std::vector<const CallBase*> getHighestLevelCall(const CallBase *call) {
        std::queue<const Function*> work;
        std::vector<Function*> seen;
        work.push(call->getParent()->getParent());

        const Function *final = nullptr;

        while (!work.empty()) {
            const Function *f = work.front();
            work.pop();

            if (std::find(seen.begin(), seen.end(), f) != seen.end()) continue;

            for (const User *user : f->users()) {
                if (const CallBase *cb = dyn_cast<CallInst>(user)) {
                    const Function *calledFunc = cb->getParent()->getParent();
                    if (calledFunc) {
                        auto it = _highLevelOperationMap.find(calledFunc->getName().str());
                        if (it != _highLevelOperationMap.end() && it->second.checkFunction(calledFunc)) {
                            final = calledFunc;
                            break;
                        }
                        work.push(calledFunc);
                    }
                }
            }
        }

        std::vector<const CallBase*> candidates;
        if (final) {
            for (const User *user : final->users()) {
                if (const CallBase *cb = dyn_cast<CallBase>(user))
                    candidates.push_back(cb);
            }
        }
        return candidates;
    }

    static inline ConcurrencyManager* get();
    static inline ThreadOperation getConcurrencyOperation(const Function *F);
    static inline ThreadOperation getConcurrencyOperation(std::string &name);

private:
    void propagateLockCall(const Function *func, ThreadOperation opCode) {
        if (_syncFunctions.contains(func)) return;

        for (const User *user : func->users()) {
            if (auto *call = dyn_cast<CallInst>(user)) {
                if (call->getCalledFunction() == func) {
                    _syncFunctions[func] = pair(opCode, call);
                    // propagateLockCall(call->getFunction(), opCode);
                }
            }
        }
    }

private:
    vector<Node*> _concurrencyNodes;
    unordered_map<const Function*, pair<ThreadOperation, const CallInst*>> _syncFunctions;

    static inline ConcurrencyManager* _concurrencyMgr = nullptr;
    static const OperationMapType _operationMap;
    static const OperationMapType _highLevelOperationMap;
};

inline ConcurrencyManager* ConcurrencyManager::get() {
    if (_concurrencyMgr == nullptr) {
        _concurrencyMgr = new ConcurrencyManager();
    }
    return _concurrencyMgr;
}

inline ThreadOperation ConcurrencyManager::getConcurrencyOperation(const Function *F) {
    if (!F) return ThreadOperation::NONE;

    // Initial attempt: a direct call
    auto it = _operationMap.find(F->getName().str());
    if (it != _operationMap.end())
        if (it->second.checkFunction(F))
            return it->second.opCode;

    // Take 2: underlying call
    if (!LTOLibCManager::isEnabled()) return ThreadOperation::NONE;
    std::vector<const LightFunction*> functions;
    functions = LTOLibCManager::get()->getLibCFunctions(F);

    for (const LightFunction* lightFunc : functions) {
        it = _operationMap.find(lightFunc->name);
        if (it != _operationMap.end() && _operationMap.find(lightFunc->name) != _operationMap.end())
            if (it->second.checkFunction(lightFunc)) {
                return it->second.opCode;
            }
    }

    return ThreadOperation::NONE;
}

const inline OperationMapType ConcurrencyManager::_operationMap{
    // https://www.man7.org/linux/man-pages/man3/pthread_create.3.html
    // int pthread_create(<ptr>, <ptr>, <ptr>, <ptr>)
    {"pthread_create", 
        OperationInfo(
            ThreadOperation::CREATE,
            Type::IntegerTyID,
            Type::PointerTyID, Type::PointerTyID, Type::PointerTyID, Type::PointerTyID
        )
    },

    // https://www.man7.org/linux/man-pages/man3/pthread_join.3.html
    // int pthread_join(i64, <ptr>)
    {"pthread_join",
        OperationInfo(
            ThreadOperation::JOIN,
            Type::IntegerTyID,
            Type::IntegerTyID, Type::PointerTyID
        )
    },

    {"pthread_mutex_lock",
        OperationInfo(
            ThreadOperation::LOCK,
            Type::IntegerTyID,
            Type::PointerTyID
        )
    },

    {"pthread_mutex_unlock",
        OperationInfo(
            ThreadOperation::UNLOCK,
            Type::IntegerTyID,
            Type::PointerTyID
        )
    },
};

/*
 * If we can identify a lower-level operation (IE: pthread_create), it would also
 * be beneficial to identify the higher-level operation (IE: std::thread::spawn).
 * This is done by backtracking the CFG and stopping at a function in this map.
*/
const inline OperationMapType ConcurrencyManager::_highLevelOperationMap{
    // TODO: I forgot I need to start compiling with the new Rust mangling scheme
    // but this should generally be std::thread::spawn.
    {"_ZN3std6thread5spawn17h64ebb1dd1991f81fE",
        OperationInfo(
            ThreadOperation::CREATE,
            Type::VoidTyID,
            Type::PointerTyID
        )
    },
    {"_ZN3std6thread5spawn17h75261b6b5937bc6aE",
        OperationInfo(
            ThreadOperation::CREATE,
            Type::VoidTyID,
            Type::PointerTyID
        )
    },
    {"_ZN3std6thread19JoinHandle$LT$T$GT$4join17hcea5719e14ef9744E",
        OperationInfo(
            ThreadOperation::JOIN,
            Type::StructTyID,
            Type::PointerTyID
        )
    },
};
