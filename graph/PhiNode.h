#pragma once

#include "llvm/IR/Instructions.h"
#include "llvm/IR/BasicBlock.h"

#include "GraphManager.h"
#include "Node.h"

class PhiNode : public Node {
public:
    PhiNode(const PHINode *I) : Node(I, "PhiNode") {}

    static PhiNode* make(const PHINode *I) {
        // errs() << *I << "\n";
        PhiNode *node = new PhiNode(I);

        for (size_t i=0; i < I->getNumIncomingValues(); i++) {
            const Value *incomingVal = I->getIncomingValue(i);
            const BasicBlock *incomingBlock = I->getIncomingBlock(i);

            if (incomingBlock != I->getParent()) {
                Node *blockNode = GraphManager::get()->getNode(incomingBlock);
                if (blockNode)
                    node->_candidates.push_back(blockNode);
            }

            Node *incomingNode = GraphManager::get()->getNode(incomingVal);
            if (incomingNode)
                node->createCandidateEdge(incomingNode);
                // errs() << "     new candidate edge: " << *incomingVal << "\n";
            // } else {
                // errs() << "     unknown candidate: " << *incomingVal << "\n";
            // }
        }

        return node;
    }

    void createCandidateEdge(Node *node) {
        addEdge("CANDIDATE", node);
    }

    std::vector<Node*>& getCandidateBlocks() {
        return _candidates;
    }

    NodeType getType() { return NodeType::PHI_NODE; }

private:
    NodeType _type = NodeType::PHI_NODE;
    std::vector<Node*> _candidates;
};
