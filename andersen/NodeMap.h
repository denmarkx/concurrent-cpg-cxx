#pragma once

struct Context;

#include "llvm/IR/Instructions.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/Constants.h"
#include "llvm/ADT/DenseMap.h"
using namespace llvm;

typedef llvm::SmallVector<unsigned int, 4> FieldType;

template<>
struct DenseMapInfo<FieldType> {
    static inline FieldType getEmptyKey() {
        return FieldType{~0u};
    }

    static inline FieldType getTombstoneKey() {
        return FieldType{~0u - 1};
    }

    static unsigned getHashValue(const FieldType &field) {
        return hash_combine_range(field.begin(), field.end());
    }

    static bool isEqual(const FieldType &lhs, const FieldType &rhs) {
        return lhs == rhs;
    }
};

class NodeMap {
public:
    using NodeIndex = unsigned int;
    using NodeMapType = llvm::DenseMap<
        std::tuple<const Context*, const llvm::Value*, FieldType>, NodeIndex>;

    NodeIndex insert(const Context *ctx, const llvm::Value *val, FieldType fields) {
        unsigned int nodeIndex = size();

        fields = fields.empty() ? getFields(ctx, val) : fields;

        _map[{ctx, val, fields}] = nodeIndex;
        return nodeIndex;
    }

    NodeIndex get(const Context *ctx, const llvm::Value *val) const {
        return _map.lookup({ctx, val, getFields(ctx, val)});
    }

    /*
     * Returns the associated nodeIdx or InvalidIndex.
    */
    NodeIndex find(const Context *ctx, const llvm::Value *val, FieldType fields) const {
        fields = fields.empty() ? getFields(ctx, val) : fields;
        auto itr = _map.find({ctx, val, fields});
        if (itr == _map.end())
            return InvalidIndex;
        return itr->getSecond();
    }

    bool contains(const Context *ctx, const llvm::Value *val, FieldType fields) const {
        fields = fields.empty() ? getFields(ctx, val) : fields;
        return _map.contains({ctx, val, fields});
    }

    NodeIndex& operator[](std::pair<const Context*, const llvm::Value *> value) {
        return _map[{value.first, value.second, getFields(value.first, value.second)}];
    }

    NodeIndex& operator[](std::tuple<const Context*, const llvm::Value *, FieldType> value) {
        const Context *ctx = std::get<0>(value);
        const llvm::Value *val = std::get<1>(value);
        FieldType fields = std::get<2>(value);

        fields = fields.empty() ? getFields(ctx, val) : fields;
        return _map[{ctx, val, fields}];
    }

    void erase(const Context *ctx, const llvm::Value *val) {
        _map.erase({ctx, val, getFields(ctx, val)});
    }

    const unsigned int size() const { return _map.size(); }
    NodeMapType::const_iterator begin() const { return _map.begin(); }
    NodeMapType::const_iterator end() const { return _map.end(); }

public:
    std::vector<const Context*> getAssociatedContexts(NodeIndex index) const {
        std::vector<const Context*> contexts;
        for (const auto &[k, v] : _map) {
            if (v == index)
                contexts.push_back(std::get<0>(k));
        }
        return contexts;
    }

    std::vector<const Context*> getAssociatedContexts(const llvm::Value *v) const {
        std::vector<const Context*> contexts;
        for (const auto &[k, _] : _map) {
            if (std::get<1>(k) == v)
                contexts.push_back(std::get<0>(k));
        }
        return contexts;
    }

    /*
     * Attempts to resolve the indices that this value uses.
    */
    FieldType getFields(const Context *ctx, const llvm::Value *value) const {
        if (!value) return {};

        FieldType fields;

        // Global Variable:
        if (const GlobalVariable *global = dyn_cast<GlobalVariable>(value)) {
            if (!global->hasInitializer()) return {};

            const Constant *initializer = global->getInitializer();

            // for an aggregate x, &x = &x[0]
            if (initializer->getType()->isAggregateType())
                return {0};
        }

        // Const Expression:
        else if (const ConstantExpr *cExpr = dyn_cast<ConstantExpr>(value))
            return getFields(ctx, cExpr->getAsInstruction());

        // GEP: I should note that this doesn't support the first index (ptr offset).
        else if (const GetElementPtrInst *gep = dyn_cast<GetElementPtrInst>(value)) {
            fields.reserve(gep->getNumIndices());

            for (unsigned int i=2; i < gep->getNumOperands(); i++) {
                if (const ConstantInt *index = dyn_cast<ConstantInt>(gep->getOperand(i))) {
                    fields.push_back(index->getZExtValue());
                    continue;
                }

                // Another thing here is that this may be an actual SSA value.
                // ..in which case we can't reliably know the value.
                // ..TODO: I don't actually know what to do here.
            }
        }

        // Parameter:
        else if (const Argument *param = dyn_cast<Argument>(value)) {
            // TODO: sret will show the aggregate type (param->getParamStructRetType)
            // TODO: DWARF metadata will send me in circles, but that is what should be checked next.

            // The last actual thing I can think of to try is walking the users to find a GEP:
            const llvm::Value *candidate = findAggregateFromParam(ctx, ctx, param);
            if (candidate) {
                errs() << "param = " << *param << "\n";
                errs() << "candidate = " << *candidate << "\n";
                auto f = getFields(ctx, candidate);
                printFields(f);

            }
            return getFields(ctx, candidate);
        }
        return fields;
    }

private:
    const llvm::Value* findAggregateFromParam(const Context* startCtx, 
        const Context* ctx, const llvm::Value *param) const;

    void printFields(FieldType &fields) const {
        errs() << "fields = [";
        for (const auto &v : fields) {
            errs() << v << ", ";
        }
        errs() << "]\n";
    }

private:
    NodeMapType _map;

    static constexpr unsigned int InvalidIndex = ~0u;
};
