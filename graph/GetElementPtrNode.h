#pragma once
#include "Node.h"
#include "graph/GraphManager.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Value.h"

class GetElementPtrNode : public Node {
public:
    // TODO: probably not the best thing to name this. pointer is too ambiguous, address? element?
    GetElementPtrNode(const GetElementPtrInst *G) : Node(G, "GetElementPtrNode") {}

    static GetElementPtrNode* make(const GetElementPtrInst *inst) {
        GetElementPtrNode *node = new GetElementPtrNode(inst);

        Value* pointer = inst->getOperand(0);
        Node* pointerNode = GraphManager::get()->getNode(pointer);
        node->registerGEPEdge(pointerNode);

        return node;
    }

};
