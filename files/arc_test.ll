; ModuleID = 'atomics.c'
source_filename = "atomics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%S = type { i32, i32, i32, i32 }

define ptr @new(i32 %a) {
  %s = alloca %S
  %f = getelementptr inbounds %S, ptr %s, i64 0, i32 2
  store i32 0, ptr %f
  
  %h = call ptr @malloc(i64 16)
  call void @llvm.memcpy.p0.p0.i64(ptr %h, ptr %s, i64 16, i1 0)
  ret ptr %h
}

define i32 @main() #0 {
  %data = call ptr @new(i32 0)
  %f = getelementptr inbounds %S, ptr %data, i64 0, i32 2
  %f2 = getelementptr inbounds %S, ptr %data, i64 0, i32 2
  ret i32 0
}

declare ptr @malloc(i64)
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1 immarg) #19

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 17.0.6 (++20231209124227+6009708b4367-1~exp1~20231209124336.77)"}
