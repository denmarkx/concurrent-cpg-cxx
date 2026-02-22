#pragma once

#include "graph/Node.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Value.h"
#include <llvm/IR/Function.h>
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
};

typedef std::unordered_map<std::string, OperationInfo> OperationMapType;

class ConcurrencyManager {
public:
    void registerNode(Node* node) {
        _concurrencyNodes.push_back(node);
    }

    void discoverSyncFunctions(const Function *func) {
        ThreadOperation opCode = getConcurrencyOperation(func);
        if (isSyncOperation(opCode)) propagateLockCall(func, opCode);
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

    static inline ConcurrencyManager* get();
    static inline ThreadOperation getConcurrencyOperation(const Function *F);
    static inline ThreadOperation getConcurrencyOperation(std::string &name);

private:
    void propagateLockCall(const Function *func, ThreadOperation opCode) {
        if (_syncFunctions.contains(func)) return;
        _syncFunctions[func] = opCode;

        for (const User *user : func->users()) {
            if (auto *call = dyn_cast<CallInst>(user)) {
                if (call->getCalledFunction() == func)
                    propagateLockCall(call->getFunction(), opCode);
            }
        }
    }

private:
    vector<Node*> _concurrencyNodes;
    unordered_map<const Function*, ThreadOperation> _syncFunctions;

    static inline ConcurrencyManager* _concurrencyMgr = nullptr;
    static const OperationMapType _operationMap;
};

inline ConcurrencyManager* ConcurrencyManager::get() {
    if (_concurrencyMgr == nullptr) {
        _concurrencyMgr = new ConcurrencyManager();
    }
    return _concurrencyMgr;
}

inline ThreadOperation ConcurrencyManager::getConcurrencyOperation(const Function *F) {
    if (!F) return ThreadOperation::NONE;

    auto it = _operationMap.find(F->getName().str());
    if (it == _operationMap.end()) return ThreadOperation::NONE;

    if (it->second.checkFunction(F)) {
        return it->second.opCode;
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
