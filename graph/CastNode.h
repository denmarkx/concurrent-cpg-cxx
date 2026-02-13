#pragma once

#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Support/TypeName.h"
#include "graph/GraphManager.h"
#include "Node.h"
#include <utility>

// https://llvm.org/docs/LangRef.html#conversion-operations
// <result> = trunc <ty> <value> to <ty2>
// <result> = zext <ty> <value> to <ty2>
// <result> = sext <ty> <value> to <ty2>
// <result> = fptoui <ty> <value> to <ty2>
// <result> = fptosi <ty> <value> to <ty2>
// <result> = uitofp <ty> <value> to <ty2>
// <result> = sitofp <ty> <value> to <ty2>
// <result> = ptrtoint <ty> <value> to <ty2>
// <result> = ptrtoaddr <ty> <value> to <ty2>
// <result> = inttoptr <ty> <value> to <ty2>
// <result> = bitcast <ty> <value> to <ty2>
// <result> = fptrunc [fast-math flags]* <ty> <value> to <ty2>
// <result> = fpext [fast-math flags]* <ty> <value> to <ty2>
// <result> = addrspacecast <pty> <ptrval> to <pty2>
class CastNode : public Node {
public:
    CastNode(const CastInst* I) : Node(I, "CastNode") {}

    static CastNode* make(const CastInst *I) {
        CastNode *node = new CastNode(I);

        Node *srcNode = GraphManager::get()->getNodeFromOperand(I, 0);

        // TODO: could probably add another label in addition to castnode
        //  that says what kind of operation this is
        node->_edges.push_back(pair("SOURCE", srcNode));

        // I have a hard time reasoning about an explicit "type" node.
        // There doesn't seem to be a specific use-case for these for us.
        std::string typeName;
        raw_string_ostream stream(typeName);
        I->getDestTy()->print(stream);
        node->addProperty("castType", typeName);
        return node;
    }
};
