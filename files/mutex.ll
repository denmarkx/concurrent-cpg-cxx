; ModuleID = 'mutex.c'
source_filename = "mutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }

@lock = dso_local global %union.pthread_mutex_t zeroinitializer, align 8
@count = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @routine(ptr noundef %0) #0 {
  %T1L = call i32 @pthread_mutex_lock(ptr noundef @lock) #2
  store i32 40, ptr @count, align 4
  %T1R = call i32 @pthread_mutex_unlock(ptr noundef @lock) #2
  ret ptr null
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @secondary(ptr noundef %0) #0 {
  %T2L = call i32 @pthread_mutex_lock(ptr noundef @lock) #2
  %R = load i32, ptr @count, align 4
  %T2R = call i32 @pthread_mutex_unlock(ptr noundef @lock) #2
  ret ptr null
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i32 0, ptr %1, align 4
  %4 = call i32 @pthread_create(ptr noundef %2, ptr noundef null, ptr noundef @routine, ptr noundef null) #2
  %5 = call i32 @pthread_create(ptr noundef %3, ptr noundef null, ptr noundef @secondary, ptr noundef null) #2
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1
declare i32 @pthread_join(i64, ptr) #1
declare i32 @pthread_mutex_lock(ptr noundef) #1
declare i32 @pthread_mutex_unlock(ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 17.0.6 (++20231209124227+6009708b4367-1~exp1~20231209124336.77)"}
