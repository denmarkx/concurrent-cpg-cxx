#pragma once

#include "components/ComponentGraphBase.h"
#include "components/HappensBeforeGraph.h"
#include "graph/Node.h"

#include <unordered_map>
#include <vector>

typedef std::vector<std::pair<HBNode*, HBNode*>> RFGraphType;

class RFGraph {
public:
    RFGraph();
    void build();

    RFGraphType& pairs();

    static RFGraph* get();
    static RFGraph* _instance;

private:
    void add(HBNode*, HBNode*);
    bool isValid(HBNode*, HBNode*);

private:
    std::unordered_map<const Value*, std::vector<HBNode*>> _writes;
    std::unordered_map<const Value*, std::vector<HBNode*>> _reads;
    RFGraphType _pairs;
};