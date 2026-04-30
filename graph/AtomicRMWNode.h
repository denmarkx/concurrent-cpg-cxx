#pragma once

#include "llvm/IR/Instructions.h"
#include "llvm/Support/AtomicOrdering.h"

#include "GraphManager.h"
#include "Node.h"

// https://llvm.org/docs/LangRef.html#atomicrmw-instruction
class AtomicRMWNode : public Node {
public:
    AtomicRMWNode(const AtomicRMWInst *I) : Node(I, "AtomicRMW") {}

    static AtomicRMWNode* make(const AtomicRMWInst *I) {
        AtomicRMWNode *node = new AtomicRMWNode(I);

        // atomicrmw <operation> <ptr>, <ty> <value> <ordering>
        node->addProperty("operation", AtomicRMWInst::getOperationName(I->getOperation()).str());
        node->addProperty("ordering", toIRString(I->getOrdering()));

        Node *lhs = GraphManager::get()->getNode(I->getOperand(0));
        Node *rhs = GraphManager::get()->getNode(I->getOperand(1));
        assert(lhs != nullptr && rhs != nullptr);

        node->addEdge("LHS", lhs);
        node->addEdge("RHS", rhs);
        return node;
    }
};
