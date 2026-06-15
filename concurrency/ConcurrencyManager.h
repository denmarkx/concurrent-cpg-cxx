#pragma once

#include "components/LTOLibCManager.h"
#include "graph/Node.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Value.h"
#include <llvm/IR/Function.h>
#include <llvm/Demangle/Demangle.h>
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

    bool checkFunction(const Function *func, bool firstParamOnly=false) const {
        if (!func) return false;
        if (func->getReturnType()->getTypeID() != returnType) return false;

        size_t numParams = std::distance(func->args().begin(), func->args().end());
        if (!firstParamOnly && numParams != parameters.size()) return false;

        for (size_t i=0; i < numParams; i++) {
            if (firstParamOnly && i >= 1) break;
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

struct SysCallOperationInfo : OperationInfo {
    unsigned int sysCode = 0;
    unsigned int flags = 0;

    SysCallOperationInfo(ThreadOperation code, unsigned int _sysCode, unsigned int _opCode) : 
        OperationInfo(code, Type::IntegerTyID,
            Type::IntegerTyID, Type::PointerTyID, Type::IntegerTyID, Type::IntegerTyID),
        sysCode(_sysCode),
        flags(_opCode)
    {}

    bool checkCall(const CallBase *call) const {
        if (call->getNumOperands() < 3) return false;
        const ConstantInt *o1 = dyn_cast<ConstantInt>(call->getOperand(0));
        const ConstantInt *o2 = dyn_cast<ConstantInt>(call->getOperand(2));
        if (!o1 || !o2) return false;
        return (sysCode == o1->getZExtValue()) && (flags == o2->getZExtValue());
    }

    bool checkCall(const UnixSystemCall *call) const {
        return (sysCode == call->sysCode) && (flags == call->flags);
    }
};

struct HLPairHash {
    std::size_t operator()(const std::pair<std::string, std::string>& p) const {
        std::size_t h1 = std::hash<std::string>{}(p.first);
        std::size_t h2 = std::hash<std::string>{}(p.second);
        return h1 ^ (h2 + 0x9e3779b9 + (h1 << 6) + (h1 >> 2));
    }
};

typedef std::unordered_map<std::string, OperationInfo> OperationMapType;
typedef std::vector<SysCallOperationInfo> SCOperationMapType;

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
                        auto it = std::find_if(_highLevelOperationMap.begin(), _highLevelOperationMap.end(), [&calledFunc](const auto &p) {
                            std::string demangledName = demangle(calledFunc->getName());
                            bool checkSuffix = true;
                            if (p.first.second != "") // suffix
                                checkSuffix = demangledName.ends_with(p.first.second);
                            return demangledName.starts_with(p.first.first) && checkSuffix;
                        });
                        if (it != _highLevelOperationMap.end() && it->second.checkFunction(calledFunc, true)) {
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
    static inline ThreadOperation getConcurrencyOperation(const CallBase *C);
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
    static const SCOperationMapType _operationSysCalls;
    static const OperationMapType _operationMap;
    static const std::unordered_map<std::pair<std::string, std::string>, OperationInfo, HLPairHash> _highLevelOperationMap;
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

inline ThreadOperation ConcurrencyManager::getConcurrencyOperation(const CallBase *C) {
    if (!C) return ThreadOperation::NONE;

    const Function *F = C->getCalledFunction();
    if (!F) return ThreadOperation::NONE;

    // The only other option to try is syscall, check if direct:
    auto it = std::find_if(_operationSysCalls.begin(), _operationSysCalls.end(), [&C, &F](const SysCallOperationInfo &info) {
        return info.checkFunction(F) && info.checkCall(C);
    });
    if (it != _operationSysCalls.end()) return it->opCode;


    // Then check if underlying LTO:
    if (!LTOLibCManager::isEnabled()) return ThreadOperation::NONE;
    std::vector<const UnixSystemCall*> calls = LTOLibCManager::get()->getSysCallFunctions(F);
    for (const UnixSystemCall* sysCall : calls) {
        auto it = std::find_if(_operationSysCalls.begin(), _operationSysCalls.end(), [&sysCall, &F](const SysCallOperationInfo &info) {
            return info.checkCall(sysCall);
        });
        if (it != _operationSysCalls.end()) return it->opCode;
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

const inline SCOperationMapType ConcurrencyManager::_operationSysCalls{
    SysCallOperationInfo(ThreadOperation::UNLOCK, 202, 129),
    SysCallOperationInfo(ThreadOperation::LOCK, 202, 137),
};

/*
 * If we can identify a lower-level operation (IE: pthread_create), it would also
 * be beneficial to identify the higher-level operation (IE: std::thread::spawn).
 * This is done by backtracking the CFG and stopping at a function in this map.
*/
const inline std::unordered_map<std::pair<std::string, std::string>, OperationInfo, HLPairHash> ConcurrencyManager::_highLevelOperationMap{
    {{"std::thread::spawn", ""},
        OperationInfo(
            ThreadOperation::CREATE,
            Type::VoidTyID,
            Type::PointerTyID
        )
    },
    {{"std::thread::JoinHandle<T>::join", ""},
        OperationInfo(
            ThreadOperation::JOIN,
            Type::StructTyID,
            Type::PointerTyID
        )
    },
    {{"std::sync::mutex::Mutex<", "::lock"},
        OperationInfo(
            ThreadOperation::LOCK,
            Type::PointerTyID,
            Type::IntegerTyID
        )
    },
    {{"core::ptr::drop_in_place::<std::sync::mutex::Mutex", ""},
        OperationInfo(
            ThreadOperation::UNLOCK,
            Type::PointerTyID
        )
    },
};
