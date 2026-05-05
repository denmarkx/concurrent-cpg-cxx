#include "llvm/Analysis/AliasAnalysis.h"
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
    auto vx = factory.createValueNode(nullptr, x);
    auto vy = factory.createValueNode(nullptr, y);
    auto oz = factory.createObjectNode(nullptr, z);
    auto ow = factory.createObjectNode(nullptr, w);

    CHECK_EQ(x, factory.getValueForNode(vx));
    CHECK_EQ(y, factory.getValueForNode(vy));
    CHECK(factory.isObjectNode(oz));
    CHECK(factory.isObjectNode(ow));
    CHECK_EQ(factory.getValueNodeFor(nullptr, x), vx);
    CHECK_EQ(factory.getValueNodeFor(nullptr, y), vy);
    CHECK_EQ(factory.getValueNodeFor(nullptr, z), AndersNodeFactory::InvalidIndex);
    CHECK_EQ(factory.getValueNodeFor(nullptr, w), AndersNodeFactory::InvalidIndex);
    CHECK_EQ(factory.getObjectNodeFor(nullptr, z), oz);
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

static const Value *findInstrByID(const Function *F, int id) {
    for (auto &BB : *F) {
        int c = 0;
        for (auto &I : BB) {
            if (c == id) return &I;
            c++;
        }
    }
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
    anders->getPointsToSet(0u, qLoad, pts);
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
    anders->getPointsToSet(nullptr, xAlloca, xPts);
    anders->getPointsToSet(nullptr, yAlloca, yPts);
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
    REQUIRE_EQ(anders->getPointsToSet(0u, qLoad, qPts), true);
    REQUIRE_EQ(qPts.size(), 1u);
    CHECK_EQ(qPts[0], pAlloca);

    std::vector<const Value*> rPts;
    REQUIRE_EQ(anders->getPointsToSet(0u, rLoad, rPts), true);
    REQUIRE_EQ(rPts.size(), 1u);
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
    anders->getPointsToSet(0u, rLoad, pts);
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
    anders->getPointsToSet(0u, vLoad, pts);
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
    anders->getPointsToSet(0u, retVal, pts);
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
    anders->getPointsToSet(0u, qLoad, pts);
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
    anders->getPointsToSet(0u, fptrLoad, pts);

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
    anders->getPointsToSet(0u, phiVal, pts);
    CHECK_EQ(pts.size(), 2u);
    CHECK(ptsContains(pts, xAlloca));
    CHECK(ptsContains(pts, yAlloca));
}

TEST_CASE("Andersen[ContextGlobalNoAlias]") {
    AndersPassTest pass;
    auto module = pass.ParseAssembly(R"(
        @g = global i32 100, align 4
        @h = global i32 500, align 4

        define ptr @get(ptr noundef %0) #0 {
          %2 = alloca ptr, align 8
          store ptr %0, ptr %2, align 8
          %3 = load ptr, ptr %2, align 8
          ret ptr %3
        }

        define dso_local i32 @main() #0 {
          %1 = alloca i32, align 4
          %2 = alloca ptr, align 8
          %3 = alloca ptr, align 8
          store i32 0, ptr %1, align 4
          %x = call ptr @get(ptr noundef @g)
          store ptr %x, ptr %2, align 8
          %y = call ptr @get(ptr noundef @h)
          store ptr %y, ptr %3, align 8
          ret i32 0
        }
    )");

    auto anders = std::make_unique<AndersenAAResult>(AndersenAAResult(*module));
    const Function *F = module->getFunction("main");

    const Value *xAlloca = findInstr(F, "x");
    const Value *yAlloca = findInstr(F, "y");
    REQUIRE(xAlloca != nullptr);
    REQUIRE(yAlloca != nullptr);

    AliasResult result = anders->alias(xAlloca, yAlloca, 0u, 0u);
    CHECK_EQ(result, AliasResult::NoAlias);
}


TEST_CASE("Andersen[ContextGlobalAlias]") {
    AndersPassTest pass;
    auto module = pass.ParseAssembly(R"(
        @g = global i32 100, align 4
        @h = global i32 500, align 4

        define ptr @get(ptr noundef %0) #0 {
          %2 = alloca ptr, align 8
          store ptr %0, ptr %2, align 8
          %3 = load ptr, ptr %2, align 8
          ret ptr %3
        }

        define dso_local i32 @main() #0 {
          %1 = alloca i32, align 4
          %2 = alloca ptr, align 8
          %3 = alloca ptr, align 8
          store i32 0, ptr %1, align 4
          %x = call ptr @get(ptr noundef @g)
          store ptr %x, ptr %2, align 8
          %y = call ptr @get(ptr noundef @g)
          store ptr %y, ptr %3, align 8
          ret i32 0
        }
    )");

    auto anders = std::make_unique<AndersenAAResult>(AndersenAAResult(*module));
    const Function *F = module->getFunction("main");

    const Value *xAlloca = findInstr(F, "x");
    const Value *yAlloca = findInstr(F, "y");
    REQUIRE(xAlloca != nullptr);
    REQUIRE(yAlloca != nullptr);

    AliasResult result = anders->alias(xAlloca, yAlloca, 0u, 0u);
    CHECK_EQ(result, AliasResult::MustAlias);
}

TEST_CASE("Andersen[ContextSensitiveTwoLevelCall]") {
    AndersPassTest pass;
    auto module = pass.ParseAssembly(R"(
        @g = global i32 3
        @h = global i32 4

        define ptr @inner(ptr %p) {
          ret ptr %p
        }

        define ptr @outer(ptr %q) {
          %1 = call ptr @inner(ptr %q)
          ret ptr %1
        }

        define i32 @main() {
          %x = call ptr @outer(ptr @g)
          %y = call ptr @outer(ptr @h)
          ret i32 0
        }
    )");

    auto anders = std::make_unique<AndersenAAResult>(*module);
    const Function *F = module->getFunction("main");
    const Function *outer = module->getFunction("outer");

    const Value *x = findInstr(F, "x");
    const Value *y = findInstr(F, "y");
    const Value *innerCall = findInstrByID(outer, 0);
    errs() << *innerCall << "\n";

    REQUIRE(x != nullptr);
    REQUIRE(y != nullptr);
    REQUIRE(innerCall != nullptr);

    AliasResult result = anders->alias(x, y, 0u, 0u);
    CHECK_EQ(result, AliasResult::NoAlias);

    AliasResult result2 = anders->alias(innerCall, innerCall, 2u, 2u);
    CHECK_EQ(result, AliasResult::NoAlias);

    AliasResult result3 = anders->alias(innerCall, innerCall, 2u, 4u);
    CHECK_EQ(result, AliasResult::NoAlias);

    AliasResult result4 = anders->alias(innerCall, innerCall, 2u, 3u);
    CHECK_EQ(result, AliasResult::NoAlias);
}

TEST_CASE("Andersen[ContextSensitiveMixed]") {
    AndersPassTest pass;
    auto module = pass.ParseAssembly(R"(
        @g = global i32 1
        @h = global i32 2

        define ptr @id(ptr %p) {
          ret ptr %p
        }

        define i32 @main() {
          %x = call ptr @id(ptr @g)
          %y = call ptr @id(ptr @h)
          %z = call ptr @id(ptr @g)
          ret i32 0
        }
    )");

    auto anders = std::make_unique<AndersenAAResult>(*module);
    const Function *F = module->getFunction("main");

    const Value *x = findInstr(F, "x");
    const Value *y = findInstr(F, "y");
    const Value *z = findInstr(F, "z");

    REQUIRE(x);
    REQUIRE(y);
    REQUIRE(z);

    CHECK_EQ(anders->alias(x, y, 0u, 0u), AliasResult::NoAlias);
    CHECK_EQ(anders->alias(x, z, 0u, 0u), AliasResult::MustAlias);
}

TEST_CASE("Andersen[FieldSensitivity_Simple]") {
    AndersPassTest pass;
    auto module = pass.ParseAssembly(R"(
        %S = type { ptr, ptr }

        define i32 @main() {
            %1 = alloca %S, align 8
            %x = alloca i32, align 4
            %y = alloca i32, align 4

            ; tpts(s1) = {%1.f0, %x}
            %s1 = getelementptr inbounds %S, ptr %1, i32 0, i32 0
            store ptr %x, ptr %s1, align 8

            ; tpts(s2) = {%1.f1, %y}
            %s2 = getelementptr inbounds %S, ptr %1, i32 0, i32 1
            store ptr %y, ptr %s2, align 8

            ret i32 0
        }
    )");

    auto anders = std::make_unique<AndersenAAResult>(*module);
    const Function *F = module->getFunction("main");

    const Value *x = findInstr(F, "x");
    const Value *y = findInstr(F, "y");

    const Value *s1 = findInstr(F, "s1");
    const Value *s2 = findInstr(F, "s2");

    PtsSetType s1Pts;
    anders->getTransitivePointsToSet(s1, s1Pts);

    PtsSetType s2Pts;
    anders->getTransitivePointsToSet(s2, s2Pts);

    CHECK(ptsContains(s1Pts, x));
    CHECK(!ptsContains(s1Pts, y));

    CHECK(ptsContains(s2Pts, y));
    CHECK(!ptsContains(s2Pts, x));
}

TEST_CASE("Andersen[FieldSensitivity_Simple_MixedContext]") {
    AndersPassTest pass;
    auto module = pass.ParseAssembly(R"(
        %S = type { ptr, ptr }

        define void @func(ptr %0) {
            ; Obviously not the best thing to do here, but its just a test.
            %y = alloca i32, align 4

            ; tpts(s2) = {%1.f1, %y}
            %s2 = getelementptr inbounds %S, ptr %0, i32 0, i32 1
            store ptr %y, ptr %s2, align 8
            ret void
        }

        define i32 @main() {
            %1 = alloca %S, align 8
            %x = alloca i32, align 4
            %y = alloca i32, align 4

            ; tpts(s1) = {%1.f0, %x}
            %s1 = getelementptr inbounds %S, ptr %1, i32 0, i32 0
            store ptr %x, ptr %s1, align 8

            call void @func(ptr %1);
            ret i32 0
        }
    )");

    auto anders = std::make_unique<AndersenAAResult>(*module);
    const Function *F = module->getFunction("main");
    const Function *F2 = module->getFunction("func");

    const Value *x = findInstr(F, "x");
    const Value *y = findInstr(F2, "y");

    const Value *s1 = findInstr(F, "s1");
    const Value *s2 = findInstr(F2, "s2");

    PtsSetType s1Pts;
    anders->getTransitivePointsToSet(s1, s1Pts);

    PtsSetType s2Pts;
    anders->getTransitivePointsToSet(s2, s2Pts);

    CHECK(ptsContains(s1Pts, x));
    CHECK(!ptsContains(s1Pts, y));

    CHECK(ptsContains(s2Pts, y));
    CHECK(!ptsContains(s2Pts, x));
}

TEST_CASE("Andersen[FieldSensitivity_GlobalFuncArray]") {
    AndersPassTest pass;
    auto module = pass.ParseAssembly(R"(
        @x = internal global [3 x ptr] [ptr @f1, ptr @f2, ptr @f3], align 8

        define i32 @main() {
            %s1 = getelementptr inbounds [3 x ptr], ptr @x, i64 0, i64 0
            %fptr = load ptr, ptr %s1, align 8

            ; obviously f4 overwrites @x[2], but tpts(x[2]) will still = {@f3, @f4}
            %s2 = getelementptr inbounds [3 x ptr], ptr @x, i64 0, i64 2
            store ptr @f4, ptr %s2, align 8
            %fptr2 = load ptr, ptr %s2, align 8
            ret i32 0
        }

        define void @f1() { ret void }
        define void @f2() { ret void }
        define void @f3() { ret void }
        define void @f4() { ret void }
    )");

    auto anders = std::make_unique<AndersenAAResult>(*module);
    const Function *F = module->getFunction("main");
    const Function *f1 = module->getFunction("f1");
    const Function *f2 = module->getFunction("f2");
    const Function *f3 = module->getFunction("f3");
    const Function *f4 = module->getFunction("f4");

    const Value *s1 = findInstr(F, "s1");
    const Value *s2 = findInstr(F, "s2");
    const Value *fptr = findInstr(F, "fptr");
    const Value *fptr2 = findInstr(F, "fptr2");

    anders->printTransitivePointsToSet(s2);

    PtsSetType s1Pts;
    anders->getTransitivePointsToSet(s1, s1Pts);
    CHECK(ptsContains(s1Pts, f1));
    CHECK(!ptsContains(s1Pts, f2));
    CHECK(!ptsContains(s1Pts, f3));

    PtsSetType fptrPts;
    anders->getTransitivePointsToSet(fptr, fptrPts);
    CHECK(ptsContains(fptrPts, f1));
    CHECK(!ptsContains(fptrPts, f2));
    CHECK(!ptsContains(fptrPts, f3));

    PtsSetType s2Pts;
    anders->getTransitivePointsToSet(s2, s2Pts);
    CHECK(ptsContains(s2Pts, f3));
    CHECK(ptsContains(s2Pts, f4));
    CHECK(!ptsContains(s2Pts, f1));
    CHECK(!ptsContains(s2Pts, f2));

    PtsSetType fptr2Pts;
    anders->getTransitivePointsToSet(fptr2, fptr2Pts);
    CHECK(ptsContains(fptr2Pts, f3));
    CHECK(ptsContains(fptr2Pts, f4));
    CHECK(!ptsContains(fptr2Pts, f1));
    CHECK(!ptsContains(fptr2Pts, f2));
}

TEST_CASE("Andersen[FieldSensitivity_InlineGEP]") {
    AndersPassTest pass;
    auto module = pass.ParseAssembly(R"(
        @g = internal global [2 x ptr] [ptr @f1, ptr @f2], align 8

        define i32 @main() {
            store ptr @f3, ptr getelementptr inbounds ([2 x ptr], ptr @g, i32 0, i32 1), align 8

            %x = getelementptr inbounds [2 x ptr], ptr @g, i32 0, i32 1
            %y = load ptr, ptr %x, align 8
            ret i32 0
        }

        define void @f1() { ret void }
        define void @f2() { ret void }
        define void @f3() { ret void }
    )");

    auto anders = std::make_unique<AndersenAAResult>(*module);
    const Function *F = module->getFunction("main");
    const Function *f1 = module->getFunction("f1");
    const Function *f2 = module->getFunction("f2");
    const Function *f3 = module->getFunction("f3");

    const Value *x = findInstr(F, "x");
    const Value *y = findInstr(F, "y");

    PtsSetType s1Pts;
    PtsSetType s2Pts;
    anders->getTransitivePointsToSet(x, s1Pts);
    anders->getTransitivePointsToSet(y, s2Pts);

    CHECK(!ptsContains(s1Pts, f1));
    CHECK(ptsContains(s1Pts, f2));
    CHECK(ptsContains(s1Pts, f3));

    CHECK(!ptsContains(s2Pts, f1));
    CHECK(ptsContains(s2Pts, f2));
    CHECK(ptsContains(s2Pts, f3));
}

TEST_CASE("Andersen[FieldSensitivity_InlineGEP_All_Offset_0]") {
    AndersPassTest pass;

    // LLVM will try to turn the store instruction into
    //  store ptr @f3, @g, align 8
    // since that still points to the first offset at i=0
    auto module = pass.ParseAssembly(R"(
        @g = internal global [2 x ptr] [ptr @f1, ptr @f2], align 8

        define i32 @main() {
            store ptr @f3, ptr getelementptr inbounds ([2 x ptr], ptr @g, i32 0, i32 0), align 8

            %x = getelementptr inbounds [2 x ptr], ptr @g, i32 0, i32 0
            %y = load ptr, ptr %x, align 8
            ret i32 0
        }

        define void @f1() { ret void }
        define void @f2() { ret void }
        define void @f3() { ret void }
    )");

    auto anders = std::make_unique<AndersenAAResult>(*module);
    const Function *F = module->getFunction("main");
    const Function *f1 = module->getFunction("f1");
    const Function *f2 = module->getFunction("f2");
    const Function *f3 = module->getFunction("f3");

    const Value *x = findInstr(F, "x");
    const Value *y = findInstr(F, "y");

    anders->printTransitivePointsToSet(x);
    anders->printTransitivePointsToSet(y);

    PtsSetType s1Pts;
    PtsSetType s2Pts;
    anders->getTransitivePointsToSet(x, s1Pts);
    anders->getTransitivePointsToSet(y, s2Pts);

    CHECK(!ptsContains(s1Pts, f2));
    CHECK(ptsContains(s1Pts, f1));
    CHECK(ptsContains(s1Pts, f3));

    CHECK(!ptsContains(s2Pts, f2));
    CHECK(ptsContains(s2Pts, f1));
    CHECK(ptsContains(s2Pts, f3));
}

TEST_CASE("Andersen[FieldSensitivity_Nested]") {
    AndersPassTest pass;
    auto module = pass.ParseAssembly(R"(
        %S = type { [8 x ptr], ptr }
        %D = type { [8 x [8 x ptr] ], ptr }

        define i32 @main() {
            %1 = alloca %S, align 8
            %x = alloca i32, align 4
            %y = alloca i32, align 4

            %s1 = getelementptr inbounds %D, ptr %1, i32 0, i32 0, i32 5, i32 2
            store ptr %x, ptr %s1, align 8

            %s2 = getelementptr inbounds %D, ptr %1, i32 0, i32 0, i32 2, i32 7
            store ptr %y, ptr %s2, align 8

            ret i32 0
        }
    )");

    auto anders = std::make_unique<AndersenAAResult>(*module);
    const Function *F = module->getFunction("main");

    const Value *x = findInstr(F, "x");
    const Value *y = findInstr(F, "y");

    const Value *s1 = findInstr(F, "s1");
    const Value *s2 = findInstr(F, "s2");

    PtsSetType s1Pts;
    anders->getTransitivePointsToSet(s1, s1Pts);

    PtsSetType s2Pts;
    anders->getTransitivePointsToSet(s2, s2Pts);

    CHECK(ptsContains(s1Pts, x));
    CHECK(!ptsContains(s1Pts, y));

    CHECK(ptsContains(s2Pts, y));
    CHECK(!ptsContains(s2Pts, x));
}

TEST_CASE("Andersen[FieldSensitivity_Nested_Global]") {
    AndersPassTest pass;
    auto module = pass.ParseAssembly(R"(
        @h = internal global [2 x [2 x ptr]] [
            [2 x ptr] [ptr @f1, ptr @f2],
            [2 x ptr] [ptr @f3, ptr @f4]
        ]

        define i32 @main() {
            %x = alloca i32, align 4
            %y = alloca i32, align 4

            %s1 = getelementptr inbounds [2 x [2 x ptr]], ptr @h, i32 0, i32 0, i32 1
            store ptr %x, ptr %s1, align 8

            %s2 = getelementptr inbounds [2 x [2 x ptr]], ptr @h, i32 0, i32 1, i32 0
            store ptr %y, ptr %s2, align 8

            ret i32 0
        }

        define void @f1() { ret void }
        define void @f2() { ret void }
        define void @f3() { ret void }
        define void @f4() { ret void }
    )");

    auto anders = std::make_unique<AndersenAAResult>(*module);
    const Function *F = module->getFunction("main");
    const Function *f1 = module->getFunction("f1");
    const Function *f2 = module->getFunction("f2");
    const Function *f3 = module->getFunction("f3");
    const Function *f4 = module->getFunction("f4");

    const Value *x = findInstr(F, "x");
    const Value *y = findInstr(F, "y");

    const Value *s1 = findInstr(F, "s1");
    const Value *s2 = findInstr(F, "s2");

    anders->printTransitivePointsToSet(s1);
    anders->printTransitivePointsToSet(s2);

    PtsSetType s1Pts;
    anders->getTransitivePointsToSet(s1, s1Pts);

    PtsSetType s2Pts;
    anders->getTransitivePointsToSet(s2, s2Pts);

    CHECK(ptsContains(s1Pts, x));
    CHECK(ptsContains(s1Pts, f2));
    CHECK(!ptsContains(s1Pts, y));
    CHECK(!ptsContains(s1Pts, f1));
    CHECK(!ptsContains(s1Pts, f3));
    CHECK(!ptsContains(s1Pts, f4));

    CHECK(ptsContains(s2Pts, y));
    CHECK(ptsContains(s2Pts, f3));
    CHECK(!ptsContains(s2Pts, x));
    CHECK(!ptsContains(s2Pts, f1));
    CHECK(!ptsContains(s2Pts, f2));
    CHECK(!ptsContains(s2Pts, f4));
}