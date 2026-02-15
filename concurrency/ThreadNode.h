#pragma once

#include "concurrency/ConcurrencyManager.h"
#include "graph/CallNode.h"
#include "graph/FunctionNode.h"
#include "graph/GraphManager.h"
#include "graph/Node.h"
#include <utility>

/**
 * https://www.man7.org/linux/man-pages/man3/pthread_create.3.html
 * pthread_create(pthread_t thread, pthread_attr_t attr, <func ptr> <arg ptr>)
*/
class ThreadNode : public CallNode {
public:
    ThreadNode(const CallInst* I) : CallNode(I, "ThreadOperation") {}

    static ThreadNode* make(const CallInst *I) {
        ThreadNode *node = new ThreadNode(I);

        node->addProperty("operation", "CREATE_THREAD");
        ConcurrencyManager::get()->registerNode(node);

        node->_handle = GraphManager::get()->getNodeFromOperand(I, 0);
        node->_routine = GraphManager::get()->getNodeFromOperand(I, 2);
        node->_argNode = GraphManager::get()->getNodeFromOperand(I, 3);

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
    Node* _handle = nullptr;
    Node* _routine = nullptr;
    Node* _argNode = nullptr;
};
