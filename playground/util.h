#include "llvm/IR/Module.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/AsmParser/Parser.h"
#include "llvm/Support/SourceMgr.h"
#include "andersen/Andersen.h"
using namespace llvm;

static std::unique_ptr<Andersen> runAndersen(llvm::Module &M) {
  return std::make_unique<Andersen>(M);
}

static const Value *findInstr(const Function *F, const std::string &name) {
    for (auto &BB : *F)
        for (auto &I : BB)
            if (I.getName() == name)
                return &I;
    return nullptr;
}

static const Value *findInstrByID(const Function *F, int id) {
    for (auto &BB : *F) {
        int c = 0;
        for (auto &I : BB) {
            if (c == id) return &I;
            c++;
        }
    }
    return nullptr;
}

class AndersPassTest {
public:
    LLVMContext ctx;
    std::unique_ptr<Module> module;

    Module* ParseAssembly(const char* Assembly) {
        SMDiagnostic Error;
        module = parseAssemblyString(Assembly, Error, ctx);
        std::string errMsg;
        raw_string_ostream os(errMsg);
        Error.print("", os);
        if (!module) report_fatal_error(os.str().c_str());
        return module.get();
    }

    Module* ParseFile(const char* filename) {
        SMDiagnostic error;
        module = parseIRFile(filename, error, ctx);
        std::string errMsg;
        raw_string_ostream os(errMsg);
        if (!module) report_fatal_error(os.str().c_str());
        return module.get();
    }
};
