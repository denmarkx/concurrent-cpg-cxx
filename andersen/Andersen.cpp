#include "Andersen.h"

#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

cl::opt<bool> DumpDebugInfo("dump-debug",
                            cl::desc("Dump debug info into stderr"),
                            cl::init(false), cl::Hidden);
cl::opt<bool> DumpResultInfo("dump-result",
                             cl::desc("Dump result info into stderr"),
                             cl::init(false), cl::Hidden);
cl::opt<bool> DumpConstraintInfo("dump-cons",
                                 cl::desc("Dump constraint info into stderr"),
                                 cl::init(false), cl::Hidden);

Andersen::Andersen(const Module &module) { runOnModule(module); }

void Andersen::getAllAllocationSites(
    std::vector<std::pair<const Context*, const llvm::Value *>> &allocSites) const {
  nodeFactory.getAllocSites(allocSites);
}

// TODO: context should be const
bool Andersen::getPointsToSet(const Context *ctx, const llvm::Value *v,
                              std::vector<const llvm::Value *> &ptsSet) {
  NodeIndex ptrIndex = nodeFactory.getValueNodeFor(ctx, v);
  // We have no idea what v is...
  if (ptrIndex == AndersNodeFactory::InvalidIndex ||
      ptrIndex == nodeFactory.getUniversalPtrNode())
    return false;

  NodeIndex ptrTgt = nodeFactory.getMergeTarget(ptrIndex);
  ptsSet.clear();

  auto ptsItr = ptsGraph.find(ptrTgt);
  if (ptsItr == ptsGraph.end()) {
    // Can't find ptrTgt. The reason might be that ptrTgt is an undefined
    // pointer. Dereferencing it is undefined behavior anyway, so we might just
    // want to treat it as a nullptr pointer
    return true;
  }
  for (auto v : ptsItr->second) {
    if (v == nodeFactory.getNullObjectNode())
      continue;

    const llvm::Value *val = nodeFactory.getValueForNode(v);
    if (val != nullptr)
      ptsSet.push_back(val);
  }
  return true;
}

bool Andersen::getPointsToSet(unsigned int ctxId, const llvm::Value *v,
                              std::vector<const llvm::Value *> &ptsSet) {
  assert(ctxId < nodeFactory.getNumContexts());
  return getPointsToSet(nodeFactory.getContext(ctxId), v, ptsSet);
}

/**
 * Given a value, populates ptsSet with all possible pointsTo
 * values among ALL associated contexts.
*/
bool Andersen::getPointsToSet(const llvm::Value *v, std::vector<const llvm::Value *> &ptsSet) {
  std::vector<const Context*> contexts = nodeFactory.getAssociatedContexts(v);

  for (const Context *ctx : contexts) {
    std::vector<const llvm::Value*> childSet;
    if (getPointsToSet(ctx, v, childSet)) {
      for (const llvm::Value *v : childSet)
        ptsSet.push_back(v);
    }
  }
  return ptsSet.size() > 0;
}

// TODO: context should be const
bool Andersen::getPointsFromSet(const Context* ctx, const llvm::Value *v,
                                std::vector<const llvm::Value *> &ptsSet) {
  NodeIndex ptrIndex = nodeFactory.getValueNodeFor(ctx, v);
  if (ptrIndex == AndersNodeFactory::InvalidIndex ||
      ptrIndex == nodeFactory.getUniversalPtrNode())
    return false;

  NodeIndex ptrTgt = nodeFactory.getMergeTarget(ptrIndex);
  ptsSet.clear();

  for (unsigned i = 0, e = nodeFactory.getNumNodes(); i < e; ++i) {
    NodeIndex rep = nodeFactory.getMergeTarget(i);
    auto ptsItr = ptsGraph.find(rep);
    if (ptsItr != ptsGraph.end() && ptsItr->second.has(ptrIndex)) {
      const llvm::Value *val = nodeFactory.getValueForNode(ptsItr->first);
      if (val != nullptr)
        ptsSet.push_back(val);
    }
  }
  return true;
}

bool Andersen::getPointsFromSet(unsigned int ctxId, const llvm::Value *v,
                              std::vector<const llvm::Value *> &ptsSet) {
  assert(ctxId < nodeFactory.getNumContexts());
  return getPointsFromSet(nodeFactory.getContext(ctxId), v, ptsSet);
}

/**
 * Given a value, populates ptsSet with all possible pointsTo
 * values among ALL associated contexts.
*/
bool Andersen::getPointsFromSet(const llvm::Value *v, std::vector<const llvm::Value *> &ptsSet) {
  std::vector<const Context*> contexts = nodeFactory.getAssociatedContexts(v);

  for (const Context *ctx : contexts) {
    std::vector<const llvm::Value*> childSet;
    if (getPointsFromSet(ctx, v, childSet)) {
      for (const llvm::Value *v : childSet)
        ptsSet.push_back(v);
    }
  }
  return ptsSet.size() > 0;
}

bool Andersen::runOnModule(const Module &M) {
  collectConstraints(M);

  if (DumpDebugInfo)
    dumpConstraintsPlainVanilla();

  optimizeConstraints();

  if (DumpConstraintInfo)
    dumpConstraints();

  solveConstraints();

  if (DumpDebugInfo) {
    errs() << "\n";
    dumpPtsGraphPlainVanilla();
  }

  if (DumpResultInfo) {
    nodeFactory.dumpNodeInfo();
    errs() << "\n";
    dumpPtsGraphPlainVanilla();
  }

  return false;
}

void Andersen::dumpConstraint(const AndersConstraint &item) const {
  NodeIndex dest = item.getDest();
  NodeIndex src = item.getSrc();

  switch (item.getType()) {
  case AndersConstraint::COPY: {
    nodeFactory.dumpNode(dest);
    errs() << " = ";
    nodeFactory.dumpNode(src);
    break;
  }
  case AndersConstraint::LOAD: {
    nodeFactory.dumpNode(dest);
    errs() << " = *";
    nodeFactory.dumpNode(src);
    break;
  }
  case AndersConstraint::STORE: {
    errs() << "*";
    nodeFactory.dumpNode(dest);
    errs() << " = ";
    nodeFactory.dumpNode(src);
    break;
  }
  case AndersConstraint::ADDR_OF: {
    nodeFactory.dumpNode(dest);
    errs() << " = &";
    nodeFactory.dumpNode(src);
  }
  }

  errs() << "\n";
}

void Andersen::dumpConstraints() const {
  errs() << "\n----- Constraints -----\n";
  for (auto const &item : constraints)
    dumpConstraint(item);
  errs() << "----- End of Print -----\n";
}

void Andersen::dumpConstraintsPlainVanilla() const {
  for (auto const &item : constraints) {
    errs() << item.getType() << " " << item.getDest() << " " << item.getSrc()
           << " 0\n";
  }
}

void Andersen::dumpPtsGraphPlainVanilla() const {
  for (unsigned i = 0, e = nodeFactory.getNumNodes(); i < e; ++i) {
    NodeIndex rep = nodeFactory.getMergeTarget(i);
    auto ptsItr = ptsGraph.find(rep);
    if (ptsItr != ptsGraph.end()) {
      errs() << i << " ";
      for (auto v : ptsItr->second)
        errs() << v << " ";
      errs() << "\n";
    }
  }
}
