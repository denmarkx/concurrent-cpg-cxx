; ModuleID = 'atomics.c'
source_filename = "atomics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

define void @F1() {
  call void @Share()
  %ptrA = alloca ptr
  ret void
}

define void @F2() {
  call void @Share()
  %ptrB = alloca ptr
  ret void
}

define void @Share() {
  ret void
}

define i32 @main() {
  %H1 = alloca i32, align 4
  %T1 = call i32 @pthread_create(ptr noundef %H1, ptr noundef null, ptr noundef @F1, ptr noundef null)

  %H2 = alloca i32, align 4
  %T2 = call i32 @pthread_create(ptr noundef %H2, ptr noundef null, ptr noundef @F2, ptr noundef null)
  ret i32 0
}

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 17.0.6 (++20231209124227+6009708b4367-1~exp1~20231209124336.77)"}
