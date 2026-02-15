#pragma once

#include "concurrency/ConcurrencyManager.h"
#include "graph/CallNode.h"
#include "graph/FunctionNode.h"
#include "graph/GraphManager.h"
#include "graph/Node.h"
#include "llvm/Analysis/MemorySSA.h"
#include "llvm/Analysis/ValueTracking.h"
#include "llvm/IR/Constants.h"

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
        node->resolveThreadID();
        return node;
    }

    /**
     * Attempts to resolve the threadID. It is important to note that pthread_join
     * allows for a copy of pthread_t (which is a typedef of an i64). Meaning we
     * need to find a pointer to the original location for the ID.
     * 
     * If, for some reason, the user provides an integer literal to this function,
     * we don't really make an attempt to resolve it. Though, this should be listed
     * as a TODO: to figure out what to do with these types of joins.
     * 
     * TODO: Currently intraprocedural
    */
    void resolveThreadID() {
        const Instruction *threadId = dyn_cast<Instruction>(_threadID->getValue());
        if (isa<ConstantInt>(threadId)) return;

        MemorySSA *MSSA = GraphManager::get()->getMemorySSAResult(threadId->getFunction());
        MemoryAccess *access = MSSA->getWalker()->getClobberingMemoryAccess(threadId);
        MemoryDef *memoryDef = dyn_cast<MemoryDef>(access);
        if (!memoryDef) return; // TODO: What do we do with this join then?

        const Instruction *defInstr = memoryDef->getMemoryInst();

        const CallInst *callInstr = dyn_cast<CallInst>(defInstr);
        if (!callInstr) return; // TODO: What do we do with this join then?

        ThreadOperation threadOpCode = ConcurrencyManager::get()->
            getConcurrencyOperation(callInstr->getCalledFunction());

        if (threadOpCode == ThreadOperation::CREATE) {
            Node *createNode = GraphManager::get()->getNode(callInstr);
            _edges.push_back(pair("JOIN", createNode));
        }
    }

private:
    Node* _threadID = nullptr;
    Node* _thread = nullptr;
};

