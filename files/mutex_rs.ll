; ModuleID = '../files/mutex_rs.ll'
source_filename = "mutex_rs.23d64843e9159322-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::sync::atomic::AtomicUsize" = type { i64 }
%"std::sync::mutex::Mutex<i32>" = type { %"std::sys::pal::unix::locks::futex_mutex::Mutex", %"std::sync::poison::Flag", [3 x i8], i32 }
%"std::sys::pal::unix::locks::futex_mutex::Mutex" = type { %"core::sync::atomic::AtomicU32" }
%"core::sync::atomic::AtomicU32" = type { i32 }
%"std::sync::poison::Flag" = type { %"core::sync::atomic::AtomicBool" }
%"core::sync::atomic::AtomicBool" = type { i8 }
%"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>" = type { i64, [2 x i64] }
%"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>::Ok" = type { [1 x i64], %"std::sync::mutex::MutexGuard<'_, i32>" }
%"std::sync::mutex::MutexGuard<'_, i32>" = type { ptr, i8, [7 x i8] }
%"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>::Err" = type { [1 x i64], %"std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>" }
%"std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>" = type { %"std::sync::mutex::MutexGuard<'_, i32>" }
%"core::fmt::builders::DebugStruct<'_, '_>" = type { ptr, i8, i8, [6 x i8] }

@vtable.0 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17he9f55b4610e066e7E", [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hd7655fb658090001E", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hf9fa43ea983afaf6E", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hf9fa43ea983afaf6E" }>, align 8
@_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h97ef83b1126fc127E = external global %"core::sync::atomic::AtomicUsize"
@alloc_00ae4b301f7fab8ac9617c03fcbd7274 = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c"called `Result::unwrap()` on an `Err` value" }>, align 1
@vtable.1 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr98drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..mutex..MutexGuard$LT$i32$GT$$GT$$GT$17hc388968b7a00cd3fE", [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN76_$LT$std..sync..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hfff48db6d56eb8e1E" }>, align 8
@alloc_8e2410b80645266732854088d21653bc = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c"PoisonError" }>, align 1
@alloc_c6f41cba4943aab7a1b6515e4a74c39b = private unnamed_addr constant <{ [20 x i8] }> <{ [20 x i8] c"../files/mutex_rs.rs" }>, align 1
@alloc_cc41fadbb5f02a9f0f2644e7b3c59163 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_c6f41cba4943aab7a1b6515e4a74c39b, [16 x i8] c"\14\00\00\00\00\00\00\00\06\00\00\00\22\00\00\00" }>, align 8

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hee269fa2e137f273E(ptr nocapture readonly %f) unnamed_addr #0 {
start:
  tail call fastcc void @_ZN4core3ops8function6FnOnce9call_once17h9acc2048e7794d79E(ptr %f)
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden i64 @_ZN3std2rt10lang_start17hde4ad931e53a4736E(ptr %main, i64 %argc, ptr %argv, i8 %sigpipe) unnamed_addr #1 {
start:
  %_8 = alloca ptr, align 8
  store ptr %main, ptr %_8, align 8
  %0 = call i64 @_ZN3std2rt19lang_start_internal17hd1132dfff4140512E(ptr nonnull align 1 %_8, ptr nonnull align 8 @vtable.0, i64 %argc, ptr %argv, i8 %sigpipe)
  ret i64 %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hf9fa43ea983afaf6E"(ptr nocapture readonly align 8 %_1) unnamed_addr #2 {
start:
  %_4 = load ptr, ptr %_1, align 8, !nonnull !5, !noundef !5
  tail call fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hee269fa2e137f273E(ptr nonnull %_4)
  ret i32 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN3std3sys3pal4unix5locks11futex_mutex5Mutex4lock17h3ff4d96650794713E(ptr align 4 %self) unnamed_addr #2 {
start:
  %0 = tail call fastcc { i32, i32 } @_ZN4core4sync6atomic23atomic_compare_exchange17hd636486f4baf56a9E(ptr %self, i32 0, i32 1, i8 2, i8 0)
  %1 = extractvalue { i32, i32 } %0, 0
  %_11.not = icmp eq i32 %1, 0
  br i1 %_11.not, label %bb3, label %bb1

bb1:                                              ; preds = %start
  tail call void @_ZN3std3sys3pal4unix5locks11futex_mutex5Mutex14lock_contended17h4f7d6dac2a29401eE(ptr align 4 %self)
  br label %bb3

bb3:                                              ; preds = %start, %bb1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal fastcc void @"_ZN3std4sync5mutex14Mutex$LT$T$GT$3new17h8757f6724312697dE"(ptr nocapture writeonly sret(%"std::sync::mutex::Mutex<i32>") align 4 %_0, i32 %t) unnamed_addr #3 {
start:
  store i32 0, ptr %_0, align 4
  %0 = getelementptr inbounds %"std::sync::mutex::Mutex<i32>", ptr %_0, i64 0, i32 1
  store i8 0, ptr %0, align 4
  %1 = getelementptr inbounds %"std::sync::mutex::Mutex<i32>", ptr %_0, i64 0, i32 3
  store i32 1234, ptr %1, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN3std4sync5mutex14Mutex$LT$T$GT$4lock17h818c9bb3e7c1b74cE"(ptr nocapture writeonly sret(%"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>") align 8 %_0, ptr align 4 %self) unnamed_addr #1 {
start:
  tail call fastcc void @_ZN3std3sys3pal4unix5locks11futex_mutex5Mutex4lock17h3ff4d96650794713E(ptr align 4 %self)
  tail call fastcc void @"_ZN3std4sync5mutex19MutexGuard$LT$T$GT$3new17h94f2e5566a3f6a65E"(ptr sret(%"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>") align 8 %_0, ptr align 4 %self)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN3std4sync5mutex19MutexGuard$LT$T$GT$3new17h94f2e5566a3f6a65E"(ptr nocapture writeonly sret(%"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>") align 8 %_0, ptr align 4 %lock) unnamed_addr #1 {
start:
  %_3 = getelementptr inbounds %"std::sync::mutex::Mutex<i32>", ptr %lock, i64 0, i32 1
  %0 = tail call fastcc { i1, i8 } @_ZN3std4sync6poison4Flag5guard17h75141f800fd3a564E(ptr nonnull align 1 %_3)
  %_2.0 = extractvalue { i1, i8 } %0, 0
  %_2.1 = extractvalue { i1, i8 } %0, 1
  %1 = icmp ne ptr %lock, null
  tail call void @llvm.assume(i1 %1)
  tail call fastcc void @_ZN3std4sync6poison10map_result17h0efa5a134c492b0eE(ptr sret(%"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>") align 8 %_0, i1 zeroext %_2.0, i8 %_2.1, ptr nonnull align 4 %lock)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc { ptr, i1 } @"_ZN3std4sync5mutex19MutexGuard$LT$T$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17h30cc46ec2d8f17a0E"(ptr align 4 %_1, i1 zeroext %guard) unnamed_addr #4 {
start:
  %0 = insertvalue { ptr, i1 } poison, ptr %_1, 0
  %1 = insertvalue { ptr, i1 } %0, i1 %guard, 1
  ret { ptr, i1 } %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal fastcc void @_ZN3std4sync6poison10map_result17h0efa5a134c492b0eE(ptr nocapture writeonly sret(%"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>") align 8 %_0, i1 zeroext %0, i8 %1, ptr align 4 %f) unnamed_addr #5 {
start:
  br i1 %0, label %bb1, label %bb3

bb3:                                              ; preds = %start
  %2 = and i8 %1, 1
  %t = icmp ne i8 %2, 0
  %3 = tail call fastcc { ptr, i1 } @"_ZN3std4sync5mutex19MutexGuard$LT$T$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17h30cc46ec2d8f17a0E"(ptr align 4 %f, i1 zeroext %t)
  %_5.0 = extractvalue { ptr, i1 } %3, 0
  %_5.1 = extractvalue { ptr, i1 } %3, 1
  %4 = getelementptr inbounds %"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>::Ok", ptr %_0, i64 0, i32 1
  store ptr %_5.0, ptr %4, align 8
  %5 = getelementptr inbounds %"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>::Ok", ptr %_0, i64 0, i32 1, i32 1
  %6 = zext i1 %_5.1 to i8
  store i8 %6, ptr %5, align 8
  br label %bb6

bb1:                                              ; preds = %start
  %7 = and i8 %1, 1
  %guard = icmp ne i8 %7, 0
  %8 = tail call fastcc { ptr, i1 } @"_ZN3std4sync5mutex19MutexGuard$LT$T$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17h30cc46ec2d8f17a0E"(ptr align 4 %f, i1 zeroext %guard)
  %guard.0 = extractvalue { ptr, i1 } %8, 0
  %guard.1 = extractvalue { ptr, i1 } %8, 1
  %9 = zext i1 %guard.1 to i8
  %10 = getelementptr inbounds %"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>::Err", ptr %_0, i64 0, i32 1
  store ptr %guard.0, ptr %10, align 8
  %11 = getelementptr inbounds %"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>::Err", ptr %_0, i64 0, i32 1, i32 0, i32 1
  store i8 %9, ptr %11, align 8
  br label %bb6

bb6:                                              ; preds = %bb1, %bb3
  %storemerge = phi i64 [ 1, %bb1 ], [ 0, %bb3 ]
  store i64 %storemerge, ptr %_0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN3std4sync6poison4Flag4done17h5ffe62f36e8fd6c9E(ptr nocapture writeonly align 1 %self, ptr nocapture readonly align 1 %guard) unnamed_addr #2 {
start:
  %0 = load i8, ptr %guard, align 1, !range !6, !noundef !5
  %_3.not = icmp eq i8 %0, 0
  br i1 %_3.not, label %bb1, label %bb3

bb1:                                              ; preds = %start
  %_6 = tail call fastcc zeroext i1 @_ZN3std9panicking11panic_count13count_is_zero17hb458faffd22f57a6E()
  br i1 %_6, label %bb3, label %bb2

bb3:                                              ; preds = %bb2, %bb1, %start
  ret void

bb2:                                              ; preds = %bb1
  tail call fastcc void @_ZN4core4sync6atomic12atomic_store17h4ab1958b2a233a16E(ptr %self, i8 1, i8 0)
  br label %bb3
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i1, i8 } @_ZN3std4sync6poison4Flag5guard17h75141f800fd3a564E(ptr nocapture readonly align 1 %self) unnamed_addr #2 {
start:
  %_5 = tail call fastcc zeroext i1 @_ZN3std9panicking11panic_count13count_is_zero17hb458faffd22f57a6E()
  %_7 = tail call fastcc i8 @_ZN4core4sync6atomic11atomic_load17h07fd62d81a2fbb38E(ptr %self, i8 0)
  %0 = icmp ne i8 %_7, 0
  br label %bb2

bb2:                                              ; preds = %start
  br label %bb3

bb3:                                              ; preds = %bb2
  %_3 = xor i1 %_5, true
  %1 = zext i1 %_3 to i8
  %2 = insertvalue { i1, i8 } poison, i1 %0, 0
  %3 = insertvalue { i1, i8 } %2, i8 %1, 1
  ret { i1, i8 } %3
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc zeroext i1 @_ZN3std9panicking11panic_count13count_is_zero17hb458faffd22f57a6E() unnamed_addr #2 {
start:
  %_2 = tail call fastcc i64 @_ZN4core4sync6atomic11atomic_load17h7dfe85a39c94ef13E(ptr nonnull @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h97ef83b1126fc127E, i8 0)
  %_1 = and i64 %_2, 9223372036854775807
  %0 = icmp eq i64 %_1, 0
  br i1 %0, label %bb3, label %bb2

bb2:                                              ; preds = %start
  %1 = tail call zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h082ee561e24f3651E()
  br label %bb3

bb3:                                              ; preds = %start, %bb2
  %_0.0 = phi i1 [ %1, %bb2 ], [ true, %start ]
  ret i1 %_0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hd7655fb658090001E"(ptr nocapture readonly %_1) unnamed_addr #2 {
start:
  %0 = load ptr, ptr %_1, align 8, !nonnull !5, !noundef !5
  %_0 = tail call fastcc i32 @_ZN4core3ops8function6FnOnce9call_once17h7321ff7cd9705e28E(ptr nonnull %0), !range !7
  ret i32 %_0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc i32 @_ZN4core3ops8function6FnOnce9call_once17h7321ff7cd9705e28E(ptr %0) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %_1 = alloca ptr, align 8
  store ptr %0, ptr %_1, align 8
  %_0 = invoke i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hf9fa43ea983afaf6E"(ptr nonnull align 8 %_1)
          to label %bb1 unwind label %bb3, !range !7

bb3:                                              ; preds = %start
  %1 = landingpad { ptr, i32 }
          cleanup
  resume { ptr, i32 } %1

bb1:                                              ; preds = %start
  ret i32 %_0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core3ops8function6FnOnce9call_once17h9acc2048e7794d79E(ptr nocapture readonly %_1) unnamed_addr #2 {
start:
  tail call void %_1()
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr60drop_in_place$LT$std..sync..mutex..MutexGuard$LT$i32$GT$$GT$17h762b5f94620456b4E"(ptr nocapture readonly align 8 %_1) unnamed_addr #1 {
start:
  tail call fastcc void @"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h356fa6d5798d3256E"(ptr align 8 %_1)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17he9f55b4610e066e7E"(ptr nocapture readnone align 8 %_1) unnamed_addr #4 {
start:
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr98drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..mutex..MutexGuard$LT$i32$GT$$GT$$GT$17hc388968b7a00cd3fE"(ptr nocapture readonly align 8 %_1) unnamed_addr #1 {
start:
  tail call fastcc void @"_ZN4core3ptr60drop_in_place$LT$std..sync..mutex..MutexGuard$LT$i32$GT$$GT$17h762b5f94620456b4E"(ptr align 8 %_1)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc i8 @_ZN4core4sync6atomic11atomic_load17h07fd62d81a2fbb38E(ptr nocapture readonly %dst, i8 %0) unnamed_addr #6 {
bb2:
  %1 = load atomic i8, ptr %dst monotonic, align 1
  ret i8 %1
}

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind nonlazybind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i64 @_ZN4core4sync6atomic11atomic_load17h7dfe85a39c94ef13E(ptr nocapture readnone %dst, i8 %0) unnamed_addr #7 {
bb2:
  %1 = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h97ef83b1126fc127E monotonic, align 8
  ret i64 %1
}

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4core4sync6atomic12atomic_store17h4ab1958b2a233a16E(ptr nocapture writeonly %dst, i8 %val, i8 %0) unnamed_addr #6 {
bb2:
  store atomic i8 1, ptr %dst monotonic, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc { i32, i32 } @_ZN4core4sync6atomic23atomic_compare_exchange17hd636486f4baf56a9E(ptr nocapture %dst, i32 %old, i32 %new, i8 %0, i8 %1) unnamed_addr #6 {
bb12:
  %2 = cmpxchg ptr %dst, i32 0, i32 1 acquire monotonic, align 4
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %bb26, label %bb27

bb27:                                             ; preds = %bb12
  br label %bb28

bb26:                                             ; preds = %bb12
  br label %bb28

bb28:                                             ; preds = %bb26, %bb27
  %storemerge = phi i32 [ 1, %bb27 ], [ 0, %bb26 ]
  %4 = extractvalue { i32, i1 } %2, 0
  %5 = insertvalue { i32, i32 } poison, i32 %storemerge, 0
  %6 = insertvalue { i32, i32 } %5, i32 %4, 1
  ret { i32, i32 } %6
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN76_$LT$std..sync..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hfff48db6d56eb8e1E"(ptr nocapture readnone align 8 %self, ptr align 8 %f) unnamed_addr #1 {
start:
  %_4 = alloca %"core::fmt::builders::DebugStruct<'_, '_>", align 8
  call void @_ZN4core3fmt9Formatter12debug_struct17hdb73d511d1979dccE(ptr nonnull sret(%"core::fmt::builders::DebugStruct<'_, '_>") align 8 %_4, ptr align 8 %f, ptr nonnull align 1 @alloc_8e2410b80645266732854088d21653bc, i64 11)
  %_0 = call zeroext i1 @_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17hd65b50a24aa85c65E(ptr nonnull align 8 %_4)
  ret i1 %_0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h356fa6d5798d3256E"(ptr nocapture readonly align 8 %self) unnamed_addr #2 {
start:
  %_6 = load ptr, ptr %self, align 8, !nonnull !5, !align !8, !noundef !5
  %_3 = getelementptr inbounds %"std::sync::mutex::Mutex<i32>", ptr %_6, i64 0, i32 1
  %_4 = getelementptr inbounds i8, ptr %self, i64 8
  tail call fastcc void @_ZN3std4sync6poison4Flag4done17h5ffe62f36e8fd6c9E(ptr nonnull align 1 %_3, ptr nonnull align 1 %_4)
  %_7 = load ptr, ptr %self, align 8, !nonnull !5, !align !8, !noundef !5
  %0 = atomicrmw xchg ptr %_7, i32 0 release, align 4
  %1 = icmp eq i32 %0, 2
  br i1 %1, label %bb3, label %bb2

bb3:                                              ; preds = %start
  tail call void @_ZN3std3sys3pal4unix5locks11futex_mutex5Mutex4wake17ha68d826fb94c0d3cE(ptr nonnull align 4 %_7)
  br label %bb2

bb2:                                              ; preds = %start, %bb3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc nonnull align 4 ptr @"_ZN84_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h81f339e7451c91c9E"(ptr nocapture readonly align 8 %self) unnamed_addr #8 {
start:
  %_4 = load ptr, ptr %self, align 8, !nonnull !5, !align !8, !noundef !5
  %_6 = getelementptr inbounds %"std::sync::mutex::Mutex<i32>", ptr %_4, i64 0, i32 3
  ret ptr %_6
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN8mutex_rs4main17h57dedb65d1710220E() unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %e.i = alloca %"std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>", align 8
  %_3 = alloca %"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>", align 8
  %guard = alloca %"std::sync::mutex::MutexGuard<'_, i32>", align 8
  %mutex = alloca %"std::sync::mutex::Mutex<i32>", align 4
  call fastcc void @"_ZN3std4sync5mutex14Mutex$LT$T$GT$3new17h8757f6724312697dE"(ptr nonnull sret(%"std::sync::mutex::Mutex<i32>") align 4 %mutex, i32 1234)
  call fastcc void @"_ZN3std4sync5mutex14Mutex$LT$T$GT$4lock17h818c9bb3e7c1b74cE"(ptr nonnull sret(%"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>") align 8 %_3, ptr nonnull align 4 %mutex)
  %_2.i = load i64, ptr %_3, align 8, !range !9, !noundef !5
  %0 = icmp eq i64 %_2.i, 0
  br i1 %0, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h45acfb87bd9559beE.exit", label %bb1.i

bb1.i:                                            ; preds = %start
  %1 = getelementptr inbounds %"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>::Err", ptr %_3, i64 0, i32 1
  %2 = load ptr, ptr %1, align 8, !nonnull !5, !align !8, !noundef !5
  %3 = getelementptr inbounds %"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>::Err", ptr %_3, i64 0, i32 1, i32 0, i32 1
  %4 = load i8, ptr %3, align 8, !range !6, !noundef !5
  store ptr %2, ptr %e.i, align 8
  %5 = getelementptr inbounds i8, ptr %e.i, i64 8
  store i8 %4, ptr %5, align 8
  invoke void @_ZN4core6result13unwrap_failed17h566b4fa76abf40a2E(ptr nonnull align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 43, ptr nonnull align 1 %e.i, ptr nonnull align 8 @vtable.1, ptr nonnull align 8 @alloc_cc41fadbb5f02a9f0f2644e7b3c59163) #16
          to label %unreachable.i unwind label %cleanup.i

cleanup.i:                                        ; preds = %bb1.i
  %6 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr98drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..mutex..MutexGuard$LT$i32$GT$$GT$$GT$17hc388968b7a00cd3fE"(ptr nonnull align 8 %e.i) #17
          to label %bb5.i unwind label %terminate.i

unreachable.i:                                    ; preds = %bb1.i
  unreachable

terminate.i:                                      ; preds = %cleanup.i
  %7 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #18
  unreachable

common.resume:                                    ; preds = %bb5.i
  resume { ptr, i32 } %6

bb5.i:                                            ; preds = %cleanup.i
  br label %common.resume

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h45acfb87bd9559beE.exit": ; preds = %start
  %8 = getelementptr inbounds %"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>::Ok", ptr %_3, i64 0, i32 1
  %t.0.i = load ptr, ptr %8, align 8, !nonnull !5, !align !8, !noundef !5
  %9 = getelementptr inbounds %"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>::Ok", ptr %_3, i64 0, i32 1, i32 1
  %10 = load i8, ptr %9, align 8, !range !6, !noundef !5
  store ptr %t.0.i, ptr %guard, align 8
  %11 = getelementptr inbounds i8, ptr %guard, i64 8
  store i8 %10, ptr %11, align 8
  %_5 = call fastcc align 4 ptr @"_ZN84_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h81f339e7451c91c9E"(ptr nonnull align 8 %guard)
  br label %bb4

bb4:                                              ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h45acfb87bd9559beE.exit"
  store i32 4321, ptr %_5, align 4
  call fastcc void @"_ZN4core3ptr60drop_in_place$LT$std..sync..mutex..MutexGuard$LT$i32$GT$$GT$17h762b5f94620456b4E"(ptr nonnull align 8 %guard)
  ret void
}

; Function Attrs: nonlazybind uwtable
declare i64 @_ZN3std2rt19lang_start_internal17hd1132dfff4140512E(ptr align 1, ptr align 8, i64, ptr, i8) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys3pal4unix5locks11futex_mutex5Mutex14lock_contended17h4f7d6dac2a29401eE(ptr align 4) unnamed_addr #9

; Function Attrs: cold noinline nonlazybind uwtable
declare zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h082ee561e24f3651E() unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17h566b4fa76abf40a2E(ptr align 1, i64, ptr align 1, ptr align 8, ptr align 8) unnamed_addr #11

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3fmt9Formatter12debug_struct17hdb73d511d1979dccE(ptr sret(%"core::fmt::builders::DebugStruct<'_, '_>") align 8, ptr align 8, ptr align 1, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17hd65b50a24aa85c65E(ptr align 8) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys3pal4unix5locks11futex_mutex5Mutex4wake17ha68d826fb94c0d3cE(ptr align 4) unnamed_addr #9

; Function Attrs: nonlazybind
define i32 @main(i32 %0, ptr %1) unnamed_addr #13 {
top:
  %2 = sext i32 %0 to i64
  %3 = tail call i64 @_ZN3std2rt10lang_start17hde4ad931e53a4736E(ptr nonnull @_ZN8mutex_rs4main17h57dedb65d1710220E, i64 %2, ptr %1, i8 0)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nounwind nonlazybind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nonlazybind "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { cold }
attributes #18 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{!"rustc version 1.77.0-nightly (11f32b73e 2024-01-31)"}
!4 = !{i32 2034765}
!5 = !{}
!6 = !{i8 0, i8 2}
!7 = !{i32 0, i32 256}
!8 = !{i64 4}
!9 = !{i64 0, i64 2}
