#include "NodeFactory.h"

#include "llvm/ADT/SmallVector.h"
#include "llvm/Analysis/ValueTracking.h"
#include "llvm/IR/Constants.h"
#include "llvm/Support/raw_ostream.h"

#include <limits>

using namespace llvm;

const unsigned AndersNodeFactory::InvalidIndex =
    std::numeric_limits<unsigned int>::max();

AndersNodeFactory::AndersNodeFactory() {
  // Note that we can't use std::vector::emplace_back() here because
  // AndersNode's constructors are private hence std::vector cannot see it

  // Node #0 is always the universal ptr: the ptr that we don't know anything
  // about.
  nodes.push_back(AndersNode(AndersNode::VALUE_NODE, 0));
  // Node #0 is always the universal obj: the obj that we don't know anything
  // about.
  nodes.push_back(AndersNode(AndersNode::OBJ_NODE, 1));
  // Node #2 always represents the null pointer.
  nodes.push_back(AndersNode(AndersNode::VALUE_NODE, 2));
  // Node #3 is the object that null pointer points to
  nodes.push_back(AndersNode(AndersNode::OBJ_NODE, 3));

  assert(nodes.size() == 4);
}

NodeIndex AndersNodeFactory::createValueNode(const CallBase *cs, const Value *val) {
  // errs() << "inserting " << *val << "\n";
  // errs() << "   callsite = ";
  // if (cs)
    // errs() << *cs << "\n\n";
  // else
    // errs() << "null\n\n";
  unsigned nextIdx = nodes.size();
  nodes.push_back(AndersNode(AndersNode::VALUE_NODE, nextIdx, val));
  if (val != nullptr) {
    assert(!valueNodeMap.count({cs, val}) &&
           "Trying to insert two mappings to revValueNodeMap!");
    valueNodeMap[{cs, val}] = nextIdx;
  }

  return nextIdx;
}

NodeIndex AndersNodeFactory::createObjectNode(const CallBase *cs, const Value *val) {
  unsigned nextIdx = nodes.size();
  nodes.push_back(AndersNode(AndersNode::OBJ_NODE, nextIdx, val));
  if (val != nullptr) {
    if (objNodeMap.contains({cs, val})) return objNodeMap[{cs, val}];
    assert(!objNodeMap.count({cs, val}) &&
           "Trying to insert two mappings to revObjNodeMap!");
    objNodeMap[{cs, val}] = nextIdx;
  }

  return nextIdx;
}

// TODO: this is imprecise for functions that have >1 return stmt.
NodeIndex AndersNodeFactory::createReturnNode(const llvm::CallBase *cs, const llvm::Function *f) {
  unsigned nextIdx = nodes.size();
  nodes.push_back(AndersNode(AndersNode::VALUE_NODE, nextIdx, f));

  assert(!returnMap.count({cs, f}) && "Trying to insert two mappings to returnMap!");
  // errs() << "createReturnNode [" << nextIdx << "](\n" << "  cs = " << *cs << "\n  func = " << f->getName() << "\n\n";
  returnMap[{cs, f}] = nextIdx;

  return nextIdx;
}

NodeIndex AndersNodeFactory::createVarargNode(const llvm::Function *f) {
  unsigned nextIdx = nodes.size();
  nodes.push_back(AndersNode(AndersNode::OBJ_NODE, nextIdx, f));

  assert(!varargMap.count(f) && "Trying to insert two mappings to varargMap!");
  varargMap[f] = nextIdx;

  return nextIdx;
}

NodeIndex AndersNodeFactory::getValueNodeFor(const CallBase *cs, const Value *val) {
  if (const Constant *c = dyn_cast<Constant>(val)) {
    if (!isa<GlobalValue>(c))
      return getValueNodeForConstant(c);
    else
      cs = nullptr;
  }

  auto itr = valueNodeMap.find({cs, val});
  if (itr == valueNodeMap.end())
    return InvalidIndex;
  else
    return itr->second;
}

NodeIndex AndersNodeFactory::getValueNodeForConstant(const llvm::Constant *c) {
  assert(isa<PointerType>(c->getType()) && "Not a constant pointer!");

  if (isa<ConstantPointerNull>(c) || isa<UndefValue>(c))
    return getNullPtrNode();
  else if (const GlobalValue *gv = dyn_cast<GlobalValue>(c))
    return getValueNodeFor(nullptr, gv);
  else if (const ConstantExpr *ce = dyn_cast<ConstantExpr>(c)) {
    switch (ce->getOpcode()) {
    // Pointer to any field within a struct is treated as a pointer to the first
    // field
    case Instruction::GetElementPtr:
      return getValueNodeFor(nullptr, c->getOperand(0));
    case Instruction::IntToPtr:
    case Instruction::PtrToInt:
      return createValueNode(nullptr);
    case Instruction::BitCast:
      return getValueNodeForConstant(ce->getOperand(0));
    default:
      errs() << "Constant Expr not yet handled: " << *ce << "\n";
      llvm_unreachable(0);
    }
  }

  llvm_unreachable("Unknown constant pointer!");
  return InvalidIndex;
}

NodeIndex AndersNodeFactory::getObjectNodeFor(const CallBase *cs, const Value *val) const {
  if (const Constant *c = dyn_cast<Constant>(val))
    if (!isa<GlobalValue>(c))
      return getObjectNodeForConstant(cs, c);

  auto itr = objNodeMap.find({cs, val});
  if (itr == objNodeMap.end())
    return InvalidIndex;
  else
    return itr->second;
}

NodeIndex
AndersNodeFactory::getObjectNodeForConstant(const CallBase* cs, const llvm::Constant *c) const {
  assert(isa<PointerType>(c->getType()) && "Not a constant pointer!");

  if (isa<ConstantPointerNull>(c))
    return getNullObjectNode();
  else if (const GlobalValue *gv = dyn_cast<GlobalValue>(c))
    return getObjectNodeFor(cs, gv);
  else if (const ConstantExpr *ce = dyn_cast<ConstantExpr>(c)) {
    switch (ce->getOpcode()) {
    // Pointer to any field within a struct is treated as a pointer to the first
    // field
    case Instruction::GetElementPtr:
      return getObjectNodeForConstant(cs, ce->getOperand(0));
    case Instruction::IntToPtr:
    case Instruction::PtrToInt:
      return getUniversalObjNode();
    case Instruction::BitCast:
      return getObjectNodeForConstant(cs, ce->getOperand(0));
    default:
      errs() << "Constant Expr not yet handled: " << *ce << "\n";
      llvm_unreachable(0);
    }
  }

  llvm_unreachable("Unknown constant pointer!");
  return InvalidIndex;
}

NodeIndex AndersNodeFactory::getReturnNodeFor(const llvm::CallBase *cs, const llvm::Function *f) const {
  // errs() << "getReturnNodeFor\n" << "  cs = " << *cs << "\n  func = " << f->getName() << "\n\n";
  // errs() << cs << ", " << f << "\n";

  // errs() << "returnMap[keys]:\n";
  // for (const auto &[k, v] : returnMap) {
    // errs() << "  key pair: \n" << "    cs:[" << k.first << "] " << *k.first << "\n    fn[" << k.second << "]: " << k.second->getName() << "\n";
  // }
  auto itr = returnMap.find({cs, f});
  if (itr == returnMap.end())
    return InvalidIndex;
  else {
    return itr->second;
  }
}

NodeIndex AndersNodeFactory::getVarargNodeFor(const llvm::Function *f) const {
  auto itr = varargMap.find(f);
  if (itr == varargMap.end())
    return InvalidIndex;
  else
    return itr->second;
}

void AndersNodeFactory::mergeNode(NodeIndex n0, NodeIndex n1) {
  assert(n0 < nodes.size() && n1 < nodes.size());
  nodes[n1].mergeTarget = n0;
}

NodeIndex AndersNodeFactory::getMergeTarget(NodeIndex n) {
  assert(n < nodes.size());
  NodeIndex ret = nodes[n].mergeTarget;
  if (ret != n) {
    std::vector<NodeIndex> path(1, n);
    while (ret != nodes[ret].mergeTarget) {
      path.push_back(ret);
      ret = nodes[ret].mergeTarget;
    }
    for (auto idx : path)
      nodes[idx].mergeTarget = ret;
  }
  assert(ret < nodes.size());
  return ret;
}

NodeIndex AndersNodeFactory::getMergeTarget(NodeIndex n) const {
  assert(n < nodes.size());
  NodeIndex ret = nodes[n].mergeTarget;
  while (ret != nodes[ret].mergeTarget)
    ret = nodes[ret].mergeTarget;
  return ret;
}

void AndersNodeFactory::getAllocSites(
    std::vector<std::pair<const CallBase*, const llvm::Value *>> &allocSites) const {
  allocSites.clear();
  allocSites.reserve(objNodeMap.size());
  for (auto const &mapping : objNodeMap)
    allocSites.push_back(mapping.first);
}

void AndersNodeFactory::dumpNode(NodeIndex idx) const {
  const AndersNode &n = nodes.at(idx);
  if (n.type == AndersNode::VALUE_NODE)
    errs() << "[V ";
  else if (n.type == AndersNode::OBJ_NODE)
    errs() << "[O ";
  else
    assert(false && "Wrong type number!");
  errs() << "#" << n.idx << "]";
}

void AndersNodeFactory::dumpNodeInfo() const {
  errs() << "\n----- Print AndersNodeFactory Info -----\n";
  for (auto const &node : nodes) {
    dumpNode(node.getIndex());
    errs() << ", val = ";
    const Value *val = node.getValue();
    if (val == nullptr)
      errs() << "nullptr";
    else if (isa<Function>(val))
      errs() << "  <func> " << val->getName();
    else
      errs() << *val;
    errs() << "\n";
  }

  errs() << "\nReturn Map:\n";
  for (auto const &mapping : returnMap)
    errs() << mapping.first.second->getName() << "  -->>  [Node #" << mapping.second
           << "]\n";
  errs() << "\nVararg Map:\n";
  for (auto const &mapping : varargMap)
    errs() << mapping.first->getName() << "  -->>  [Node #" << mapping.second
           << "]\n";
  errs() << "----- End of Print -----\n";
}

void AndersNodeFactory::dumpRepInfo() const {
  errs() << "\n----- Print Node Merge Info -----\n";
  for (NodeIndex i = 0, e = nodes.size(); i < e; ++i) {
    NodeIndex rep = getMergeTarget(i);
    if (rep != i)
      errs() << i << " -> " << rep << "\n";
  }
  errs() << "----- End of Print -----\n";
}
