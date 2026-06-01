#include "andersen/Andersen.h"
#include "util.h"

int main() {
    AndersPassTest pass;
    Module *module = pass.ParseFile("playground/Thread_Test.ll");
    auto anders = std::make_unique<Andersen>(*module);

    Function *spawn = module->getFunction("spawn");
    Function *closure = module->getFunction("spawn_closure");
    Function *vtable = module->getFunction("vtable_shim");

    const Value *_4i = findInstr(spawn, "_4.i");
    const Value *vtableParam = vtable->getArg(0);

    anders->connectContexts(spawn, vtable);
    bool t = anders->addConstraint(AndersConstraint::COPY, vtableParam, _4i, 1, 1);
    errs() << "success = " << t << "\n";
    anders->resolveConstraints();

    const Value *load = findInstr(closure, "load");
    anders->printPointsToSet(load);
    return 0;
}
