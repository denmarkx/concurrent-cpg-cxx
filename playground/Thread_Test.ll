target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%S = type { ptr, ptr, ptr, ptr }

define void @vtable_shim(ptr %_1) {
  ; %field = getelementptr inbounds %S, ptr %_1, i64 0, i32 2
  ; %load = load ptr, ptr %field
  call void @spawn_closure(ptr %_1)
  ret void
}

; _ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17hcac0d9034fc41565E
define void @spawn_closure(ptr %_1) {
  ; works only if line 7 and 8 are uncommented.
  ; will also not create all fields
  %field = getelementptr inbounds %S, ptr %_1, i64 0, i32 2
  %load = load ptr, ptr %field
  ret void
}

; _ZN3std6thread7Builder16spawn_unchecked_17h019f696881696a30E
define void @spawn() {
  %_33 = alloca %S
  %main = alloca %S

  %x = alloca ptr
  %field = getelementptr inbounds %S, ptr %main, i64 0, i32 2
  store ptr %x, ptr %field

  call void @llvm.memcpy.p0.p0.i64(ptr %_33, ptr %main, i64 32, i1 false)

  %_4.i = call ptr @exchange_malloc(i64 0, i64 0)
  call void @llvm.memcpy.p0.p0.i64(ptr %_4.i, ptr %_33, i64 32, i1 false)

  ; good for _33 and main
  ; not good for _4.i where call is to rust_alloc or exchange_malloc
  ; propagates for memcpy, problem is passing to the formal arg.
  ; call void @vtable_shim(ptr %_4.i)
  ret void
}

define ptr @exchange_malloc() {
  %ptr = call ptr @__rust_alloc(i64 0, i64 0)
  ret ptr %ptr
}

attributes #0 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg)
declare ptr @__rust_alloc(i64, i64 allocalign) unnamed_addr #0
