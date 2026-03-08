#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include "doctest.h"

#include "andersen/NodeFactory.h"
#include "andersen/PtsSet.h"
#include "andersen/SparseBitVectorGraph.h"
#include "llvm/IR/Module.h"
#include "llvm/AsmParser/Parser.h"
#include "llvm/Support/SourceMgr.h"

using namespace llvm;

TEST_CASE("Andersen[PtsSetTest]") {
    // CHECK(factorial(1) == 1);
    AndersPtsSet pSet1, pSet2;
    CHECK(pSet1.isEmpty());
    CHECK(pSet2.isEmpty());

    CHECK(pSet1.insert(5));
    CHECK(pSet2.insert(10));
    CHECK(pSet1.has(5));
    CHECK_FALSE(pSet1.has(10));
    CHECK_FALSE(pSet2.has(5));
    CHECK(pSet2.has(10));
    CHECK_FALSE(pSet1.intersectWith(pSet2));

    CHECK(pSet1.insert(15));
    CHECK(pSet2.insert(15));
    CHECK_FALSE(pSet2.insert(10));
    CHECK(pSet1.intersectWith(pSet2));

    CHECK(pSet1.unionWith(pSet2));
    CHECK(pSet1.contains(pSet2));
    CHECK_EQ(pSet1.getSize(), 3u);
}

TEST_CASE("Andersen[SparseBitVectorGraphTest]") {
    SparseBitVectorGraph graph;

    auto node1 = graph.getOrInsertNode(1);
    auto node2 = graph.getOrInsertNode(2);
    auto node3 = graph.getOrInsertNode(3);
    auto node4 = graph.getOrInsertNode(4);
    auto node5 = graph.getOrInsertNode(5);
    auto node6 = graph.getOrInsertNode(6);

    CHECK_EQ(graph.getSize(), 6u);
    CHECK(graph.getNodeWithIndex(0) == nullptr);
    REQUIRE(graph.getNodeWithIndex(1) != nullptr);
    REQUIRE(graph.getNodeWithIndex(2) != nullptr);
    REQUIRE(graph.getNodeWithIndex(3) != nullptr);
    REQUIRE(graph.getNodeWithIndex(4) != nullptr);
    REQUIRE(graph.getNodeWithIndex(5) != nullptr);
    REQUIRE(graph.getNodeWithIndex(6) != nullptr);
    CHECK(graph.getNodeWithIndex(7) == nullptr);
    CHECK_EQ(node1->getNodeIndex(), 1u);
    CHECK_EQ(node2->getNodeIndex(), 2u);
    CHECK_EQ(node3->getNodeIndex(), 3u);
    CHECK_EQ(node4->getNodeIndex(), 4u);
    CHECK_EQ(node5->getNodeIndex(), 5u);
    CHECK_EQ(node6->getNodeIndex(), 6u);

    //        |-> 3 \
    // 1 -> 2 |      -> 5 -> 6
    //        |-> 4 /
    graph.insertEdge(1, 2);
    graph.insertEdge(2, 3);
    graph.insertEdge(2, 4);
    graph.insertEdge(3, 5);
    graph.insertEdge(4, 5);
    graph.insertEdge(5, 6);

    CHECK_EQ(node1->succ_getSize(), 1u);
    CHECK_EQ(node2->succ_getSize(), 2u);
    CHECK_EQ(node3->succ_getSize(), 1u);
    CHECK_EQ(node4->succ_getSize(), 1u);
    CHECK_EQ(node5->succ_getSize(), 1u);
    CHECK_EQ(node6->succ_getSize(), 0u);

    graph.mergeEdge(4, 5);
    CHECK_EQ(node4->succ_getSize(), 2u);
    graph.mergeEdge(5, 6);
    CHECK_EQ(node5->succ_getSize(), 1u);
    graph.mergeEdge(3, 2);
    CHECK_EQ(node3->succ_getSize(), 3u);
}

TEST_CASE("Andersen[NodeMergeTest]") {
    AndersNodeFactory factory;

    auto n0 = factory.createValueNode();
    auto n1 = factory.createValueNode();
    auto n2 = factory.createValueNode();
    auto n3 = factory.createValueNode();
    auto n4 = factory.createValueNode();

    factory.mergeNode(n0, n1);
    factory.mergeNode(n2, n3);
    CHECK_EQ(factory.getMergeTarget(n0), factory.getMergeTarget(n1));
    CHECK_EQ(factory.getMergeTarget(n2), factory.getMergeTarget(n3));

    factory.mergeNode(n4, n0);
    CHECK_EQ(factory.getMergeTarget(n4), factory.getMergeTarget(n1));

    factory.mergeNode(n2, n4);
    CHECK_EQ(factory.getMergeTarget(n1), factory.getMergeTarget(n2));
    CHECK_EQ(factory.getMergeTarget(n3), factory.getMergeTarget(n4));
}

// This fixture assists in setting up the pass environments
class AndersPassTest {
public:
    LLVMContext ctx;
    std::unique_ptr<Module> module;

    Module* ParseAssembly(const char* Assembly) {
        SMDiagnostic Error;
        module = parseAssemblyString(Assembly, Error, ctx);

        std::string errMsg;
        raw_string_ostream os(errMsg);
        Error.print("", os);

        if (!module) {
            // A failure here means that the test itself is buggy.
            report_fatal_error(os.str().c_str());
        }

        return module.get();
    }
};

TEST_CASE("Andersen[NodeFactoryTest]") {
    AndersPassTest pass;
    auto module = pass.ParseAssembly("define i32 @main() {\n"
                                "bb:\n"
                                "  %x = alloca i32, align 4\n"
                                "  %y = alloca i32, align 4\n"
                                "  %z = alloca i32, align 4\n"
                                "  %w = alloca i32*, align 8\n"
                                "  ret i32 0\n"
                                "}\n");

    auto f = module->begin();
    auto bb = f->begin();
    auto itr = bb->begin();
    auto x = &*itr;
    auto y = &*++itr;
    auto z = &*++itr;
    auto w = &*++itr;

    AndersNodeFactory factory;
    auto vx = factory.createValueNode(x);
    auto vy = factory.createValueNode(y);
    auto oz = factory.createObjectNode(z);
    auto ow = factory.createObjectNode(w);

    CHECK_EQ(x, factory.getValueForNode(vx));
    CHECK_EQ(y, factory.getValueForNode(vy));
    CHECK(factory.isObjectNode(oz));
    CHECK(factory.isObjectNode(ow));
    CHECK_EQ(factory.getValueNodeFor(x), vx);
    CHECK_EQ(factory.getValueNodeFor(y), vy);
    CHECK_EQ(factory.getValueNodeFor(z), AndersNodeFactory::InvalidIndex);
    CHECK_EQ(factory.getValueNodeFor(w), AndersNodeFactory::InvalidIndex);
    CHECK_EQ(factory.getObjectNodeFor(z), oz);
}

