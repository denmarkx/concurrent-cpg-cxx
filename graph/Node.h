#pragma once

#include "llvm/ADT/DenseMap.h"
#include "llvm/IR/Instructions.h"
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
struct Edge;

class Node {
public:
    Node(const Value* value, const std::string label);
    virtual ~Node() = default;

    unsigned int getId() const;
    const std::string& getName() const;

    const std::vector<Edge>& getEdges() const;
    const std::vector<std::string>& getLabels() const;
    const std::unordered_map<std::string, std::string>& getProperties() const;
    const Value* getValue() const;

    // TODO: all this needs to be moved into a subclass
    // where nodes that actually produce SSA values derive
    void registerAtomicStoreEdge(Node* node, const StoreInst *instr);
    void registerStoreEdge(Node* node);
    void registerAliasEdge(Node* node);
    void registerCopyEdge(Node* node);
    void registerGEPEdge(Node* node);
    void registerFieldEdge(Node* node);

    // TODO: i also disagree with this being in here since
    // cfg is not necessarily per-instruction..
    // ..unless we really want that in which case we would be
    // edging on fraunhofer-style eog
    void registerCFGEdge(Node* node);

    AccessPath* getAccessPath();
    AccessPath* path;

    void addProperty(std::string key, std::string value);
    void addEdge(std::string name, Node* end);
    void addEdge(std::string name, Node* end, std::string key, std::string value);
    void addEdge(std::string name, Node* end, std::unordered_map<std::string, std::string> properties);
    bool hasEdge(std::string name, Node* end);

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
    std::vector<Edge> _edges;

    std::string _name = "Node";
    static bool isIgnoredIntrinsic(const Value* value);

    static constexpr std::array<const char*, 2> IgnoredIntrinsics = {
        "llvm.lifetime.start.p0",
        "llvm.lifetime.end.p0",
    };
};

struct AccessPath {
    Node* field;
    DenseMap<const Value*, AccessPath*> path;

    bool hasPath(const Value* key) {
        return path.contains(key);
    }

    AccessPath* insertPath(const Value* key, Node* newField) {
        AccessPath* newPath = new AccessPath();
        newPath->field = newField;
        path[key] = newPath;
        field->registerFieldEdge(newField);
        newField->path = newPath;
        return newPath;
    }

    AccessPath* getPath(const Value* key) {
        return path[key];
    }
};

struct Edge {
    const std::string name;
    const Node* start;
    const Node* end;
    std::unordered_map<std::string, std::string> properties;

    void addProperty(std::string key, std::string value) {
        properties[key] = value;
    }
};
