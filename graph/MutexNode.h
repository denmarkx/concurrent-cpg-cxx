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
    MutexNode(const CallInst* I) : CallNode(I, "ThreadOperation") {}

    static MutexNode* make(const CallInst *I) {
        auto cOp = ConcurrencyManager::get()->
            getConcurrencyOperation(I->getCalledFunction());

        MutexNode *node = new MutexNode(I);

        node->addProperty("operation", "LOCK");
        if (cOp == ThreadOperation::UNLOCK) {
            node->addProperty("operation", "UNLOCK");
        }
        ConcurrencyManager::get()->registerNode(node);

        // node->_handle = GraphManager::get()->getNodeFromOperand(I, 0);
        // node->_edges.push_back(pair("HANDLE", node->_handle));
        return node;
    }

    // Node* getHandle() { return _handle; }

private:
    // Node* _handle = nullptr;
};
