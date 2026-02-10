#pragma once
#include "Node.h"
#include "BasicBlockNode.h"
#include "ParamNode.h"

#include "llvm/IR/Attributes.h"
#include "llvm/IR/Function.h"
#include <vector>

class FunctionNode : public Node {
public:
    FunctionNode(llvm::Function* F) : Node(F, "Function") {}

    static FunctionNode* make(llvm::Function *F) {
        if (Node::isIgnoredIntrinsic(F)) return nullptr;

        FunctionNode *node = new FunctionNode(F);
        node->setProperties(F);

        for (llvm::Argument &arg : F->args()) {
            ParamNode *param = new ParamNode(&arg);
            node->addParam(param);
        }
    
        return node;
    }

    void setProperties(llvm::Function *F) {
        llvm::AttributeSet attrSet = F->getAttributes().getFnAttrs();
        for (const llvm::Attribute attr : attrSet) {
            if (!attr.isStringAttribute()) {
                addProperty(attr.getAsString(), "true");
            } else {
                addProperty(attr.getKindAsString().str(), attr.getValueAsString().str());
            }
        }
    }

    void addBlock(BasicBlockNode* block) {
        _edges.push_back(pair("BLOCKS", block));
        _blocks.push_back(block);
    }
    
    void addParam(ParamNode* param) {
        _edges.push_back(pair("PARAMETER", param));
        _params.push_back(param);
    }


private:
    std::vector<BasicBlockNode*> _blocks;
    std::vector<ParamNode*> _params;
};
