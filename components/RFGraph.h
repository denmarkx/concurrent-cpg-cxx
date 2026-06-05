#pragma once

#include "components/ComponentGraphBase.h"
#include "graph/Node.h"

#include <unordered_map>
#include <vector>

class RFGraph {
public:
    RFGraph();
    void build();

    static RFGraph* get();
    static RFGraph* _instance;

private:
    void add(Node*, Node*);
    bool isValid(Node*, Node*);

private:
    std::unordered_map<const Value*, std::vector<Node*>> _writes;
    std::unordered_map<const Value*, std::vector<Node*>> _reads;
    std::vector<std::pair<Node*, Node*>> _pairs;
};