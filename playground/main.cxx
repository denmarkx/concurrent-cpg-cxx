#include "andersen/AndersenAA.h"
#include "andersen/Constraint.h"
#include "util.h"

int main() {
    AndersPassTest pass;
    Module *module = pass.ParseFile("playground/GEP_Test.ll");
    auto anders = std::make_unique<AndersenAAResult>(*module);

    Function *f = module->getFunction("main");
    Function *F1 = module->getFunction("F1");
    Function *F2 = module->getFunction("F2");
    const Value *main = findInstr(f, "l");
    const Value *F1A = F1->getArg(0);
    const Value *F2A = F2->getArg(0);
    // const Value *f0 = findInstr(F2, "f0"); 
    const Value *loadF = findInstr(F2, "loadF"); 
    // const Value *loadF_main = findInstr(f, "loadF");
    // anders->printTransitivePointsToSet(main);

    anders->addConstraint(AndersConstraint::COPY, F1A, main);
    anders->solveConstraints();

    // anders->printTransitivePointsToSet(F2A); -> main [2x]
    // anders->printTransitivePointsToSet(f0); -> f2a
    // anders->printTransitivePointsToSet(loadF_main); -> output_capture
    anders->printTransitivePointsToSet(main);
    return 0;
}
