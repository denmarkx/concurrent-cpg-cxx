#pragma once
#include "Node.h"
#include "BasicBlockNode.h"
#include "ParamNode.h"
#include "graph/GraphManager.h"
#include "graph/GroupNode.h"

#include <llvm/IR/DebugInfoMetadata.h>
#include <llvm/Demangle/Demangle.h>
#include "llvm/Analysis/MemoryLocation.h"
#include "llvm/IR/Attributes.h"
#include "llvm/IR/Function.h"
#include <vector>

class FunctionNode : public Node {
public:
    FunctionNode(const Function* F, std::string name="Function") : Node(F, name) {
        if (!F->isDeclaration()) {
            _blockGroup = GroupNode::make("Group", "BLOCKS");
            // _edges.push_back(pair("BLOCK_GROUP", _blockGroup));
        }
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

        node->identifyTerminators(F);
        return node;
    }

    void identifyTerminators(const Function *F) {
        for (const BasicBlock &bb : *F) {
            const Instruction *terminator = bb.getTerminator();
            if (isa<ReturnInst>(terminator)) {
                Node *termNode = GraphManager::get()->getNode(terminator);
                if (termNode)
                    _terminators.push_back(termNode);
            }
        }
    }

    Node* getTerminator() {
        if (_terminators.empty()) return nullptr;
        return _terminators[0];
    }

    std::vector<Node*>& getTerminators() {
        return _terminators;
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
        // _blockGroup->storeEdge(block);
    }
    
    void addParam(ParamNode* param) {
        addEdge("PARAMETER", param);
        _params.push_back(param);
    }

    void addReturn(Node* node) {
        _returnNode = node;
        addEdge("RETURNS", node);
    }

    Node* getReturnNode() {
        return _returnNode;
    }


private:
    GroupNode *_blockGroup;
    Node *_returnNode = nullptr;

    std::vector<BasicBlockNode*> _blocks;
    std::vector<ParamNode*> _params;
    std::vector<Node*> _terminators;
};
