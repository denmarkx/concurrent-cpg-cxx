target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%S = type { ptr, ptr, ptr, ptr }
; %H = type { ptr, ptr }

; define ptr @clone(ptr %self) {
;   %self1 = load ptr, ptr %self, align 8
;   %ptr = load ptr, ptr %self, align 8
;   ret ptr %ptr
; }

define void @F1(ptr %f1a) {
  call void @F2(ptr %f1a)
  ret void
}

define void @F2(ptr %f2a) {
  %f0 = getelementptr inbounds %S, ptr %f2a, i32 0, i32 2
  %loadF = load ptr, ptr %f0, align 8

  ; context wont persist if called from fptr
  ret void
}

; define void @prepremain() {
;   %x = alloca ptr, align 8
;   %_0 = alloca ptr, align 8
;   store ptr %_0, ptr %x
;   %c = call ptr @clone(ptr %x)
;   call void @premain(ptr %c)
;   ret void
; }

; define void @premain(ptr %ptr) {
;   call i32 @main(ptr %ptr)
;   ret void
; }

; define { ptr, i64 } @alloc() {
;   %ptr = call ptr @__rust_alloc(i64 0, i64 0)
;   %v = insertvalue { ptr, i64 } poison, ptr %ptr, 0
;   %n = insertvalue { ptr, i64 } %v, i64 0, 1
;   ret { ptr, i64 } %n
; }

; define ptr @exchange_malloc() {
;   %z = call { ptr, i64 } @alloc()
;   %ptr = extractvalue { ptr, i64 } %z, 0
;   ret ptr %ptr
; }

define ptr @exchange_malloc() {
  %ptr = call ptr @__rust_alloc(i64 0, i64 0)
  ret ptr %ptr
}

define i32 @main(ptr %_1) {
  %local = alloca %S, align 8
  %main = alloca %S, align 8
  %x = alloca %S, align 8

  ; %f0 = getelementptr inbounds %S, ptr %main, i32 0, i32 2
  ; store ptr %_1, ptr %f0

  ; %y = alloca %S, align 8
  %f0 = getelementptr inbounds %S, ptr %main, i32 0, i32 2
  store ptr %local, ptr %f0
  ; %y = alloca %S, align 8

  call void @llvm.memcpy.p0.p0.i64(ptr %x, ptr %main, i64 32, i1 0)

  %y = call ptr @exchange_malloc()
  call void @llvm.memcpy.p0.p0.i64(ptr %y, ptr %x, i64 32, i1 0)

  %f1 = getelementptr inbounds %S, ptr %y, i32 0, i32 2
  %l = load ptr, ptr %f1, align 8

  ret i32 0
}

attributes #0 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg)
declare ptr @__rust_alloc(i64, i64 allocalign) unnamed_addr #0
