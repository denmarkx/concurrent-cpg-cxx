#include "RFGraph.h"
#include "graph/GraphManager.h"

void RFGraph::build() {
    for (Node *n : GraphManager::get()->getNodes()) {
        switch (n->getType()) {
            case NodeType::STORE: {
                _writes[GraphManager::get()->getMemoryObj(n->getValue())].push_back(n);
                break;
            }
            case NodeType::LOAD: {
                _reads[GraphManager::get()->getMemoryObj(n->getValue())].push_back(n);
                break;
            }
            default: break;
        }
    }
}

RFGraph::RFGraph() { _instance = this; }
RFGraph* RFGraph::get() { return _instance; }
RFGraph* RFGraph::_instance = nullptr;
