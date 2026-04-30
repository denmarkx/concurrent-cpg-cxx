#pragma once

#include "llvm/IR/Instructions.h"
#include "llvm/Support/AtomicOrdering.h"

#include "GraphManager.h"
#include "Node.h"

// https://llvm.org/docs/LangRef.html#cmpxchg-instruction

/**
  * https://llvm.org/docs/LangRef.html#cmpxchg-instruction
  * Loads a value in memory and compares it to a given value.
  * If equal, stores new value into memory at that address.
  * 
  * Returns an { i32, i1 } where the i32 is a copy of the ORIGINAL value.
  * and the i1 is just a success bool.
*/
class AtomicCmpXChgNode : public Node {
public:
    AtomicCmpXChgNode(const AtomicCmpXchgInst *I) : Node(I, "AtomicCmpXChg") {}

    static AtomicCmpXChgNode* make(const AtomicCmpXchgInst *I) {
        AtomicCmpXChgNode *node = new AtomicCmpXChgNode(I);

        // TODO: if marked "weak", cmpxchg won't write even if cmp is T.
        // ...????

        // cmpxchg <ptr>, <cmp>, <new>, <T order>, <F order>
        Node *ptr = GraphManager::get()->getNode(I->getOperand(0));
        Node *cmp = GraphManager::get()->getNode(I->getOperand(1));
        Node *newValue = GraphManager::get()->getNode(I->getOperand(2));

        // TODO: there's ->getMergedOrdering but i have no idea what the fuck that is.
        node->addProperty("failedOrdering", toIRString(I->getFailureOrdering()));
        node->addProperty("successOrdering", toIRString(I->getSuccessOrdering()));

        node->addEdge("comparison", cmp);
        node->addEdge("lhs", ptr);
        node->addEdge("rhs", newValue);
        return node;
    }

};
