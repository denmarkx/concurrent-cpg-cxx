#pragma once
#include "Node.h"
#include "graph/GraphManager.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Value.h"
#include "llvm/Support/Casting.h"
#include <stdexcept>
#include <type_traits>

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

        // TODO: offset being non-zero isnt handled.
        // TODO: fieldNode needs to identify what its accessing and what it even is!
        // TODO: duplicates?
        if (srcType->isAggregateType()) {
            // The highest node that isn't a GEP.
            const Value *underlyingSrc = inst->getPointerOperand()->stripInBoundsConstantOffsets();
            Node* highNode = GraphManager::get()->getNode(underlyingSrc);

            // if (isa<GetElementPtrInst>(src)) {
            //     GetElementPtrNode *gepNode =
            //         dynamic_cast<GetElementPtrNode*>(srcNode);
            //     highNode = gepNode->getSourceNode();
            // }

            if (!highNode) throw std::runtime_error("GEP: highNode is null.");

            // In the case of variadic indices, we still model field by field.
            // ..only to be accurate with what field we are actually ending with.
            // The source node in the end is the last field node only because
            // our GEP instr refers to the address of that last field node.
            // 
            // Intermediate fieldnode pointers aren't kept here. They are just 
            // managed by the GraphManager as usual.
            Node* prevHighNode = highNode;
            AccessPath* prevPath = nullptr;
            for (size_t i=2; i < inst->getNumOperands(); i++) {
                Value* index = inst->getOperand(i);
                Node *fieldNode = nullptr;

                // If our source node is not a GEP, we can directly add it:
                if (dynamic_cast<GetElementPtrNode*>(prevHighNode)) {
                    // TODO: index outside of a Value* is an i32 but uh....
                    fieldNode = highNode->getPathNode(0);
                    if (fieldNode == nullptr) {
                        fieldNode = FieldNode::make();
                    }
                    std::cout << "setting prev prevPath\n";
                    prevPath = highNode->insert(0, fieldNode);
                } else if(prevPath != nullptr) {
                    // Otherwise, we have prevPath and we can add it:
                    std::cout << "prevpath != nullptr\n";
                    AccessPath *path = prevPath->path.lookup(0);
                    if (path == nullptr) {
                        path = new AccessPath();
                        fieldNode = FieldNode::make();
                        path->field = fieldNode;
                    } else {
                        fieldNode = path->field;
                    }
                } else {
                    // Otherwise, we have to look for it...
                }

                prevHighNode->registerFieldEdge(fieldNode);
                prevHighNode = fieldNode;
            }

            node->setSourceNode(prevHighNode);
            node->registerGEPEdge(prevHighNode);
        }
        return node;
    }

    void setSourceNode(Node* parentNode) { _parentNode = parentNode; }
    Node* getSourceNode() { return _parentNode; }

private:
    Node* _parentNode = nullptr;
    AccessPath* fieldPath;
};
