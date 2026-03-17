#include "AndersenAA.h"

#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/MemoryLocation.h"
#include "llvm/IR/Module.h"

using namespace llvm;

static inline bool isSetContainingOnly(const AndersPtsSet &set, NodeIndex i) {
  return (set.getSize() == 1) && (*set.begin() == i);
}

AliasResult AndersenAAResult::andersenAlias(const CallBase *c1, const CallBase *c2, const Value *v1, const Value *v2) {
  // TODO:
  // NodeIndex n1 = (anders.nodeFactory)
  //                    .getMergeTarget((anders.nodeFactory).getValueNodeFor(c1, v1));
  // NodeIndex n2 = (anders.nodeFactory)
  //                    .getMergeTarget((anders.nodeFactory).getValueNodeFor(c2, v2));

  // if (n1 == n2)
  //   return AliasResult::Kind::MustAlias;

  // auto itr1 = (anders.ptsGraph).find(n1), itr2 = (anders.ptsGraph).find(n2);
  // if (itr1 == (anders.ptsGraph).end() || itr2 == (anders.ptsGraph).end())
  //   // We knows nothing about at least one of (v1, v2)
  //   return AliasResult::Kind::MayAlias;

  // AndersPtsSet &s1 = itr1->second, s2 = itr2->second;
  // bool isNull1 =
  //     isSetContainingOnly(s1, (anders.nodeFactory).getNullObjectNode());
  // bool isNull2 =
  //     isSetContainingOnly(s2, (anders.nodeFactory).getNullObjectNode());
  // if (isNull1 || isNull2)
  //   // If any of them is null, we know that they must not alias each other
  //   return AliasResult::Kind::NoAlias;

  // if (s1.getSize() == 1 && s2.getSize() == 1 && *s1.begin() == *s2.begin())
  //   return AliasResult::Kind::MustAlias;

  // // Compute the intersection of s1 and s2
  // for (auto const &idx : s1) {
  //   if (idx == (anders.nodeFactory).getNullObjectNode())
  //     continue;
  //   if (s2.has(idx))
  //     return AliasResult::Kind::MayAlias;
  // }

  return AliasResult::Kind::NoAlias;
}

AliasResult AndersenAAResult::alias(const MemoryLocation &l1,
                                    const MemoryLocation &l2,
                                    const CallBase *c1,
                                    const CallBase *c2) {
  if (l1.Size == 0 || l2.Size == 0)
    return AliasResult::Kind::NoAlias;

  const Value *v1 = (l1.Ptr)->stripPointerCasts();
  const Value *v2 = (l2.Ptr)->stripPointerCasts();

  if (!v1->getType()->isPointerTy() || !v2->getType()->isPointerTy()) {
    return AliasResult::Kind::NoAlias;
  }
  if (v1 == v2)
    return AliasResult::Kind::MustAlias;

  return andersenAlias(c1, c2, v1, v2);
}

AliasResult AndersenAAResult::alias(const Value *v1,
                                    const Value *v2,
                                    const CallBase *c1,
                                    const CallBase *c2) {
  if (!v1 || !v2) return AliasResult::Kind::NoAlias;

  MemoryLocation m1(v1, MemoryLocation::UnknownSize);
  MemoryLocation m2(v2, MemoryLocation::UnknownSize);
  return alias(m1, m2, c1, c2);
}

bool AndersenAAResult::pointsToConstantMemory(const MemoryLocation &loc,
                                              bool orLocal) {
  NodeIndex node = (anders.nodeFactory).getValueNodeFor(nullptr, loc.Ptr);
  if (node == AndersNodeFactory::InvalidIndex)
    return false;

  auto itr = (anders.ptsGraph).find(node);
  if (itr == (anders.ptsGraph).end())
    // Not a pointer?
    return false;

  const AndersPtsSet &ptsSet = itr->second;
  for (auto const &idx : ptsSet) {
    if (const Value *val = (anders.nodeFactory).getValueForNode(idx)) {
      if (!isa<GlobalValue>(val) || (isa<GlobalVariable>(val) &&
                                     !cast<GlobalVariable>(val)->isConstant()))
        return false;
    } else {
      if (idx != (anders.nodeFactory).getNullObjectNode())
        return false;
    }
  }

  return true;
}

bool AndersenAAResult::getPointsToSet(const CallBase *cs, const Value *v, PtsSetType &ptsSet) {
  return anders.getPointsToSet(cs, v, ptsSet);
}

bool AndersenAAResult::getPointsToSet(const Value *v, PtsSetType &ptsSet) {
  return anders.getPointsToSet(nullptr, v, ptsSet);
}

bool AndersenAAResult::getPointsFromSet(const CallBase *cs, const Value *v, PtsSetType &ptsSet) {
  return anders.getPointsFromSet(cs, v, ptsSet);
}

bool AndersenAAResult::getPointsFromSet(const Value *v, PtsSetType &ptsSet) {
  return anders.getPointsFromSet(nullptr, v, ptsSet);
}

void AndersenAAResult::printPointsToSet(const CallBase *cs, const Value *v) {
  PtsSetType ptsSet{};
  getPointsToSet(cs, v, ptsSet);

  errs() << "Value: " << *v << "\n";
  if (ptsSet.size() == 0) {
    errs() << "\tptsSet is empty.\n";
    return;
  }
  for (const llvm::Value *v : ptsSet) {
    if (dyn_cast<Function>(v)) {
      errs() << "  ---> [F] " << v->getName() << "\n";
    } else {
      errs() << "  ---> " << *v << "\n";
    }
  }
  errs() << "\n";
}

AndersenAAResult::AndersenAAResult(const Module &m) : anders(m) {}

void AndersenAAWrapperPass::getAnalysisUsage(AnalysisUsage &AU) const {
  AU.setPreservesAll();
}

bool AndersenAAWrapperPass::runOnModule(Module &m) {
  result.reset(new AndersenAAResult(m));

  return false;
}

AndersenAAWrapperPass::AndersenAAWrapperPass() : ModulePass(ID) {}

char AndersenAAWrapperPass::ID = 0;
static RegisterPass<AndersenAAWrapperPass>
    X("anders-aa", "Andersen Alias Analysis", true, true);
// static RegisterAnalysisGroup<AliasAnalysis> Y(X);