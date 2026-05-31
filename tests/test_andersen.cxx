#include "llvm/Analysis/AliasAnalysis.h"
#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include "doctest.h"

#include "andersen/Andersen.h"
#include "andersen/NodeFactory.h"
#include "andersen/PtsSet.h"
#include "andersen/SparseBitVectorGraph.h"

#include "llvm/IR/Module.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/AsmParser/Parser.h"
#include "llvm/Support/SourceMgr.h"

#include <memory>

using namespace llvm;

// TEST_CASE("Andersen[PtsSetTest]") {
//     // CHECK(factorial(1) == 1);
//     AndersPtsSet pSet1, pSet2;
//     CHECK(pSet1.isEmpty());
//     CHECK(pSet2.isEmpty());

//     CHECK(pSet1.insert(5));
//     CHECK(pSet2.insert(10));
//     CHECK(pSet1.has(5));
//     CHECK_FALSE(pSet1.has(10));
//     CHECK_FALSE(pSet2.has(5));
//     CHECK(pSet2.has(10));
//     CHECK_FALSE(pSet1.intersectWith(pSet2));

//     CHECK(pSet1.insert(15));
//     CHECK(pSet2.insert(15));
//     CHECK_FALSE(pSet2.insert(10));
//     CHECK(pSet1.intersectWith(pSet2));

//     CHECK(pSet1.unionWith(pSet2));
//     CHECK(pSet1.contains(pSet2));
//     CHECK_EQ(pSet1.getSize(), 3u);
// }

// TEST_CASE("Andersen[SparseBitVectorGraphTest]") {
//     SparseBitVectorGraph graph;

//     auto node1 = graph.getOrInsertNode(1);
//     auto node2 = graph.getOrInsertNode(2);
//     auto node3 = graph.getOrInsertNode(3);
//     auto node4 = graph.getOrInsertNode(4);
//     auto node5 = graph.getOrInsertNode(5);
//     auto node6 = graph.getOrInsertNode(6);

//     CHECK_EQ(graph.getSize(), 6u);
//     CHECK(graph.getNodeWithIndex(0) == nullptr);
//     REQUIRE(graph.getNodeWithIndex(1) != nullptr);
//     REQUIRE(graph.getNodeWithIndex(2) != nullptr);
//     REQUIRE(graph.getNodeWithIndex(3) != nullptr);
//     REQUIRE(graph.getNodeWithIndex(4) != nullptr);
//     REQUIRE(graph.getNodeWithIndex(5) != nullptr);
//     REQUIRE(graph.getNodeWithIndex(6) != nullptr);
//     CHECK(graph.getNodeWithIndex(7) == nullptr);
//     CHECK_EQ(node1->getNodeIndex(), 1u);
//     CHECK_EQ(node2->getNodeIndex(), 2u);
//     CHECK_EQ(node3->getNodeIndex(), 3u);
//     CHECK_EQ(node4->getNodeIndex(), 4u);
//     CHECK_EQ(node5->getNodeIndex(), 5u);
//     CHECK_EQ(node6->getNodeIndex(), 6u);

//     //        |-> 3 \
//     // 1 -> 2 |      -> 5 -> 6
//     //        |-> 4 /
//     graph.insertEdge(1, 2);
//     graph.insertEdge(2, 3);
//     graph.insertEdge(2, 4);
//     graph.insertEdge(3, 5);
//     graph.insertEdge(4, 5);
//     graph.insertEdge(5, 6);

//     CHECK_EQ(node1->succ_getSize(), 1u);
//     CHECK_EQ(node2->succ_getSize(), 2u);
//     CHECK_EQ(node3->succ_getSize(), 1u);
//     CHECK_EQ(node4->succ_getSize(), 1u);
//     CHECK_EQ(node5->succ_getSize(), 1u);
//     CHECK_EQ(node6->succ_getSize(), 0u);

//     graph.mergeEdge(4, 5);
//     CHECK_EQ(node4->succ_getSize(), 2u);
//     graph.mergeEdge(5, 6);
//     CHECK_EQ(node5->succ_getSize(), 1u);
//     graph.mergeEdge(3, 2);
//     CHECK_EQ(node3->succ_getSize(), 3u);
// }

// TEST_CASE("Andersen[NodeMergeTest]") {
//     AndersNodeFactory factory;

//     auto n0 = factory.createValueNode();
//     auto n1 = factory.createValueNode();
//     auto n2 = factory.createValueNode();
//     auto n3 = factory.createValueNode();
//     auto n4 = factory.createValueNode();

//     factory.mergeNode(n0, n1);
//     factory.mergeNode(n2, n3);
//     CHECK_EQ(factory.getMergeTarget(n0), factory.getMergeTarget(n1));
//     CHECK_EQ(factory.getMergeTarget(n2), factory.getMergeTarget(n3));

//     factory.mergeNode(n4, n0);
//     CHECK_EQ(factory.getMergeTarget(n4), factory.getMergeTarget(n1));

//     factory.mergeNode(n2, n4);
//     CHECK_EQ(factory.getMergeTarget(n1), factory.getMergeTarget(n2));
//     CHECK_EQ(factory.getMergeTarget(n3), factory.getMergeTarget(n4));
// }

// // This fixture assists in setting up the pass environments
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

    Module* ParseFile(const char* filename) {
        SMDiagnostic error;
        module = parseIRFile(filename, error, ctx);
        std::string errMsg;
        raw_string_ostream os(errMsg);
        error.print("", os);

        if (!module) {
            // A failure here means that the test itself is buggy.
            report_fatal_error(os.str().c_str());
        }

        return module.get();
    }
};

// TEST_CASE("Andersen[NodeFactoryTest]") {
//     AndersPassTest pass;
//     auto module = pass.ParseAssembly("define i32 @main() {\n"
//                                 "bb:\n"
//                                 "  %x = alloca i32, align 4\n"
//                                 "  %y = alloca i32, align 4\n"
//                                 "  %z = alloca i32, align 4\n"
//                                 "  %w = alloca i32*, align 8\n"
//                                 "  ret i32 0\n"
//                                 "}\n");

//     auto f = module->begin();
//     auto bb = f->begin();
//     auto itr = bb->begin();
//     auto x = &*itr;
//     auto y = &*++itr;
//     auto z = &*++itr;
//     auto w = &*++itr;

//     AndersNodeFactory factory;
//     auto vx = factory.createValueNode(nullptr, x);
//     auto vy = factory.createValueNode(nullptr, y);
//     auto oz = factory.createObjectNode(nullptr, z);
//     auto ow = factory.createObjectNode(nullptr, w);

//     CHECK_EQ(x, factory.getValueForNode(vx));
//     CHECK_EQ(y, factory.getValueForNode(vy));
//     CHECK(factory.isObjectNode(oz));
//     CHECK(factory.isObjectNode(ow));
//     CHECK_EQ(factory.getValueNodeFor(nullptr, x), vx);
//     CHECK_EQ(factory.getValueNodeFor(nullptr, y), vy);
//     CHECK_EQ(factory.getValueNodeFor(nullptr, z), AndersNodeFactory::InvalidIndex);
//     CHECK_EQ(factory.getValueNodeFor(nullptr, w), AndersNodeFactory::InvalidIndex);
//     CHECK_EQ(factory.getObjectNodeFor(nullptr, z), oz);
// }

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

// TEST_CASE("Andersen[Alloca]") {
//     AndersPassTest pass;
//     auto module = pass.ParseAssembly("define i32 @main() {\n"
//         " %x = alloca i32, align 4\n"
//         " %p = alloca ptr, align 8\n"
//         " store ptr %x, ptr %p, align 8\n"
//         " %q = load ptr, ptr %p, align 8\n"
//         " ret i32 0\n"
//         "}\n");

//     auto anders = runAndersen(*module);

//     auto f = module->getFunction("main");
//     auto *xAlloca = findInstr(f, "x");
//     auto *qLoad = findInstr(f, "q");

//     CHECK_NE(xAlloca, nullptr);
//     CHECK_NE(qLoad, nullptr);

//     std::vector<const Value*> pts;
//     anders->getPointsToSet(qLoad, pts, 0u);
//     CHECK_EQ(pts.size(), 1u);
//     CHECK_EQ(pts[0], xAlloca);
// }

// TEST_CASE("Andersen[UnrelatedAlloca_NoAlias]") {
//     AndersPassTest pass;
//     auto module = pass.ParseAssembly(
//         "define void @test() {\n"
//         "  %x = alloca i32, align 4\n"
//         "  %y = alloca i32, align 4\n"
//         "  ret void\n"
//         "}\n");

//     auto anders = runAndersen(*module);
//     const Function *F = module->getFunction("test");

//     const Value *xAlloca = findInstr(F, "x");
//     const Value *yAlloca = findInstr(F, "y");
//     REQUIRE(xAlloca != nullptr);
//     REQUIRE(yAlloca != nullptr);

//     std::vector<const Value*> xPts, yPts;
//     anders->getPointsToSet(xAlloca, xPts);
//     anders->getPointsToSet(yAlloca, yPts);
//     CHECK_FALSE(ptsContains(xPts, yAlloca));
//     CHECK_FALSE(ptsContains(yPts, xAlloca));
// }

// TEST_CASE("Andersen[DoubleIndirection]") {
//     AndersPassTest pass;
//     auto module = pass.ParseAssembly("define i32 @main() {\n"
//         " %x = alloca i32, align 4\n"
//         " %p = alloca ptr, align 8\n"
//         " %pp = alloca ptr, align 8\n"
//         " store ptr %x, ptr %p\n"
//         " store ptr %p, ptr %pp\n"
//         " %q = load ptr, ptr %pp\n"
//         " %r = load ptr, ptr %q\n"
//         " ret i32 0\n"
//         "}\n");

//     auto anders = runAndersen(*module);

//     auto f = module->getFunction("main");
//     auto *xAlloca = findInstr(f, "x");
//     auto *pAlloca = findInstr(f, "p");
//     auto *qLoad = findInstr(f, "q");
//     auto *rLoad = findInstr(f, "r");

//     CHECK_NE(xAlloca, nullptr);
//     CHECK_NE(pAlloca, nullptr);
//     CHECK_NE(qLoad, nullptr);
//     CHECK_NE(rLoad, nullptr);

//     std::vector<const Value*> qPts;
//     anders->getPointsToSet(qLoad, qPts);
//     REQUIRE_EQ(qPts.size(), 2u);
//     CHECK_EQ(qPts[0], pAlloca);

//     std::vector<const Value*> rPts;
//     anders->getPointsToSet(rLoad, rPts);
//     REQUIRE_EQ(rPts.size(), 1u);
//     CHECK_EQ(rPts[0], xAlloca);
// }

// TEST_CASE("Andersen[StoreIndirection]") {
//     AndersPassTest pass;
//     auto module = pass.ParseAssembly("define i32 @main() {\n"
//         " %x = alloca i32, align 4\n"
//         " %p = alloca ptr, align 8\n"
//         " %pp = alloca ptr, align 8\n"
//         " store ptr %p, ptr %pp\n"
//         " store ptr %x, ptr %p\n"
//         " %q = load ptr, ptr %pp\n"
//         " %r = load ptr, ptr %q\n"
//         " ret i32 0\n"
//         "}\n");

//     auto anders = runAndersen(*module);

//     auto f = module->getFunction("main");
//     auto *xAlloca = findInstr(f, "x");
//     auto *rLoad = findInstr(f, "r");

//     CHECK_NE(xAlloca, nullptr);
//     CHECK_NE(rLoad, nullptr);

//     std::vector<const Value*> pts;
//     anders->getPointsToSet(rLoad, pts);
//     CHECK_EQ(pts.size(), 1u);
//     CHECK_EQ(pts[0], xAlloca);
// }

// TEST_CASE("Andersen[GEP_FieldInsensitivity]") {
//     AndersPassTest pass;
//     auto module = pass.ParseAssembly(
//         "%S = type { ptr, ptr }\n"
//         "define i32 @main() {\n"
//         " %s = alloca %S, align 8\n"
//         " %x = alloca i32, align 4\n"
//         " %f0  = getelementptr inbounds %S, ptr %s, i32 0, i32 0\n"
//         " store ptr %x, ptr %f0\n"
//         " %gep = getelementptr inbounds %S, ptr %s, i32 0, i32 0\n"
//         " %v = load ptr, ptr %gep\n"
//         " ret i32 0\n"
//         "}\n");

//     auto anders = runAndersen(*module);

//     auto f = module->getFunction("main");

//     const Value *xAlloca = findInstr(f, "x");
//     const Value *vLoad   = findInstr(f, "v");

//     CHECK_NE(xAlloca, nullptr);
//     CHECK_NE(vLoad, nullptr);

//     std::vector<const Value*> pts;
//     anders->getPointsToSet(vLoad, pts);
//     CHECK(ptsContains(pts, xAlloca));
// }

// TEST_CASE("Andersen[Call_ReturnValue]") {
//     AndersPassTest pass;
//     auto module = pass.ParseAssembly(
//         "define ptr @callee(ptr %arg) {\n"
//         "  ret ptr %arg\n"
//         "}\n"
//         "define void @test() {\n"
//         "  %x   = alloca i32, align 4\n"
//         "  %ret = call ptr @callee(ptr %x)\n"
//         "  ret void\n"
//         "}\n");

//     auto anders = runAndersen(*module);
//     const Function *F = module->getFunction("test");

//     const Value *xAlloca = findInstr(F, "x");
//     const Value *retVal  = findInstr(F, "ret");
//     REQUIRE(xAlloca != nullptr);
//     REQUIRE(retVal  != nullptr);

//     std::vector<const Value*> pts;
//     anders->getPointsToSet(retVal, pts);
//     CHECK(ptsContains(pts, xAlloca));
// }

// TEST_CASE("Andersen[NullPtr_NoAlias]") {
//     AndersPassTest pass;
//     auto module = pass.ParseAssembly(
//         "define void @test() {\n"
//         "  %x = alloca i32, align 4\n"
//         "  %p = alloca ptr, align 8\n"
//         "  store ptr null, ptr %p\n"
//         "  %q = load ptr, ptr %p\n"
//         "  ret void\n"
//         "}\n");

//     auto anders = runAndersen(*module);
//     const Function *F = module->getFunction("test");

//     const Value *xAlloca = findInstr(F, "x");
//     const Value *qLoad   = findInstr(F, "q");
//     REQUIRE(xAlloca != nullptr);
//     REQUIRE(qLoad   != nullptr);

//     std::vector<const Value*> pts;
//     anders->getPointsToSet(qLoad, pts, 0u);
//     CHECK_FALSE(ptsContains(pts, xAlloca));
// }

// TEST_CASE("Andersen[HCD_LCD_CYCLE]") {
//     AndersPassTest pass;
//     auto module = pass.ParseAssembly(
//         "define void @test() {\n"
//         "  %a = alloca ptr, align 8\n"
//         "  %b = alloca ptr, align 8\n"
//         "  store ptr %b, ptr %a\n"
//         "  store ptr %a, ptr %b\n"
//         "  %p = load ptr, ptr %a\n"
//         "  %q = load ptr, ptr %p\n"
//         "  ret void\n"
//         "}\n");

//     REQUIRE_NOTHROW(runAndersen(*module));
// }

// TEST_CASE("Andersen[IndirectCall_Via_Global_Fptr]") {
//     return;
//     AndersPassTest pass;
//     auto module = pass.ParseAssembly(
//         "define void @target(ptr %p) {\n"
//         "  ret void\n"
//         "}\n"
//         "@fptr_slot = global ptr @target, align 8\n"
//         "define void @test(ptr %arg) {\n"
//         "  %fptr = load ptr, ptr @fptr_slot\n"
//         "  call void %fptr(ptr %arg)\n"
//         "  ret void\n"
//         "}\n");

//     auto anders = runAndersen(*module);
//     const Function *F = module->getFunction("test");

//     const Value *fptrLoad = findInstr(F, "fptr");
//     REQUIRE(fptrLoad != nullptr);

//     std::vector<const Value*> pts;
//     anders->getPointsToSet(fptrLoad, pts);

//     const Function *target = module->getFunction("target");
//     CHECK(ptsContains(pts, target));
//     CHECK_EQ(pts.size(), 1u);
// }

// TEST_CASE("Andersen[Phi_Merge]") {
//     AndersPassTest pass;
//     auto module = pass.ParseAssembly(
//         "define void @test(i1 %cond) {\n"
//         "entry:\n"
//         "  %x = alloca i32, align 4\n"
//         "  %y = alloca i32, align 4\n"
//         "  br i1 %cond, label %left, label %right\n"
//         "left:\n"
//         "  br label %merge\n"
//         "right:\n"
//         "  br label %merge\n"
//         "merge:\n"
//         "  %p = phi ptr [ %x, %left ], [ %y, %right ]\n"
//         "  ret void\n"
//         "}\n");

//     auto anders = runAndersen(*module);
//     const Function *F = module->getFunction("test");

//     const Value *xAlloca = findInstr(F, "x");
//     const Value *yAlloca = findInstr(F, "y");
//     const Value *phiVal  = findInstr(F, "p");
//     REQUIRE(xAlloca != nullptr);
//     REQUIRE(yAlloca != nullptr);
//     REQUIRE(phiVal  != nullptr);

//     std::vector<const Value*> pts;
//     anders->getPointsToSet(phiVal, pts);
//     CHECK_EQ(pts.size(), 2u);
//     CHECK(ptsContains(pts, xAlloca));
//     CHECK(ptsContains(pts, yAlloca));
// }

// TEST_CASE("Andersen[ContextGlobalNoAlias]") {
//     AndersPassTest pass;
//     auto module = pass.ParseAssembly(R"(
//         @g = global i32 100, align 4
//         @h = global i32 500, align 4

//         define ptr @get(ptr noundef %0) #0 {
//           %2 = alloca ptr, align 8
//           store ptr %0, ptr %2, align 8
//           %3 = load ptr, ptr %2, align 8
//           ret ptr %3
//         }

//         define dso_local i32 @main() #0 {
//           %1 = alloca i32, align 4
//           %2 = alloca ptr, align 8
//           %3 = alloca ptr, align 8
//           store i32 0, ptr %1, align 4
//           %x = call ptr @get(ptr noundef @g)
//           store ptr %x, ptr %2, align 8
//           %y = call ptr @get(ptr noundef @h)
//           store ptr %y, ptr %3, align 8
//           ret i32 0
//         }
//     )");

//     auto anders = std::make_unique<Andersen>(Andersen(*module));
//     const Function *F = module->getFunction("main");

//     const Value *xAlloca = findInstr(F, "x");
//     const Value *yAlloca = findInstr(F, "y");
//     REQUIRE(xAlloca != nullptr);
//     REQUIRE(yAlloca != nullptr);

//     // TODO:
//     // AliasResult result = anders->alias(xAlloca, yAlloca, 0u, 0u);
//     // CHECK_EQ(result, AliasResult::NoAlias);
// }


// TEST_CASE("Andersen[ContextGlobalAlias]") {
//     AndersPassTest pass;
//     auto module = pass.ParseAssembly(R"(
//         @g = global i32 100, align 4
//         @h = global i32 500, align 4

//         define ptr @get(ptr noundef %0) #0 {
//           %2 = alloca ptr, align 8
//           store ptr %0, ptr %2, align 8
//           %3 = load ptr, ptr %2, align 8
//           ret ptr %3
//         }

//         define dso_local i32 @main() #0 {
//           %1 = alloca i32, align 4
//           %2 = alloca ptr, align 8
//           %3 = alloca ptr, align 8
//           store i32 0, ptr %1, align 4
//           %x = call ptr @get(ptr noundef @g)
//           store ptr %x, ptr %2, align 8
//           %y = call ptr @get(ptr noundef @g)
//           store ptr %y, ptr %3, align 8
//           ret i32 0
//         }
//     )");

//     auto anders = runAndersen(*module);
//     const Function *F = module->getFunction("main");

//     const Value *xAlloca = findInstr(F, "x");
//     const Value *yAlloca = findInstr(F, "y");
//     REQUIRE(xAlloca != nullptr);
//     REQUIRE(yAlloca != nullptr);

//     AliasResult result = anders->alias(xAlloca, yAlloca, 0u, 0u);
//     CHECK_EQ(result, AliasResult::MustAlias);
// }

// TEST_CASE("Andersen[ContextSensitiveTwoLevelCall]") {
//     AndersPassTest pass;
//     auto module = pass.ParseAssembly(R"(
//         @g = global i32 3
//         @h = global i32 4

//         define ptr @inner(ptr %p) {
//           ret ptr %p
//         }

//         define ptr @outer(ptr %q) {
//           %1 = call ptr @inner(ptr %q)
//           ret ptr %1
//         }

//         define i32 @main() {
//           %x = call ptr @outer(ptr @g)
//           %y = call ptr @outer(ptr @h)
//           ret i32 0
//         }
//     )");

//     auto anders = runAndersen(*module);
//     const Function *F = module->getFunction("main");
//     const Function *outer = module->getFunction("outer");

//     const Value *x = findInstr(F, "x");
//     const Value *y = findInstr(F, "y");
//     const Value *innerCall = findInstrByID(outer, 0);
//     errs() << *innerCall << "\n";

//     REQUIRE(x != nullptr);
//     REQUIRE(y != nullptr);
//     REQUIRE(innerCall != nullptr);

//     AliasResult result = anders->alias(x, y, 0u, 0u);
//     CHECK_EQ(result, AliasResult::NoAlias);

//     AliasResult result2 = anders->alias(innerCall, innerCall, 2u, 2u);
//     CHECK_EQ(result, AliasResult::NoAlias);

//     AliasResult result3 = anders->alias(innerCall, innerCall, 2u, 4u);
//     CHECK_EQ(result, AliasResult::NoAlias);

//     AliasResult result4 = anders->alias(innerCall, innerCall, 2u, 3u);
//     CHECK_EQ(result, AliasResult::NoAlias);
// }

// TEST_CASE("Andersen[ContextSensitiveMixed]") {
//     AndersPassTest pass;
//     auto module = pass.ParseAssembly(R"(
//         @g = global i32 1
//         @h = global i32 2

//         define ptr @id(ptr %p) {
//           ret ptr %p
//         }

//         define i32 @main() {
//           %x = call ptr @id(ptr @g)
//           %y = call ptr @id(ptr @h)
//           %z = call ptr @id(ptr @g)
//           ret i32 0
//         }
//     )");

//     auto anders = runAndersen(*module);
//     const Function *F = module->getFunction("main");

//     const Value *x = findInstr(F, "x");
//     const Value *y = findInstr(F, "y");
//     const Value *z = findInstr(F, "z");

//     REQUIRE(x);
//     REQUIRE(y);
//     REQUIRE(z);

//     CHECK_EQ(anders->alias(x, y, 0u, 0u), AliasResult::NoAlias);
//     CHECK_EQ(anders->alias(x, z, 0u, 0u), AliasResult::MustAlias);
// }

// TEST_CASE("Andersen[FieldSensitivity_Simple]") {
//     AndersPassTest pass;
//     auto module = pass.ParseAssembly(R"(
//         %S = type { ptr, ptr }

//         define i32 @main() {
//             %1 = alloca %S, align 8
//             %x = alloca i32, align 4
//             %y = alloca i32, align 4

//             ; tpts(s1) = {%1.f0, %x}
//             %s1 = getelementptr inbounds %S, ptr %1, i32 0, i32 0
//             store ptr %x, ptr %s1, align 8

//             ; tpts(s2) = {%1.f1, %y}
//             %s2 = getelementptr inbounds %S, ptr %1, i32 0, i32 1
//             store ptr %y, ptr %s2, align 8

//             ret i32 0
//         }
//     )");

//     auto anders = runAndersen(*module);
//     const Function *F = module->getFunction("main");

//     const Value *x = findInstr(F, "x");
//     const Value *y = findInstr(F, "y");

//     const Value *s1 = findInstr(F, "s1");
//     const Value *s2 = findInstr(F, "s2");

//     PtsSetType s1Pts;
//     anders->getPointsToSet(s1, s1Pts);

//     PtsSetType s2Pts;
//     anders->getPointsToSet(s2, s2Pts);

//     CHECK(ptsContains(s1Pts, x));
//     CHECK(!ptsContains(s1Pts, y));

//     CHECK(ptsContains(s2Pts, y));
//     CHECK(!ptsContains(s2Pts, x));
// }

// TEST_CASE("Andersen[FieldSensitivity_Simple_MixedContext]") {
//     AndersPassTest pass;
//     auto module = pass.ParseAssembly(R"(
//         %S = type { ptr, ptr }

//         define void @func(ptr %0) {
//             ; Obviously not the best thing to do here, but its just a test.
//             %y = alloca i32, align 4

//             ; tpts(s2) = {%1.f1, %y}
//             %s2 = getelementptr inbounds %S, ptr %0, i32 0, i32 1
//             store ptr %y, ptr %s2, align 8
//             ret void
//         }

//         define i32 @main() {
//             %1 = alloca %S, align 8
//             %x = alloca i32, align 4
//             %y = alloca i32, align 4

//             ; tpts(s1) = {%1.f0, %x}
//             %s1 = getelementptr inbounds %S, ptr %1, i32 0, i32 0
//             store ptr %x, ptr %s1, align 8

//             call void @func(ptr %1);
//             ret i32 0
//         }
//     )");

//     auto anders = runAndersen(*module);
//     const Function *F = module->getFunction("main");
//     const Function *F2 = module->getFunction("func");

//     const Value *x = findInstr(F, "x");
//     const Value *y = findInstr(F2, "y");

//     const Value *s1 = findInstr(F, "s1");
//     const Value *s2 = findInstr(F2, "s2");

//     PtsSetType s1Pts;
//     anders->getPointsToSet(s1, s1Pts);

//     PtsSetType s2Pts;
//     anders->getPointsToSet(s2, s2Pts);

//     CHECK(ptsContains(s1Pts, x));
//     // CHECK(!ptsContains(s1Pts, y));

//     CHECK(ptsContains(s2Pts, y));
//     CHECK(!ptsContains(s2Pts, x));
// }

// TEST_CASE("Andersen[FieldSensitivity_GlobalFuncArray]") {
//     AndersPassTest pass;
//     auto module = pass.ParseAssembly(R"(
//         @x = internal global [3 x ptr] [ptr @f1, ptr @f2, ptr @f3], align 8

//         define i32 @main() {
//             %s1 = getelementptr inbounds [3 x ptr], ptr @x, i64 0, i64 0
//             %fptr = load ptr, ptr %s1, align 8

//             ; obviously f4 overwrites @x[2], but tpts(x[2]) will still = {@f3, @f4}
//             %s2 = getelementptr inbounds [3 x ptr], ptr @x, i64 0, i64 2
//             store ptr @f4, ptr %s2, align 8
//             %fptr2 = load ptr, ptr %s2, align 8
//             ret i32 0
//         }

//         define void @f1() { ret void }
//         define void @f2() { ret void }
//         define void @f3() { ret void }
//         define void @f4() { ret void }
//     )");

//     auto anders = runAndersen(*module);
//     const Function *F = module->getFunction("main");
//     const Function *f1 = module->getFunction("f1");
//     const Function *f2 = module->getFunction("f2");
//     const Function *f3 = module->getFunction("f3");
//     const Function *f4 = module->getFunction("f4");

//     const Value *s1 = findInstr(F, "s1");
//     const Value *s2 = findInstr(F, "s2");
//     const Value *fptr = findInstr(F, "fptr");
//     const Value *fptr2 = findInstr(F, "fptr2");

//     PtsSetType s1Pts;
//     anders->getPointsToSet(s1, s1Pts);
//     CHECK(ptsContains(s1Pts, f1));
//     CHECK(!ptsContains(s1Pts, f2));
//     CHECK(!ptsContains(s1Pts, f3));

//     PtsSetType fptrPts;
//     anders->getPointsToSet(fptr, fptrPts);
//     CHECK(ptsContains(fptrPts, f1));
//     CHECK(!ptsContains(fptrPts, f2));
//     CHECK(!ptsContains(fptrPts, f3));

//     PtsSetType s2Pts;
//     anders->getPointsToSet(s2, s2Pts);
//     CHECK(ptsContains(s2Pts, f3));
//     CHECK(ptsContains(s2Pts, f4));
//     CHECK(!ptsContains(s2Pts, f1));
//     CHECK(!ptsContains(s2Pts, f2));

//     PtsSetType fptr2Pts;
//     anders->getPointsToSet(fptr2, fptr2Pts);
//     CHECK(ptsContains(fptr2Pts, f3));
//     CHECK(ptsContains(fptr2Pts, f4));
//     CHECK(!ptsContains(fptr2Pts, f1));
//     CHECK(!ptsContains(fptr2Pts, f2));
// }

// TEST_CASE("Andersen[FieldSensitivity_InlineGEP]") {
//     AndersPassTest pass;
//     auto module = pass.ParseAssembly(R"(
//         @g = internal global [2 x ptr] [ptr @f1, ptr @f2], align 8

//         define i32 @main() {
//             store ptr @f3, ptr getelementptr inbounds ([2 x ptr], ptr @g, i32 0, i32 1), align 8

//             %x = getelementptr inbounds [2 x ptr], ptr @g, i32 0, i32 1
//             %y = load ptr, ptr %x, align 8
//             ret i32 0
//         }

//         define void @f1() { ret void }
//         define void @f2() { ret void }
//         define void @f3() { ret void }
//     )");

//     auto anders = runAndersen(*module);
//     const Function *F = module->getFunction("main");
//     const Function *f1 = module->getFunction("f1");
//     const Function *f2 = module->getFunction("f2");
//     const Function *f3 = module->getFunction("f3");

//     const Value *x = findInstr(F, "x");
//     const Value *y = findInstr(F, "y");

//     PtsSetType s1Pts;
//     PtsSetType s2Pts;
//     anders->getPointsToSet(x, s1Pts);
//     anders->getPointsToSet(y, s2Pts);

//     CHECK(!ptsContains(s1Pts, f1));
//     CHECK(ptsContains(s1Pts, f2));
//     CHECK(ptsContains(s1Pts, f3));

//     CHECK(!ptsContains(s2Pts, f1));
//     CHECK(ptsContains(s2Pts, f2));
//     CHECK(ptsContains(s2Pts, f3));
// }

// TEST_CASE("Andersen[FieldSensitivity_InlineGEP_All_Offset_0]") {
//     AndersPassTest pass;

//     // LLVM will try to turn the store instruction into
//     //  store ptr @f3, @g, align 8
//     // since that still points to the first offset at i=0
//     auto module = pass.ParseAssembly(R"(
//         @g = internal global [2 x ptr] [ptr @f1, ptr @f2], align 8

//         define i32 @main() {
//             store ptr @f3, ptr getelementptr inbounds ([2 x ptr], ptr @g, i32 0, i32 0), align 8

//             %x = getelementptr inbounds [2 x ptr], ptr @g, i32 0, i32 0
//             %y = load ptr, ptr %x, align 8
//             ret i32 0
//         }

//         define void @f1() { ret void }
//         define void @f2() { ret void }
//         define void @f3() { ret void }
//     )");

//     auto anders = runAndersen(*module);
//     const Function *F = module->getFunction("main");
//     const Function *f1 = module->getFunction("f1");
//     const Function *f2 = module->getFunction("f2");
//     const Function *f3 = module->getFunction("f3");

//     const Value *x = findInstr(F, "x");
//     const Value *y = findInstr(F, "y");

//     PtsSetType s1Pts;
//     PtsSetType s2Pts;
//     anders->getPointsToSet(x, s1Pts);
//     anders->getPointsToSet(y, s2Pts);

//     CHECK(!ptsContains(s1Pts, f2));
//     CHECK(ptsContains(s1Pts, f1));
//     CHECK(ptsContains(s1Pts, f3));

//     CHECK(!ptsContains(s2Pts, f2));
//     CHECK(ptsContains(s2Pts, f1));
//     CHECK(ptsContains(s2Pts, f3));
// }

// TEST_CASE("Andersen[FieldSensitivity_Nested]") {
//     AndersPassTest pass;
//     auto module = pass.ParseAssembly(R"(
//         %S = type { [8 x ptr], ptr }
//         %D = type { [8 x [8 x ptr] ], ptr }

//         define i32 @main() {
//             %1 = alloca %S, align 8
//             %x = alloca i32, align 4
//             %y = alloca i32, align 4

//             %s1 = getelementptr inbounds %D, ptr %1, i32 0, i32 0, i32 5, i32 2
//             store ptr %x, ptr %s1, align 8

//             %s2 = getelementptr inbounds %D, ptr %1, i32 0, i32 0, i32 2, i32 7
//             store ptr %y, ptr %s2, align 8

//             ret i32 0
//         }
//     )");

//     auto anders = runAndersen(*module);
//     const Function *F = module->getFunction("main");

//     const Value *x = findInstr(F, "x");
//     const Value *y = findInstr(F, "y");

//     const Value *s1 = findInstr(F, "s1");
//     const Value *s2 = findInstr(F, "s2");

//     PtsSetType s1Pts;
//     anders->getPointsToSet(s1, s1Pts);

//     PtsSetType s2Pts;
//     anders->getPointsToSet(s2, s2Pts);

//     CHECK(ptsContains(s1Pts, x));
//     CHECK(!ptsContains(s1Pts, y));

//     CHECK(ptsContains(s2Pts, y));
//     CHECK(!ptsContains(s2Pts, x));
// }

// TEST_CASE("Andersen[FieldSensitivity_Nested_Global]") {
//     AndersPassTest pass;
//     auto module = pass.ParseAssembly(R"(
//         @h = internal global [2 x [2 x ptr]] [
//             [2 x ptr] [ptr @f1, ptr @f2],
//             [2 x ptr] [ptr @f3, ptr @f4]
//         ]

//         define i32 @main() {
//             %x = alloca i32, align 4
//             %y = alloca i32, align 4

//             %s1 = getelementptr inbounds [2 x [2 x ptr]], ptr @h, i32 0, i32 0, i32 1
//             store ptr %x, ptr %s1, align 8

//             %s2 = getelementptr inbounds [2 x [2 x ptr]], ptr @h, i32 0, i32 1, i32 0
//             store ptr %y, ptr %s2, align 8

//             ret i32 0
//         }

//         define void @f1() { ret void }
//         define void @f2() { ret void }
//         define void @f3() { ret void }
//         define void @f4() { ret void }
//     )");

//     auto anders = runAndersen(*module);
//     const Function *F = module->getFunction("main");
//     const Function *f1 = module->getFunction("f1");
//     const Function *f2 = module->getFunction("f2");
//     const Function *f3 = module->getFunction("f3");
//     const Function *f4 = module->getFunction("f4");

//     const Value *x = findInstr(F, "x");
//     const Value *y = findInstr(F, "y");

//     const Value *s1 = findInstr(F, "s1");
//     const Value *s2 = findInstr(F, "s2");

//     PtsSetType s1Pts;
//     anders->getPointsToSet(s1, s1Pts);

//     PtsSetType s2Pts;
//     anders->getPointsToSet(s2, s2Pts);

//     CHECK(ptsContains(s1Pts, x));
//     CHECK(ptsContains(s1Pts, f2));
//     CHECK(!ptsContains(s1Pts, y));
//     CHECK(!ptsContains(s1Pts, f1));
//     CHECK(!ptsContains(s1Pts, f3));
//     CHECK(!ptsContains(s1Pts, f4));

//     CHECK(ptsContains(s2Pts, y));
//     CHECK(ptsContains(s2Pts, f3));
//     CHECK(!ptsContains(s2Pts, x));
//     CHECK(!ptsContains(s2Pts, f1));
//     CHECK(!ptsContains(s2Pts, f2));
//     CHECK(!ptsContains(s2Pts, f4));
// }

// TEST_CASE("Andersen[FieldSensitivity_Nested_Depth]") {
//     return;
//     AndersPassTest pass;
//     auto module = pass.ParseAssembly(R"(
//         %"InnerHolder<'_>" = type { ptr, ptr }
//         %Holder = type { ptr, ptr, ptr, i64 }

//         define i32 @HolderExec(ptr align 8 %self, i32 %a) {
//         start:
//           %_3 = load ptr, ptr %self, align 8
//           %_0 = call i32 %_3(i32 %a)
//           ret i32 %_0
//         }

//         define internal i64 @F1(ptr align 8 %h) {
//         start:
//           %_3 = load ptr, ptr %h, align 8
//           %_2 = call i32 %_3(i32 100)
//           %_0 = sext i32 %_2 to i64
//           ret i64 %_0
//         }

//         define internal i64 @F2(ptr align 8 %h) {
//         start:
//           %_0 = call i64 @F1(ptr align 8 %h)
//           ret i64 %_0
//         }

//         define i32 @F0(i32 %a) { ret i32 %a }
//         define i32 @F3(i32 %a) { ret i32 %a }

//         define void @_start() {
//         start:
//           %ih = alloca %"InnerHolder<'_>", align 8
//           %f = alloca %Holder, align 8
//           store ptr @F0, ptr %f, align 8

//           %h2 = getelementptr inbounds %"Holder", ptr %f, i32 0, i32 2
//           %i1 = getelementptr inbounds %"InnerHolder<'_>", ptr %ih, i32 0, i32 1
//           store ptr @F3, ptr %h2, align 8
//           store ptr %h2, ptr %i1, align 8
//           %i1L = load ptr, ptr %i1, align 8
//           %r = call i64 @F2(ptr align 8 %i1L)

//           %0 = getelementptr inbounds %"InnerHolder<'_>", ptr %ih, i32 0, i32 0
//           store ptr %f, ptr %0, align 8

//           ; This previously caused a lot of trouble because the solver was doing this
//           ; and skipping @F2's _3.
//           %1 = getelementptr inbounds %"InnerHolder<'_>", ptr %ih, i32 0, i32 0
//           %_15 = load ptr, ptr %1, align 8
//           %_11 = call i32 @HolderExec(ptr align 8 %_15, i32 200)

//           %_6 = getelementptr inbounds %"InnerHolder<'_>", ptr %ih, i32 0, i32 0
//           %_7 = load ptr, ptr %_6, align 8
//           %_8 = call i64 @F2(ptr align 8 %_7)
//           ret void
//         }

//     )");

//     auto anders = runAndersen(*module);
//     const Function *F = module->getFunction("_start");
//     const Function *HolderExec = module->getFunction("HolderExec");
//     const Function *F1 = module->getFunction("F1");
//     const Function *F0 = module->getFunction("F0");
//     const Function *F3 = module->getFunction("F3");

//     const Value *hExec3 = findInstr(HolderExec, "_3");
//     const Value *F1_3 = findInstr(F1, "_3");

//     PtsSetType s1Pts;
//     anders->getPointsToSet(hExec3, s1Pts);
//     CHECK(ptsContains(s1Pts, F0));
//     CHECK(!ptsContains(s1Pts, F3));

//     PtsSetType s2Pts;
//     anders->getPointsToSet(F1_3, s2Pts);
//     CHECK(ptsContains(s2Pts, F0));
//     CHECK(ptsContains(s2Pts, F3));

// }

// TEST_CASE("Andersen[FieldSensitivity_PointerOffset]") {
//     AndersPassTest pass;
//     auto module = pass.ParseAssembly(R"(
//         %I = type { ptr, ptr }
//         %S = type { %I, %I }

//         define i32 @main() {
//             %p = alloca %S
//             %q = alloca i32

//             ; i64 1: move by sizeof(%I) (second %I field of %S)
//             ; i32 1: select the second pointer field within that %I
//             ; Equivalent to ..ptr %p, i32 0, i32 1, i32 1
//             %field = getelementptr %I, ptr %p, i64 1, i32 1
//             store ptr %q, ptr %field

//             %field2 = getelementptr %S, ptr %p, i64 0, i32 0

//             %field3 = getelementptr %S, ptr %p, i64 0, i32 1, i32 1

//             ret i32 0
//         }
//     )");

//     auto anders = runAndersen(*module);
//     const Function *F = module->getFunction("main");

//     const Value *field = findInstr(F, "field");
//     const Value *field2 = findInstr(F, "field2");
//     const Value *field3 = findInstr(F, "field3");
//     const Value *q = findInstr(F, "q");

//     PtsSetType s1Pts;
//     anders->getPointsToSet(field, s1Pts);

//     PtsSetType s2Pts;
//     anders->getPointsToSet(field2, s2Pts);

//     PtsSetType s3Pts;
//     anders->getPointsToSet(field3, s3Pts);

//     CHECK(ptsContains(s1Pts, q));
//     CHECK(!ptsContains(s2Pts, q));
//     CHECK(ptsContains(s3Pts, q));
// }

// TEST_CASE("Andersen[FieldSensitivity_Byte]") {
//     AndersPassTest pass;
//     auto module = pass.ParseAssembly(R"(
//         %S = type { [64 x i8] }

//         define i32 @main() {
//             %p = alloca %S
//             %q = alloca i8
//             %h = alloca i8

//             ; First field: [64 x i8]
//             %base = getelementptr inbounds %S, ptr %p, i32 0, i32 0

//             ; Move 8 bytes..yields &S->field[1]
//             %ptr = getelementptr inbounds i8, ptr %base, i64 1
//             store ptr %q, ptr %ptr

//             ; Equivalent to %ptr
//             %eq = getelementptr inbounds %S, ptr %p, i32 0, i32 0, i32 1

//             %other = getelementptr inbounds %S, ptr %p, i32 0, i32 0, i32 20
//             store ptr %h, ptr %other

//             ret i32 0
//         }
//     )");

//     auto anders = runAndersen(*module);
//     const Function *F = module->getFunction("main");

//     const Value *base = findInstr(F, "base");
//     const Value *ptr = findInstr(F, "ptr");
//     const Value *eq = findInstr(F, "eq");
//     const Value *other = findInstr(F, "other");

//     const Value *q = findInstr(F, "q");
//     const Value *h = findInstr(F, "h");

//     PtsSetType s1Pts, s2Pts, s3Pts, s4Pts;
//     anders->getPointsToSet(base, s1Pts);
//     anders->getPointsToSet(ptr, s2Pts);
//     anders->getPointsToSet(eq, s3Pts);
//     anders->getPointsToSet(other, s4Pts);

//     // tPts(base) = {p}
//     CHECK(!ptsContains(s1Pts, q));
//     CHECK(!ptsContains(s1Pts, h));

//     // // tPts(ptr) = {p, q}
//     CHECK(!ptsContains(s2Pts, h));
//     CHECK(ptsContains(s2Pts, q));

//     // // tPts(eq) = tPts(ptr) = {p, q}
//     CHECK(!ptsContains(s3Pts, h));
//     CHECK(ptsContains(s3Pts, q));

//     // // tPts(other) = {p, h}
//     CHECK(!ptsContains(s4Pts, q));
//     CHECK(ptsContains(s4Pts, h));
// }

// TEST_CASE("Andersen[TestALC]") {
//     AndersPassTest pass;
//     auto module = pass.ParseFile("tests/TestALC.ll");
//     auto anders = runAndersen(*module);

//     // _4.i and q should alias

//     auto f = module->getFunction("_start");
//     auto *i = findInstr(f, "_4.i");
//     auto *i1 = findInstr(f, "_4.i1");
//     auto *y = findInstr(f, "ptr");
//     auto *q = findInstr(f, "q");

//     errs() << anders->alias(i1, y) << "\n";
// }

// TEST_CASE("Andersen[HeapCopy]") {
//     return;
//     AndersPassTest pass;
//     auto module = pass.ParseFile("tests/HeapCopy.ll");
//     auto anders = runAndersen(*module);

//     Function *f = module->getFunction("main");
//     Function *F1 = module->getFunction("F1");
//     Function *F2 = module->getFunction("F2");
//     const Value *main = findInstr(f, "l");
//     const Value *local = findInstr(f, "local");
//     const Value *F1A = F1->getArg(0);
//     const Value *F2A = F2->getArg(0);
//     const Value *loadF = findInstr(F2, "loadF"); 
//     PtsSetType set;

//     anders->getPointsToSet(F1A, set);
//     CHECK(!ptsContains(set, local));

//     bool success = anders->addConstraint(AndersConstraint::COPY, F1A, main);
//     CHECK(success);
//     anders->resolveConstraints();

//     anders->getPointsToSet(F1A, set);
//     CHECK(ptsContains(set, local));

//     anders->getPointsToSet(main, set);
//     CHECK(ptsContains(set, local));
// }


// TEST_CASE("Andersen[FieldSensitivity_SimpleX]") {
//     AndersPassTest pass;
//     // O: %1, %1.f0, %1.f1, %x, %y
//     // V: %1, %x, %y, %s1, %s2
//     // pt(%1)      = { o1 }
//     // pt(%x)      = { ox }
//     // pt(%y)      = { oy }

//     // pt(%s1)     = { o1.f0 }
//     // pt(%s2)     = { o1.f1 }

//     // pt(o1.f0)   = { ox }
//     // pt(o1.f1)   = { oy }
//     auto module = pass.ParseAssembly(R"(
//         %S = type { ptr, ptr }

//         define i32 @main() {
//             %1 = alloca %S, align 8
//             %x = alloca i32, align 4
//             %y = alloca i32, align 4

//             ; tpts(s1) = {%1.f0, %x}
//             %s1 = getelementptr inbounds %S, ptr %1, i32 0, i32 0
//             store ptr %x, ptr %s1, align 8

//             ; tpts(s2) = {%1.f1, %y}
//             %s2 = getelementptr inbounds %S, ptr %1, i32 0, i32 1
//             store ptr %y, ptr %s2, align 8

//             ret i32 0
//         }
//     )");

//     auto anders = runAndersen(*module);
//     const Function *f = module->getFunction("main");
//     const llvm::Value *x = findInstr(f, "x");
//     const llvm::Value *y = findInstr(f, "y");

//     const llvm::Value *s1 = findInstr(f, "s1");
//     const llvm::Value *s2 = findInstr(f, "s2");

//     PtsSetType ptsSetA;
//     anders->getPointsToSet(s1, ptsSetA);
//     CHECK(ptsContains(ptsSetA, x));
//     CHECK(ptsSetA.size() == 2); // x, %1(f0)

//     PtsSetType ptsSetB;
//     anders->getPointsToSet(s2, ptsSetB);
//     CHECK(ptsContains(ptsSetB, y));
//     CHECK(ptsSetB.size() == 2); // y, %1(f1)

// }

// TEST_CASE("Andersen[FieldSensitivity_Constant_Global_Nested]") {
//     AndersPassTest pass;
//     auto module = pass.ParseAssembly(R"(
//         @in0 = internal constant [2 x ptr] [ptr @f1, ptr @f2], align 8
//         @in1 = internal constant [2 x ptr] [ptr @f3, ptr @f4], align 8
//         @x = internal constant { ptr, ptr } { ptr @in0, ptr @in1 }, align 8

//         define i32 @main() {
//             %s1 = getelementptr inbounds { ptr, ptr }, ptr @x, i64 0, i32 0
//             %t1 = getelementptr inbounds [2 x ptr], ptr %s1, i64 0, i32 0
//             %fptr = load ptr, ptr %t1, align 8

//             %s2 = getelementptr inbounds { ptr, ptr }, ptr @x, i64 0, i32 1
//             %t2 = getelementptr inbounds [2 x ptr], ptr %s2, i64 0, i32 1
//             store ptr @f5, ptr %t2, align 8
//             %fptr2 = load ptr, ptr %s2, align 8
//             ret i32 0
//         }

//         define void @f1() { ret void }
//         define void @f2() { ret void }
//         define void @f3() { ret void }
//         define void @f4() { ret void }
//         define void @f5() { ret void }
//     )");

//     auto anders = runAndersen(*module);
//     const Function *F = module->getFunction("main");
//     const Function *f1 = module->getFunction("f1");
//     const Function *f2 = module->getFunction("f2");
//     const Function *f3 = module->getFunction("f3");
//     const Function *f4 = module->getFunction("f4");
//     const Function *f5 = module->getFunction("f5");

//     const Value *s1 = findInstr(F, "s1");
//     const Value *t1 = findInstr(F, "t1");
//     const Value *s2 = findInstr(F, "s1");
//     const Value *t2 = findInstr(F, "t1");
//     const Value *fptr = findInstr(F, "fptr");
//     const Value *fptr2 = findInstr(F, "fptr2");

//     PtsSetType ptsSetA;
//     anders->getPointsToSet(fptr2, ptsSetA);
//     CHECK(ptsContains(ptsSetA, f3));
//     CHECK(ptsContains(ptsSetA, f5));
//     CHECK(ptsSetA.size() == 3); // @in1, f5, f3

//     PtsSetType ptsSetB;
//     anders->getPointsToSet(fptr, ptsSetB);
//     CHECK(ptsContains(ptsSetB, f1));
//     CHECK(ptsSetB.size() == 2); // @in0, f1
// }

// TEST_CASE("Andersen[Function_Pointer_2]") {
//     return;
//     AndersPassTest pass;
//     auto module = pass.ParseAssembly(R"(
//         define i32 @main() {
//             %x = alloca ptr, align 8
//             %y = alloca i32, align 8
//             store ptr %y, ptr %x

//             %l = load ptr, ptr %x, align 8

//             %z = alloca ptr, align 8
//             %q = alloca i32, align 8
//             store ptr %q, ptr %z

//             %l2 = load ptr, ptr %z, align 8
//             call void @func(ptr @f1, ptr %l)
//             call void @func(ptr @f2, ptr %l2)
//             ret i32 0
//         }

//         define void @func(ptr %_1, ptr %_2) {
//             call void %_1(ptr %_2)
//             ret void
//         }
//         define void @f1(ptr %paramA) { ret void }
//         define void @f2(ptr %paramB) { ret void }

//     )");

//     auto anders = runAndersen(*module);
//     const Function *F = module->getFunction("main");
//     const Function *f1 = module->getFunction("f1");
//     const Function *f2 = module->getFunction("f2");

//     const llvm::Value *q = findInstr(F, "q");
//     const llvm::Value *y = findInstr(F, "y");
    
//     std::vector<const llvm::Value*> ptsSetA;
//     std::vector<const llvm::Value*> ptsSetB;

//     anders->getPointsToSet(f1->getArg(0), ptsSetA);
//     anders->getPointsToSet(f2->getArg(0), ptsSetB);

//     CHECK(ptsSetA.size() == 1);
//     CHECK(ptsContains(ptsSetA, y));
   
//     CHECK(ptsSetA.size() == 1);
//     CHECK(ptsContains(ptsSetB, q));
// }

// TEST_CASE("Andersen[memcpy]") {
//     AndersPassTest pass;
//     auto module = pass.ParseAssembly(R"(
//         %S = type { ptr, ptr }

//         define i32 @main() {
//             %1 = alloca %S, align 8
//             %x = alloca i32, align 4
//             %y = alloca i32, align 4

//             ; tpts(s1) = {%1.f0, %x}
//             %s1 = getelementptr inbounds %S, ptr %1, i32 0, i32 0
//             store ptr %x, ptr %s1, align 8

//             ; tpts(s2) = {%1.f1, %y}
//             %s2 = getelementptr inbounds %S, ptr %1, i32 0, i32 1
//             store ptr %y, ptr %s2, align 8

//             %2 = alloca %S, align 8
//             call void @llvm.memcpy.p0.p0.i64(ptr %2, ptr %1, i64 0, i1 0)

//             %t1 = getelementptr inbounds %S, ptr %2, i32 0, i32 0
//             %l1 = load ptr, ptr %t1, align 8

//             %t2 = getelementptr inbounds %S, ptr %2, i32 0, i32 1
//             %l2 = load ptr, ptr %t2, align 8

//             ret i32 0
//         }
//         declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1 immarg)

//     )");

//     auto anders = runAndersen(*module);
//     const Function *f = module->getFunction("main");
//     const llvm::Value *x = findInstr(f, "x");
//     const llvm::Value *y = findInstr(f, "y");

//     const llvm::Value *s1 = findInstr(f, "s1");
//     const llvm::Value *s2 = findInstr(f, "s2");

//     const llvm::Value *t1 = findInstr(f, "t1");

//     const llvm::Value *l1 = findInstr(f, "l1");
//     const llvm::Value *l2 = findInstr(f, "l2");
//     const llvm::Value *a2 = findInstr(f, "2");

//     PtsSetType ptsSetA;
//     anders->getPointsToSet(s1, ptsSetA);
//     CHECK(ptsContains(ptsSetA, x));
//     CHECK(ptsSetA.size() == 2); // x, %1(f0)

//     PtsSetType ptsSetB;
//     anders->getPointsToSet(s2, ptsSetB);
//     CHECK(ptsContains(ptsSetB, y));
//     CHECK(ptsSetB.size() == 2); // y, %1(f1)


//     PtsSetType ptsSetC;
//     anders->getPointsToSet(l1, ptsSetC);
//     CHECK(ptsContains(ptsSetC, x));
//     CHECK(ptsSetC.size() == 1); // x

//     PtsSetType ptsSetD;
//     anders->getPointsToSet(l2, ptsSetD);
//     CHECK(ptsContains(ptsSetD, y));
//     CHECK(ptsSetD.size() == 1); // y
// }


// TEST_CASE("Andersen[FieldSensitivity_Aggregate_Parameter_Type]") {
//     AndersPassTest pass;
//     auto module = pass.ParseAssembly(R"(
//         %S = type { ptr, ptr }
//         define void @f1(ptr %_1) {
//             %load = load ptr, ptr %_1, align 8
//             ret void
//         }

//         define void @f2(ptr %_2) {
//             %t1 = getelementptr inbounds %S, ptr %_2, i32 0, i32 0
//             %tLoad1 = load ptr, ptr %t1, align 8

//             %t2 = getelementptr inbounds %S, ptr %_2, i32 0, i32 1
//             %tLoad2 = load ptr, ptr %t2, align 8
//             ret void
//         }

//         define i32 @main() {
//             %x = alloca %S, align 8
//             %y = alloca ptr, align 8
//             %z = alloca ptr, align 8

//             %s1 = getelementptr inbounds %S, ptr %x, i32 0, i32 0
//             store ptr %y, ptr %s1, align 8

//             %s2 = getelementptr inbounds %S, ptr %x, i32 0, i32 1
//             store ptr %z, ptr %s2, align 8

//             call void @f1(ptr %s1)
//             call void @f1(ptr %s2)
//             call void @f2(ptr %x)
//             ret i32 0
//         }
//     )");

//     auto anders = runAndersen(*module);
//     const Function *F = module->getFunction("main");
//     const Function *f1 = module->getFunction("f1");
//     const Function *f2 = module->getFunction("f2");

//     const llvm::Value *load = findInstr(f1, "load");
//     const llvm::Value *y = findInstr(F, "y");
//     const llvm::Value *z = findInstr(F, "z");

//     const llvm::Value *tLoad1 = findInstr(f2, "tLoad1");
//     const llvm::Value *tLoad2 = findInstr(f2, "tLoad2");

//     PtsSetType ptsSetA;
//     anders->getPointsToSet(load, ptsSetA, 1u);
//     CHECK(ptsContains(ptsSetA, y));
//     CHECK(!ptsContains(ptsSetA, z));
//     CHECK(ptsSetA.size() == 1);

//     PtsSetType ptsSetB;
//     anders->getPointsToSet(load, ptsSetB, 2u);
//     CHECK(ptsContains(ptsSetB, z));
//     CHECK(!ptsContains(ptsSetB, y));
//     CHECK(ptsSetB.size() == 1);

//     PtsSetType ptsSetC;
//     anders->getPointsToSet(tLoad1, ptsSetC, 3u);
//     CHECK(ptsContains(ptsSetC, y));
//     CHECK(!ptsContains(ptsSetC, z));
//     CHECK(ptsSetC.size() == 1);

//     PtsSetType ptsSetD;
//     anders->getPointsToSet(tLoad2, ptsSetD, 3u);
//     CHECK(ptsContains(ptsSetD, z));
//     CHECK(!ptsContains(ptsSetD, y));
//     CHECK(ptsSetD.size() == 1);
// }

TEST_CASE("Andersen[HeapCopy]") {
    AndersPassTest pass;
    auto module = pass.ParseFile("tests/HeapCopy.ll");
    auto anders = runAndersen(*module);

    Function *f = module->getFunction("main");
    Function *F1 = module->getFunction("F1");
    Function *F2 = module->getFunction("F2");
    // const Value *main = findInstr(f, "l");
    // const Value *local = findInstr(f, "local");
    const Value *F1A = F1->getArg(0);
    const Value *F2A = F2->getArg(0);
    const Value *loadF = findInstr(F2, "loadF");
    // const Value *f0 = findInstr(F2, "f0");
    // PtsSetType set;

    // anders->getPointsToSet(F1A, set);
    // CHECK(!ptsContains(set, local));

    // anders->connectContexts(f, F1);
    // bool success = anders->addConstraint(AndersConstraint::COPY, F1A, main);
    // CHECK(success);
    // anders->resolveConstraints();

    // anders->getPointsToSet(F1A, set);
    // CHECK(ptsContains(set, local));

    // anders->getPointsToSet(main, set);
    // CHECK(ptsContains(set, local));

    anders->printPointsToSet(loadF);
    // anders->printPointsToSet(F2A);
}
