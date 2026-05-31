target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%S = type { ptr, ptr, ptr, ptr }

define void @F1(ptr %f1a) { ; f1a = %main
  call void @F2(ptr %f1a)
  ret void
}

define void @F2(ptr %f2a) {
  %f0 = getelementptr inbounds %S, ptr %f2a, i32 0, i32 2
  %loadF = load ptr, ptr %f0
  ret void
}

define i32 @main(ptr %_1) {
  %local = alloca %S, align 8
  %main = alloca %S, align 8
  %x = alloca %S, align 8

  %f0 = getelementptr inbounds %S, ptr %main, i32 0, i32 2
  store ptr %local, ptr %f0

  call void @F1(ptr %main)
  ret i32 0
}

attributes #0 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg)
declare ptr @__rust_alloc(i64, i64 allocalign) unnamed_addr #0
