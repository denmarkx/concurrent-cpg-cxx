#pragma once

#include "llvm/ADT/DenseMap.h"
#include "llvm/IR/Value.h"
#include "Debug.h"
#include "APIHelper.h"

#include <string>
#include <unordered_map>
#include <utility>
#include <vector>
#include <iostream>
#include <array>
using namespace std;
using namespace llvm;

struct AccessPath;

class Node {
public:
    Node(const Value* value, const std::string label);
    virtual ~Node() = default;

    unsigned int getId() const;
    const std::string& getName() const;

    const std::vector<std::pair<std::string, Node*>>& getEdges() const;
    const std::vector<std::string>& getLabels() const;
    const std::unordered_map<std::string, std::string>& getProperties() const;
    const Value* getValue() const;

    // TODO: all this needs to be moved into a subclass
    // where nodes that actually produce SSA values derive
    void registerStoreEdge(Node* node);
    void registerAliasEdge(Node* node);
    void registerCopyEdge(Node* node);
    void registerGEPEdge(Node* node);
    void registerFieldEdge(Node* node);

    AccessPath* getAccessPath();
    Node* getPathNode(unsigned int key);
    AccessPath* path;

    void addProperty(std::string key, std::string value);

private:
    void setDefaultProperties(const Value *value);
    void handleDebugInfo(const Instruction *instr);

    inline static unsigned int _idCounter;

    unsigned int _id;
    std::string _label = "Node";

    const Value* _value;

protected:
    std::vector<std::string> _labels;
    std::unordered_map<std::string, std::string> _properties;
    std::vector<std::pair<std::string, Node*>> _edges;

    std::string _name = "Node";
    static bool isIgnoredIntrinsic(const Value* value);

    static constexpr std::array<const char*, 2> IgnoredIntrinsics = {
        "llvm.lifetime.start.p0",
        "llvm.lifetime.end.p0",
    };
};

struct AccessPath {
    Node* field;
    // it is probably unwise to make a uint as the key here too
    DenseMap<unsigned int, AccessPath*> path;

    bool hasPath(unsigned int key) {
        return path.contains(key);
    }

    AccessPath* insertPath(unsigned int key, Node* newField) {
        AccessPath* newPath = new AccessPath();
        newPath->field = newField;
        path[key] = newPath;
        field->registerFieldEdge(newField);
        newField->path = newPath;
        return newPath;
    }

    AccessPath* getPath(unsigned int key) {
        return path[key];
    }
};
