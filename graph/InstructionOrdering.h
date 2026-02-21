#include <llvm/IR/Instructions.h>
#include <unordered_map>
#include <cstdint>

using namespace llvm;
using namespace std;

class InstructionOrdering {
public:

    void handleInstruction(const Instruction* instr) {

    }

    void handleBasicBlock(const BasicBlock* block) {

    }

private:
    const BasicBlock* block;
    unordered_map<const Instruction*, uint32_t> _idMap;
};