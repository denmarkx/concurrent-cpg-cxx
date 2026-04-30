#pragma once
#include "Node.h"

#include "llvm/IR/Instructions.h"
#include "llvm/Support/AtomicOrdering.h"

/**
 * https://llvm.org/docs/LangRef.html#fence-instruction
 * fence <ordering>
*/
class FenceNode : public Node {
public:
    FenceNode(const FenceInst *I) : Node(I, "Fence") {}

    static FenceNode* make(const FenceInst *I) {
        FenceNode *node = new FenceNode(I);
        node->addProperty("ordering", toIRString(I->getOrdering()));
        return node;
    }

};
