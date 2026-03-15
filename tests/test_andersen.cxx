#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include "doctest.h"

#include "andersen/Andersen.h"
#include "andersen/AndersenAA.h"
#include "andersen/NodeFactory.h"
#include "andersen/PtsSet.h"
#include "andersen/SparseBitVectorGraph.h"

#include "llvm/IR/Module.h"
#include "llvm/AsmParser/Parser.h"
#include "llvm/Support/SourceMgr.h"

#include <memory>

using namespace llvm;

/*TEST_CASE("Andersen[PtsSetTest]") {
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

static std::unique_ptr<Andersen> runAndersen(llvm::Module &M) {
  return std::make_unique<Andersen>(M);
}

static const Value *findInstr(const Function *F, const std::string &name) {
    for (auto &BB : *F)
        for (auto &I : BB)
            if (I.getName() == name)
                return &I;
    return nullptr;
}

static bool ptsContains(const std::vector<const Value*> &pts,
                         const Value *v) {
    return std::find(pts.begin(), pts.end(), v) != pts.end();
}

TEST_CASE("Andersen[Alloca]") {
    AndersPassTest pass;
    auto module = pass.ParseAssembly("define i32 @main() {\n"
        " %x = alloca i32, align 4\n"
        " %p = alloca ptr, align 8\n"
        " store ptr %x, ptr %p, align 8\n"
        " %q = load ptr, ptr %p, align 8\n"
        " ret i32 0\n"
        "}\n");

    auto anders = runAndersen(*module);

    auto f = module->getFunction("main");
    auto *xAlloca = findInstr(f, "x");
    auto *qLoad = findInstr(f, "q");

    CHECK_NE(xAlloca, nullptr);
    CHECK_NE(qLoad, nullptr);

    std::vector<const Value*> pts;
    anders->getPointsToSet(qLoad, pts);
    CHECK_EQ(pts.size(), 1u);
    CHECK_EQ(pts[0], xAlloca);
}

TEST_CASE("Andersen[UnrelatedAlloca_NoAlias]") {
    AndersPassTest pass;
    auto module = pass.ParseAssembly(
        "define void @test() {\n"
        "  %x = alloca i32, align 4\n"
        "  %y = alloca i32, align 4\n"
        "  ret void\n"
        "}\n");

    auto anders = runAndersen(*module);
    const Function *F = module->getFunction("test");

    const Value *xAlloca = findInstr(F, "x");
    const Value *yAlloca = findInstr(F, "y");
    REQUIRE(xAlloca != nullptr);
    REQUIRE(yAlloca != nullptr);

    std::vector<const Value*> xPts, yPts;
    anders->getPointsToSet(xAlloca, xPts);
    anders->getPointsToSet(yAlloca, yPts);
    CHECK_FALSE(ptsContains(xPts, yAlloca));
    CHECK_FALSE(ptsContains(yPts, xAlloca));
}

TEST_CASE("Andersen[DoubleIndirection]") {
    AndersPassTest pass;
    auto module = pass.ParseAssembly("define i32 @main() {\n"
        " %x = alloca i32, align 4\n"
        " %p = alloca ptr, align 8\n"
        " %pp = alloca ptr, align 8\n"
        " store ptr %x, ptr %p\n"
        " store ptr %p, ptr %pp\n"
        " %q = load ptr, ptr %pp\n"
        " %r = load ptr, ptr %q\n"
        " ret i32 0\n"
        "}\n");

    auto anders = runAndersen(*module);

    auto f = module->getFunction("main");
    auto *xAlloca = findInstr(f, "x");
    auto *pAlloca = findInstr(f, "p");
    auto *qLoad = findInstr(f, "q");
    auto *rLoad = findInstr(f, "r");

    CHECK_NE(xAlloca, nullptr);
    CHECK_NE(pAlloca, nullptr);
    CHECK_NE(qLoad, nullptr);
    CHECK_NE(rLoad, nullptr);

    std::vector<const Value*> qPts;
    anders->getPointsToSet(qLoad, qPts);
    CHECK_EQ(qPts.size(), 1u);
    CHECK_EQ(qPts[0], pAlloca);

    std::vector<const Value*> rPts;
    anders->getPointsToSet(rLoad, rPts);
    CHECK_EQ(rPts.size(), 1u);
    CHECK_EQ(rPts[0], xAlloca);
}

TEST_CASE("Andersen[StoreIndirection]") {
    AndersPassTest pass;
    auto module = pass.ParseAssembly("define i32 @main() {\n"
        " %x = alloca i32, align 4\n"
        " %p = alloca ptr, align 8\n"
        " %pp = alloca ptr, align 8\n"
        " store ptr %p, ptr %pp\n"
        " store ptr %x, ptr %p\n"
        " %q = load ptr, ptr %pp\n"
        " %r = load ptr, ptr %q\n"
        " ret i32 0\n"
        "}\n");

    auto anders = runAndersen(*module);

    auto f = module->getFunction("main");
    auto *xAlloca = findInstr(f, "x");
    auto *rLoad = findInstr(f, "r");

    CHECK_NE(xAlloca, nullptr);
    CHECK_NE(rLoad, nullptr);

    std::vector<const Value*> pts;
    anders->getPointsToSet(rLoad, pts);
    CHECK_EQ(pts.size(), 1u);
    CHECK_EQ(pts[0], xAlloca);
}

TEST_CASE("Andersen[GEP_FieldInsensitivity]") {
    AndersPassTest pass;
    auto module = pass.ParseAssembly(
        "%S = type { ptr, ptr }\n"
        "define i32 @main() {\n"
        " %s = alloca %S, align 8\n"
        " %x = alloca i32, align 4\n"
        " %f0  = getelementptr inbounds %S, ptr %s, i32 0, i32 0\n"
        " store ptr %x, ptr %f0\n"
        " %gep = getelementptr inbounds %S, ptr %s, i32 0, i32 0\n"
        " %v = load ptr, ptr %gep\n"
        " ret i32 0\n"
        "}\n");

    auto anders = runAndersen(*module);

    auto f = module->getFunction("main");

    const Value *xAlloca = findInstr(f, "x");
    const Value *vLoad   = findInstr(f, "v");

    CHECK_NE(xAlloca, nullptr);
    CHECK_NE(vLoad, nullptr);

    std::vector<const Value*> pts;
    anders->getPointsToSet(vLoad, pts);
    CHECK(ptsContains(pts, xAlloca));
}

TEST_CASE("Andersen[Call_ReturnValue]") {
    AndersPassTest pass;
    auto module = pass.ParseAssembly(
        "define ptr @callee(ptr %arg) {\n"
        "  ret ptr %arg\n"
        "}\n"
        "define void @test() {\n"
        "  %x   = alloca i32, align 4\n"
        "  %ret = call ptr @callee(ptr %x)\n"
        "  ret void\n"
        "}\n");

    auto anders = runAndersen(*module);
    const Function *F = module->getFunction("test");

    const Value *xAlloca = findInstr(F, "x");
    const Value *retVal  = findInstr(F, "ret");
    REQUIRE(xAlloca != nullptr);
    REQUIRE(retVal  != nullptr);

    std::vector<const Value*> pts;
    anders->getPointsToSet(retVal, pts);
    CHECK(ptsContains(pts, xAlloca));
}

TEST_CASE("Andersen[NullPtr_NoAlias]") {
    AndersPassTest pass;
    auto module = pass.ParseAssembly(
        "define void @test() {\n"
        "  %x = alloca i32, align 4\n"
        "  %p = alloca ptr, align 8\n"
        "  store ptr null, ptr %p\n"
        "  %q = load ptr, ptr %p\n"
        "  ret void\n"
        "}\n");

    auto anders = runAndersen(*module);
    const Function *F = module->getFunction("test");

    const Value *xAlloca = findInstr(F, "x");
    const Value *qLoad   = findInstr(F, "q");
    REQUIRE(xAlloca != nullptr);
    REQUIRE(qLoad   != nullptr);

    std::vector<const Value*> pts;
    anders->getPointsToSet(qLoad, pts);
    CHECK_FALSE(ptsContains(pts, xAlloca));
}

TEST_CASE("Andersen[HCD_LCD_CYCLE]") {
    AndersPassTest pass;
    auto module = pass.ParseAssembly(
        "define void @test() {\n"
        "  %a = alloca ptr, align 8\n"
        "  %b = alloca ptr, align 8\n"
        "  store ptr %b, ptr %a\n"
        "  store ptr %a, ptr %b\n"
        "  %p = load ptr, ptr %a\n"
        "  %q = load ptr, ptr %p\n"
        "  ret void\n"
        "}\n");

    REQUIRE_NOTHROW(runAndersen(*module));
}

TEST_CASE("Andersen[IndirectCall_Via_Global_Fptr]") {
    AndersPassTest pass;
    auto module = pass.ParseAssembly(
        "define void @target(ptr %p) {\n"
        "  ret void\n"
        "}\n"
        "@fptr_slot = global ptr @target, align 8\n"
        "define void @test(ptr %arg) {\n"
        "  %fptr = load ptr, ptr @fptr_slot\n"
        "  call void %fptr(ptr %arg)\n"
        "  ret void\n"
        "}\n");

    auto anders = runAndersen(*module);
    const Function *F = module->getFunction("test");

    const Value *fptrLoad = findInstr(F, "fptr");
    REQUIRE(fptrLoad != nullptr);

    std::vector<const Value*> pts;
    anders->getPointsToSet(fptrLoad, pts);

    const Function *target = module->getFunction("target");
    CHECK(ptsContains(pts, target));
    CHECK_EQ(pts.size(), 1u);
}

TEST_CASE("Andersen[Phi_Merge]") {
    AndersPassTest pass;
    auto module = pass.ParseAssembly(
        "define void @test(i1 %cond) {\n"
        "entry:\n"
        "  %x = alloca i32, align 4\n"
        "  %y = alloca i32, align 4\n"
        "  br i1 %cond, label %left, label %right\n"
        "left:\n"
        "  br label %merge\n"
        "right:\n"
        "  br label %merge\n"
        "merge:\n"
        "  %p = phi ptr [ %x, %left ], [ %y, %right ]\n"
        "  ret void\n"
        "}\n");

    auto anders = runAndersen(*module);
    const Function *F = module->getFunction("test");

    const Value *xAlloca = findInstr(F, "x");
    const Value *yAlloca = findInstr(F, "y");
    const Value *phiVal  = findInstr(F, "p");
    REQUIRE(xAlloca != nullptr);
    REQUIRE(yAlloca != nullptr);
    REQUIRE(phiVal  != nullptr);

    std::vector<const Value*> pts;
    anders->getPointsToSet(phiVal, pts);
    CHECK_EQ(pts.size(), 2u);
    CHECK(ptsContains(pts, xAlloca));
    CHECK(ptsContains(pts, yAlloca));
}
*/