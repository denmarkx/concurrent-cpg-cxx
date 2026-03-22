#ifndef TCFS_ANDERSEN_AA_H
#define TCFS_ANDERSEN_AA_H

#include "Andersen.h"

#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Pass.h"

typedef std::vector<const llvm::Value *> PtsSetType;

class AndersenAAResult : public llvm::AAResultBase {
private:
  friend llvm::AAResultBase;

  Andersen anders;
  llvm::AliasResult andersenAlias(const Context*, const Context*, const llvm::Value *, const llvm::Value *);

public:
  AndersenAAResult(const llvm::Module &);

  llvm::AliasResult alias(const llvm::MemoryLocation &, const llvm::MemoryLocation &,
    const Context* ctxA, const Context* ctxB);

  llvm::AliasResult alias(const llvm::Value *, const llvm::Value *,
    const Context* ctxA, const Context* ctxB);
  llvm::AliasResult alias(const llvm::Value *, const llvm::Value *,
    unsigned int ctxIdA, unsigned int ctxIdB);

  bool pointsToConstantMemory(const llvm::MemoryLocation &, bool);
  
  bool getPointsToSet(const Context*, const llvm::Value *v, PtsSetType &ptsSet);
  bool getPointsToSet(unsigned int, const llvm::Value *v, PtsSetType &ptsSet);
  bool getPointsToSet(const llvm::Value *v, PtsSetType &ptsSet);

  bool getPointsFromSet(const Context*, const llvm::Value *v, PtsSetType&ptsSet);
  bool getPointsFromSet(unsigned int, const llvm::Value *v, PtsSetType &ptsSet);
  bool getPointsFromSet(const llvm::Value *v, PtsSetType &ptsSet);

  void printPointsToSet(const Context*, const llvm::Value *v);
  void printPointsToSet(unsigned int, const llvm::Value *v);
  void printPointsToSet(const llvm::Value *v);

  std::vector<unsigned int> getContextIDs(const llvm::Value* v);
};

class AndersenAAWrapperPass : public llvm::ModulePass {
private:
  std::unique_ptr<AndersenAAResult> result;

public:
  static char ID;

  AndersenAAWrapperPass();

  AndersenAAResult &getResult() { return *result; }
  const AndersenAAResult &getResult() const { return *result; }

  bool runOnModule(llvm::Module &) override;
  // bool doFinalization(llvm::Module&) override;
  void getAnalysisUsage(llvm::AnalysisUsage &AU) const override;
};

#endif
