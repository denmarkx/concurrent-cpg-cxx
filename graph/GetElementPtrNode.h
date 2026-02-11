#pragma once
#include "Node.h"
#include "graph/GraphManager.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Value.h"
#include "llvm/Support/Casting.h"

class FieldNode : public Node {
public:
    FieldNode() : Node(nullptr, "FieldNode") {}

    static FieldNode* make() {
        FieldNode *node = new FieldNode();
        return node;
    }
};

class GetElementPtrNode : public Node {
public:
    // TODO: probably not the best thing to name this. pointer is too ambiguous, address? element?
    GetElementPtrNode(const GetElementPtrInst *G) : Node(G, "GetElementPtrNode") {}

    static GetElementPtrNode* make(const GetElementPtrInst *inst) {
        GetElementPtrNode *node = new GetElementPtrNode(inst);

        Type *srcType = inst->getSourceElementType();
        Value *src = inst->getOperand(0);
        Node *srcNode = GraphManager::get()->getNode(src);

        // Two ways to index aggregate types:
        // Consider: %struct = type { [5 x [10 x i32]], i8, i32 }
        //   To get the addr of last index of the 1st array in the 1st element of the struct,
        //     %4 = getelementptr inbounds %struct.Double, ptr %3, i32 0, i32 0
        //     %5 = getelementptr inbounds [5 x [10 x i32]], ptr %4, i64 0, i64 0
        //     %6 = getelementptr inbounds [10 x i32], ptr %5, i64 0, i64 9
        //     .. or .. (Type B)
        //     %4 = getelementptr inbounds %struct.Double, ptr %3, i32 0, i32 0, i64 0, i64 9

        if (srcType->isAggregateType()) {
            // The parent node gets a new field node.
            // TODO: how can we be sure this isn't a duplicate?
            FieldNode *fieldNode = FieldNode::make();

            // Type A: len of operands is 3. (ptr x, i32 offset, i32 index);
            if (inst->getNumOperands() == 3) {
                Node* highNode = srcNode;
                if (isa<GetElementPtrInst>(src)) {
                    GetElementPtrNode *gepNode =
                        dynamic_cast<GetElementPtrNode*>(srcNode);
                    highNode = gepNode->getSourceNode();
                }

                // TODO: it is an oddity if highNode is null
                // and we should raise an error if so.
                highNode->registerFieldEdge(fieldNode);
                node->setSourceNode(fieldNode);
                node->registerGEPEdge(fieldNode);
            }
            // Type B: len of operands > 3 where i=2+ are variadic indices.
            else {

            }
        }
        return node;
    }

    Node* setSourceNode(Node* parentNode) { _parentNode = parentNode; }
    Node* getSourceNode() { return _parentNode; }

private:
    Node* _parentNode = nullptr;
};
