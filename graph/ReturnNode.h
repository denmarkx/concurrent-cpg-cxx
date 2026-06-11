#pragma once
#include "Node.h"
#include "graph/GraphManager.h"
#include "llvm/IR/Instructions.h"

class ReturnNode : public Node {
public:
    ReturnNode(const ReturnInst* I) : Node(I, "ReturnNode") {}

    static ReturnNode* make(const ReturnInst *I) {
        ReturnNode *node = new ReturnNode(I);

        const Function* f = I->getFunction();
        assert(f != nullptr);

        // Connects to each node who originally called.
        for (const User *user : f->users()) {
            if (const CallBase *callInst = dyn_cast<CallBase>(user)) {
                Node *callNode = GraphManager::get()->getNode(callInst);
                if (!callNode) continue;

                node->addEdge("RETURN_BIND", callNode);
            }
        }
        return node;
    }

    void registerEdge(Node* retval) {
        addEdge("RETURNS", retval);
    }

    NodeType getType() { return NodeType::RET; }

private:
    NodeType _type = NodeType::RET;
};
