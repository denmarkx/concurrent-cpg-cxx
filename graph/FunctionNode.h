#pragma once
#include "Node.h"
#include "BasicBlockNode.h"
#include "ParamNode.h"
#include "graph/GroupNode.h"

#include <llvm/IR/DebugInfoMetadata.h>
#include <llvm/Demangle/Demangle.h>
#include "llvm/IR/Attributes.h"
#include "llvm/IR/Function.h"
#include <vector>

class FunctionNode : public Node {
public:
    FunctionNode(const Function* F) : Node(F, "Function") {
        _blockGroup = GroupNode::make("Group", "BLOCKS");
        _edges.push_back(pair("BLOCK_GROUP", _blockGroup));
    }

    static FunctionNode* make(const Function *F) {
        if (Node::isIgnoredIntrinsic(F)) return nullptr;
        if (F->getIntrinsicID() > 0) return nullptr;

        FunctionNode *node = new FunctionNode(F);
        node->setProperties(F);
        node->setDebugInfo(F);

        node->_name = demangle(F->getName().str());

        size_t i = 0;
        for (const Argument &arg : F->args()) {
            ParamNode *param = new ParamNode(&arg);
            node->addParam(param);
            param->setProperties(F, i);
            i++;
        }

        return node;
    }

    void setProperties(const Function *F) {
        AttributeSet attrSet = F->getAttributes().getFnAttrs();
        for (const Attribute attr : attrSet) {
            if (!attr.isStringAttribute()) {
                addProperty(attr.getAsString(), "true");
            } else {
                addProperty(attr.getKindAsString().str(), attr.getValueAsString().str());
            }
        }
    }

    void setDebugInfo(const Function *F) {
        // A bit different than Node::setDebugInfo because a Function
        // is not an Instruction type.
        DISubprogram *subprogram = F->getSubprogram();
        if (subprogram == nullptr) return;

        addProperty("line", std::to_string(subprogram->getLine()));
        addProperty("file", subprogram->getFilename().str());
    }

    void addBlock(BasicBlockNode* block) {
        _blockGroup->storeEdge(block);
    }
    
    void addParam(ParamNode* param) {
        _edges.push_back(pair("PARAMETER", param));
        _params.push_back(param);
    }

    void addReturn(Node* node) {
        _edges.push_back(pair("RETURNS", node));
        _returns.push_back(node);
    }


private:
    GroupNode *_blockGroup;

    std::vector<BasicBlockNode*> _blocks;
    std::vector<ParamNode*> _params;
    std::vector<Node*> _returns;
};
