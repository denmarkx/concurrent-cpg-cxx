#pragma once

#include "llvm/IR/Value.h"

#include <string>
#include <unordered_map>
#include <utility>
#include <vector>
#include <iostream>
using namespace std;

class Node {
public:
    Node(llvm::Value* value, const std::string label);

    unsigned int getId() const;
    const std::string& getName() const;

    const std::vector<std::pair<std::string, Node*>>& getEdges() const;
    const std::vector<std::string>& getLabels() const;

    // probably shouldnt be in here:
    void registerStoreEdge(Node* node);

private:
    inline static unsigned int _idCounter;

    unsigned int _id;
    std::string _label = "Node";
    std::string _name = "Node";

protected:
    std::vector<std::string> _labels;
    std::unordered_map<std::string, std::string> _properties;
    std::vector<std::pair<std::string, Node*>> _edges;
};
