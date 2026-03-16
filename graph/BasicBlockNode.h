#pragma once
#include "llvm/IR/BasicBlock.h"

#include "Node.h"
#include <algorithm>
#include <vector>
#include <utility>

class BasicBlockNode : public Node {
public:
    BasicBlockNode(const BasicBlock* B) : Node(B, "Block") {}

    static BasicBlockNode* make(const BasicBlock *B) {
        BasicBlockNode *node = new BasicBlockNode(B);
        std::string name = "start";
        if (!B->isEntryBlock()) {
            name = "";
            llvm::raw_string_ostream stream(name);
            B->print(stream);
            name = name.substr(1, name.find_first_of(':')-1);
        }
        node->_name = name;
        return node;
    }

    void addNode(Node* node) {
        // While this is useful, it hurts. Perhaps we can
        // redefine this via cfg.
        // _edges.push_back(pair("BLOCK_CHILD", node));
    }

    void addDominator(const BasicBlockNode* block) {
        _dominatedBy.push_back(block);
    }

    void addDominates(const BasicBlockNode* block) {
        _dominates.push_back(block);
    }

    bool isDominatedBy(const BasicBlockNode* block) const {
        if (getNumDominatedBy() == 0) return false;
        for (const BasicBlockNode* dominator : _dominatedBy) {
            if (dominator->isDominatedBy(block))
                return true;
        }
        return std::find(_dominatedBy.begin(), _dominatedBy.end(), block) != _dominatedBy.end();
    }

    size_t getNumDominatedBy() const {
        return _dominatedBy.size();
    }

private:
    std::vector<const BasicBlockNode*> _dominates;
    std::vector<const BasicBlockNode*> _dominatedBy;
};
