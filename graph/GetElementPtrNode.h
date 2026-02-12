#pragma once
#include "Node.h"
#include "graph/GraphManager.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/Value.h"
#include "llvm/Support/Casting.h"
#include "llvm/Analysis/ValueTracking.h"
#include <stdexcept>
#include <type_traits>

class FieldNode : public Node {
public:
    FieldNode(Type *type) : Node(nullptr, "FieldNode") {
        raw_string_ostream stream(_name);
        type->print(stream);
    }

    static FieldNode* make(Type *type) {
        FieldNode *node = new FieldNode(type);
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
        if (srcType->isAggregateType()) {
            // Our GEP instruction is the address of the final field, so we keep track of that.
            FieldNode *lastField = nullptr;
            
            // We can immediately start with our first path (if it exists):
            // ..this also satisfies the case where src pointer is non-GEP.
            AccessPath *current = srcNode->getAccessPath();

            if (isa<GetElementPtrInst>(src)) {
                // In the case of when the source pointer is a GEP instr..
                // We keep a pointer in each GEP to our "final" field node.
                // this avoids a lengthy traversal through each accesspath.
                GetElementPtrNode *srcNodeGEP = 
                    dynamic_cast<GetElementPtrNode*>(srcNode);

                current = srcNodeGEP->getAddressToNode()->getAccessPath();
            }

            for (size_t i=2; i < inst->getNumOperands(); i++) {
                // We're going to keep "indexing" our current AP's path
                // until we get to the end.

                // TODO: its not really guaranteed that the operand here
                // is an actual integer (albeit the type is an i32/64, it can be from another instr)..
                if (!current->hasPath(0)) {
                    // If there exists no path to the key, we insert one.
                    current = current->insertPath(0, FieldNode::make(inst->getResultElementType()));
                    continue;
                }
                current = current->getPath(0);
            }

            // Such that our latest current variable represents the path
            // to the end of the GEP instruction.
            node->registerGEPEdge(current->field);
            node->setAddressToNode(current->field);
        }
        return node;
    }

    void setAddressToNode(Node* node) { _addrToNode = node; }
    Node* getAddressToNode() { return _addrToNode; }

private:
    Node* _addrToNode = nullptr;
};
