#include "andersen/AndersenAA.h"
#include "util.h"

int main() {
    AndersPassTest pass;
    Module *module = pass.ParseFile("playground/GEP_Test.ll");
    auto anders = std::make_unique<AndersenAAResult>(*module);

    Function *f = module->getFunction("main");
    const Value *main = findInstr(f, "main");
    const Value *f0 = findInstr(f, "f0");
    const Value *loadF = findInstr(f, "loadF");
    anders->printTransitivePointsToSet(main);
    anders->printTransitivePointsToSet(f0);
    anders->printTransitivePointsToSet(loadF);
    return 0;
}
