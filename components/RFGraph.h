#pragma once

#include "components/ComponentGraphBase.h"
#include "components/HappensBeforeGraph.h"
#include "graph/Node.h"

#include <unordered_map>
#include <vector>

typedef std::vector<std::pair<HBNode*, HBNode*>> RFGraphType;
typedef std::unordered_map<const Value*, std::vector<HBNode*>> RFCandidateType;

class RFGraph {
public:
    RFGraph();

    void buildIndex();
    void buildCandidates();
    void filter();
    void debug();

    bool isWrite(HBNode*);
    bool isRead(HBNode*);

    void add(HBNode*, HBNode*);
    RFGraphType& pairs();
    std::vector<HBNode*>& getNodes();

    RFCandidateType& getWritesLock();
    RFCandidateType& getReadsLock();
    std::vector<HBNode*>& getUnknownWrites();
    std::vector<HBNode*>& getUnknownReads();

    static RFGraph* get();
    static RFGraph* _instance;

private:
    bool isValid(HBNode*, HBNode*);

private:
    RFCandidateType _writes;
    RFCandidateType _reads;

    RFCandidateType _writesLock;
    RFCandidateType _readsLock;

    std::vector<HBNode*> _unknownWrites;
    std::vector<HBNode*> _unknownReads;

    std::vector<HBNode*> _nodes;
    RFGraphType _pairs;
};