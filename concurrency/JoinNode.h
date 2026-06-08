#pragma once

#include "andersen/Andersen.h"
#include "concurrency/ConcurrencyManager.h"
#include "concurrency/ThreadNode.h"
#include "graph/CallNode.h"
#include "graph/FunctionNode.h"
#include "graph/GraphManager.h"
#include "graph/Node.h"
#include "llvm/Analysis/MemorySSA.h"
#include "llvm/Analysis/ValueTracking.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Instructions.h"

#include <utility>
#include <vector>

/**
 * https://www.man7.org/linux/man-pages/man3/pthread_join.3.html
 * int pthread_join(i64 thread, void **ptr);
*/
class JoinNode : public CallNode {
public:
    JoinNode(const CallBase* I) : CallNode(I, "ThreadJoin") {}

    static JoinNode* make(const CallBase *I) {
        JoinNode *node = new JoinNode(I);

        node->addProperty("operation", "JOIN_THREAD");
        ConcurrencyManager::get()->registerNode(node);

        node->_threadID = GraphManager::get()->getNodeFromOperand(I, 0);
        return node;
    }

    void setThreadId(Node *handle) {
        _threadID = handle;
    }

    Node *getThreadId() {
        return _threadID;
    }

private:
    Node* _threadID = nullptr;
    Node* _thread = nullptr;
};

