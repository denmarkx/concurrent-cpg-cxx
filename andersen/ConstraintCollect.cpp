#include "Andersen.h"
#include "Constraint.h"
#include "NodeFactory.h"

#include "llvm/ADT/SmallVector.h"
#include "llvm/Analysis/ValueTracking.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/PatternMatch.h"
#include "llvm/Support/Casting.h"
#include <queue>
#include <unordered_set>

using namespace llvm;

// CollectConstraints - This stage scans the program, adding a constraint to the
// Constraints list for each instruction in the program that induces a
// constraint, and setting up the initial points-to graph.

void Andersen::collectConstraints(const Module &M) {
  // First, the universal ptr points to universal obj, and the universal obj
  // points to itself
  constraints.emplace_back(AndersConstraint::ADDR_OF,
                           nodeFactory.getUniversalPtrNode(),
                           nodeFactory.getUniversalObjNode());

  // Next, the null pointer points to the null object.
  constraints.emplace_back(AndersConstraint::ADDR_OF,
                           nodeFactory.getNullPtrNode(),
                           nodeFactory.getNullObjectNode());

  // Next, add any constraints on global variables. Associate the address of the
  // global object as pointing to the memory for the global: &G = <G memory>
  Context *globalCtx = collectConstraintsForGlobals(M);

  // Here is a notable point before we proceed:
  // For functions with non-local linkage type, theoretically we should not
  // trust anything that get passed to it or get returned by it. However,
  // precision will be seriously hurt if we do that because if we do not run a
  // -internalize pass before the -anders pass, almost every function is marked
  // external. We'll just assume that even external linkage will not ruin the
  // analysis result first

  for (auto const &f : M) {
    if (f.isDeclaration() || f.isIntrinsic()) continue;
    bool hasInternalCaller = false;
    for (const Use &use : f.uses()) {
      if (const auto *cb = dyn_cast<CallBase>(use.getUser())) {
        if (cb->getCalledFunction() == &f && !cb->getFunction()->isDeclaration()) {
          hasInternalCaller = true;
          break;
        }
      }
    }
    if (!hasInternalCaller)
      scanFunction(globalCtx, &f);
  }

}

static bool typeContainsPointer(const Type *t) {
    if (t->isPointerTy()) return true;
    if (t->isArrayTy()) return typeContainsPointer(t->getArrayElementType());
    if (t->isStructTy()) {
        for (unsigned i = 0; i < t->getStructNumElements(); ++i)
            if (typeContainsPointer(t->getStructElementType(i))) return true;
    }
    return false;
}

void Andersen::scanFunction(Context *context, const llvm::Function *f) {
  // First, create a value node for each instruction with pointer type. It is
  // necessary to do the job here rather than on-the-fly because an
  // instruction may refer to the value node defined before it (e.g. phi
  // nodes)
  bool recursiveHack = false;
  for (const_inst_iterator itr = inst_begin(f), ite = inst_end(f); itr != ite;
       ++itr) {
    auto inst = &*itr.getInstructionIterator();
    if (inst->getType()->isPointerTy()) {
        nodeFactory.createValueNode(context, inst);
    }
    // i want to say this can be simplified somehow
    else if (isa<CallBase>(inst) && typeContainsPointer(inst->getType()))
        nodeFactory.createValueNode(context, inst);
    else if (isa<InsertValueInst>(inst) && typeContainsPointer(inst->getType()))
      nodeFactory.createValueNode(context, inst);
    // If this is a call, we scan that function:
    if (const CallBase *cs = dyn_cast<CallBase>(inst)) {
      if (cs->getCalledFunction()) {
        // TODO: recursive funcs
        if (f != cs->getCalledFunction()) {
          Context *child = nodeFactory.createContext(context, cs);

          setupFunctionConstraints(child, cs->getCalledFunction());
          scanFunction(child, cs->getCalledFunction());
        } else {
          recursiveHack = true;
        }
      }
    }
  }
  
  // Now, collect constraint for each relevant instruction
  for (const_inst_iterator itr = inst_begin(f), ite = inst_end(f); itr != ite;
       ++itr) {
    auto inst = &*itr.getInstructionIterator();
    collectConstraintsForInstruction(context, inst, recursiveHack);
  }
}

Context* Andersen::collectConstraintsForGlobals(const Module &M) {
  _globalCtx = nodeFactory.createContext();
  nodeFactory._globalCtx = _globalCtx;
  // Create a pointer and an object for each global variable
  for (auto const &globalVal : M.globals()) {
    NodeIndex gVal = nodeFactory.createValueNode(_globalCtx, &globalVal);
    NodeIndex gObj = nodeFactory.createObjectNode(_globalCtx, &globalVal);
    constraints.emplace_back(AndersConstraint::ADDR_OF, gVal, gObj);
  }

  // Aliases are considered their own thing I suppose.
  for (auto const &alias : M.aliases()) {
    NodeIndex aVal = nodeFactory.createValueNode(_globalCtx, &alias);
    NodeIndex aObj = nodeFactory.createObjectNode(_globalCtx, &alias);
    constraints.emplace_back(AndersConstraint::ADDR_OF, aVal, aObj);
  }

  // Functions and function pointers are also considered global
  for (auto const &f : M) {
    setupFunctionConstraints(_globalCtx, &f);
  }

  // Init globals here since an initializer may refer to a global var/func below it
  for (auto const &globalVal : M.globals()) {
    NodeIndex gObj = nodeFactory.getObjectNodeFor(_globalCtx, &globalVal);
    assert(gObj != AndersNodeFactory::InvalidIndex &&
           "Cannot find global object!");

    if (globalVal.hasDefinitiveInitializer()) {
      addGlobalInitializerConstraints(gObj, globalVal.getInitializer());
    } else {
      // If it doesn't have an initializer (i.e. it's defined in another
      // translation unit), it points to the universal set.
      NodeIndex fObj = nodeFactory.createObjectNode(_globalCtx);
      constraints.emplace_back(AndersConstraint::ADDR_OF, gObj, fObj);
    }
  }
  return _globalCtx;
}

void Andersen::setupFunctionConstraints(const Context *context, const Function *f) {
  // If f is an addr-taken function, create a pointer and an object for it
  if (f->hasAddressTaken()) {
    // 创建一个值节点和一个对象节点
    NodeIndex fVal = nodeFactory.createValueNode(context, f);
    NodeIndex fObj = nodeFactory.createObjectNode(context, f);
    constraints.emplace_back(AndersConstraint::ADDR_OF, fVal, fObj);
  }

  if (f->isDeclaration() || f->isIntrinsic()) return;

  // Create return node
  const Type *retTy = f->getFunctionType()->getReturnType();
  if (retTy->isPointerTy() || typeContainsPointer(retTy)) {
      nodeFactory.createReturnNode(context, f);
  }

  // Create vararg node
  if (f->getFunctionType()->isVarArg())
    nodeFactory.createVarargNode(f);

  // Add nodes for all formal arguments.
  for (Function::const_arg_iterator itr = f->arg_begin(), ite = f->arg_end();
       itr != ite; ++itr) {
    if (isa<PointerType>(itr->getType()))
      nodeFactory.createValueNode(context, &*itr);
  }
}

void Andersen::addGlobalInitializerConstraints(NodeIndex objNode,
                                               const Constant *c) {
  // errs() << "Called with node# = " << objNode << ", initializer = " << *c <<
  // "\n";
  if (c->getType()->isSingleValueType()) {
    if (isa<PointerType>(c->getType())) {
      NodeIndex rhsNode = nodeFactory.getObjectNodeForConstant(_globalCtx, c);
      assert(rhsNode != AndersNodeFactory::InvalidIndex &&
             "rhs node not found");
      if (rhsNode == nodeFactory.getUniversalObjNode() ||
          rhsNode == AndersNodeFactory::InvalidIndex) {
          rhsNode = nodeFactory.createObjectNode(_globalCtx);
      }
      constraints.emplace_back(AndersConstraint::ADDR_OF, objNode, rhsNode);
    }
  } else if (c->isNullValue()) {
    constraints.emplace_back(AndersConstraint::COPY, objNode,
                             nodeFactory.getNullObjectNode());
  } else if (!isa<UndefValue>(c)) {
    // Since we are doing field-insensitive analysis, all objects in the
    // array/struct are pointed-to by the 1st-field pointer
    assert(isa<ConstantArray>(c) || isa<ConstantDataSequential>(c) ||
           isa<ConstantStruct>(c));

    FieldType fields;
    addGlobalAggregateConstraints(nodeFactory.getValueForNode(objNode), c, fields);

  }
}

void Andersen::addGlobalAggregateConstraints(const llvm::Value *aggregate, const llvm::Constant *c, FieldType &fields) {
  for (unsigned int i=0; i < c->getNumOperands(); i++) {
    Constant *element = cast<Constant>(c->getOperand(i));
    FieldType newFields;
    newFields.append(fields);
    newFields.push_back(i);

    if (element->getType()->isAggregateType()) {
      addGlobalAggregateConstraints(aggregate, element, newFields);
      continue;
    }

    NodeIndex valIdx = nodeFactory.getValueNodeFor(_globalCtx, aggregate, newFields);
    NodeIndex objIdx = nodeFactory.getObjectNodeFor(_globalCtx, aggregate, newFields);
    if (objIdx == AndersNodeFactory::InvalidIndex) {
      valIdx = nodeFactory.createValueNode(_globalCtx, aggregate, newFields);
      objIdx = nodeFactory.createObjectNode(_globalCtx, aggregate, newFields);
      constraints.emplace_back(AndersConstraint::ADDR_OF, valIdx, objIdx);
    }

    addGlobalInitializerConstraints(objIdx, element);
  }
}

void Andersen::collectConstraintsForInstruction(const Context *context, const Instruction *inst, bool recursiveHack) {
  switch (inst->getOpcode()) {
  case Instruction::Alloca: {
    NodeIndex valNode = nodeFactory.getValueNodeFor(context, inst);
    assert(valNode != AndersNodeFactory::InvalidIndex &&
           "Failed to find alloca value node");
    NodeIndex objNode = nodeFactory.createObjectNode(context, inst);
    constraints.emplace_back(AndersConstraint::ADDR_OF, valNode, objNode);
    break;
  }
  case Instruction::Call:
  case Instruction::Invoke: {
    const CallBase *cb = dyn_cast<CallBase>(inst);
    assert(cb && "Something wrong with callsite?");

    // TODO: recursive funcs
    if (!recursiveHack)
      addConstraintForCall(context, cb);

    break;
  }
  case Instruction::Ret: {
      if (inst->getNumOperands() == 0) break;
      const Type *retTy = inst->getOperand(0)->getType();
      if (!retTy->isPointerTy() && !typeContainsPointer(retTy)) break;

      NodeIndex retIndex = nodeFactory.getReturnNodeFor(
          context, inst->getParent()->getParent());
      if (retIndex == AndersNodeFactory::InvalidIndex) break;

      NodeIndex valIndex = nodeFactory.getValueNodeFor(context, inst->getOperand(0));
      if (valIndex == AndersNodeFactory::InvalidIndex) break;

      constraints.emplace_back(AndersConstraint::COPY, retIndex, valIndex);
      break;
  }
  case Instruction::Load: {
    if (inst->getType()->isPointerTy()) {
      NodeIndex opIndex = nodeFactory.getValueNodeFor(context, inst->getOperand(0));
      assert(opIndex != AndersNodeFactory::InvalidIndex &&
             "Failed to find load operand node");
      NodeIndex valIndex = nodeFactory.getValueNodeFor(context, inst);
      assert(valIndex != AndersNodeFactory::InvalidIndex &&
             "Failed to find load value node");
      constraints.emplace_back(AndersConstraint::LOAD, valIndex, opIndex);
    }
    break;
  }
  case Instruction::Store: {
    if (inst->getOperand(0)->getType()->isPointerTy()) {
      NodeIndex srcIndex = nodeFactory.getValueNodeFor(context, inst->getOperand(0));
      assert(srcIndex != AndersNodeFactory::InvalidIndex &&
             "Failed to find store src node");
      NodeIndex dstIndex = nodeFactory.getValueNodeFor(context, inst->getOperand(1));
      assert(dstIndex != AndersNodeFactory::InvalidIndex &&
             "Failed to find store dst node");
      constraints.emplace_back(AndersConstraint::STORE, dstIndex, srcIndex);
    }
    break;
  }
  case Instruction::GetElementPtr: {
    assert(inst->getType()->isPointerTy());

    // P1 = getelementptr P2, ... --> <Copy/P1/P2>
    const llvm::Value *src = inst->getOperand(0);
    auto fields = nodeFactory.getFields(context, inst);
    NodeIndex srcIndex = nodeFactory.getValueNodeFor(context, src, fields);

    // If our source is a GEP, we need to resolve the alloc site.
    if (const GetElementPtrInst *sourceInst = dyn_cast<GetElementPtrInst>(src)) {
      NodeIndex srcValIndex = nodeFactory.getValueNodeFor(context, src, {});

      // We can assume that the source GEP has a constraint = &V_Fn.
      // What we need to do is walk back the ADDR_OF constraint chain until we can find the object.
      std::queue<NodeIndex> worklist;
      worklist.push(srcValIndex);
      SmallVector<NodeIndex, 4> fieldPath;

      NodeIndex objIdx = AndersNodeFactory::InvalidIndex;
      NodeIndex objDstIdx = AndersNodeFactory::InvalidIndex;
      while (!worklist.empty()) {
        NodeIndex idx = worklist.front();
        worklist.pop();

        // First, we need to check if this idx has a constraint to an object:
        auto itr = std::find_if(constraints.begin(), constraints.end(), [&](const AndersConstraint& c) {
          // Only considering ADDR_OF and if getSrc is an object.
          return c.getType() == AndersConstraint::ADDR_OF &&\
            nodeFactory.isObjectNode(c.getSrc()) &&\
            c.getDest() == idx;
        });

        // If we've found the object, we make note of it.
        if (itr != constraints.end()) {
          objIdx = itr->getSrc();
          objDstIdx = itr->getDest();
          break;
        }

        // Otherwise, we need to find the ADDR_OF constraint to a value.
        itr = std::find_if(constraints.begin(), constraints.end(), [&](const AndersConstraint& c) {
          return c.getType() == AndersConstraint::ADDR_OF && c.getDest() == idx;
        });

        // I can't really think of a reason why we can't find this.
        assert(itr != constraints.end());

        // We're going to have to move up..so add our source fields onto fieldPath.
        fieldPath.append(nodeFactory.getFields(context, sourceInst));
        worklist.push(itr->getSrc());
      }
      nodeFactory.dumpNodeInfo();
      assert(objIdx != AndersNodeFactory::InvalidIndex);

      // Check what the obj refers to:
      auto itr = std::find_if(constraints.begin(), constraints.end(), [&](const AndersConstraint& c) {
        return c.getType() == AndersConstraint::ADDR_OF && c.getDest() == objIdx;
      });

      // There's no guarantee that this specific field is actually populated by an object yet..
      if (itr != constraints.end())
        objDstIdx = itr->getSrc();
      assert(objDstIdx != AndersNodeFactory::InvalidIndex);

      // Our src then becomes this:
      src = nodeFactory.getValueForNode(objDstIdx);
      srcIndex = nodeFactory.getValueNodeFor(context, src, fields);
    }

    if (srcIndex == AndersNodeFactory::InvalidIndex) {
      // We don't create objects for each field when we encounter an allocation
      // ..meaning it's not an oddity if srcIndex is invalid.
      srcIndex = nodeFactory.createValueNode(context, src, fields);
      NodeIndex srcObjIndex = nodeFactory.createObjectNode(context, src, fields);
      constraints.emplace_back(AndersConstraint::ADDR_OF, srcIndex, srcObjIndex);
    }

    assert(srcIndex != AndersNodeFactory::InvalidIndex &&
           "Failed to find gep src node");
    NodeIndex dstIndex = nodeFactory.getValueNodeFor(context, inst);
    assert(dstIndex != AndersNodeFactory::InvalidIndex &&
           "Failed to find gep dst node");

    constraints.emplace_back(AndersConstraint::ADDR_OF, dstIndex, srcIndex);

    break;
  }
  case Instruction::PHI: {
    if (inst->getType()->isPointerTy()) {
      const PHINode *phiInst = cast<PHINode>(inst);
      NodeIndex dstIndex = nodeFactory.getValueNodeFor(context, phiInst);
      assert(dstIndex != AndersNodeFactory::InvalidIndex &&
             "Failed to find phi dst node");
      for (unsigned i = 0, e = phiInst->getNumIncomingValues(); i != e; ++i) {
        NodeIndex srcIndex =
            nodeFactory.getValueNodeFor(context, phiInst->getIncomingValue(i));
        assert(srcIndex != AndersNodeFactory::InvalidIndex &&
               "Failed to find phi src node");
        constraints.emplace_back(AndersConstraint::COPY, dstIndex, srcIndex);
      }
    }
    break;
  }
  case Instruction::BitCast: {
    if (inst->getType()->isPointerTy()) {
      NodeIndex srcIndex = nodeFactory.getValueNodeFor(context, inst->getOperand(0));
      assert(srcIndex != AndersNodeFactory::InvalidIndex &&
             "Failed to find bitcast src node");
      NodeIndex dstIndex = nodeFactory.getValueNodeFor(context, inst);
      assert(dstIndex != AndersNodeFactory::InvalidIndex &&
             "Failed to find bitcast dst node");
      constraints.emplace_back(AndersConstraint::COPY, dstIndex, srcIndex);
    }
    break;
  }
  case Instruction::IntToPtr: {
    assert(inst->getType()->isPointerTy());

    // Get the node index for dst
    NodeIndex dstIndex = nodeFactory.getValueNodeFor(context, inst);
    assert(dstIndex != AndersNodeFactory::InvalidIndex &&
           "Failed to find inttoptr dst node");

    // We use pattern matching to look for a matching ptrtoint
    Value *op = inst->getOperand(0);

    // Pointer copy: Y = inttoptr (ptrtoint X)
    Value *srcValue = nullptr;
    if (PatternMatch::match(
            op, PatternMatch::m_PtrToInt(PatternMatch::m_Value(srcValue)))) {
      NodeIndex srcIndex = nodeFactory.getValueNodeFor(context, srcValue);
      assert(srcIndex != AndersNodeFactory::InvalidIndex &&
             "Failed to find inttoptr src node");
      NodeIndex freshObj = nodeFactory.createObjectNode(context, nullptr);
      NodeIndex freshPtr = nodeFactory.createValueNode(context, nullptr);
      constraints.emplace_back(AndersConstraint::ADDR_OF, freshPtr, freshObj);
      constraints.emplace_back(AndersConstraint::COPY, dstIndex, freshPtr);
      break;
    }

    // Pointer arithmetic: Y = inttoptr (ptrtoint (X) + offset)
    if (PatternMatch::match(
            op, PatternMatch::m_Add(
                    PatternMatch::m_PtrToInt(PatternMatch::m_Value(srcValue)),
                    PatternMatch::m_Value()))) {
      NodeIndex srcIndex = nodeFactory.getValueNodeFor(context, srcValue);
      assert(srcIndex != AndersNodeFactory::InvalidIndex &&
             "Failed to find inttoptr src node");
      constraints.emplace_back(AndersConstraint::COPY, dstIndex, srcIndex);
      break;
    }

    // Otherwise, we really don't know what dst points to
    constraints.emplace_back(AndersConstraint::COPY, dstIndex,
                             nodeFactory.getUniversalPtrNode());

    break;
  }
  case Instruction::Select: {
    if (inst->getType()->isPointerTy()) {
      NodeIndex srcIndex1 = nodeFactory.getValueNodeFor(context, inst->getOperand(1));
      assert(srcIndex1 != AndersNodeFactory::InvalidIndex &&
             "Failed to find select src node 1");
      NodeIndex srcIndex2 = nodeFactory.getValueNodeFor(context, inst->getOperand(2));
      assert(srcIndex2 != AndersNodeFactory::InvalidIndex &&
             "Failed to find select src node 2");
      NodeIndex dstIndex = nodeFactory.getValueNodeFor(context, inst);
      assert(dstIndex != AndersNodeFactory::InvalidIndex &&
             "Failed to find select dst node");
      constraints.emplace_back(AndersConstraint::COPY, dstIndex, srcIndex1);
      constraints.emplace_back(AndersConstraint::COPY, dstIndex, srcIndex2);
    }
    break;
  }
  case Instruction::VAArg: {
    if (inst->getType()->isPointerTy()) {
      NodeIndex dstIndex = nodeFactory.getValueNodeFor(context, inst);
      assert(dstIndex != AndersNodeFactory::InvalidIndex &&
             "Failed to find va_arg dst node");
      NodeIndex vaIndex =
          nodeFactory.getVarargNodeFor(inst->getParent()->getParent());
      assert(vaIndex != AndersNodeFactory::InvalidIndex &&
             "Failed to find vararg node");
      constraints.emplace_back(AndersConstraint::COPY, dstIndex, vaIndex);
    }
    break;
  }
  case Instruction::ExtractValue: {
      if (!inst->getType()->isPointerTy()) break;
      NodeIndex dstIndex = nodeFactory.getValueNodeFor(context, inst);
      assert(dstIndex != AndersNodeFactory::InvalidIndex);

      const ExtractValueInst *evi = cast<ExtractValueInst>(inst);
      const Value *aggOp = evi->getAggregateOperand();

      if (!isa<Constant>(aggOp)) {
          NodeIndex srcIndex = nodeFactory.getValueNodeFor(context, aggOp);
          if (srcIndex != AndersNodeFactory::InvalidIndex)
              constraints.emplace_back(AndersConstraint::COPY, dstIndex, srcIndex);
      }
      break;
  }
  case Instruction::InsertValue: {
      if (!typeContainsPointer(inst->getType())) break;
      NodeIndex dstIndex = nodeFactory.getValueNodeFor(context, inst);
      if (dstIndex == AndersNodeFactory::InvalidIndex) break;

      const InsertValueInst *ivi = cast<InsertValueInst>(inst);
      const Value *insertedVal = ivi->getInsertedValueOperand();
      const Value *aggOp = ivi->getAggregateOperand();
      if (insertedVal->getType()->isPointerTy() && !isa<Constant>(insertedVal)) {
          NodeIndex srcIndex = nodeFactory.getValueNodeFor(context, insertedVal);
          if (srcIndex != AndersNodeFactory::InvalidIndex)
              constraints.emplace_back(AndersConstraint::COPY, dstIndex, srcIndex);
      }
      if (!isa<Constant>(aggOp) && typeContainsPointer(aggOp->getType())) {
          NodeIndex aggIndex = nodeFactory.getValueNodeFor(context, aggOp);
          if (aggIndex != AndersNodeFactory::InvalidIndex)
              constraints.emplace_back(AndersConstraint::COPY, dstIndex, aggIndex);
      }
      break;
  }
  // We have no intention to support exception-handling in the near future
  case Instruction::LandingPad:
  case Instruction::Resume:
  // Atomic instructions can be modeled by their non-atomic counterparts. To be
  // supported
  case Instruction::AtomicRMW:
  case Instruction::AtomicCmpXchg: {
    // errs() << *inst << "\n";
    // llvm_unreachable("not implemented yet");
  }
  default: {
    if (inst->getType()->isPointerTy()) {
      // errs() << *inst << "\n";
      // llvm_unreachable("pointer-related inst not handled!");
    }
    break;
  }
  }
}

// There are two types of constraints to add for a function call:
// - ValueNode(callsite) = ReturnNode(call target)
// - ValueNode(formal arg) = ValueNode(actual arg)
void Andersen::addConstraintForCall(const Context *context, const CallBase* cs) {
  // Ignore asm calls.
  if (cs->isInlineAsm()) return;

  if (const Function *f = cs->getCalledFunction()) // Direct call
  {
    if (f->isDeclaration() || f->isIntrinsic()) // External library call
    {
      // Handle libraries separately
      if (addConstraintForExternalLibrary(context, cs, f))
        return;
      else // Unresolved library call: ruin everything!
      {
        // errs() << "Unresolved ext function: " << f->getName() << "\n";
        if (cs->getFunctionType()->isPointerTy()) {
          NodeIndex retIndex = nodeFactory.getValueNodeFor(context, cs);
          assert(retIndex != AndersNodeFactory::InvalidIndex &&
                 "Failed to find ret node!");
          NodeIndex fObj = nodeFactory.createObjectNode(context, cs);
          constraints.emplace_back(AndersConstraint::ADDR_OF, retIndex, fObj);
        }
        // for (CallBase::const_op_iterator itr = cs->arg_begin(),
        //                                      ite = cs->arg_end();
        //      itr != ite; ++itr) {
        //   Value *argVal = *itr;
        //   if (argVal->getType()->isPointerTy()) {
        //     NodeIndex argIndex = nodeFactory.getValueNodeFor(argVal);
        //     assert(argIndex != AndersNodeFactory::InvalidIndex &&
        //            "Failed to find arg node!");
        //     NodeIndex fObj = nodeFactory.createObjectNode(cs);
        //     constraints.emplace_back(AndersConstraint::ADDR_OF, argIndex, fObj);
        //   }
        // }
      }
    } else // Non-external function call
    {
      Context* calleeCtx = context->getChild(cs);
      const Type *retTy = cs->getCalledFunction()->getReturnType();
      if (retTy->isPointerTy() || typeContainsPointer(retTy)) {
          NodeIndex retIndex = nodeFactory.getValueNodeFor(context, cs);
          if (retIndex != AndersNodeFactory::InvalidIndex) {
              NodeIndex fRetIndex = nodeFactory.getReturnNodeFor(calleeCtx, f);
              if (fRetIndex != AndersNodeFactory::InvalidIndex)
                  constraints.emplace_back(AndersConstraint::COPY, retIndex, fRetIndex);
          }
      }
      // The argument constraints
      addArgumentConstraintForCall(calleeCtx, context, cs, f);
    }
  } else {
    // Indirect call are deferred until later.
    deferredFuncPointers.emplace_back(context, cs);
  }
}

void Andersen::addReturnConstraintForCall(const Context* calleeCtx,
                                          const Context* context,
                                          const CallBase *cs,
                                          const Function *f) {
  const Type *retTy = f->getReturnType();
  if (retTy->isPointerTy() || typeContainsPointer(retTy)) {
      NodeIndex retIndex = nodeFactory.getValueNodeFor(context, cs);
      if (retIndex != AndersNodeFactory::InvalidIndex) {
          NodeIndex fRetIndex = nodeFactory.getReturnNodeFor(calleeCtx, f);
          if (fRetIndex != AndersNodeFactory::InvalidIndex)
              constraints.emplace_back(AndersConstraint::COPY, retIndex, fRetIndex);
      }
  }
}

void Andersen::addArgumentConstraintForCall(const Context *calleeCtx,
                                            const Context *context,
                                            const CallBase *cs,
                                            const Function *f) {
  Function::const_arg_iterator fItr = f->arg_begin();
  CallBase::User::const_op_iterator aItr = cs->arg_begin();
  while (fItr != f->arg_end() && aItr != cs->arg_end()) {
    const Argument *formal = &*fItr;
    const Value *actual = *aItr;

    if (formal->getType()->isPointerTy()) {
      NodeIndex fIndex = nodeFactory.getValueNodeFor(calleeCtx, formal);
      assert(fIndex != AndersNodeFactory::InvalidIndex &&
             "Failed to find formal arg node!");
      if (actual->getType()->isPointerTy()) {
        NodeIndex aIndex = nodeFactory.getValueNodeFor(context, actual);
        assert(aIndex != AndersNodeFactory::InvalidIndex &&
               "Failed to find actual arg node!");


        // TODO: we need to figure out a way to make it clear when we want this shit to propagate.
        if (!isa<GetElementPtrInst>(actual)) {
          const Type *sourceType = nodeFactory.typeInfo.resolveType(actual);
          if (sourceType && sourceType->isAggregateType())
            propgateConstraintsToFields(AndersConstraint::COPY, fIndex, aIndex, sourceType, calleeCtx, context);
        }
        constraints.emplace_back(AndersConstraint::COPY, fIndex, aIndex);
      } else
        constraints.emplace_back(AndersConstraint::COPY, fIndex,
                                 nodeFactory.getUniversalPtrNode());
    }

    ++fItr, ++aItr;
  }

  // Copy all pointers passed through the varargs section to the varargs node
  if (f->getFunctionType()->isVarArg()) {
    while (aItr != cs->arg_end()) {
      const Value *actual = *aItr;
      if (actual->getType()->isPointerTy()) {
        NodeIndex aIndex = nodeFactory.getValueNodeFor(context, actual);
        assert(aIndex != AndersNodeFactory::InvalidIndex &&
               "Failed to find actual arg node!");
        NodeIndex vaIndex = nodeFactory.getVarargNodeFor(f);
        assert(vaIndex != AndersNodeFactory::InvalidIndex &&
               "Failed to find vararg node!");
        constraints.emplace_back(AndersConstraint::COPY, vaIndex, aIndex);
      }

      ++aItr;
    }
  }
}

/*
 * Creates value nodes of v with Context ctx for ALL possible fields.
 * This should only ever be used when it is not feasible to backtrack through
 * the list of potentially-used fields and remains more conservative than anything.
 *
 * ConstraintOptimize is responsible for cleaning up anything this creates that goes unused.
*/
void Andersen::createAllFields(const Value *v, const Context *ctx, const Type* curType, SmallVector<unsigned int, 4> curSet) {
  // We'll try to infer the type for opaque pointers..
  if (curType->isPointerTy())
    curType = nodeFactory.typeInfo.resolveType(v);
  if (!curType || !curType->isAggregateType()) return;

  // NOTE: There is no super type for aggregates, so I have to do this shit.
  // TODO: I don't remember exactly how vectors work in LLVM.

  if (const StructType *structTy = dyn_cast<StructType>(curType)) {
    for (unsigned int i=0; i < structTy->getNumElements(); i++) {
      SmallVector<unsigned int, 4> innerSet;
      innerSet.append(curSet);
      innerSet.push_back(i);
      nodeFactory.createValueNode(ctx, v, innerSet);

      if (structTy->getElementType(i)->isAggregateType())
        createAllFields(v, ctx, structTy->getElementType(i), innerSet);
    }
  }

  else if (const ArrayType *arrayTy = dyn_cast<ArrayType>(curType)) {
    for (unsigned int i=0; i < arrayTy->getNumElements(); i++) {
      SmallVector<unsigned int, 4> innerSet;
      innerSet.append(curSet);
      innerSet.push_back(i);
      nodeFactory.createValueNode(ctx, v, innerSet);

      if (arrayTy->getElementType()->isAggregateType())
        createAllFields(v, ctx, arrayTy->getElementType(), curSet);
    }
  }
}

/*
 * Instead of adding a constraint of some type to dst and src, this will add the constraint
 * to each known field of dst to src given some context.
 *
 * It is the responsibility of the caller to properly check if src is an aggregate type.
 *
*/
void Andersen::propgateConstraintsToFields(AndersConstraint::ConstraintType type,
    NodeIndex dstIndex, NodeIndex srcIndex, const Type *srcType, const Context* dstCtx, const Context* srcCtx) {
  assert(dstCtx != nullptr);

  const llvm::Value *src = nodeFactory.getValueForNode(srcIndex);
  const llvm::Value *dst = nodeFactory.getValueForNode(dstIndex);
  if (!src || !dst) return;

  // srcCtx is optional
  if (!srcCtx) srcCtx = dstCtx;

  // Lookup the associated fields that we know about already:
  auto fields = nodeFactory.lookupFields(AndersNode::VALUE_NODE, srcCtx, src);

  // If our destination is a parameter, there's a strong possibility that fields
  // is empty when it shouldn't be. This is because the source may not yet have
  // any fields that have been propagated through the node map.
  //
  // Besides trying to figure out what fields we may need for this parameter,
  // I instead opt to conservatively assume lookupFields returns ALL possible fields.
  // It is very important to note that the unused fields will be optimized out prior to solving.
  if (fields.size() == 1 && fields[0].empty()) {
    createAllFields(src, srcCtx, srcType, {});
    fields = nodeFactory.lookupFields(AndersNode::VALUE_NODE, srcCtx, src);
  }

  for (const auto &fieldSet : fields) {
    NodeIndex fieldIdx = nodeFactory.getValueNodeFor(srcCtx, src, fieldSet);
    assert(fieldIdx != AndersNodeFactory::InvalidIndex && "fieldIdx does not exist");

    // Now, we can check if destIndex at this fieldSet exists:
    NodeIndex dstIndex = nodeFactory.getValueNodeFor(dstCtx, dst, fieldSet);

    if (dstIndex == AndersNodeFactory::InvalidIndex)
      // Not abnormal for it to not exist.
      dstIndex = nodeFactory.createValueNode(dstCtx, dst, fieldSet);
    constraints.emplace_back(type, dstIndex, fieldIdx);
  }
}

Context* Andersen::getGlobalCtx() const {
  return _globalCtx;
}
