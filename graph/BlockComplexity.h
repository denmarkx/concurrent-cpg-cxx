/**
 * When it comes to analyses that traditionally may traverse
 * through each instruction, we make an attempt to avoid this for
 * certain blocks.
 * 
 * We "rank" (loosely) a BasicBlock based on the complexity of its
 * control flow. For a block, if there exists no condition statements,
 * exception handling, etc., we consider this the most basic in terms of
 * complexity. In the most basic type, we reasonably assume that 
 * instructions are sequential.
*/

#include <llvm/IR/Instructions.h>

#include <cstdint>
#include <stdexcept>
#include <unordered_map>
using namespace llvm;
using namespace std;

enum Complexity : uint8_t {
    BASIC = 1 << 0,
    CALL = 2 << 0,
    PHI = 3 << 0,
    ATOMICS = 4 << 0,
};

inline Complexity& operator|=(Complexity& lhs, Complexity rhs) {
    lhs = static_cast<Complexity>(static_cast<uint8_t>(lhs)
        | static_cast<uint8_t>(rhs));
    return lhs;
}

class BlockComplexity {
public:
    void handleBlock(BasicBlock* block) {
        currentBlock = block;

        if (!_complexityMap.contains(block))
            _complexityMap[block] = Complexity::BASIC;
    }

    void handleInstruction(const Instruction* value) {
        if (currentBlock == nullptr)
            throw std::runtime_error("handleInstruction: currentBlock is set to nullptr.");

        Complexity complexity = Complexity::BASIC;

        switch(value->getOpcode()) {
            case Instruction::Invoke: 
            case Instruction::Call:
                _complexityMap[currentBlock] |= Complexity::CALL;
                break;
            case Instruction::PHI:
                _complexityMap[currentBlock] |= Complexity::PHI;
                break;
        }
    }

private:
    std::unordered_map<const BasicBlock*, Complexity> _complexityMap;
    BasicBlock *currentBlock = nullptr;
};
