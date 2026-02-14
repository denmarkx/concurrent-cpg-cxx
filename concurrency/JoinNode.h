#pragma once

#include "concurrency/ConcurrencyManager.h"
#include "graph/CallNode.h"
#include "graph/FunctionNode.h"
#include "graph/GraphManager.h"
#include "graph/Node.h"
#include "llvm/Analysis/ValueTracking.h"

#include <utility>
#include <vector>

/**
 * https://www.man7.org/linux/man-pages/man3/pthread_join.3.html
 * int pthread_join(i64 thread, void **ptr);
*/
class JoinNode : public CallNode {
public:
    JoinNode(const CallInst* I) : CallNode(I, "ThreadJoin") {}

    static JoinNode* make(const CallInst *I) {
        JoinNode *node = new JoinNode(I);

        node->addProperty("operation", "JOIN_THREAD");
        ConcurrencyManager::get()->registerNode(node);

        node->_threadID = GraphManager::get()->getNodeFromOperand(I, 0);
        node->_edges.push_back(pair("THREAD_ID", node->_threadID));
        return node;
    }

private:
    Node* _threadID = nullptr;
};

