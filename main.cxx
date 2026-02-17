#include "llvm/IRReader/IRReader.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Analysis/CallGraph.h"
#include "llvm/Analysis/MemorySSA.h"

#include "andersen/AndersenAA.h"

#include "ConstructionPass.h"
#include "graph/GraphBuilder.h"
#include "GraphBuilderPass.h"

using namespace llvm;

int main() {
    LLVMContext ctx;
    SMDiagnostic error;
    std::unique_ptr<Module> module = parseIRFile("shared.ll", error, ctx);

    if (module == nullptr) {
        error.print("", errs());
        return 0;
    }

    GraphBuilder builder("neo4j", "00000000");

    legacy::PassManager PM;
    PM.add(new AndersenAAWrapperPass());
    PM.add(new MemorySSAWrapperPass());
    // PM.add(new ConstructionPass());
    PM.add(new GraphBuilderPass());
    PM.run(*module);
    builder.persistAll();
    return 0;
}


