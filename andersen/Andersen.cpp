#include "Andersen.h"
#include "NodeFactory.h"

#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/IR/Module.h"
#include <queue>

using namespace llvm;

Andersen::Andersen(const Module &module) { runOnModule(module); }

/*
 * Determines if valueA is an alias of valueB. Returns AliasResult:
 *  - NoAlias
 *  - MayAlias
 *  - MustAlias
*/
llvm::AliasResult Andersen::alias(const Value *valueA, const Value *valueB, unsigned int ctxIdA, unsigned int ctxIdB) {
    if (!valueA || !valueB) return AliasResult::NoAlias;
    if (!valueA->getType()->isPointerTy() || !valueB->getType()->isPointerTy()) return AliasResult::NoAlias;
    if (valueA == valueB) return AliasResult::MustAlias;

    MemoryLocation m1(valueA, MemoryLocation::UnknownSize);
    MemoryLocation m2(valueB, MemoryLocation::UnknownSize);

    // We may be requesting a specific ctx, but we require both if one is given.
    if (ctxIdA != GenericContextID && ctxIdB != GenericContextID) {
        const Context* ctxA = nodeFactory.getContextByID(ctxIdA);
        const Context* ctxB = nodeFactory.getContextByID(ctxIdA);
        assert(ctxA != nullptr || ctxB != nullptr && "Andersen::alias - ctxIdA/B invalid.");

        NodeIndex n1 = nodeFactory.getMergeTarget(nodeFactory.getValueNodeFor(ctxA, valueA));
        NodeIndex n2 = nodeFactory.getMergeTarget(nodeFactory.getValueNodeFor(ctxB, valueB));
    
        // Merge target is the same: we'll say it aliases:
        if (n1 == n2)
          return AliasResult::MustAlias;

        auto itr1 = ptsGraph.find(n1);
        auto itr2 = ptsGraph.find(n2);

        // If we know nothing about at least one, we'll say this may alias.
        if (itr1 == ptsGraph.end() || itr2 == ptsGraph.end()) return AliasResult::MayAlias;

        AndersPtsSet &s1 = itr1->second;
        AndersPtsSet &s2 = itr2->second;

        // If any of them is null, we know they do not alias.
        bool isNull1 = s1.isSetContainingOnly(nodeFactory.getNullObjectNode());
        bool isNull2 = s2.isSetContainingOnly(nodeFactory.getNullObjectNode());
        if (isNull1 || isNull2)
          return AliasResult::NoAlias;

        // This is a bit conservative, but it helps prior to checking each node.
        if (s1.getSize() == 1 && s2.getSize() == 1 && *s1.begin() == *s2.begin())
          return AliasResult::MustAlias;

        // If s1 and s2 are the same except for nodes 0-3, we'll say this must alias.
        if (s1.compareExclude(s2))
          return AliasResult::MustAlias;

        // If s1 and s2 contain any overlapping values, except for 0-3, this may alias..
        if (s1.compareIntersectionExclude(s2))
          return AliasResult::MayAlias;

        return AliasResult::NoAlias;
    }

    // Otherwise..if no explicit ctx is given, we try for all associated.
    AliasResult result = AliasResult::NoAlias;
    AliasResult prevResult = AliasResult::MayAlias;
    bool seenNoAlias = false;

    for (const Context *ctxA : nodeFactory.getAssociatedContexts(valueA)) {
        for (const Context *ctxB : nodeFactory.getAssociatedContexts(valueB)) {
            result = alias(valueA, valueB, ctxA->id, ctxB->id);

            // If we get a MustAlias, but previously recorded a NoAlias, we negate the MustAlias
            // and instead say it MayAlias. A MustAlias must be unanimous.
            if (result == AliasResult::MustAlias && seenNoAlias) {
              result = AliasResult::MayAlias;
            }

            // If we receive a NoAlias, but previously were at a May or Must, we'll say it May.
            if (result == AliasResult::NoAlias && 
                (prevResult == AliasResult::MustAlias || prevResult == AliasResult::MayAlias)) {
              seenNoAlias = true;
              result = AliasResult::MayAlias;
            }

            prevResult = result;
        }
    }
    return AliasResult::NoAlias;
}

/*
 * Fills in the transitive pointsTo set for a given context.
 * This differs from getPointsToSet in the fact that the context is not the default context ID.
*/
void Andersen::fillPointsToSet(const llvm::Value* v, PtsSetType &ptsSet, unsigned int contextId) {
    std::queue<unsigned int> worklist;

    NodeIndex ptrTgt = nodeFactory.getMergeTarget(
      nodeFactory.getValueNodeFor(nodeFactory.getContextByID(contextId), v));

    auto ptsItr = ptsGraph.find(ptrTgt);
    if (ptsItr == ptsGraph.end()) return;
    for (auto vx : ptsItr->second) {
      if (vx == nodeFactory.getNullObjectNode()) continue;
      worklist.push(vx);
    }

    while (!worklist.empty()) {
      unsigned int c = worklist.front();
      worklist.pop();

        const llvm::Value *cv = nodeFactory.getValueForNode(c);
        if (!cv) continue;

        if (std::find(ptsSet.begin(), ptsSet.end(), cv) == ptsSet.end()) {
        ptsSet.push_back(cv);

        auto ptsItr = ptsGraph.find(c);
        if (ptsItr == ptsGraph.end()) continue;
        for (auto vx : ptsItr->second) {
          if (vx == nodeFactory.getNullObjectNode()) continue;
          worklist.push(vx);
        }
    }
  }
}

/*
 * Places all the reachable values from the given value into the ptsSet.
 * The third parameter details the specific contextId to filter for. If this is not provided,
 * the function will assume all associated contexts with the given value.
*/
void Andersen::getPointsToSet(const llvm::Value *v, PtsSetType &ptsSet, unsigned int contextId) {
    // Requesting for a certain context rather than all associated ones:
    if (contextId != GenericContextID) {
      fillPointsToSet(v, ptsSet, contextId);
      return;
    }

    // Otherwise, we need to fill for all associated contexts.
    for (const Context *ctx : nodeFactory.getAssociatedContexts(v)) {
      fillPointsToSet(v, ptsSet, ctx->id);
    }
}

/*
 * Sets constraint for the two given values.
 * This works for most instructions that do not require additional constraints.
 * 
 * However, as of right now, it is the responsibility of the caller to adhere to the
 * constraint implementation from ConstraintCollect for more complex constraints,
 * ie: adding constraints for parameters and arguments, etc.
 *
 *
 * TODO: as of right now, this adds the constraint to ALL associated contexts of the RHS.
 *       ..because we need to figure out how to be a little user-friendly with the contextId.
 *
 * What should be noted right now that it is IRRESPONSIBLE for LHS to be an alloca.
 * TODO: this also makes no effort to differentiate between objects and values. All LHS and RHSes
 *       are assumed to have a value OR a value needs to be created.
 * 
 * Return boolean indicating if the constraint was successfully added.
*/
bool Andersen::addConstraint(AndersConstraint::ConstraintType type, const llvm::Value *lhs, const llvm::Value *rhs, bool propagateFields, bool argument) {
    if (!lhs || !rhs) return false;
    if (!lhs->getType()->isPointerTy() || !rhs->getType()->isPointerTy()) return false;

    bool constraintAdded = false;
    for (const Context *ctx : nodeFactory.getAssociatedContexts(lhs)) {
        NodeIndex leftIdx = nodeFactory.getValueNodeFor(ctx, lhs);
        if (leftIdx == AndersNodeFactory::InvalidIndex) continue;

        // A rightIdx may not always exist for this context:
        NodeIndex rightIdx = nodeFactory.getValueNodeFor(ctx, rhs);
        if (argument)
            rightIdx = nodeFactory.getValueNodeFor(ctx->prevCtx, rhs);
        if (rightIdx == AndersNodeFactory::InvalidIndex) {
            // If that's the case, it's not necessarily an error.
            if (argument)
                rightIdx = nodeFactory.createValueNode(ctx->prevCtx, rhs);
            else
                rightIdx = nodeFactory.createValueNode(ctx, rhs);
        }

        // calleeCtx = whatever caller is from _4.i (rhs)
        // 1365 callee, 8221 routine
        // 1365 callee ctx, _4.i27 = 5205
        // ctx = the ctx of the routine
        if (ctx->prevCtx && argument)
            propgateConstraintsToFields(type, leftIdx, rightIdx, ctx, ctx->prevCtx);
        else
            constraints.emplace_back(type, leftIdx, rightIdx);
        constraintAdded = true;
    }
    return constraintAdded;
}

/*
 * Given a parent function, initiate a rescan of all instructions and underlying calls from
 * within the child and appropriately connect all parent contexts to the child.
 *
 * This should only ever be used in cases where functions are not directly called.
*/
void Andersen::connectContexts(const Function* parent, const Function* child) {
    if (!parent || !child) return;

    for (const User *user : parent->users()) {
        const CallBase *caller = dyn_cast<CallBase>(user);
        if (!caller) continue;

        const Context *ctx = nodeFactory.getContext(caller);
        if (!ctx) continue;

        const Context *parentCtx = nodeFactory.createContext(const_cast<Context*>(ctx), caller);

        setupFunctionConstraints(parentCtx, child);
        scanFunction(const_cast<Context*>(parentCtx), child);
    }
}

/*
 * Public API of Andersen::solveConstraints.
 * This should only be used when Andersen::addConstraint has been used. Additionally,
 * this will also call Andersen::optimizeConstraints.
*/
void Andersen::resolveConstraints() {
  optimizeConstraints();
  solveConstraints();
  dumpConstraints();
  nodeFactory.dumpNodeInfo();
  dumpPtsGraphPlainVanilla();
}
