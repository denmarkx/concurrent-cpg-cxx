#pragma once

#include "llvm/IR/Instructions.h"
#include "llvm/IR/InstrTypes.h"

#include "APIHelper.h"
#include "Node.h"
#include "graph/GraphManager.h"
#include <utility>

// https://llvm.org/docs/LangRef.html#icmp-instruction
// <result> = icmp <cond> <ty> <op1>, <op2>
// <result> = icmp samesign <cond> <ty> <op1>, <op2>
class ICompareNode : public Node {
public:
    ICompareNode(const ICmpInst* I) : Node(I, "Compare") {}

    static ICompareNode* make(const ICmpInst *I) {
        ICompareNode *node = new ICompareNode(I);

        Node *lhs = GraphManager::get()->getNodeFromOperand(I, 0);
        Node *rhs = GraphManager::get()->getNodeFromOperand(I, 1);

        node->_edges.push_back(pair("LHS", lhs));
        node->_edges.push_back(pair("RHS", rhs));
        return node;
    }

    static inline std::string getName(const ICmpInst *I) {
        std::string name = I->getPredicateName(I->getPredicate()).str();
        if (name == "eq") name = "==";
        else if (name == "ne") name = "!=";
        else if (name == "ugt" || name == "sgt") name = ">";
        else if (name == "ult" || name == "slt") name = "<";
        else if (name == "uge" || name == "sge") name = ">=";
        else if (name == "ule" || name == "sle") name = "<=";
        return name;
    }
};
