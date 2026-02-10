#pragma once
#include "Node.h"
#include "llvm/IR/Instructions.h"
#include <utility>

/**
 * A GroupNode is a special kind of artifical node. It is meant to
 * contain a set of other nodes given a logical reason.
 * 
 * e.g., instead of having Function->{BasicBlock..} nodes, we do
 * Function->GroupNode(Blocks)->{BasicBlock..}.
 * 
 * It is, however, the "parent"'s responsibility to define an edge
 * from X->GroupNode.
 * 
 * While this node is created by the Function in the example case,
 * the lifetime is still bound to the GraphManager as normal.
 * 
 * Though, at least right now, there is no expectation that you will actually
 * need to get this node again as there is no instruction bound to it (so getNode() will return null),
 * but (again in the example case) a pointer can be kept since the lifetime
 * of both the FunctionNode is the same as this one.
*/
class GroupNode : public Node {
public:
    GroupNode(std::string name, std::string edge) : Node(nullptr, name) {
        _edge = edge;
    }

    /**
     * Returns a new GroupNode given the name and the name of the edges. 
    */
    static GroupNode* make(std::string name, std::string edge) {
        GroupNode *node = new GroupNode(name, edge);
        return node;
    }

    /**
     * Stores a new edge from this node -> the given node.
     * Edge name is what was specified in the constructor (or to ::make).
    */
    void storeEdge(Node* node) {
        _edges.push_back(pair(_edge, node));
    }

private:
    std::string _edge = "";
};
