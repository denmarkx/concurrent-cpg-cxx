#pragma once

#include "components/ComponentGraphBase.h"
#include "graph/Node.h"

#include <unordered_map>
#include <vector>

typedef std::vector<std::pair<Node*, Node*>> RFGraphType;

class RFGraph {
public:
    RFGraph();
    void build();

    RFGraphType& pairs();

    static RFGraph* get();
    static RFGraph* _instance;

private:
    void add(Node*, Node*);
    bool isValid(Node*, Node*);

private:
    std::unordered_map<const Value*, std::vector<Node*>> _writes;
    std::unordered_map<const Value*, std::vector<Node*>> _reads;
    RFGraphType _pairs;
};