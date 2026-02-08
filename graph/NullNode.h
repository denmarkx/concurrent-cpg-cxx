#pragma once
#include "Node.h"

class NullNode : public Node {
public:
    NullNode() : Node(nullptr, "NullPointer") {}

    static NullNode* make() {
        NullNode *node = new NullNode();
        return node;
    }
};
