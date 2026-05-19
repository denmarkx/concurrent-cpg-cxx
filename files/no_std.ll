; ModuleID = 'no_std.e1e175df0a94ad47-cgu.0'
source_filename = "no_std.e1e175df0a94ad47-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"InnerHolder<'_>" = type { ptr }
%Holder = type { ptr, i64 }

; no_std::Holder::execute
; Function Attrs: nounwind
define internal i32 @_ZN6no_std6Holder7execute17hb12f6f721f3603e9E(ptr align 8 %self, i32 %a) unnamed_addr #0 {
start:
  %_3 = load ptr, ptr %self, align 8, !nonnull !3, !noundef !3
  %_0 = call i32 %_3(i32 %a) #2
  ret i32 %_0
}

; Function Attrs: noreturn nounwind
define hidden void @rust_begin_unwind(ptr align 8 %_info) unnamed_addr #1 {
start:
  br label %bb1

bb1:                                              ; preds = %bb1, %start
  br label %bb1
}

; no_std::f1
; Function Attrs: nounwind
define internal i32 @_ZN6no_std2f117h9c8ff072aecc2744E(i32 %a) unnamed_addr #0 {
start:
  ret i32 %a
}

; no_std::f2
; Function Attrs: nounwind
define internal i32 @_ZN6no_std2f217h0539611d92241702E(i32 %a) unnamed_addr #0 {
start:
  ret i32 %a
}

; no_std::f3
; Function Attrs: nounwind
define internal i32 @_ZN6no_std2f317h054760ba64d1cb7cE(i32 %a) unnamed_addr #0 {
start:
  ret i32 %a
}

; no_std::actual
; Function Attrs: nounwind
define internal i64 @_ZN6no_std6actual17h53accf2006df8e3fE(ptr align 8 %h) unnamed_addr #0 {
start:
  %_3 = load ptr, ptr %h, align 8, !nonnull !3, !noundef !3
  %_2 = call i32 %_3(i32 100) #2
  %_0 = sext i32 %_2 to i64
  ret i64 %_0
}

; no_std::something
; Function Attrs: nounwind
define internal i64 @_ZN6no_std9something17h05cc3a5cae01eb65E(ptr align 8 %h) unnamed_addr #0 {
start:
; call no_std::actual
  %_0 = call i64 @_ZN6no_std6actual17h53accf2006df8e3fE(ptr align 8 %h) #2
  ret i64 %_0
}

; Function Attrs: nounwind
define dso_local void @_start() unnamed_addr #0 {
start:
  %ih = alloca %"InnerHolder<'_>", align 8
  ; %f3 = alloca %Holder, align 8
  ; %f2 = alloca %Holder, align 8
  %f = alloca %Holder, align 8
  ; %0 = getelementptr inbounds i8, ptr %f, i64 8
  ; store i64 200, ptr %0, align 8
  store ptr @_ZN6no_std2f117h9c8ff072aecc2744E, ptr %f, align 8
  ; %1 = getelementptr inbounds i8, ptr %f2, i64 8
  ; store i64 200, ptr %1, align 8
  ; store ptr @_ZN6no_std2f217h0539611d92241702E, ptr %f2, align 8
  ; %2 = getelementptr inbounds i8, ptr %f3, i64 8
  ; store i64 200, ptr %2, align 8
  ; store ptr @_ZN6no_std2f317h054760ba64d1cb7cE, ptr %f3, align 8
  ; store ptr %f2, ptr %ih, align 8
  %0 = getelementptr inbounds %"InnerHolder<'_>", ptr %ih, i32 0, i32 0
  store ptr %f, ptr %0, align 8
  ; %4 = getelementptr inbounds %"InnerHolder<'_>", ptr %ih, i32 0, i32 2
  ; store ptr %f, ptr %4, align 8
  %1 = getelementptr inbounds %"InnerHolder<'_>", ptr %ih, i32 0, i32 0
  %_15 = load ptr, ptr %1, align 8, !nonnull !3, !align !4, !noundef !3
; call no_std::Holder::execute
  %_11 = call i32 @_ZN6no_std6Holder7execute17hb12f6f721f3603e9E(ptr align 8 %_15, i32 200) #2
  ; %6 = getelementptr inbounds %"InnerHolder<'_>", ptr %ih, i32 0, i32 2
  ; %_16 = load ptr, ptr %6, align 8, !nonnull !3, !align !4, !noundef !3
; call no_std::Holder::execute
  ; %_12 = call i32 @_ZN6no_std6Holder7execute17hb12f6f721f3603e9E(ptr align 8 %_16, i32 200) #2
  %_6 = getelementptr inbounds %"InnerHolder<'_>", ptr %ih, i32 0, i32 0
  %_7 = load ptr, ptr %_6, align 8, !nonnull !3, !align !4, !noundef !3
; call no_std::something
  %_8 = call i64 @_ZN6no_std9something17h05cc3a5cae01eb65E(ptr align 8 %_7) #2
  ret void
}

attributes #0 = { nounwind "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #1 = { noreturn nounwind "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{!"rustc version 1.77.0 (aedd173a2 2024-03-17)"}
!3 = !{}
!4 = !{i64 8}
