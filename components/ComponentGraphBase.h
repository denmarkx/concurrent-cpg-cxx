#include <llvm/IR/Module.h>
#include <unordered_map>
#include <vector>
#include <tuple>

using namespace llvm;
using namespace std;

typedef vector<tuple<string, string, string, unordered_map<string, string>>> EdgeInfo;

class ComponentGraphBase {
    virtual void parseModule(const Module& module) = 0;
};
