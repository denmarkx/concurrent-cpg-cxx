; ModuleID = 'tests/TestALC.ll'
source_filename = "TestALC.dc90a5e775c3d15c-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::alloc::layout::Layout" = type { i64, i64 }

@alloc_38a9d1c1fccd92e612dd2762da060982 = private constant <{}> zeroinitializer, align 1
@__rust_no_alloc_shim_is_unstable = external global i8

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define internal fastcc i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h3ec49fa68c482033E"(ptr nocapture readonly align 8 %self, ptr nocapture readonly align 8 %other) unnamed_addr #0 {
start:
  %_4 = load i64, ptr %self, align 8, !noundef !3
  %_5 = load i64, ptr %other, align 8, !noundef !3
  %_3 = icmp ult i64 %_4, %_5
  %_6 = icmp ne i64 %_4, %_5
  %spec.select = zext i1 %_6 to i8
  %_0.1 = select i1 %_3, i8 -1, i8 %spec.select
  ret i8 %_0.1
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal fastcc i64 @_ZN4core3cmp6min_by17h3f26af7e13d31d07E(i64 %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb1:
  %v2 = alloca i64, align 8
  %v1 = alloca i64, align 8
  store i64 %0, ptr %v1, align 8
  store i64 %1, ptr %v2, align 8
  %2 = call fastcc i8 @_ZN4core3ops8function6FnOnce9call_once17h2f5433e18869b46eE(ptr nonnull align 8 %v1, ptr nonnull align 8 %v2) #9, !range !4
  switch i8 %2, label %bb13 [
    i8 -1, label %bb5
    i8 0, label %bb5
    i8 1, label %bb10
  ]

bb13:                                             ; preds = %bb1
  unreachable

bb5:                                              ; preds = %bb1, %bb1
  br label %bb6

bb6:                                              ; preds = %bb5, %bb10
  %_0.0711.in = phi ptr [ %v2, %bb10 ], [ %v1, %bb5 ]
  %_0.0711 = load i64, ptr %_0.0711.in, align 8, !noundef !3
  ret i64 %_0.0711

bb10:                                             ; preds = %bb1
  br label %bb6
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define internal fastcc i8 @_ZN4core3ops8function6FnOnce9call_once17h2f5433e18869b46eE(ptr nocapture readonly align 8 %0, ptr nocapture readonly align 8 %1) unnamed_addr #0 {
start:
  %_0 = tail call fastcc i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h3ec49fa68c482033E"(ptr nonnull align 8 %0, ptr nonnull align 8 %1) #9, !range !4
  ret i8 %_0
}

; Function Attrs: nounwind
define internal fastcc void @"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17h1f651aa05517db7bE"(ptr nocapture readonly align 8 %_1) unnamed_addr #2 {
start:
  tail call fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc83675307d121bc8E"(ptr align 8 %_1) #9
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @"_ZN4core3ptr74drop_in_place$LT$alloc..boxed..Box$LT$alloc..boxed..Box$LT$i32$GT$$GT$$GT$17hd7c271d847db7c16E"(ptr nocapture readonly align 8 %_1) unnamed_addr #2 {
start:
  %_6 = load ptr, ptr %_1, align 8, !noundef !3
  tail call fastcc void @"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17h1f651aa05517db7bE"(ptr align 8 %_6) #9
  tail call fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h03d3fdec758c4fcbE"(ptr nonnull align 8 %_1) #9
  ret void
}

; Function Attrs: nounwind
define internal fastcc ptr @_ZN4core5alloc6global11GlobalAlloc12alloc_zeroed17h7edbcb407601c254E(ptr nocapture readnone align 1 %self, i64 %0, i64 %1) unnamed_addr #2 {
start:
  %ptr = tail call fastcc ptr @"_ZN71_$LT$TestALC..Allocator$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17h3607a1b315750425E"(ptr nonnull align 1 @alloc_38a9d1c1fccd92e612dd2762da060982, i64 %0, i64 %1) #9
  %2 = icmp eq ptr %ptr, null
  br i1 %2, label %bb4, label %bb3

bb3:                                              ; preds = %start
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %ptr, i8 0, i64 %1, i1 false)
  br label %bb4

bb4:                                              ; preds = %start, %bb3
  ret ptr %ptr
}

; Function Attrs: nounwind
define internal fastcc ptr @_ZN4core5alloc6global11GlobalAlloc7realloc17hdd5af08fe2201ed8E(ptr nocapture readnone align 1 %self, ptr %ptr, i64 %0, i64 %1, i64 %new_size) unnamed_addr #2 {
start:
  %new_ptr = tail call fastcc ptr @"_ZN71_$LT$TestALC..Allocator$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17h3607a1b315750425E"(ptr nonnull align 1 @alloc_38a9d1c1fccd92e612dd2762da060982, i64 %0, i64 %new_size) #9
  %2 = icmp eq ptr %new_ptr, null
  br i1 %2, label %bb5, label %bb3

bb3:                                              ; preds = %start
  %count = tail call fastcc i64 @_ZN4core3cmp6min_by17h3f26af7e13d31d07E(i64 %1, i64 %new_size) #9
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %new_ptr, ptr align 1 %ptr, i64 %count, i1 false)
  tail call fastcc void @"_ZN71_$LT$TestALC..Allocator$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17h830adb2c0e3441caE"(ptr nonnull align 1 @alloc_38a9d1c1fccd92e612dd2762da060982, ptr %ptr, i64 %0, i64 %1) #9
  br label %bb5

bb5:                                              ; preds = %start, %bb3
  ret ptr %new_ptr
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal fastcc { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hdee5cb14c9374723E(i64 %size, i64 %align) unnamed_addr #1 {
start:
  %0 = insertvalue { i64, i64 } poison, i64 %align, 0
  %1 = insertvalue { i64, i64 } %0, i64 %size, 1
  ret { i64, i64 } %1
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define internal fastcc i64 @_ZN4core5alloc6layout6Layout4size17h146c4e831140b64cE(ptr nocapture readonly align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %_0 = load i64, ptr %0, align 8, !noundef !3
  ret i64 %_0
}

; Function Attrs: inlinehint nounwind
define internal fastcc ptr @_ZN5alloc5alloc15exchange_malloc17h0ded805b50288515E(i64 %size, i64 %align) unnamed_addr #3 {
start:
  %0 = tail call fastcc { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h2cb94e18d6dcdfe1E(ptr nonnull align 1 @alloc_38a9d1c1fccd92e612dd2762da060982, i64 %align, i64 %size, i1 zeroext false) #9
  %1 = extractvalue { ptr, i64 } %0, 0
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb1, label %bb2

bb2:                                              ; preds = %start
  ret ptr %1

bb1:                                              ; preds = %start
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h68d57aab7c6b3b56E(i64 %align, i64 %size) #10
  unreachable
}

; Function Attrs: inlinehint nounwind
define internal fastcc { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h2cb94e18d6dcdfe1E(ptr nocapture readnone align 1 %self, i64 %0, i64 %1, i1 zeroext %zeroed) unnamed_addr #3 {
start:
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %bb2, label %bb5

bb2:                                              ; preds = %start
  %ptr = inttoptr i64 %0 to ptr
  br label %bb8

bb8:                                              ; preds = %bb7, %bb6, %bb2
  %3 = phi i64 [ undef, %bb7 ], [ %1, %bb6 ], [ 0, %bb2 ]
  %4 = phi ptr [ null, %bb7 ], [ %8, %bb6 ], [ %ptr, %bb2 ]
  %5 = insertvalue { ptr, i64 } poison, ptr %4, 0
  %6 = insertvalue { ptr, i64 } %5, i64 %3, 1
  ret { ptr, i64 } %6

bb5:                                              ; preds = %start
  %7 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1
  %8 = tail call ptr @__rust_alloc(i64 %1, i64 %0) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %bb7, label %bb6

bb6:                                              ; preds = %bb5
  br label %bb8

bb7:                                              ; preds = %bb5
  br label %bb8
}

; Function Attrs: inlinehint nounwind
define internal fastcc void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h9e212b94614b7140E"(ptr nocapture readnone align 1 %self, ptr %ptr, i64 %0, i64 %1) unnamed_addr #3 {
start:
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %bb3, label %bb1

bb1:                                              ; preds = %start
  tail call void @__rust_dealloc(ptr %ptr, i64 %1, i64 %0) #9
  br label %bb3

bb3:                                              ; preds = %start, %bb1
  ret void
}

; Function Attrs: inlinehint nounwind
define internal fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h03d3fdec758c4fcbE"(ptr nocapture readonly align 8 %self) unnamed_addr #3 {
bb4:
  %ptr = load ptr, ptr %self, align 8, !nonnull !3, !noundef !3
  %_8 = getelementptr i8, ptr %self, i64 8
  tail call fastcc void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h9e212b94614b7140E"(ptr align 1 %_8, ptr nonnull %ptr, i64 8, i64 8) #9
  ret void
}

; Function Attrs: inlinehint nounwind
define internal fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc83675307d121bc8E"(ptr nocapture readonly align 8 %self) unnamed_addr #3 {
bb4:
  %ptr = load ptr, ptr %self, align 8, !nonnull !3, !noundef !3
  %_8 = getelementptr i8, ptr %self, i64 8
  tail call fastcc void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h9e212b94614b7140E"(ptr align 1 %_8, ptr nonnull %ptr, i64 4, i64 4) #9
  ret void
}

; Function Attrs: nounwind
define internal fastcc ptr @"_ZN71_$LT$TestALC..Allocator$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17h3607a1b315750425E"(ptr nocapture readnone align 1 %self, i64 %0, i64 %1) unnamed_addr #2 {
start:
  %layout = alloca %"core::alloc::layout::Layout", align 8
  store i64 %0, ptr %layout, align 8
  %2 = getelementptr inbounds i8, ptr %layout, i64 8
  store i64 %1, ptr %2, align 8
  %_3 = call fastcc i64 @_ZN4core5alloc6layout6Layout4size17h146c4e831140b64cE(ptr nonnull align 8 %layout) #9
  %_0 = call ptr @malloc(i64 %_3) #9
  ret ptr %_0
}

; Function Attrs: nounwind
define internal fastcc void @"_ZN71_$LT$TestALC..Allocator$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17h830adb2c0e3441caE"(ptr nocapture readnone align 1 %self, ptr %ptr, i64 %_layout.0, i64 %_layout.1) unnamed_addr #2 {
start:
  tail call void @free(ptr %ptr) #9
  ret void
}

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(none)
define hidden void @rust_begin_unwind(ptr nocapture align 8 %_info) unnamed_addr #4 {
start:
  br label %bb1

bb1:                                              ; preds = %bb1, %start
  br label %bb1
}

; Function Attrs: nounwind
define dso_local void @_start() unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %q = alloca ptr, align 8
  %y = alloca ptr, align 8
  %_4.i = tail call fastcc ptr @_ZN5alloc5alloc15exchange_malloc17h0ded805b50288515E(i64 4, i64 4) #9
  store i32 5, ptr %_4.i, align 4
  %_4.i3 = tail call fastcc ptr @_ZN5alloc5alloc15exchange_malloc17h0ded805b50288515E(i64 8, i64 8) #9
  store ptr %_4.i, ptr %_4.i3, align 8
  store ptr %_4.i3, ptr %y, align 8
  %_4.i1 = tail call fastcc ptr @_ZN5alloc5alloc15exchange_malloc17h0ded805b50288515E(i64 8, i64 8) #9
  store ptr %_4.i, ptr %_4.i1, align 8
  store ptr %_4.i1, ptr %q, align 8
  %ptr = load ptr, ptr %q, align 8
  call fastcc void @"_ZN4core3ptr74drop_in_place$LT$alloc..boxed..Box$LT$alloc..boxed..Box$LT$i32$GT$$GT$$GT$17hd7c271d847db7c16E"(ptr nonnull align 8 %q) #9
  call fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h03d3fdec758c4fcbE"(ptr nonnull align 8 %y) #9
  ret void
}

; Function Attrs: nounwind
define hidden ptr @__rust_alloc(i64 %size, i64 %align) unnamed_addr #2 {
start:
  %0 = tail call fastcc { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hdee5cb14c9374723E(i64 %size, i64 %align) #9
  %_4.0 = extractvalue { i64, i64 } %0, 0
  %_4.1 = extractvalue { i64, i64 } %0, 1
  %_0 = tail call fastcc ptr @"_ZN71_$LT$TestALC..Allocator$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17h3607a1b315750425E"(ptr nonnull align 1 @alloc_38a9d1c1fccd92e612dd2762da060982, i64 %_4.0, i64 %_4.1) #9
  ret ptr %_0
}

; Function Attrs: nounwind
define hidden void @__rust_dealloc(ptr %ptr, i64 %size, i64 %align) unnamed_addr #2 {
start:
  %0 = tail call fastcc { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hdee5cb14c9374723E(i64 %size, i64 %align) #9
  %_5.0 = extractvalue { i64, i64 } %0, 0
  %_5.1 = extractvalue { i64, i64 } %0, 1
  tail call fastcc void @"_ZN71_$LT$TestALC..Allocator$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17h830adb2c0e3441caE"(ptr nonnull align 1 @alloc_38a9d1c1fccd92e612dd2762da060982, ptr %ptr, i64 %_5.0, i64 %_5.1) #9
  ret void
}

; Function Attrs: nounwind
define hidden ptr @__rust_realloc(ptr %ptr, i64 %size, i64 %align, i64 %new_size) unnamed_addr #2 {
start:
  %0 = tail call fastcc { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hdee5cb14c9374723E(i64 %size, i64 %align) #9
  %_6.0 = extractvalue { i64, i64 } %0, 0
  %_6.1 = extractvalue { i64, i64 } %0, 1
  %_0 = tail call fastcc ptr @_ZN4core5alloc6global11GlobalAlloc7realloc17hdd5af08fe2201ed8E(ptr nonnull align 1 @alloc_38a9d1c1fccd92e612dd2762da060982, ptr %ptr, i64 %_6.0, i64 %_6.1, i64 %new_size) #9
  ret ptr %_0
}

; Function Attrs: nounwind
define hidden ptr @__rust_alloc_zeroed(i64 %size, i64 %align) unnamed_addr #2 {
start:
  %0 = tail call fastcc { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hdee5cb14c9374723E(i64 %size, i64 %align) #9
  %_4.0 = extractvalue { i64, i64 } %0, 0
  %_4.1 = extractvalue { i64, i64 } %0, 1
  %_0 = tail call fastcc ptr @_ZN4core5alloc6global11GlobalAlloc12alloc_zeroed17h7edbcb407601c254E(ptr nonnull align 1 @alloc_38a9d1c1fccd92e612dd2762da060982, i64 %_4.0, i64 %_4.1) #9
  ret ptr %_0
}

declare i32 @rust_eh_personality(...) unnamed_addr #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: cold noreturn nounwind
declare void @_ZN5alloc5alloc18handle_alloc_error17h68d57aab7c6b3b56E(i64, i64) unnamed_addr #8

; Function Attrs: nounwind
declare ptr @malloc(i64) unnamed_addr #2

; Function Attrs: nounwind
declare void @free(ptr) unnamed_addr #2

attributes #0 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #1 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #3 = { inlinehint nounwind "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #4 = { nofree norecurse noreturn nosync nounwind memory(none) "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #5 = { "target-cpu"="apple-m1" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold noreturn nounwind "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{!"rustc version 1.77.0 (aedd173a2 2024-03-17)"}
!3 = !{}
!4 = !{i8 -1, i8 2}
