#include "llvm/ADT/TypeSwitch.h"
#include "llvm/IR/GlobalValue.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"

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
            // Our def-use tree is technically broken at this point.
            if (!isGlobalUsed(global)) {
                _unusedGlobals.push_back(&global);
                errs() << global << "\n";
                continue;
            }
        }
    }

    bool isGlobalUsed(GlobalValue &global) {
        return true; // TODO
    }

    bool isUnusedFunction(Function& f) {
        return std::find(_unusedFuncs.begin(), _unusedFuncs.end(), &f) != _unusedFuncs.end();
    }

private:
    std::vector<Function*> _unusedFuncs;
    std::vector<GlobalValue*> _unusedGlobals;
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