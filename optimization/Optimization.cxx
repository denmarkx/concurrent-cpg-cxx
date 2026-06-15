#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "OptCallees.h"
#include "OptCFG.h"
using namespace llvm;

llvm::PassPluginLibraryInfo getOPluginInfo() {
    return {
        LLVM_PLUGIN_API_VERSION, "Optimization", LLVM_VERSION_STRING,
        [](PassBuilder &PB) {
            PB.registerPipelineParsingCallback(
                [](StringRef Name, ModulePassManager &MPM,
                   ArrayRef<PassBuilder::PipelineElement>) {
                    if (Name == "optimization") {
                        MPM.addPass(OptCallees());
                        MPM.addPass(OptCFG());
                        return true;
                    }
                    return false;
                });
        }};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
    return getOPluginInfo();
}
