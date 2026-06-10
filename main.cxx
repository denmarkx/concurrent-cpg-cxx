#include "llvm/IRReader/IRReader.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Analysis/CallGraph.h"
#include "llvm/Analysis/MemorySSA.h"

#include "andersen/Andersen.h"

#include "graph/GraphBuilder.h"
#include "passes/GraphBuilderPass.h"
#include "passes/GraphBuilderProcessPass.h"
#include "graph/GraphManager.h"

#include <include/argparse.hpp>
#include <chrono>

using namespace llvm;

int main() {
    argparse::ArgumentParser parser("ccpg");

    LLVMContext ctx;
    SMDiagnostic error;

    std::unique_ptr<Module> module = parseIRFile("files/atomics.ll", error, ctx);

    if (module == nullptr) {
        error.print("", errs());
        return 0;
    }

    auto start = std::chrono::high_resolution_clock::now();
    GraphManager::get()->setupLTOManager(*module);
    auto end = std::chrono::high_resolution_clock::now();

    errs() << "[LTO Manager]: Setup executed in: " << 
        std::chrono::duration_cast<std::chrono::milliseconds>(end-start).count() << "ms\n";

    GraphBuilder builder("neo4j", "00000000");

    auto startAll = std::chrono::high_resolution_clock::now();

    legacy::PassManager PM;
    PM.add(new AndersenAAWrapperPass());
    PM.add(new GraphBuilderPass());
    PM.add(new GraphBuilderProcessPass());
    PM.run(*module);

    auto endPasses = std::chrono::high_resolution_clock::now();
    errs() << "[Passes]: Overall Time: " << 
        std::chrono::duration_cast<std::chrono::milliseconds>(endPasses-start).count() << "ms\n";

    builder.persistAll();

    auto endAll = std::chrono::high_resolution_clock::now();

    auto elapsedOverall = std::chrono::duration_cast<std::chrono::seconds>(endAll-startAll).count();
    if (elapsedOverall == 0)
        errs() << "[CCPG]: Overall Time: " << 
            std::chrono::duration_cast<std::chrono::milliseconds>(endAll-startAll).count() << "ms\n";
    else
        errs() << "[CCPG]: Overall Time: " << 
            std::chrono::duration_cast<std::chrono::seconds>(endAll-startAll).count() << "s\n";
    return 0;
}
