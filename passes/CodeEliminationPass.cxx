#include "llvm/IR/Constants.h"
#include "llvm/IR/GlobalValue.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"

#include <unordered_map>
#include <unordered_set>
#include <vector>
using namespace llvm;

class CodeEliminationPass : public PassInfoMixin<CodeEliminationPass> {
public:
    PreservedAnalyses run(Module &module, ModuleAnalysisManager &AM) {
        checkUnusedFunctions(module);
        checkUnusedGlobals(module);

        std::error_code code;
        raw_fd_stream stream("out.ll", code);
        module.print(stream, nullptr);
        stream.close();

        return PreservedAnalyses::all();
    }

    // TODO: i highly doubt eraseFromParent is transitive in anyway
    void checkUnusedFunctions(Module &M) {
        for (Function &f : M) {
            if (!f.isInternalLinkage(f.getLinkage())) return;
            if (f.getNumUses() == 0)
                _unusedFuncs.push_back(&f);
        }
    }

    void checkUnusedGlobals(Module &M) {
        for (GlobalValue &global: M.globals()) {
            checkGlobalUsed(global);       
        }

        // Any globals within _globalUsageMap whose value set is empty is considered unused.
        for (auto &[k, v] : _globalUsageMap) {
            if (v.size() == 0 && !isUnusedGlobal(*k))
                _unusedGlobals.push_back(k);
        }

        errs() << "===========================\n";
        for (const GlobalValue *v : _unusedGlobals) {
            errs() << *v << '\n';
        }
    }

    void updateUnusedCount(unsigned int& count, const Function* f) {
        if (isUnusedFunction(*f)) {
            count++;
            return;
        }
    }

    const GlobalVariable* findGlobalFromUser(const User* user) {
        if (const Constant *constant = dyn_cast<Constant>(user)) {
            for (const User *user : constant->users()) {
                if (const GlobalVariable *global = dyn_cast<GlobalVariable>(user)) {
                    return global;
                }
            }
        }
        return nullptr;
    }

    bool checkGlobalUsed(const GlobalValue &global) {
        if (isUnusedGlobal(global)) return false;

        unsigned int unusedCount = 0;
        std::unordered_set<const GlobalValue*> globalUsers;

        for (const User *user : global.users()) {
            if (const GlobalValue *other = findGlobalFromUser(user)) {
                // Another global apparently uses this one.
                // We'll make note of that for later.
                globalUsers.insert(other);
            }
            if (const Instruction *instr = dyn_cast<Instruction>(user)) {
                updateUnusedCount(unusedCount, instr->getFunction());
            }
        }

        if (unusedCount == global.getNumUses()) {
            _unusedGlobals.push_back(&global);

            // Remove ourselves from the values of any key in _globalUsageMap.
            for (auto &[k, v] : _globalUsageMap) {
                if (v.contains(&global))
                    v.erase(&global);
            }

        } else if (global.getNumUses() == globalUsers.size()) {
            // Some other global uses us, but we aren't yet sure if that global is used.
            _globalUsageMap[&global] = globalUsers;
        }
        return unusedCount != global.getNumUses();
    }

    bool isUnusedFunction(const Function& f) {
        return std::find(_unusedFuncs.begin(), _unusedFuncs.end(), &f)
            != _unusedFuncs.end();
    }

    bool isUnusedGlobal(const GlobalValue& global) {
        return std::find(_unusedGlobals.begin(), _unusedGlobals.end(), &global)
            != _unusedGlobals.end();
    }

private:
    std::unordered_map<const GlobalValue*, std::unordered_set<const GlobalValue*>> _globalUsageMap;
    std::vector<const Function*> _unusedFuncs;
    std::vector<const GlobalValue*> _unusedGlobals;
};

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
    return {
        LLVM_PLUGIN_API_VERSION, "CodeElimination", LLVM_VERSION_STRING,
        [](PassBuilder &PB) {
            PB.registerPipelineParsingCallback(
                [](StringRef Name, ModulePassManager &MPM,
                   ArrayRef<PassBuilder::PipelineElement>) {
                    if (Name == "code-elim") {
                        MPM.addPass(CodeEliminationPass());
                        return true;
                    }
                    return false;
                });
        }
    };
}
