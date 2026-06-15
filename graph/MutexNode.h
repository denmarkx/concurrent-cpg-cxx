#pragma once

#include "concurrency/ConcurrencyManager.h"
#include "graph/CallNode.h"
#include "graph/GraphManager.h"
#include "graph/Node.h"
#include <utility>

/**
*/
class MutexNode : public CallNode {
public:
    MutexNode(const CallBase* I) : CallNode(I, "MutexNode") {}

    static MutexNode* make(const CallBase *I) {
        auto cOp = ConcurrencyManager::get()->getConcurrencyOperation(I->getCalledFunction());
        if (cOp == ThreadOperation::NONE)
            cOp = ConcurrencyManager::get()->getConcurrencyOperation(I);

        MutexNode *node = new MutexNode(I);

        node->addProperty("operation", "LOCK");
        if (cOp == ThreadOperation::UNLOCK) {
            node->addProperty("operation", "UNLOCK");
            node->_type = NodeType::MUTEX_UNLOCK;
        }
        ConcurrencyManager::get()->registerNode(node);

        const Value *obj = GraphManager::get()->getMemoryObj(I->getOperand(0));
        errs() << "MutexNode: " << *I->getOperand(0) << "\n";
        if (obj) {
            node->_handle = GraphManager::get()->getNode(obj);
            node->addEdge("HANDLE", node->_handle);
            node->ptr = const_cast<Value*>(obj);
        }
        return node;
    }

    Node* getHandle() { return _handle; }
    NodeType getType() { return _type; }

private:
    NodeType _type = NodeType::MUTEX_LOCK;

private:
    Node* _handle = nullptr;
};
