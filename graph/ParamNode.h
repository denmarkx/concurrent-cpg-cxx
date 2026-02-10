#pragma once
#include "Node.h"
#include "llvm/IR/Instructions.h"

class ParamNode : public Node {
public:
    ParamNode(const Value *I) : Node(I, "Parameter") {};

    static ParamNode* make(const Value *I) {
        ParamNode *node = new ParamNode(I);
        return node;
    }

    void setProperties(const Function *F, size_t i) {
        AttributeSet attrSet = F->getAttributes().getParamAttrs(i);
        for (const Attribute attr : attrSet) {
            if (!attr.isStringAttribute()) {
                addProperty(attr.getAsString(), "true");
            } else {
                addProperty(attr.getKindAsString().str(), attr.getValueAsString().str());
            }
        }

        addProperty("parameterIndex", std::to_string(i));
    }
};
