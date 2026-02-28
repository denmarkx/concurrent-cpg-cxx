#pragma once

#include <llvm/IR/Instruction.h>
#include <llvm/IR/Instructions.h>
#include <unordered_map>
#include <stdexcept>
#include <cstdint>

#include "graph/BasicBlockNode.h"
#include "graph/GraphManager.h"

using namespace llvm;
using namespace std;

/**
 * Provides numeric ordering of instructions relative to the block and sub-calls.
 * Implicit calls (ie: pthread_create) are not considered sub-calls and therefore, does not constitute MHP ordering.
 * 
 * Currently a heavy WIP and supports the most basic order.
*/
class InstructionOrdering {
public:
    enum Ordering {
        UNKNOWN,
        BEFORE,
    };

    void handleInstruction(const Instruction* instr) {
        if (!currentBlock)
            throw std::runtime_error("handleInstruction: currentBlock is not set.");
        _idMap[instr] = counter;
        counter++;
    }

    void handleBasicBlock(const BasicBlock* block) {
        currentBlock = block;
        counter = 0;
    }

    Ordering getOrdering(const Instruction* instrA, const Instruction* instrB) {
        // The same function will follow the dominance tree for the blocks.
        if (isSameFunction(instrA, instrB)) {
            BasicBlockNode *blockA = GraphManager::get()->getNode<BasicBlockNode>(instrA->getParent());
            BasicBlockNode *blockB = GraphManager::get()->getNode<BasicBlockNode>(instrB->getParent());
            if (blockB->isDominatedBy(blockA))
                return Ordering::BEFORE;
            return Ordering::UNKNOWN;
        }

        // The same block will follow instruction sequence:
        if (isSameBlock(instrA, instrB)) {
            int instrASequence = getSequence(instrA);
            int instrBSequence = getSequence(instrB);
            if (instrASequence < 0 || instrBSequence < 0) 
                throw std::runtime_error("getOrdering: instr sequence < 0");

            if (instrASequence < instrBSequence) return Ordering::BEFORE;
            return Ordering::UNKNOWN;
        }

        // Otherwise, this is considered interprocedural:

    }

    int getSequence(const Instruction* instr) {
        if (!_idMap.contains(instr)) return -1;
        return _idMap[instr];
    }

    static InstructionOrdering* get() {
        static InstructionOrdering* _object = new InstructionOrdering();
        return _object;
    }

private:
    bool isSameBlock(const Instruction* instrA, const Instruction* instrB) {
        return instrA->getParent() == instrB->getParent();
    }


    bool isSameFunction(const Instruction* instrA, const Instruction* instrB) {
        return instrA->getFunction() == instrB->getFunction();
    }

private:
    const BasicBlock* currentBlock;
    uint32_t counter = 0;

    unordered_map<const Instruction*, uint32_t> _idMap;
    unordered_map<const Function*, const Function*> _hbFuncMap; 
};
