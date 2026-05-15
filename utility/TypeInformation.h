#pragma once

#include <llvm/ADT/SmallPtrSet.h>
#include <llvm/ADT/DenseMap.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/Value.h>
#include <llvm/IR/Type.h>
using namespace llvm;

typedef SmallPtrSet<Type*, 4> TypeSet;

class TypeInformation {
public:
    const Value* traceOrigin(const Value*);
    const Type* resolveType(const Value*);

private:
    DenseMap<const Value*, TypeSet> _cache;
};
