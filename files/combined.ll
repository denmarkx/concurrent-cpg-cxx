; ModuleID = '../files/combined.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"alloc::boxed::Box<dyn core::any::Any + core::marker::Send>" = type { %"core::ptr::unique::Unique<dyn core::any::Any + core::marker::Send>", %"core::marker::PhantomData<dyn core::any::Any + core::marker::Send>" }
%"core::ptr::unique::Unique<dyn core::any::Any + core::marker::Send>" = type { %"core::ptr::non_null::NonNull<dyn core::any::Any + core::marker::Send>", %"core::marker::PhantomData<dyn core::any::Any + core::marker::Send>" }
%"core::ptr::non_null::NonNull<dyn core::any::Any + core::marker::Send>" = type { { ptr, ptr } }
%"core::marker::PhantomData<dyn core::any::Any + core::marker::Send>" = type {}
%"std::thread::JoinHandle<()>" = type { %"std::thread::JoinInner<'_, ()>" }
%"std::thread::JoinInner<'_, ()>" = type { ptr, ptr, i64 }
%"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>" = type { i64, [2 x i64] }
%"std::thread::Builder" = type { %"core::result::Result<usize, std::io::error::Error>", %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>" }
%"core::result::Result<usize, std::io::error::Error>" = type { i64, [1 x i64] }
%"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>" = type { ptr, [2 x i64] }
%"alloc::sync::Weak<std::thread::Packet<'_, ()>, &alloc::alloc::Global>" = type { ptr, ptr }
%"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>" = type { %"core::sync::atomic::AtomicUsize", %"core::sync::atomic::AtomicUsize", %"std::thread::Packet<'_, ()>" }
%"core::sync::atomic::AtomicUsize" = type { i64 }
%"std::thread::Packet<'_, ()>" = type { ptr, %"core::cell::UnsafeCell<core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>>", %"core::marker::PhantomData<dyn core::any::Any + core::marker::Send>" }
%"core::cell::UnsafeCell<core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>>" = type { %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>" }
%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, %"core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>" }
%"core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>" = type { ptr, [1 x i64] }
%"alloc::sync::ArcInner<std::thread::scoped::ScopeData>" = type { %"core::sync::atomic::AtomicUsize", %"core::sync::atomic::AtomicUsize", %"std::thread::scoped::ScopeData" }
%"std::thread::scoped::ScopeData" = type { ptr, %"core::sync::atomic::AtomicUsize", %"core::sync::atomic::AtomicBool", [7 x i8] }
%"core::sync::atomic::AtomicBool" = type { i8 }
%"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>::Some" = type { [1 x i64], %"core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>" }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>" = type { i8, [15 x i8] }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Os" = type { [1 x i32], i32 }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom" = type { [1 x i64], ptr }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Simple" = type { [1 x i8], i8 }
%"core::result::Result<usize, std::io::error::Error>::Ok" = type { [1 x i64], i64 }
%"std::io::error::SimpleMessage" = type { { ptr, i64 }, i8, [7 x i8] }
%"std::io::error::Custom" = type { %"alloc::boxed::Box<dyn core::any::Any + core::marker::Send>", i8, [7 x i8] }
%"alloc::sync::ArcInner<std::thread::Inner>" = type { %"core::sync::atomic::AtomicUsize", %"core::sync::atomic::AtomicUsize", %"std::thread::Inner" }
%"std::thread::Inner" = type { i64, %"core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>", %"std::sys_common::thread_parking::futex::Parker", [1 x i32] }
%"std::sys_common::thread_parking::futex::Parker" = type { %"core::sync::atomic::AtomicU32" }
%"core::sync::atomic::AtomicU32" = type { i32 }
%"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>" = type { i64, [3 x i64] }
%"alloc::string::String" = type { %"alloc::vec::Vec<u8>" }
%"alloc::vec::Vec<u8>" = type { %"alloc::raw_vec::RawVec<u8>", i64 }
%"alloc::raw_vec::RawVec<u8>" = type { i64, ptr, %"core::marker::PhantomData<dyn core::any::Any + core::marker::Send>" }
%"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@CVE_2020_26235.rs:19:28: 19:30}, ()>::{closure#1}}" = type { ptr, ptr, ptr, %"std::thread::Builder::spawn_unchecked_::MaybeDangling<{closure@CVE_2020_26235.rs:19:28: 19:30}>" }
%"std::thread::Builder::spawn_unchecked_::MaybeDangling<{closure@CVE_2020_26235.rs:19:28: 19:30}>" = type { %"core::mem::maybe_uninit::MaybeUninit<{closure@CVE_2020_26235.rs:19:28: 19:30}>" }
%"core::mem::maybe_uninit::MaybeUninit<{closure@CVE_2020_26235.rs:19:28: 19:30}>" = type { [0 x i8] }
%"alloc::ffi::c_str::NulError" = type { %"alloc::vec::Vec<u8>", i64 }
%"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>::Ok" = type { [1 x i64], %"alloc::ffi::c_str::CString" }
%"alloc::ffi::c_str::CString" = type { %"alloc::boxed::Box<[u8]>" }
%"alloc::boxed::Box<[u8]>" = type { %"core::ptr::unique::Unique<[u8]>", %"core::marker::PhantomData<dyn core::any::Any + core::marker::Send>" }
%"core::ptr::unique::Unique<[u8]>" = type { %"core::ptr::non_null::NonNull<[u8]>", %"core::marker::PhantomData<dyn core::any::Any + core::marker::Send>" }
%"core::ptr::non_null::NonNull<[u8]>" = type { { ptr, i64 } }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>" = type { [1 x i64], i64, [1 x i64] }
%"core::alloc::layout::Layout" = type { i64, i64 }
%"core::fmt::builders::DebugList<'_, '_>" = type { %"core::fmt::builders::DebugInner<'_, '_>" }
%"core::fmt::builders::DebugInner<'_, '_>" = type { ptr, i8, i8, [6 x i8] }
%"core::slice::iter::Iter<'_, u8>" = type { ptr, ptr, %"core::marker::PhantomData<dyn core::any::Any + core::marker::Send>" }
%"core::fmt::Formatter<'_>" = type { %"core::result::Result<usize, std::io::error::Error>", %"core::result::Result<usize, std::io::error::Error>", { ptr, ptr }, i32, i32, i8, [7 x i8] }
%"alloc::sync::ArcInner<std::sync::mutex::Mutex<alloc::vec::Vec<u8>>>" = type { %"core::sync::atomic::AtomicUsize", %"core::sync::atomic::AtomicUsize", %"std::sync::mutex::Mutex<alloc::vec::Vec<u8>>" }
%"std::sync::mutex::Mutex<alloc::vec::Vec<u8>>" = type { %"std::sys_common::thread_parking::futex::Parker", %"std::sync::poison::Flag", [3 x i8], %"alloc::string::String" }
%"std::sync::poison::Flag" = type { %"core::sync::atomic::AtomicBool" }

@.str = private unnamed_addr constant [3 x i8] c"TZ\00", align 1, !dbg !0
@alloc_8d68fcbc011419193bd208f22e2789d1 = private unnamed_addr constant <{ [28 x i8] }> <{ [28 x i8] c"failed to write whole buffer" }>, align 1
@alloc_626cc8bfd6c94d404aa777557e31db63 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @alloc_8d68fcbc011419193bd208f22e2789d1, [9 x i8] c"\1C\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@alloc_9057b6bf1b3910500dd83346f5505e1b = private unnamed_addr constant <{ [73 x i8] }> <{ [73 x i8] c"/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/std/src/io/mod.rs" }>, align 1
@alloc_ad59c95d882f83cd0956f19d31e44c98 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_9057b6bf1b3910500dd83346f5505e1b, [16 x i8] c"I\00\00\00\00\00\00\00\B1\06\00\00$\00\00\00" }>, align 8
@vtable.0 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr97drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..sys..pal..unix..stdio..Stderr$GT$$GT$17h19513f68692c85baE", [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h8f2df3dee1a7f0a5E", ptr @_ZN4core3fmt5Write10write_char17h4f01b2b0d5f948e5E, ptr @_ZN4core3fmt5Write9write_fmt17h0e2d40cf4102a079E }>, align 8
@alloc_118e5dd62e18907a47aec3e2be501119 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"formatter error" }>, align 1
@alloc_5d9af7a776dc0d9eecd628aaf786bef9 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @alloc_118e5dd62e18907a47aec3e2be501119, [9 x i8] c"\0F\00\00\00\00\00\00\00(", [7 x i8] undef }>, align 8
@vtable.1 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h10f0ddfadd65a924E", [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hb31814e4c228a468E", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17ha94dee9f7394be01E", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17ha94dee9f7394be01E" }>, align 8
@alloc_a04f436dabfd66769fa4ad7bd3b47d85 = private unnamed_addr constant <{ [77 x i8] }> <{ [77 x i8] c"/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/std/src/thread/mod.rs" }>, align 1
@alloc_df98b5df7eeb714409f256abec08df6f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_a04f436dabfd66769fa4ad7bd3b47d85, [16 x i8] c"M\00\00\00\00\00\00\00\ED\05\00\00(\00\00\00" }>, align 8
@alloc_248e7424ac947085569c564717f94fa4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_a04f436dabfd66769fa4ad7bd3b47d85, [16 x i8] c"M\00\00\00\00\00\00\00\ED\05\00\00I\00\00\00" }>, align 8
@alloc_e3605bf48dd8479a638909176cc37fce = private unnamed_addr constant <{ [22 x i8] }> <{ [22 x i8] c"failed to spawn thread" }>, align 1
@alloc_cfbb55ba8bd892c2ed60a2c3f28c3541 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_a04f436dabfd66769fa4ad7bd3b47d85, [16 x i8] c"M\00\00\00\00\00\00\00\AC\02\00\00\1D\00\00\00" }>, align 8
@alloc_498705839b3ae85466bce6e7ebfe4996 = private unnamed_addr constant <{ [47 x i8] }> <{ [47 x i8] c"thread name may not contain interior null bytes" }>, align 1
@alloc_3c7ed5a01079e282fcc9eb5544b30333 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_a04f436dabfd66769fa4ad7bd3b47d85, [16 x i8] c"M\00\00\00\00\00\00\00\DC\01\00\00 \00\00\00" }>, align 8
@vtable.2 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr156drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$CVE_2020_26235..main..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h44b8fc7c32c2ef81E", [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h1f179259d3765555E" }>, align 8
@vtable.3 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr156drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$CVE_2020_26235..main..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h82aff6e68105d0fdE", [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hfa7a3cc30f613067E" }>, align 8
@vtable.4 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr27drop_in_place$LT$$RF$u8$GT$17hf54db6ea981c9ffbE", [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h09eaa55106e16f1bE" }>, align 8
@alloc_91c7fa63c3cfeaa3c795652d5cf060e4 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc_af99043bc04c419363a7f04d23183506 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_91c7fa63c3cfeaa3c795652d5cf060e4, [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc_513570631223a12912d85da2bec3b15a = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc_4e392ee20eb14981b7228e69488c1dfe = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/fmt/mod.rs" }>, align 1
@alloc_429c82a8a757ba4eb6ada2ea4793308e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_4e392ee20eb14981b7228e69488c1dfe, [16 x i8] c"K\00\00\00\00\00\00\00M\01\00\00\0D\00\00\00" }>, align 8
@alloc_559f2ae733243bf212b88f542e1f898f = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/char/methods.rs" }>, align 1
@alloc_41a0379ed06a3b1c22d2313ff030dc3d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_559f2ae733243bf212b88f542e1f898f, [16 x i8] c"P\00\00\00\00\00\00\00\05\07\00\00\0D\00\00\00" }>, align 8
@alloc_b9a6dd3adc2673cdd0ef4b9d96fd7520 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/slice/memchr.rs" }>, align 1
@alloc_65452916cca6d97cc375fac7cb56cd3a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_b9a6dd3adc2673cdd0ef4b9d96fd7520, [16 x i8] c"P\00\00\00\00\00\00\00+\00\00\00\0C\00\00\00" }>, align 8
@vtable.5 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr48drop_in_place$LT$alloc..ffi..c_str..NulError$GT$17h54c01bc34e4d844aE", [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN64_$LT$alloc..ffi..c_str..NulError$u20$as$u20$core..fmt..Debug$GT$3fmt17h79c0ae529cfbcd1bE" }>, align 8
@vtable.6 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hbe6b5bd41666926aE", [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hb0183faaec54836bE" }>, align 8
@alloc_00ae4b301f7fab8ac9617c03fcbd7274 = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c"called `Result::unwrap()` on an `Err` value" }>, align 1
@vtable.7 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17haac18471cb09fd30E", [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h88590e793914625dE" }>, align 8
@__rust_no_alloc_shim_is_unstable = external global i8
@alloc_49c0eff15ce41ce22a2d8c8b146a94ef = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"NulError" }>, align 1
@vtable.8 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr26drop_in_place$LT$usize$GT$17h7a27933a3c20087dE", [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h2f2f37621fcaa7e3E" }>, align 8
@vtable.9 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr50drop_in_place$LT$$RF$alloc..vec..Vec$LT$u8$GT$$GT$17h3992cf91b34db211E", [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd6d6e73d31546889E" }>, align 8
@alloc_1fc69e9d6fe5818ece4ae99dcad03b64 = private unnamed_addr constant <{ [78 x i8] }> <{ [78 x i8] c"/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/alloc/src/ffi/c_str.rs" }>, align 1
@alloc_5c9d34f18b8b9cda7f74f6cd144f9475 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1fc69e9d6fe5818ece4ae99dcad03b64, [16 x i8] c"N\00\00\00\00\00\00\00\0C\01\00\00+\00\00\00" }>, align 8
@alloc_3b99cf3889855522042186bfbc89cd01 = private unnamed_addr constant <{ [52 x i8] }> <{ [52 x i8] c"fatal runtime error: thread result panicked on drop\0A" }>, align 1
@alloc_2ca7775364e940040d1ca01e1c1e4d62 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_3b99cf3889855522042186bfbc89cd01, [8 x i8] c"4\00\00\00\00\00\00\00" }>, align 8
@alloc_254313cb80f5e9e4adb4ef9749af2250 = private unnamed_addr constant <{ [17 x i8] }> <{ [17 x i8] c"CVE_2020_26235.rs" }>, align 1
@alloc_3fa692cf9c0d201d6c8fe86f48944f57 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_254313cb80f5e9e4adb4ef9749af2250, [16 x i8] c"\11\00\00\00\00\00\00\00\18\00\00\00\0F\00\00\00" }>, align 8
@alloc_5409616d0bf9806f6a2e0d6ed1236ee5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_254313cb80f5e9e4adb4ef9749af2250, [16 x i8] c"\11\00\00\00\00\00\00\00\19\00\00\00\0F\00\00\00" }>, align 8
@alloc_9713a0717675e9c95076d8b2a34ce074 = private unnamed_addr constant <{ [3 x i8] }> <{ [3 x i8] c"UTC" }>, align 1
@alloc_28622ef2541181b086819053c4b41a6e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_254313cb80f5e9e4adb4ef9749af2250, [16 x i8] c"\11\00\00\00\00\00\00\00\14\00\00\00'\00\00\00" }>, align 8
@__rustc_debug_gdb_scripts_section__ = linkonce_odr unnamed_addr constant [34 x i8] c"\01gdb_load_rust_pretty_printers.py\00", section ".debug_gdb_scripts", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @get_tz() local_unnamed_addr #0 !dbg !21 {
  %1 = call ptr @getenv(ptr noundef @.str) #32, !dbg !25
  ret ptr %1, !dbg !26
}

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_tz(ptr noundef %0) local_unnamed_addr #0 !dbg !27 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !34, metadata !DIExpression()), !dbg !35
  %3 = load ptr, ptr %2, align 8, !dbg !36
  %4 = call i32 @setenv(ptr noundef @.str, ptr noundef %3, i32 noundef 1) #32, !dbg !37
  ret i32 %4, !dbg !38
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare i32 @setenv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nonlazybind uwtable
define hidden i64 @_ZN3std2rt10lang_start17h9d960e0e2bdb16a6E(ptr %main, i64 %argc, ptr %argv, i8 %sigpipe) unnamed_addr #3 !dbg !39 {
start:
  %_8 = alloca ptr, align 8
  store ptr %main, ptr %_8, align 8, !dbg !44
  %0 = call i64 @_ZN3std2rt19lang_start_internal17hd1132dfff4140512E(ptr nonnull align 1 %_8, ptr nonnull align 8 @vtable.1, i64 %argc, ptr %argv, i8 %sigpipe), !dbg !45
  ret i64 %0, !dbg !46
}

; Function Attrs: nonlazybind uwtable
declare i64 @_ZN3std2rt19lang_start_internal17hd1132dfff4140512E(ptr align 1, ptr align 8, i64, ptr, i8) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h10f0ddfadd65a924E"(ptr nocapture readnone align 8 %_1) unnamed_addr #4 !dbg !47 {
start:
  ret void, !dbg !51
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hb31814e4c228a468E"(ptr nocapture readonly %_1) unnamed_addr #5 !dbg !52 {
start:
  %0 = load ptr, ptr %_1, align 8, !dbg !57, !nonnull !33, !noundef !33
  %_0 = tail call fastcc i32 @_ZN4core3ops8function6FnOnce9call_once17h3ba0e2ebbb75f4c5E(ptr nonnull %0), !dbg !57, !range !58
  ret i32 %_0, !dbg !57
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17ha94dee9f7394be01E"(ptr nocapture readonly align 8 %_1) unnamed_addr #5 !dbg !59 {
start:
  %_4 = load ptr, ptr %_1, align 8, !dbg !61, !nonnull !33, !noundef !33
  tail call fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17ha53bfe313c91a9bcE(ptr nonnull %_4), !dbg !62
  ret i32 0, !dbg !63
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17ha53bfe313c91a9bcE(ptr nocapture readonly %f) unnamed_addr #6 !dbg !64 {
start:
  tail call fastcc void @_ZN4core3ops8function6FnOnce9call_once17h64590148215e69fbE(ptr %f), !dbg !68
  tail call void asm sideeffect "", "~{memory}"() #32, !dbg !69, !srcloc !76
  ret void, !dbg !77
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core3ops8function6FnOnce9call_once17h64590148215e69fbE(ptr nocapture readonly %_1) unnamed_addr #5 !dbg !78 {
start:
  tail call void %_1(), !dbg !79
  ret void, !dbg !79
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc i32 @_ZN4core3ops8function6FnOnce9call_once17h3ba0e2ebbb75f4c5E(ptr %0) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !80 {
start:
  %_1 = alloca ptr, align 8
  store ptr %0, ptr %_1, align 8
  %_0 = invoke i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17ha94dee9f7394be01E"(ptr nonnull align 8 %_1)
          to label %bb1 unwind label %bb3, !dbg !81, !range !58

bb3:                                              ; preds = %start
  %1 = landingpad { ptr, i32 }
          cleanup
  resume { ptr, i32 } %1, !dbg !81

bb1:                                              ; preds = %start
  ret i32 %_0, !dbg !81
}

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #3

; Function Attrs: nonlazybind
define i32 @main(i32 %0, ptr %1) unnamed_addr #7 {
top:
  %2 = load volatile i8, ptr @__rustc_debug_gdb_scripts_section__, align 1
  %3 = sext i32 %0 to i64
  %4 = tail call i64 @_ZN3std2rt10lang_start17h9d960e0e2bdb16a6E(ptr nonnull @_ZN14CVE_2020_262354main17h91af2a3aadc3dba0E, i64 %3, ptr %1, i8 0)
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN14CVE_2020_262354main17h91af2a3aadc3dba0E() unnamed_addr #3 personality ptr @rust_eh_personality !dbg !82 {
start:
  %e.i2 = alloca %"alloc::boxed::Box<dyn core::any::Any + core::marker::Send>", align 8
  %e.i = alloca %"alloc::boxed::Box<dyn core::any::Any + core::marker::Send>", align 8
  %_8 = alloca %"std::thread::JoinHandle<()>", align 8
  %_5 = alloca %"std::thread::JoinHandle<()>", align 8
  %t2 = alloca %"std::thread::JoinHandle<()>", align 8
  %t1 = alloca %"std::thread::JoinHandle<()>", align 8
  call fastcc void @_ZN3std6thread5spawn17h64ebb1dd1991f81fE(ptr nonnull sret(%"std::thread::JoinHandle<()>") align 8 %t1), !dbg !85
  invoke fastcc void @_ZN3std6thread5spawn17h75261b6b5937bc6aE(ptr nonnull sret(%"std::thread::JoinHandle<()>") align 8 %t2)
          to label %bb2 unwind label %bb10, !dbg !86

bb2:                                              ; preds = %start
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_5, ptr noundef nonnull align 8 dereferenceable(24) %t1, i64 24, i1 false), !dbg !88
  %0 = invoke fastcc { ptr, ptr } @"_ZN3std6thread19JoinHandle$LT$T$GT$4join17hcea5719e14ef9744E"(ptr nonnull align 8 %_5)
          to label %bb3 unwind label %bb9.thread7, !dbg !88

bb9.thread7:                                      ; preds = %bb2
  %1 = landingpad { ptr, i32 }
          cleanup
  br label %bb8, !dbg !90

bb9:                                              ; preds = %bb4
  %2 = landingpad { ptr, i32 }
          cleanup
  br label %bb7, !dbg !90

bb3:                                              ; preds = %bb2
  %_4.0 = extractvalue { ptr, ptr } %0, 0, !dbg !88
  %3 = icmp eq ptr %_4.0, null, !dbg !91
  br i1 %3, label %bb4, label %bb1.i5, !dbg !97

bb1.i5:                                           ; preds = %bb3
  %_4.1 = extractvalue { ptr, ptr } %0, 1, !dbg !88
  store ptr %_4.0, ptr %e.i2, align 8, !dbg !98
  %4 = getelementptr inbounds i8, ptr %e.i2, i64 8, !dbg !98
  store ptr %_4.1, ptr %4, align 8, !dbg !98
  invoke void @_ZN4core6result13unwrap_failed17h566b4fa76abf40a2E(ptr nonnull align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 43, ptr nonnull align 1 %e.i2, ptr nonnull align 8 @vtable.7, ptr nonnull align 8 @alloc_3fa692cf9c0d201d6c8fe86f48944f57) #33
          to label %unreachable.i9 unwind label %cleanup.i6, !dbg !99

cleanup.i6:                                       ; preds = %bb1.i5
  %5 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17haac18471cb09fd30E"(ptr nonnull align 8 %e.i2) #34
          to label %bb9.thread4 unwind label %terminate.i7, !dbg !101

unreachable.i9:                                   ; preds = %bb1.i5
  unreachable

terminate.i7:                                     ; preds = %cleanup.i6
  %6 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #27, !dbg !102
  unreachable, !dbg !102

bb9.thread4:                                      ; preds = %cleanup.i6
  br label %bb8, !dbg !90

bb4:                                              ; preds = %bb3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_8, ptr noundef nonnull align 8 dereferenceable(24) %t2, i64 24, i1 false), !dbg !103
  %7 = invoke fastcc { ptr, ptr } @"_ZN3std6thread19JoinHandle$LT$T$GT$4join17hcea5719e14ef9744E"(ptr nonnull align 8 %_8)
          to label %bb5 unwind label %bb9, !dbg !103

bb5:                                              ; preds = %bb4
  %_7.0 = extractvalue { ptr, ptr } %7, 0, !dbg !103
  %8 = icmp eq ptr %_7.0, null, !dbg !104
  br i1 %8, label %bb6, label %bb1.i, !dbg !106

bb1.i:                                            ; preds = %bb5
  %_7.1 = extractvalue { ptr, ptr } %7, 1, !dbg !103
  store ptr %_7.0, ptr %e.i, align 8, !dbg !107
  %9 = getelementptr inbounds i8, ptr %e.i, i64 8, !dbg !107
  store ptr %_7.1, ptr %9, align 8, !dbg !107
  invoke void @_ZN4core6result13unwrap_failed17h566b4fa76abf40a2E(ptr nonnull align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 43, ptr nonnull align 1 %e.i, ptr nonnull align 8 @vtable.7, ptr nonnull align 8 @alloc_5409616d0bf9806f6a2e0d6ed1236ee5) #33
          to label %unreachable.i unwind label %cleanup.i, !dbg !108

cleanup.i:                                        ; preds = %bb1.i
  %10 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17haac18471cb09fd30E"(ptr nonnull align 8 %e.i) #34
          to label %bb9.thread unwind label %terminate.i, !dbg !109

unreachable.i:                                    ; preds = %bb1.i
  unreachable

terminate.i:                                      ; preds = %cleanup.i
  %11 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #27, !dbg !110
  unreachable, !dbg !110

bb9.thread:                                       ; preds = %cleanup.i
  br label %bb7, !dbg !90

bb6:                                              ; preds = %bb5
  ret void, !dbg !111

bb8:                                              ; preds = %bb9.thread7, %bb9.thread4
  %.pn = phi { ptr, i32 } [ %1, %bb9.thread7 ], [ %5, %bb9.thread4 ]
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$std..thread..JoinHandle$LT$$LP$$RP$$GT$$GT$17h80f2a582275f296bE"(ptr nonnull align 8 %t2) #34
          to label %bb7 unwind label %terminate, !dbg !90

terminate:                                        ; preds = %bb10, %bb8
  %12 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #27, !dbg !113
  unreachable, !dbg !113

bb7:                                              ; preds = %bb9, %bb9.thread, %bb8, %bb10
  %.pn9 = phi { ptr, i32 } [ %2, %bb9 ], [ %10, %bb9.thread ], [ %.pn, %bb8 ], [ %13, %bb10 ]
  resume { ptr, i32 } %.pn9, !dbg !113

bb10:                                             ; preds = %start
  %13 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$std..thread..JoinHandle$LT$$LP$$RP$$GT$$GT$17h80f2a582275f296bE"(ptr nonnull align 8 %t1) #34
          to label %bb7 unwind label %terminate, !dbg !114
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN3std6thread5spawn17h64ebb1dd1991f81fE(ptr nocapture writeonly sret(%"std::thread::JoinHandle<()>") align 8 %_0) unnamed_addr #3 !dbg !115 {
start:
  %_5 = alloca %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>", align 8
  %self = alloca %"std::thread::Builder", align 8
  %_2 = alloca %"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>", align 8
  store i64 -9223372036854775808, ptr %_5, align 8, !dbg !118
  %0 = getelementptr inbounds %"std::thread::Builder", ptr %self, i64 0, i32 1, !dbg !123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %_5, i64 24, i1 false), !dbg !123
  store i64 0, ptr %self, align 8, !dbg !123
  call fastcc void @_ZN3std6thread7Builder15spawn_unchecked17hf8f20c27512da4bfE(ptr nonnull sret(%"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>") align 8 %_2, ptr nonnull align 8 %self), !dbg !124
  call fastcc void @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9540720688dc75a7E"(ptr sret(%"std::thread::JoinHandle<()>") align 8 %_0, ptr nonnull align 8 %_2, ptr nonnull align 1 @alloc_e3605bf48dd8479a638909176cc37fce, i64 22, ptr nonnull align 8 @alloc_cfbb55ba8bd892c2ed60a2c3f28c3541), !dbg !122
  ret void, !dbg !129
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN3std6thread5spawn17h75261b6b5937bc6aE(ptr nocapture writeonly sret(%"std::thread::JoinHandle<()>") align 8 %_0) unnamed_addr #3 !dbg !130 {
start:
  %_5 = alloca %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>", align 8
  %self = alloca %"std::thread::Builder", align 8
  %_2 = alloca %"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>", align 8
  store i64 -9223372036854775808, ptr %_5, align 8, !dbg !131
  %0 = getelementptr inbounds %"std::thread::Builder", ptr %self, i64 0, i32 1, !dbg !135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %_5, i64 24, i1 false), !dbg !135
  store i64 0, ptr %self, align 8, !dbg !135
  call fastcc void @_ZN3std6thread7Builder15spawn_unchecked17ha71e82dc55764a87E(ptr nonnull sret(%"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>") align 8 %_2, ptr nonnull align 8 %self), !dbg !136
  call fastcc void @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9540720688dc75a7E"(ptr sret(%"std::thread::JoinHandle<()>") align 8 %_0, ptr nonnull align 8 %_2, ptr nonnull align 1 @alloc_e3605bf48dd8479a638909176cc37fce, i64 22, ptr nonnull align 8 @alloc_cfbb55ba8bd892c2ed60a2c3f28c3541), !dbg !134
  ret void, !dbg !141
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @"_ZN3std6thread19JoinHandle$LT$T$GT$4join17hcea5719e14ef9744E"(ptr nocapture readonly align 8 %self) unnamed_addr #3 !dbg !142 {
start:
  %_2 = alloca %"std::thread::JoinInner<'_, ()>", align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_2, ptr noundef nonnull align 8 dereferenceable(24) %self, i64 24, i1 false), !dbg !144
  %0 = call fastcc { ptr, ptr } @"_ZN3std6thread18JoinInner$LT$T$GT$4join17h37f5f30e9b449017E"(ptr nonnull align 8 %_2), !dbg !144
  ret { ptr, ptr } %0, !dbg !145
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17h566b4fa76abf40a2E(ptr align 1, i64, ptr align 1, ptr align 8, ptr align 8) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17haac18471cb09fd30E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !146 {
start:
  %_6.0 = load ptr, ptr %_1, align 8, !dbg !147, !noundef !33
  %0 = getelementptr inbounds i8, ptr %_1, i64 8, !dbg !147
  %_6.1 = load ptr, ptr %0, align 8, !dbg !147, !nonnull !33, !align !148, !noundef !33
  %1 = load ptr, ptr %_6.1, align 8, !dbg !147, !invariant.load !33, !nonnull !33
  invoke void %1(ptr align 1 %_6.0)
          to label %bb3 unwind label %bb4, !dbg !147

bb4:                                              ; preds = %start
  %2 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9963602de3cf931fE"(ptr nonnull align 8 %_1) #34, !dbg !147
  br label %bb1

bb3:                                              ; preds = %start
  tail call fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9963602de3cf931fE"(ptr nonnull align 8 %_1), !dbg !147
  ret void, !dbg !147

bb1:                                              ; preds = %bb4
  resume { ptr, i32 } %2, !dbg !147
}

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() unnamed_addr #10

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr60drop_in_place$LT$std..thread..JoinHandle$LT$$LP$$RP$$GT$$GT$17h80f2a582275f296bE"(ptr align 8 %_1) unnamed_addr #3 !dbg !149 {
start:
  tail call fastcc void @"_ZN4core3ptr59drop_in_place$LT$std..thread..JoinInner$LT$$LP$$RP$$GT$$GT$17h37aa9b5b80261b91E"(ptr align 8 %_1), !dbg !150
  ret void, !dbg !150
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr59drop_in_place$LT$std..thread..JoinInner$LT$$LP$$RP$$GT$$GT$17h37aa9b5b80261b91E"(ptr align 8 %_1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !151 {
start:
  %0 = getelementptr inbounds %"std::thread::JoinInner<'_, ()>", ptr %_1, i64 0, i32 2, !dbg !152
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$std..sys..pal..unix..thread..Thread$GT$17hf0d36827c88c9704E"(ptr nonnull align 8 %0)
          to label %bb6 unwind label %bb4, !dbg !152

bb4:                                              ; preds = %start
  %1 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hf3442f0736498466E"(ptr align 8 %_1) #34
          to label %bb3 unwind label %terminate, !dbg !152

bb6:                                              ; preds = %start
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hf3442f0736498466E"(ptr align 8 %_1)
          to label %bb5 unwind label %cleanup1, !dbg !152

bb3:                                              ; preds = %cleanup1, %bb4
  %.pn = phi { ptr, i32 } [ %3, %cleanup1 ], [ %1, %bb4 ]
  %2 = getelementptr inbounds %"std::thread::JoinInner<'_, ()>", ptr %_1, i64 0, i32 1, !dbg !152
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h227a9b2252fd1403E"(ptr nonnull align 8 %2) #34
          to label %bb1 unwind label %terminate, !dbg !152

cleanup1:                                         ; preds = %bb6
  %3 = landingpad { ptr, i32 }
          cleanup
  br label %bb3

bb5:                                              ; preds = %bb6
  %4 = getelementptr inbounds %"std::thread::JoinInner<'_, ()>", ptr %_1, i64 0, i32 1, !dbg !152
  tail call fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h227a9b2252fd1403E"(ptr nonnull align 8 %4), !dbg !152
  ret void, !dbg !152

terminate:                                        ; preds = %bb3, %bb4
  %5 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  tail call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #27, !dbg !152
  unreachable, !dbg !152

bb1:                                              ; preds = %bb3
  resume { ptr, i32 } %.pn, !dbg !152
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr56drop_in_place$LT$std..sys..pal..unix..thread..Thread$GT$17hf0d36827c88c9704E"(ptr align 8 %_1) unnamed_addr #3 !dbg !153 {
start:
  tail call void @"_ZN77_$LT$std..sys..pal..unix..thread..Thread$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2455a369488eb470E"(ptr align 8 %_1), !dbg !154
  ret void, !dbg !154
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hf3442f0736498466E"(ptr align 8 %_1) unnamed_addr #3 !dbg !155 {
start:
  tail call fastcc void @"_ZN4core3ptr85drop_in_place$LT$core..pin..Pin$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$$GT$17h61ed8a6e4e26a075E"(ptr align 8 %_1), !dbg !156
  ret void, !dbg !156
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h227a9b2252fd1403E"(ptr align 8 %_1) unnamed_addr #3 !dbg !157 {
start:
  tail call fastcc void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf59bc6faeee3fe59E"(ptr align 8 %_1), !dbg !158
  ret void, !dbg !158
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf59bc6faeee3fe59E"(ptr align 8 %self) unnamed_addr #5 !dbg !159 {
start:
  %self1 = load ptr, ptr %self, align 8, !dbg !164, !nonnull !33, !noundef !33
  %0 = atomicrmw sub ptr %self1, i64 1 release, align 8, !dbg !177
  %1 = icmp eq i64 %0, 1, !dbg !190
  br i1 %1, label %bb2, label %bb4, !dbg !190

bb2:                                              ; preds = %start
  tail call fastcc void @_ZN4core4sync6atomic5fence17hdb34cbebe24ab619E(i8 2), !dbg !191
  tail call fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h68c4fa1c4ab8b832E"(ptr nonnull align 8 %self), !dbg !192
  br label %bb4, !dbg !192

bb4:                                              ; preds = %start, %bb2
  ret void, !dbg !194
}

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind nonlazybind willreturn uwtable
define internal fastcc void @_ZN4core4sync6atomic5fence17hdb34cbebe24ab619E(i8 %0) unnamed_addr #11 !dbg !195 {
bb2:
  fence acquire, !dbg !196
  ret void, !dbg !198
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h68c4fa1c4ab8b832E"(ptr align 8 %self) unnamed_addr #6 !dbg !199 {
start:
  %_x = alloca %"alloc::sync::Weak<std::thread::Packet<'_, ()>, &alloc::alloc::Global>", align 8
  %self1 = load ptr, ptr %self, align 8, !dbg !200, !nonnull !33, !noundef !33
  %_3 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %self1, i64 0, i32 2, !dbg !204
  tail call fastcc void @"_ZN4core3ptr56drop_in_place$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$17h2c56497c3c6a5b5eE"(ptr nonnull align 8 %_3), !dbg !206
  %_5 = load ptr, ptr %self, align 8, !dbg !207, !nonnull !33, !noundef !33
  %_6 = getelementptr i8, ptr %self, i64 8, !dbg !208
  store ptr %_5, ptr %_x, align 8, !dbg !209
  %0 = getelementptr inbounds i8, ptr %_x, i64 8, !dbg !209
  store ptr %_6, ptr %0, align 8, !dbg !209
  call fastcc void @"_ZN4core3ptr108drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$$LP$$RP$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h3b7facf498b7675cE"(ptr nonnull align 8 %_x), !dbg !210
  ret void, !dbg !216
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr56drop_in_place$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$17h2c56497c3c6a5b5eE"(ptr align 8 %_1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !217 {
start:
  invoke fastcc void @"_ZN70_$LT$std..thread..Packet$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9f3f95ac36f415a7E"(ptr align 8 %_1)
          to label %bb6 unwind label %bb4, !dbg !218

bb4:                                              ; preds = %start
  %0 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17hc230ee2b1e444aaeE"(ptr align 8 %_1) #34
          to label %bb3 unwind label %terminate, !dbg !218

bb6:                                              ; preds = %start
  invoke fastcc void @"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17hc230ee2b1e444aaeE"(ptr align 8 %_1)
          to label %bb5 unwind label %cleanup1, !dbg !218

bb3:                                              ; preds = %cleanup1, %bb4
  %.pn = phi { ptr, i32 } [ %2, %cleanup1 ], [ %0, %bb4 ]
  %1 = getelementptr inbounds %"std::thread::Packet<'_, ()>", ptr %_1, i64 0, i32 1, !dbg !218
  invoke fastcc void @"_ZN4core3ptr188drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$$GT$17h699be22d21dc7920E"(ptr nonnull align 8 %1) #34
          to label %bb1 unwind label %terminate, !dbg !218

cleanup1:                                         ; preds = %bb6
  %2 = landingpad { ptr, i32 }
          cleanup
  br label %bb3

bb5:                                              ; preds = %bb6
  %3 = getelementptr inbounds %"std::thread::Packet<'_, ()>", ptr %_1, i64 0, i32 1, !dbg !218
  tail call fastcc void @"_ZN4core3ptr188drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$$GT$17h699be22d21dc7920E"(ptr nonnull align 8 %3), !dbg !218
  ret void, !dbg !218

terminate:                                        ; preds = %bb3, %bb4
  %4 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  tail call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #27, !dbg !218
  unreachable, !dbg !218

bb1:                                              ; preds = %bb3
  resume { ptr, i32 } %.pn, !dbg !218
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr108drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$$LP$$RP$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h3b7facf498b7675cE"(ptr nocapture readonly align 8 %_1) unnamed_addr #12 !dbg !219 {
start:
  tail call fastcc void @"_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h912cb4061d81d055E"(ptr align 8 %_1), !dbg !220
  ret void, !dbg !220
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h912cb4061d81d055E"(ptr nocapture readonly align 8 %self) unnamed_addr #12 !dbg !221 {
start:
  %self1 = load ptr, ptr %self, align 8, !dbg !223, !nonnull !33, !noundef !33
  %_15 = icmp eq ptr %self1, inttoptr (i64 -1 to ptr), !dbg !229
  br i1 %_15, label %bb2, label %bb1, !dbg !234

bb1:                                              ; preds = %start
  %_19 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %self1, i64 0, i32 1, !dbg !236
  %0 = atomicrmw sub ptr %_19, i64 1 release, align 8, !dbg !238
  %1 = icmp eq i64 %0, 1, !dbg !248
  br i1 %1, label %bb3, label %bb8, !dbg !248

bb2:                                              ; preds = %start
  br label %bb8, !dbg !249

bb3:                                              ; preds = %bb1
  tail call fastcc void @_ZN4core4sync6atomic5fence17hdb34cbebe24ab619E(i8 2), !dbg !250
  %_6 = getelementptr inbounds i8, ptr %self, i64 8, !dbg !251
  %self3 = load ptr, ptr %self, align 8, !dbg !253, !nonnull !33, !noundef !33
  tail call fastcc void @"_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h5d6f1a76fe05ba9aE"(ptr nonnull align 8 %_6, ptr nonnull %self3, i64 8, i64 48), !dbg !251
  br label %bb8, !dbg !254

bb8:                                              ; preds = %bb3, %bb1, %bb2
  ret void, !dbg !249
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @"_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h5d6f1a76fe05ba9aE"(ptr nocapture readonly align 8 %self, ptr %ptr, i64 %layout.0, i64 %layout.1) unnamed_addr #13 !dbg !255 {
start:
  %_4 = load ptr, ptr %self, align 8, !dbg !259, !nonnull !33, !align !261, !noundef !33
  tail call fastcc void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h0bc0eaec458bb9cdE"(ptr nonnull align 1 %_4, ptr %ptr, i64 %layout.0, i64 %layout.1), !dbg !259
  ret void, !dbg !262
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h0bc0eaec458bb9cdE"(ptr nocapture readnone align 1 %self, ptr %ptr, i64 %0, i64 %1) unnamed_addr #13 !dbg !263 {
start:
  %2 = icmp eq i64 %1, 0, !dbg !267
  br i1 %2, label %bb3, label %bb1, !dbg !267

bb1:                                              ; preds = %start
  tail call void @__rust_dealloc(ptr %ptr, i64 %1, i64 %0) #32, !dbg !268
  br label %bb3, !dbg !274

bb3:                                              ; preds = %start, %bb1
  ret void, !dbg !275
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @__rust_dealloc(ptr allocptr, i64, i64) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN70_$LT$std..thread..Packet$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9f3f95ac36f415a7E"(ptr align 8 %self) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !276 {
start:
  %_18 = alloca [0 x %"alloc::sync::Weak<std::thread::Packet<'_, ()>, &alloc::alloc::Global>"], align 8
  %_14 = alloca %"core::fmt::Arguments<'_>", align 8
  %_12 = alloca ptr, align 8
  %_6 = alloca %"core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>", align 8
  %0 = getelementptr inbounds %"std::thread::Packet<'_, ()>", ptr %self, i64 0, i32 1, !dbg !278
  %_5 = load i64, ptr %0, align 8, !dbg !278, !range !279, !noundef !33
  %.not = icmp eq i64 %_5, 0, !dbg !280
  br i1 %.not, label %bb3, label %bb2, !dbg !280

bb2:                                              ; preds = %start
  %1 = getelementptr inbounds %"std::thread::Packet<'_, ()>", ptr %self, i64 0, i32 1, i32 0, i32 1, !dbg !278
  %2 = load ptr, ptr %1, align 8, !dbg !278, !noundef !33
  %3 = icmp ne ptr %2, null, !dbg !278
  br label %bb3, !dbg !280

bb3:                                              ; preds = %start, %bb2
  %unhandled_panic.0 = phi i1 [ %3, %bb2 ], [ false, %start ], !dbg !280
  %4 = tail call fastcc { ptr, ptr } @_ZN3std9panicking3try17h2770365d176f6ca9E(ptr nonnull align 8 %0), !dbg !281
  %5 = extractvalue { ptr, ptr } %4, 0, !dbg !281
  %6 = extractvalue { ptr, ptr } %4, 1, !dbg !281
  store ptr %5, ptr %_6, align 8, !dbg !281
  %7 = getelementptr inbounds i8, ptr %_6, i64 8, !dbg !281
  store ptr %6, ptr %7, align 8, !dbg !281
  %.not1 = icmp eq ptr %5, null, !dbg !290
  br i1 %.not1, label %bb8, label %bb4, !dbg !290

bb4:                                              ; preds = %bb3
  invoke fastcc void @_ZN4core3fmt9Arguments6new_v117h5b1af555eaf81b8eE(ptr nonnull sret(%"core::fmt::Arguments<'_>") align 8 %_14, ptr nonnull align 8 @alloc_2ca7775364e940040d1ca01e1c1e4d62, i64 1, ptr nonnull align 8 %_18, i64 0)
          to label %bb5 unwind label %bb13, !dbg !291

bb8:                                              ; preds = %bb3
  call fastcc void @"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h897a97f986a7514cE"(ptr nonnull align 8 %_6), !dbg !294
  %8 = load ptr, ptr %self, align 8, !dbg !295, !noundef !33
  %.not2 = icmp eq ptr %8, null, !dbg !295
  br i1 %.not2, label %bb12, label %bb10, !dbg !295

bb13:                                             ; preds = %bb4, %bb5, %bb6, %bb7
  %9 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h897a97f986a7514cE"(ptr nonnull align 8 %_6) #34
          to label %bb14 unwind label %terminate, !dbg !294

bb5:                                              ; preds = %bb4
  %10 = invoke fastcc ptr @_ZN3std2io5Write9write_fmt17h3daa9a4618f4ac87E(ptr nonnull align 1 %_18, ptr nonnull align 8 %_14)
          to label %bb6 unwind label %bb13, !dbg !291

bb6:                                              ; preds = %bb5
  store ptr %10, ptr %_12, align 8, !dbg !291
  invoke fastcc void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h84378f750af2621eE"(ptr nonnull align 8 %_12)
          to label %bb7 unwind label %bb13, !dbg !291

bb7:                                              ; preds = %bb6
  invoke void @_ZN3std3sys3pal4unix14abort_internal17h7fd6e40882d9056eE() #33
          to label %unreachable unwind label %bb13, !dbg !297

unreachable:                                      ; preds = %bb7
  unreachable

terminate:                                        ; preds = %bb13
  %11 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #27, !dbg !298
  unreachable, !dbg !298

bb14:                                             ; preds = %bb13
  resume { ptr, i32 } %9, !dbg !298

bb10:                                             ; preds = %bb8
  %_23 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::scoped::ScopeData>", ptr %8, i64 0, i32 2, !dbg !299
  call void @_ZN3std6thread6scoped9ScopeData29decrement_num_running_threads17h407e400d408a22bfE(ptr nonnull align 8 %_23, i1 zeroext %unhandled_panic.0), !dbg !299
  br label %bb12, !dbg !300

bb12:                                             ; preds = %bb10, %bb8
  ret void, !dbg !301
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17hc230ee2b1e444aaeE"(ptr align 8 %_1) unnamed_addr #3 !dbg !302 {
start:
  %0 = load ptr, ptr %_1, align 8, !dbg !303, !noundef !33
  %1 = icmp eq ptr %0, null, !dbg !303
  br i1 %1, label %bb1, label %bb2, !dbg !303

bb1:                                              ; preds = %bb2, %start
  ret void, !dbg !303

bb2:                                              ; preds = %start
  tail call fastcc void @"_ZN4core3ptr75drop_in_place$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$17h927b77db22fab1b3E"(ptr nonnull align 8 %_1), !dbg !303
  br label %bb1, !dbg !303
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr188drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$$GT$17h699be22d21dc7920E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 !dbg !304 {
start:
  tail call fastcc void @"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17h7836c66a3cefedddE"(ptr align 8 %_1), !dbg !305
  ret void, !dbg !305
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17h7836c66a3cefedddE"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 !dbg !306 {
start:
  %_2 = load i64, ptr %_1, align 8, !dbg !307, !range !279, !noundef !33
  %0 = icmp eq i64 %_2, 0, !dbg !307
  br i1 %0, label %bb1, label %bb2, !dbg !307

bb1:                                              ; preds = %bb2, %start
  ret void, !dbg !307

bb2:                                              ; preds = %start
  %1 = getelementptr inbounds %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>::Some", ptr %_1, i64 0, i32 1, !dbg !307
  tail call fastcc void @"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h897a97f986a7514cE"(ptr nonnull align 8 %1), !dbg !307
  br label %bb1, !dbg !307
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h897a97f986a7514cE"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 !dbg !308 {
start:
  %0 = load ptr, ptr %_1, align 8, !dbg !309, !noundef !33
  %1 = icmp eq ptr %0, null, !dbg !309
  br i1 %1, label %bb1, label %bb2, !dbg !309

bb1:                                              ; preds = %bb2, %start
  ret void, !dbg !309

bb2:                                              ; preds = %start
  tail call void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17haac18471cb09fd30E"(ptr nonnull align 8 %_1), !dbg !309
  br label %bb1, !dbg !309
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr75drop_in_place$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$17h927b77db22fab1b3E"(ptr align 8 %_1) unnamed_addr #3 !dbg !310 {
start:
  tail call fastcc void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hab18f717569722b4E"(ptr align 8 %_1), !dbg !311
  ret void, !dbg !311
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hab18f717569722b4E"(ptr align 8 %self) unnamed_addr #5 !dbg !312 {
start:
  %self1 = load ptr, ptr %self, align 8, !dbg !313, !nonnull !33, !noundef !33
  %0 = atomicrmw sub ptr %self1, i64 1 release, align 8, !dbg !322
  %1 = icmp eq i64 %0, 1, !dbg !331
  br i1 %1, label %bb2, label %bb4, !dbg !331

bb2:                                              ; preds = %start
  tail call fastcc void @_ZN4core4sync6atomic5fence17hdb34cbebe24ab619E(i8 2), !dbg !332
  tail call fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9148759783f10b7dE"(ptr nonnull align 8 %self), !dbg !333
  br label %bb4, !dbg !333

bb4:                                              ; preds = %start, %bb2
  ret void, !dbg !335
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9148759783f10b7dE"(ptr align 8 %self) unnamed_addr #6 !dbg !336 {
start:
  %_x = alloca %"alloc::sync::Weak<std::thread::Packet<'_, ()>, &alloc::alloc::Global>", align 8
  %self1 = load ptr, ptr %self, align 8, !dbg !337, !nonnull !33, !noundef !33
  %_3 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::scoped::ScopeData>", ptr %self1, i64 0, i32 2, !dbg !341
  tail call fastcc void @"_ZN4core3ptr51drop_in_place$LT$std..thread..scoped..ScopeData$GT$17hde5f8f9cbe162524E"(ptr nonnull align 8 %_3), !dbg !343
  %_5 = load ptr, ptr %self, align 8, !dbg !344, !nonnull !33, !noundef !33
  %_6 = getelementptr i8, ptr %self, i64 8, !dbg !345
  store ptr %_5, ptr %_x, align 8, !dbg !346
  %0 = getelementptr inbounds i8, ptr %_x, i64 8, !dbg !346
  store ptr %_6, ptr %0, align 8, !dbg !346
  call fastcc void @"_ZN4core3ptr103drop_in_place$LT$alloc..sync..Weak$LT$std..thread..scoped..ScopeData$C$$RF$alloc..alloc..Global$GT$$GT$17h5be186858ee5ecaeE"(ptr nonnull align 8 %_x), !dbg !347
  ret void, !dbg !351
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr51drop_in_place$LT$std..thread..scoped..ScopeData$GT$17hde5f8f9cbe162524E"(ptr align 8 %_1) unnamed_addr #3 !dbg !352 {
start:
  tail call fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hf3442f0736498466E"(ptr align 8 %_1), !dbg !353
  ret void, !dbg !353
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr103drop_in_place$LT$alloc..sync..Weak$LT$std..thread..scoped..ScopeData$C$$RF$alloc..alloc..Global$GT$$GT$17h5be186858ee5ecaeE"(ptr nocapture readonly align 8 %_1) unnamed_addr #12 !dbg !354 {
start:
  tail call fastcc void @"_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52e4b9e4957771f5E"(ptr align 8 %_1), !dbg !355
  ret void, !dbg !355
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52e4b9e4957771f5E"(ptr nocapture readonly align 8 %self) unnamed_addr #12 !dbg !356 {
start:
  %self1 = load ptr, ptr %self, align 8, !dbg !357, !nonnull !33, !noundef !33
  %_15 = icmp eq ptr %self1, inttoptr (i64 -1 to ptr), !dbg !362
  br i1 %_15, label %bb2, label %bb1, !dbg !365

bb1:                                              ; preds = %start
  %_19 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::scoped::ScopeData>", ptr %self1, i64 0, i32 1, !dbg !367
  %0 = atomicrmw sub ptr %_19, i64 1 release, align 8, !dbg !369
  %1 = icmp eq i64 %0, 1, !dbg !379
  br i1 %1, label %bb3, label %bb8, !dbg !379

bb2:                                              ; preds = %start
  br label %bb8, !dbg !380

bb3:                                              ; preds = %bb1
  tail call fastcc void @_ZN4core4sync6atomic5fence17hdb34cbebe24ab619E(i8 2), !dbg !381
  %_6 = getelementptr inbounds i8, ptr %self, i64 8, !dbg !382
  %self3 = load ptr, ptr %self, align 8, !dbg !384, !nonnull !33, !noundef !33
  tail call fastcc void @"_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h5d6f1a76fe05ba9aE"(ptr nonnull align 8 %_6, ptr nonnull %self3, i64 8, i64 40), !dbg !382
  br label %bb8, !dbg !385

bb8:                                              ; preds = %bb3, %bb1, %bb2
  ret void, !dbg !380
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_ZN3std9panicking3try17h2770365d176f6ca9E(ptr align 8 %f) unnamed_addr #3 !dbg !386 {
start:
  %data = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %0 = icmp ne ptr %f, null
  tail call void @llvm.assume(i1 %0)
  store ptr %f, ptr %data, align 8, !dbg !389
  %1 = call fastcc i32 @__rust_try(ptr nonnull @_ZN3std9panicking3try7do_call17hab64abe00390c901E, ptr nonnull %data, ptr nonnull @_ZN3std9panicking3try8do_catch17hd177a3503128d6f4E), !dbg !390, !range !394
  %2 = icmp eq i32 %1, 0, !dbg !390
  br i1 %2, label %bb2, label %bb3, !dbg !390

bb2:                                              ; preds = %start
  br label %bb4, !dbg !395

bb3:                                              ; preds = %start
  %slot.0 = load ptr, ptr %data, align 8, !dbg !396, !nonnull !33, !align !261, !noundef !33
  %3 = getelementptr inbounds i8, ptr %data, i64 8, !dbg !396
  %slot.1 = load ptr, ptr %3, align 8, !dbg !396, !nonnull !33, !align !148, !noundef !33
  br label %bb4, !dbg !395

bb4:                                              ; preds = %bb3, %bb2
  %4 = phi ptr [ %slot.1, %bb3 ], [ undef, %bb2 ], !dbg !397
  %5 = phi ptr [ %slot.0, %bb3 ], [ null, %bb2 ], !dbg !397
  %6 = insertvalue { ptr, ptr } poison, ptr %5, 0, !dbg !397
  %7 = insertvalue { ptr, ptr } %6, ptr %4, 1, !dbg !397
  ret { ptr, ptr } %7, !dbg !397
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core3fmt9Arguments6new_v117h5b1af555eaf81b8eE(ptr nocapture writeonly sret(%"core::fmt::Arguments<'_>") align 8 %_0, ptr align 8 %pieces.0, i64 %pieces.1, ptr align 8 %args.0, i64 %args.1) unnamed_addr #5 !dbg !398 {
start:
  %_9 = alloca %"core::fmt::Arguments<'_>", align 8
  %_3 = icmp ult i64 %pieces.1, %args.1, !dbg !402
  %_7 = add nuw nsw i64 %args.1, 1
  %_6 = icmp ult i64 %_7, %pieces.1
  %or.cond = select i1 %_3, i1 true, i1 %_6, !dbg !402
  br i1 %or.cond, label %bb6, label %bb3, !dbg !402

bb3:                                              ; preds = %start
  store ptr %pieces.0, ptr %_0, align 8, !dbg !403
  %0 = getelementptr inbounds i8, ptr %_0, i64 8, !dbg !403
  store i64 %pieces.1, ptr %0, align 8, !dbg !403
  %1 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_0, i64 0, i32 2, !dbg !403
  store ptr null, ptr %1, align 8, !dbg !403
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_0, i64 0, i32 1, !dbg !403
  store ptr %args.0, ptr %2, align 8, !dbg !403
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_0, i64 0, i32 1, i32 1, !dbg !403
  store i64 %args.1, ptr %3, align 8, !dbg !403
  ret void, !dbg !404

bb6:                                              ; preds = %start
  store ptr @alloc_af99043bc04c419363a7f04d23183506, ptr %_9, align 8, !dbg !405
  %4 = getelementptr inbounds i8, ptr %_9, i64 8, !dbg !405
  store i64 1, ptr %4, align 8, !dbg !405
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_9, i64 0, i32 2, !dbg !405
  store ptr null, ptr %5, align 8, !dbg !405
  %6 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_9, i64 0, i32 1, !dbg !405
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %6, align 8, !dbg !405
  %7 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_9, i64 0, i32 1, i32 1, !dbg !405
  store i64 0, ptr %7, align 8, !dbg !405
  call void @_ZN4core9panicking9panic_fmt17ha3d303d496008cd4E(ptr nonnull align 8 %_9, ptr nonnull align 8 @alloc_429c82a8a757ba4eb6ada2ea4793308e) #33, !dbg !411
  unreachable, !dbg !411
}

; Function Attrs: nonlazybind uwtable
define internal fastcc ptr @_ZN3std2io5Write9write_fmt17h3daa9a4618f4ac87E(ptr align 1 %self, ptr align 8 %fmt) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !412 {
start:
  %output = alloca %"alloc::sync::Weak<std::thread::Packet<'_, ()>, &alloc::alloc::Global>", align 8
  store ptr %self, ptr %output, align 8, !dbg !416
  %0 = getelementptr inbounds i8, ptr %output, i64 8, !dbg !416
  store ptr null, ptr %0, align 8, !dbg !416
  %1 = invoke zeroext i1 @_ZN4core3fmt5write17ha63b5e044fedf034E(ptr nonnull align 1 %output, ptr nonnull align 8 @vtable.0, ptr align 8 %fmt)
          to label %bb1 unwind label %bb7, !dbg !417

bb7:                                              ; preds = %start
  %2 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr97drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..sys..pal..unix..stdio..Stderr$GT$$GT$17h19513f68692c85baE"(ptr nonnull align 8 %output) #34
          to label %bb8 unwind label %terminate, !dbg !419

bb1:                                              ; preds = %start
  br i1 %1, label %bb2, label %bb10, !dbg !420

bb2:                                              ; preds = %bb1
  %3 = load ptr, ptr %0, align 8, !dbg !421, !noundef !33
  %.not = icmp eq ptr %3, null, !dbg !421
  br i1 %.not, label %bb10, label %bb9, !dbg !428

bb9:                                              ; preds = %bb2, %bb10
  %_0.03 = phi ptr [ %_0.04, %bb10 ], [ %3, %bb2 ]
  ret ptr %_0.03, !dbg !429

bb10:                                             ; preds = %bb1, %bb2
  %_0.04 = phi ptr [ @alloc_5d9af7a776dc0d9eecd628aaf786bef9, %bb2 ], [ null, %bb1 ]
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h84378f750af2621eE"(ptr nonnull align 8 %0), !dbg !419
  br label %bb9, !dbg !419

terminate:                                        ; preds = %bb7
  %4 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #27, !dbg !430
  unreachable, !dbg !430

bb8:                                              ; preds = %bb7
  resume { ptr, i32 } %2, !dbg !430
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h84378f750af2621eE"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 !dbg !431 {
start:
  %0 = load ptr, ptr %_1, align 8, !dbg !432, !noundef !33
  %1 = icmp eq ptr %0, null, !dbg !432
  br i1 %1, label %bb1, label %bb2, !dbg !432

bb1:                                              ; preds = %bb2, %start
  ret void, !dbg !432

bb2:                                              ; preds = %start
  tail call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hbe6b5bd41666926aE"(ptr nonnull align 8 %_1), !dbg !432
  br label %bb1, !dbg !432
}

; Function Attrs: noreturn nonlazybind uwtable
declare void @_ZN3std3sys3pal4unix14abort_internal17h7fd6e40882d9056eE() unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std6thread6scoped9ScopeData29decrement_num_running_threads17h407e400d408a22bfE(ptr align 8, i1 zeroext) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hbe6b5bd41666926aE"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 !dbg !433 {
start:
  tail call fastcc void @"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hab36c48d7da12234E"(ptr align 8 %_1), !dbg !434
  ret void, !dbg !434
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hab36c48d7da12234E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 !dbg !435 {
start:
  tail call fastcc void @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17h55dea4351a5f6046E"(ptr align 8 %_1), !dbg !436
  ret void, !dbg !436
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17h55dea4351a5f6046E"(ptr nocapture readonly align 8 %self) unnamed_addr #5 !dbg !437 {
start:
  %_2 = alloca %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>", align 8
  %_3 = load ptr, ptr %self, align 8, !dbg !442, !nonnull !33, !noundef !33
  call fastcc void @_ZN3std2io5error14repr_bitpacked11decode_repr17h4cfc897f6f8c2596E(ptr nonnull sret(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>") align 8 %_2, ptr nonnull %_3), !dbg !444
  call fastcc void @"_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17h9dd9ecb2c69dfa48E"(ptr nonnull align 8 %_2), !dbg !445
  ret void, !dbg !446
}

; Function Attrs: inlinehint mustprogress nofree nosync nonlazybind willreturn memory(argmem: write, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_ZN3std2io5error14repr_bitpacked11decode_repr17h4cfc897f6f8c2596E(ptr nocapture writeonly sret(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>") align 8 %_0, ptr %ptr) unnamed_addr #17 personality ptr @rust_eh_personality !dbg !447 {
start:
  %0 = ptrtoint ptr %ptr to i64, !dbg !448
  %_5 = and i64 %0, 3, !dbg !456
  switch i64 %_5, label %start.unreachabledefault [
    i64 2, label %bb2
    i64 3, label %bb3
    i64 0, label %bb5
    i64 1, label %bb6
  ], !dbg !458

start.unreachabledefault:                         ; preds = %start
  unreachable

bb2:                                              ; preds = %start
  %1 = lshr i64 %0, 32, !dbg !459
  %code = trunc i64 %1 to i32, !dbg !459
  %2 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Os", ptr %_0, i64 0, i32 1, !dbg !460
  store i32 %code, ptr %2, align 4, !dbg !460
  store i8 0, ptr %_0, align 8, !dbg !460
  br label %bb9, !dbg !462

bb3:                                              ; preds = %start
  %_12 = lshr i64 %0, 32, !dbg !463
  %kind_bits = trunc i64 %_12 to i32, !dbg !463
  %3 = call fastcc i8 @_ZN3std2io5error14repr_bitpacked14kind_from_prim17h8857574e91a5e704E(i32 %kind_bits), !dbg !464, !range !466
  br label %bb4

bb5:                                              ; preds = %start
  %4 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", ptr %_0, i64 0, i32 1, !dbg !467
  store ptr %ptr, ptr %4, align 8, !dbg !467
  store i8 2, ptr %_0, align 8, !dbg !467
  br label %bb9, !dbg !468

bb6:                                              ; preds = %start
  %5 = getelementptr i8, ptr %ptr, i64 -1, !dbg !469
  %_21 = call fastcc align 8 ptr @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h44c30c074b20a2b6E"(ptr %5), !dbg !480
  br label %bb8

bb8:                                              ; preds = %bb6
  %6 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", ptr %_0, i64 0, i32 1, !dbg !482
  store ptr %5, ptr %6, align 8, !dbg !482
  store i8 3, ptr %_0, align 8, !dbg !482
  br label %bb9, !dbg !483

bb4:                                              ; preds = %bb3
  %7 = icmp ne i8 %3, 41, !dbg !484
  tail call void @llvm.assume(i1 %7), !dbg !491
  %8 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Simple", ptr %_0, i64 0, i32 1, !dbg !492
  store i8 %3, ptr %8, align 1, !dbg !492
  store i8 1, ptr %_0, align 8, !dbg !492
  br label %bb9, !dbg !494

bb9:                                              ; preds = %bb2, %bb4, %bb5, %bb8
  ret void, !dbg !495
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17h9dd9ecb2c69dfa48E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 !dbg !496 {
start:
  %0 = load i8, ptr %_1, align 8, !dbg !497, !range !498, !noundef !33
  %_2 = zext i8 %0 to i64, !dbg !497
  switch i64 %_2, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb1
    i64 2, label %bb1
  ], !dbg !497

bb2:                                              ; preds = %start
  %1 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", ptr %_1, i64 0, i32 1, !dbg !497
  tail call fastcc void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h296ae5d5a911393cE"(ptr nonnull align 8 %1), !dbg !497
  br label %bb1, !dbg !497

bb1:                                              ; preds = %bb2, %start, %start, %start
  ret void, !dbg !497
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h296ae5d5a911393cE"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !499 {
start:
  %_6 = load ptr, ptr %_1, align 8, !dbg !500, !noundef !33
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17hea336d1c282b764bE"(ptr align 8 %_6)
          to label %bb3 unwind label %bb4, !dbg !500

bb4:                                              ; preds = %start
  %0 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h07c4c2135c5f53e6E"(ptr nonnull align 8 %_1) #34, !dbg !500
  br label %bb1

bb3:                                              ; preds = %start
  tail call fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h07c4c2135c5f53e6E"(ptr nonnull align 8 %_1), !dbg !500
  ret void, !dbg !500

bb1:                                              ; preds = %bb4
  resume { ptr, i32 } %0, !dbg !500
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17hea336d1c282b764bE"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 !dbg !501 {
start:
  tail call fastcc void @"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$17h2795b47bcc0296cdE"(ptr align 8 %_1), !dbg !502
  ret void, !dbg !502
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h07c4c2135c5f53e6E"(ptr nocapture readonly align 8 %self) unnamed_addr #13 !dbg !503 {
bb4:
  %ptr = load ptr, ptr %self, align 8, !dbg !507, !nonnull !33, !noundef !33
  %_8 = getelementptr i8, ptr %self, i64 8, !dbg !508
  tail call fastcc void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h0bc0eaec458bb9cdE"(ptr align 1 %_8, ptr nonnull %ptr, i64 8, i64 24), !dbg !508
  ret void, !dbg !512
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$17h2795b47bcc0296cdE"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !513 {
start:
  %_6.0 = load ptr, ptr %_1, align 8, !dbg !514, !noundef !33
  %0 = getelementptr inbounds i8, ptr %_1, i64 8, !dbg !514
  %_6.1 = load ptr, ptr %0, align 8, !dbg !514, !nonnull !33, !align !148, !noundef !33
  %1 = load ptr, ptr %_6.1, align 8, !dbg !514, !invariant.load !33, !nonnull !33
  invoke void %1(ptr align 1 %_6.0)
          to label %bb3 unwind label %bb4, !dbg !514

bb4:                                              ; preds = %start
  %2 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf679f183ab14447aE"(ptr nonnull align 8 %_1) #34, !dbg !514
  br label %bb1

bb3:                                              ; preds = %start
  tail call fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf679f183ab14447aE"(ptr nonnull align 8 %_1), !dbg !514
  ret void, !dbg !514

bb1:                                              ; preds = %bb4
  resume { ptr, i32 } %2, !dbg !514
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf679f183ab14447aE"(ptr nocapture readonly align 8 %self) unnamed_addr #13 !dbg !515 {
start:
  %0 = getelementptr inbounds i8, ptr %self, i64 8, !dbg !516
  %ptr.1 = load ptr, ptr %0, align 8, !dbg !516, !nonnull !33, !align !148, !noundef !33
  %1 = getelementptr inbounds i64, ptr %ptr.1, i64 1, !dbg !517
  %2 = load i64, ptr %1, align 8, !dbg !517, !range !531, !invariant.load !33
  %3 = icmp eq i64 %2, 0, !dbg !532
  br i1 %3, label %bb4, label %bb1, !dbg !532

bb1:                                              ; preds = %start
  %4 = getelementptr inbounds i64, ptr %ptr.1, i64 2, !dbg !517
  %5 = load i64, ptr %4, align 8, !dbg !534, !range !539, !invariant.load !33
  %ptr.0 = load ptr, ptr %self, align 8, !dbg !516, !nonnull !33, !noundef !33
  %_8 = getelementptr inbounds i8, ptr %self, i64 16, !dbg !540
  tail call fastcc void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h0bc0eaec458bb9cdE"(ptr nonnull align 1 %_8, ptr nonnull %ptr.0, i64 %5, i64 %2), !dbg !540
  br label %bb4, !dbg !541

bb4:                                              ; preds = %start, %bb1
  ret void, !dbg !542
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc i8 @_ZN3std2io5error14repr_bitpacked14kind_from_prim17h8857574e91a5e704E(i32 %0) unnamed_addr #4 !dbg !543 {
start:
  switch i32 %0, label %bb82 [
    i32 0, label %bb83
    i32 1, label %bb83.fold.split
    i32 2, label %bb83.fold.split1
    i32 3, label %bb83.fold.split2
    i32 4, label %bb83.fold.split3
    i32 5, label %bb83.fold.split4
    i32 6, label %bb83.fold.split5
    i32 7, label %bb83.fold.split6
    i32 8, label %bb83.fold.split7
    i32 9, label %bb83.fold.split8
    i32 10, label %bb83.fold.split9
    i32 11, label %bb83.fold.split10
    i32 12, label %bb83.fold.split11
    i32 13, label %bb83.fold.split12
    i32 14, label %bb83.fold.split13
    i32 15, label %bb83.fold.split14
    i32 16, label %bb83.fold.split15
    i32 17, label %bb83.fold.split16
    i32 18, label %bb83.fold.split17
    i32 19, label %bb83.fold.split18
    i32 20, label %bb83.fold.split19
    i32 21, label %bb83.fold.split20
    i32 22, label %bb83.fold.split21
    i32 23, label %bb83.fold.split22
    i32 24, label %bb83.fold.split23
    i32 25, label %bb83.fold.split24
    i32 26, label %bb83.fold.split25
    i32 27, label %bb83.fold.split26
    i32 28, label %bb83.fold.split27
    i32 29, label %bb83.fold.split28
    i32 30, label %bb83.fold.split29
    i32 31, label %bb83.fold.split30
    i32 32, label %bb83.fold.split31
    i32 33, label %bb83.fold.split32
    i32 34, label %bb83.fold.split33
    i32 35, label %bb83.fold.split34
    i32 39, label %bb83.fold.split35
    i32 37, label %bb83.fold.split36
    i32 36, label %bb83.fold.split37
    i32 38, label %bb83.fold.split38
    i32 40, label %bb83.fold.split39
  ], !dbg !544

bb83.fold.split:                                  ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split1:                                 ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split2:                                 ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split3:                                 ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split4:                                 ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split5:                                 ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split6:                                 ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split7:                                 ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split8:                                 ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split9:                                 ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split10:                                ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split11:                                ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split12:                                ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split13:                                ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split14:                                ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split15:                                ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split16:                                ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split17:                                ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split18:                                ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split19:                                ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split20:                                ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split21:                                ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split22:                                ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split23:                                ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split24:                                ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split25:                                ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split26:                                ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split27:                                ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split28:                                ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split29:                                ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split30:                                ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split31:                                ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split32:                                ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split33:                                ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split34:                                ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split35:                                ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split36:                                ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split37:                                ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split38:                                ; preds = %start
  br label %bb83, !dbg !545

bb83.fold.split39:                                ; preds = %start
  br label %bb83, !dbg !545

bb83:                                             ; preds = %start, %bb83.fold.split39, %bb83.fold.split38, %bb83.fold.split37, %bb83.fold.split36, %bb83.fold.split35, %bb83.fold.split34, %bb83.fold.split33, %bb83.fold.split32, %bb83.fold.split31, %bb83.fold.split30, %bb83.fold.split29, %bb83.fold.split28, %bb83.fold.split27, %bb83.fold.split26, %bb83.fold.split25, %bb83.fold.split24, %bb83.fold.split23, %bb83.fold.split22, %bb83.fold.split21, %bb83.fold.split20, %bb83.fold.split19, %bb83.fold.split18, %bb83.fold.split17, %bb83.fold.split16, %bb83.fold.split15, %bb83.fold.split14, %bb83.fold.split13, %bb83.fold.split12, %bb83.fold.split11, %bb83.fold.split10, %bb83.fold.split9, %bb83.fold.split8, %bb83.fold.split7, %bb83.fold.split6, %bb83.fold.split5, %bb83.fold.split4, %bb83.fold.split3, %bb83.fold.split2, %bb83.fold.split1, %bb83.fold.split, %bb82
  %_0.0 = phi i8 [ 41, %bb82 ], [ 0, %start ], [ 1, %bb83.fold.split ], [ 2, %bb83.fold.split1 ], [ 3, %bb83.fold.split2 ], [ 4, %bb83.fold.split3 ], [ 5, %bb83.fold.split4 ], [ 6, %bb83.fold.split5 ], [ 7, %bb83.fold.split6 ], [ 8, %bb83.fold.split7 ], [ 9, %bb83.fold.split8 ], [ 10, %bb83.fold.split9 ], [ 11, %bb83.fold.split10 ], [ 12, %bb83.fold.split11 ], [ 13, %bb83.fold.split12 ], [ 14, %bb83.fold.split13 ], [ 15, %bb83.fold.split14 ], [ 16, %bb83.fold.split15 ], [ 17, %bb83.fold.split16 ], [ 18, %bb83.fold.split17 ], [ 19, %bb83.fold.split18 ], [ 20, %bb83.fold.split19 ], [ 21, %bb83.fold.split20 ], [ 22, %bb83.fold.split21 ], [ 23, %bb83.fold.split22 ], [ 24, %bb83.fold.split23 ], [ 25, %bb83.fold.split24 ], [ 26, %bb83.fold.split25 ], [ 27, %bb83.fold.split26 ], [ 28, %bb83.fold.split27 ], [ 29, %bb83.fold.split28 ], [ 30, %bb83.fold.split29 ], [ 31, %bb83.fold.split30 ], [ 32, %bb83.fold.split31 ], [ 33, %bb83.fold.split32 ], [ 34, %bb83.fold.split33 ], [ 35, %bb83.fold.split34 ], [ 39, %bb83.fold.split35 ], [ 37, %bb83.fold.split36 ], [ 36, %bb83.fold.split37 ], [ 38, %bb83.fold.split38 ], [ 40, %bb83.fold.split39 ], !dbg !544
  ret i8 %_0.0, !dbg !545

bb82:                                             ; preds = %start
  br label %bb83, !dbg !544
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind nonlazybind willreturn memory(inaccessiblemem: readwrite) uwtable
define internal fastcc align 8 ptr @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h44c30c074b20a2b6E"(ptr readnone returned %p) unnamed_addr #18 !dbg !546 {
start:
  %0 = icmp ne ptr %p, null
  tail call void @llvm.assume(i1 %0)
  ret ptr %p, !dbg !548
}

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt5write17ha63b5e044fedf034E(ptr align 1, ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr97drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..sys..pal..unix..stdio..Stderr$GT$$GT$17h19513f68692c85baE"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 !dbg !549 {
start:
  %0 = getelementptr inbounds i8, ptr %_1, i64 8, !dbg !550
  tail call fastcc void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h84378f750af2621eE"(ptr nonnull align 8 %0), !dbg !550
  ret void, !dbg !550
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h8f2df3dee1a7f0a5E"(ptr nocapture align 8 %self, ptr align 1 %s.0, i64 %s.1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !551 {
start:
  %_8 = load ptr, ptr %self, align 8, !dbg !554, !nonnull !33, !align !261, !noundef !33
  %0 = tail call fastcc ptr @_ZN3std2io5Write9write_all17h49c60de90589491fE(ptr nonnull align 1 %_8, ptr align 1 %s.0, i64 %s.1), !dbg !554
  %1 = icmp ne ptr %0, null, !dbg !554
  br i1 %1, label %bb2, label %bb6, !dbg !555

bb2:                                              ; preds = %start
  %2 = getelementptr inbounds i8, ptr %self, i64 8, !dbg !556
  invoke fastcc void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h84378f750af2621eE"(ptr nonnull align 8 %2)
          to label %bb4 unwind label %bb5, !dbg !556

bb6:                                              ; preds = %start, %bb4
  ret i1 %1, !dbg !558

bb5:                                              ; preds = %bb2
  %3 = landingpad { ptr, i32 }
          cleanup
  store ptr %0, ptr %2, align 8, !dbg !556
  resume { ptr, i32 } %3, !dbg !559

bb4:                                              ; preds = %bb2
  store ptr %0, ptr %2, align 8, !dbg !556
  br label %bb6, !dbg !560
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @_ZN4core3fmt5Write10write_char17h4f01b2b0d5f948e5E(ptr nocapture align 8 %self, i32 %c) unnamed_addr #3 !dbg !561 {
start:
  %_6 = alloca [4 x i8], align 4
  store i32 0, ptr %_6, align 4, !dbg !563
  %0 = call fastcc { ptr, i64 } @_ZN4core4char7methods15encode_utf8_raw17hf0ab1d524fecd9a9E(i32 %c, ptr nonnull align 1 %_6, i64 4), !dbg !564
  %v.0 = extractvalue { ptr, i64 } %0, 0, !dbg !564
  %v.1 = extractvalue { ptr, i64 } %0, 1, !dbg !564
  %_0 = call zeroext i1 @"_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h8f2df3dee1a7f0a5E"(ptr align 8 %self, ptr align 1 %v.0, i64 %v.1), !dbg !573
  ret i1 %_0, !dbg !574
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @_ZN4core3fmt5Write9write_fmt17h0e2d40cf4102a079E(ptr align 8 %self, ptr align 8 %args) unnamed_addr #3 !dbg !575 {
start:
  %_0 = tail call fastcc zeroext i1 @"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h8e1c4d362e134ddbE"(ptr align 8 %self, ptr align 8 %args), !dbg !576
  ret i1 %_0, !dbg !577
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc zeroext i1 @"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h8e1c4d362e134ddbE"(ptr align 8 %self, ptr align 8 %args) unnamed_addr #5 !dbg !578 {
start:
  %_0 = tail call zeroext i1 @_ZN4core3fmt5write17ha63b5e044fedf034E(ptr align 1 %self, ptr nonnull align 8 @vtable.0, ptr align 8 %args), !dbg !581
  ret i1 %_0, !dbg !582
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_ZN4core4char7methods15encode_utf8_raw17hf0ab1d524fecd9a9E(i32 %0, ptr align 1 %dst.0, i64 %dst.1) unnamed_addr #5 !dbg !583 {
start:
  %_72 = icmp ult i32 %0, 128, !dbg !584
  br i1 %_72, label %bb6, label %bb13, !dbg !584

bb13:                                             ; preds = %start
  %_73 = icmp ult i32 %0, 2048, !dbg !588
  br i1 %_73, label %bb7, label %bb15, !dbg !588

bb15:                                             ; preds = %bb13
  %_74 = icmp ult i32 %0, 65536, !dbg !589
  br i1 %_74, label %bb8, label %bb9, !dbg !589

bb6:                                              ; preds = %start
  %1 = trunc i32 %0 to i8, !dbg !590
  store i8 %1, ptr %dst.0, align 1, !dbg !590
  br label %bb11, !dbg !593

bb11:                                             ; preds = %bb9, %bb8, %bb7, %bb6
  %index = phi i64 [ 4, %bb9 ], [ 3, %bb8 ], [ 2, %bb7 ], [ 1, %bb6 ], !dbg !594
  %2 = tail call fastcc { ptr, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h685690eb09a700fcE"(i64 0, i64 %index, ptr nonnull align 1 %dst.0, i64 4, ptr nonnull align 8 @alloc_41a0379ed06a3b1c22d2313ff030dc3d), !dbg !595
  ret { ptr, i64 } %2, !dbg !607

bb7:                                              ; preds = %bb13
  %_20 = lshr i32 %0, 6, !dbg !608
  %3 = trunc i32 %_20 to i8, !dbg !610
  %_18 = and i8 %3, 31, !dbg !610
  %4 = or i8 %_18, -64, !dbg !611
  store i8 %4, ptr %dst.0, align 1, !dbg !611
  %5 = trunc i32 %0 to i8, !dbg !612
  %_22 = and i8 %5, 63, !dbg !612
  %6 = getelementptr inbounds [0 x i8], ptr %dst.0, i64 0, i64 1, !dbg !613
  %7 = or i8 %_22, -128, !dbg !613
  store i8 %7, ptr %6, align 1, !dbg !613
  br label %bb11, !dbg !614

bb8:                                              ; preds = %bb15
  %_30 = lshr i32 %0, 12, !dbg !615
  %8 = trunc i32 %_30 to i8, !dbg !617
  %_28 = and i8 %8, 15, !dbg !617
  %9 = or i8 %_28, -32, !dbg !618
  store i8 %9, ptr %dst.0, align 1, !dbg !618
  %_34 = lshr i32 %0, 6, !dbg !619
  %10 = trunc i32 %_34 to i8, !dbg !620
  %_32 = and i8 %10, 63, !dbg !620
  %11 = getelementptr inbounds [0 x i8], ptr %dst.0, i64 0, i64 1, !dbg !621
  %12 = or i8 %_32, -128, !dbg !621
  store i8 %12, ptr %11, align 1, !dbg !621
  %13 = trunc i32 %0 to i8, !dbg !622
  %_36 = and i8 %13, 63, !dbg !622
  %14 = getelementptr inbounds [0 x i8], ptr %dst.0, i64 0, i64 2, !dbg !623
  %15 = or i8 %_36, -128, !dbg !623
  store i8 %15, ptr %14, align 1, !dbg !623
  br label %bb11, !dbg !624

bb9:                                              ; preds = %bb15
  %_45 = lshr i32 %0, 18, !dbg !625
  %16 = trunc i32 %_45 to i8, !dbg !627
  %_43 = and i8 %16, 7, !dbg !627
  %17 = or i8 %_43, -16, !dbg !628
  store i8 %17, ptr %dst.0, align 1, !dbg !628
  %_49 = lshr i32 %0, 12, !dbg !629
  %18 = trunc i32 %_49 to i8, !dbg !630
  %_47 = and i8 %18, 63, !dbg !630
  %19 = getelementptr inbounds [0 x i8], ptr %dst.0, i64 0, i64 1, !dbg !631
  %20 = or i8 %_47, -128, !dbg !631
  store i8 %20, ptr %19, align 1, !dbg !631
  %_53 = lshr i32 %0, 6, !dbg !632
  %21 = trunc i32 %_53 to i8, !dbg !633
  %_51 = and i8 %21, 63, !dbg !633
  %22 = getelementptr inbounds [0 x i8], ptr %dst.0, i64 0, i64 2, !dbg !634
  %23 = or i8 %_51, -128, !dbg !634
  store i8 %23, ptr %22, align 1, !dbg !634
  %24 = trunc i32 %0 to i8, !dbg !635
  %_55 = and i8 %24, 63, !dbg !635
  %25 = getelementptr inbounds [0 x i8], ptr %dst.0, i64 0, i64 3, !dbg !636
  %26 = or i8 %_55, -128, !dbg !636
  store i8 %26, ptr %25, align 1, !dbg !636
  br label %bb11, !dbg !637
}

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h16e2d8a35fcc5a92E"(ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17ha3d303d496008cd4E(ptr align 8, ptr align 8) unnamed_addr #9

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h685690eb09a700fcE"(i64 %self.0, i64 %self.1, ptr align 1 %slice.0, i64 %slice.1, ptr nocapture readnone align 8 %0) unnamed_addr #5 !dbg !638 {
start:
  %_3 = icmp ugt i64 %self.0, %self.1, !dbg !640
  br i1 %_3, label %bb1, label %bb2, !dbg !640

bb2:                                              ; preds = %start
  %_7 = icmp ugt i64 %self.1, 4, !dbg !641
  br i1 %_7, label %bb3, label %bb4, !dbg !641

bb1:                                              ; preds = %start
  tail call void @_ZN4core5slice5index22slice_index_order_fail17h1fd59e78f9534eb8E(i64 %self.0, i64 %self.1, ptr nonnull align 8 @alloc_41a0379ed06a3b1c22d2313ff030dc3d) #33, !dbg !642
  unreachable, !dbg !642

bb4:                                              ; preds = %bb2
  %new_len = sub nuw i64 %self.1, %self.0, !dbg !643
  %data = getelementptr inbounds i8, ptr %slice.0, i64 %self.0, !dbg !649
  %1 = insertvalue { ptr, i64 } poison, ptr %data, 0, !dbg !655
  %2 = insertvalue { ptr, i64 } %1, i64 %new_len, 1, !dbg !655
  ret { ptr, i64 } %2, !dbg !655

bb3:                                              ; preds = %bb2
  tail call void @_ZN4core5slice5index24slice_end_index_len_fail17h23a8c1ae2d2af720E(i64 %self.1, i64 4, ptr nonnull align 8 @alloc_41a0379ed06a3b1c22d2313ff030dc3d) #33, !dbg !656
  unreachable, !dbg !656
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index22slice_index_order_fail17h1fd59e78f9534eb8E(i64, i64, ptr align 8) unnamed_addr #9

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index24slice_end_index_len_fail17h23a8c1ae2d2af720E(i64, i64, ptr align 8) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
define internal fastcc ptr @_ZN3std2io5Write9write_all17h49c60de90589491fE(ptr align 1 %self, ptr align 1 %0, i64 %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !657 {
start:
  %_4 = alloca %"core::result::Result<usize, std::io::error::Error>", align 8
  %2 = icmp eq i64 %1, 0, !dbg !658
  br i1 %2, label %bb13, label %bb3, !dbg !658

bb3:                                              ; preds = %start, %bb15
  %self.110 = phi i64 [ %self.1, %bb15 ], [ %1, %start ]
  %self.01 = phi ptr [ %_5.07, %bb15 ], [ %0, %start ], !dbg !659
  call void @"_ZN69_$LT$std..sys..pal..unix..stdio..Stderr$u20$as$u20$std..io..Write$GT$5write17h2f522eae24bf9405E"(ptr nonnull sret(%"core::result::Result<usize, std::io::error::Error>") align 8 %_4, ptr align 1 %self, ptr nonnull align 1 %self.01, i64 %self.110), !dbg !660
  %_6 = load i64, ptr %_4, align 8, !dbg !660, !range !279, !noundef !33
  %3 = icmp eq i64 %_6, 0, !dbg !661
  br i1 %3, label %bb5, label %bb8, !dbg !661

bb13:                                             ; preds = %bb11, %bb5, %start, %bb15
  %_0.0 = phi ptr [ null, %bb15 ], [ null, %start ], [ %e4, %bb11 ], [ @alloc_626cc8bfd6c94d404aa777557e31db63, %bb5 ], !dbg !662
  ret ptr %_0.0, !dbg !663

bb5:                                              ; preds = %bb3
  %4 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Ok", ptr %_4, i64 0, i32 1, !dbg !661
  %5 = load i64, ptr %4, align 8, !dbg !661, !noundef !33
  %6 = icmp eq i64 %5, 0, !dbg !661
  br i1 %6, label %bb13, label %bb7, !dbg !661

bb8:                                              ; preds = %bb3
  %7 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", ptr %_4, i64 0, i32 1, !dbg !664
  %_13 = invoke fastcc zeroext i1 @_ZN3std2io5error5Error14is_interrupted17h79019939c164723cE(ptr nonnull align 8 %7)
          to label %bb9 unwind label %cleanup.loopexit, !dbg !665

bb7:                                              ; preds = %bb5
  %_27 = icmp ugt i64 %5, %self.110, !dbg !666
  br i1 %_27, label %bb20, label %bb21, !dbg !666

bb21:                                             ; preds = %bb7
  %new_len = sub nuw i64 %self.110, %5, !dbg !676
  %data = getelementptr inbounds i8, ptr %self.01, i64 %5, !dbg !686
  br label %bb17, !dbg !695

bb20:                                             ; preds = %bb7
  invoke void @_ZN4core5slice5index26slice_start_index_len_fail17hb6e6adbe9bcaa20aE(i64 %5, i64 %self.110, ptr nonnull align 8 @alloc_ad59c95d882f83cd0956f19d31e44c98) #33
          to label %unreachable unwind label %cleanup.loopexit.split-lp, !dbg !696

bb17:                                             ; preds = %bb9.bb17_crit_edge, %bb21
  %self.1 = phi i64 [ %self.110, %bb9.bb17_crit_edge ], [ %new_len, %bb21 ]
  %_17 = phi i64 [ %_17.pre, %bb9.bb17_crit_edge ], [ 0, %bb21 ], !dbg !697
  %_5.07 = phi ptr [ %self.01, %bb9.bb17_crit_edge ], [ %data, %bb21 ]
  %.not6 = icmp eq i64 %_17, 0, !dbg !697
  br i1 %.not6, label %bb15, label %bb16, !dbg !697

bb19:                                             ; preds = %cleanup.loopexit, %cleanup.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
  %_18 = load i64, ptr %_4, align 8, !dbg !697, !range !279, !noundef !33
  %.not = icmp eq i64 %_18, 0, !dbg !697
  br i1 %.not, label %bb14, label %bb18, !dbg !697

cleanup.loopexit:                                 ; preds = %bb8
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb19

cleanup.loopexit.split-lp:                        ; preds = %bb20
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb19

unreachable:                                      ; preds = %bb20
  unreachable

bb9:                                              ; preds = %bb8
  br i1 %_13, label %bb9.bb17_crit_edge, label %bb11, !dbg !665

bb9.bb17_crit_edge:                               ; preds = %bb9
  %_17.pre = load i64, ptr %_4, align 8, !dbg !697, !range !279
  br label %bb17, !dbg !665

bb11:                                             ; preds = %bb9
  %e4 = load ptr, ptr %7, align 8, !dbg !698, !nonnull !33, !noundef !33
  br label %bb13, !dbg !699

bb16:                                             ; preds = %bb17
  %8 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", ptr %_4, i64 0, i32 1, !dbg !697
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hbe6b5bd41666926aE"(ptr nonnull align 8 %8), !dbg !697
  br label %bb15, !dbg !697

bb15:                                             ; preds = %bb16, %bb17
  %9 = icmp eq i64 %self.1, 0, !dbg !658
  br i1 %9, label %bb13, label %bb3, !dbg !658

bb18:                                             ; preds = %bb19
  %10 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", ptr %_4, i64 0, i32 1, !dbg !697
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hbe6b5bd41666926aE"(ptr nonnull align 8 %10) #34
          to label %bb14 unwind label %terminate, !dbg !697

bb14:                                             ; preds = %bb18, %bb19
  resume { ptr, i32 } %lpad.phi, !dbg !701

terminate:                                        ; preds = %bb18
  %11 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #27, !dbg !701
  unreachable, !dbg !701
}

; Function Attrs: nonlazybind uwtable
declare void @"_ZN69_$LT$std..sys..pal..unix..stdio..Stderr$u20$as$u20$std..io..Write$GT$5write17h2f522eae24bf9405E"(ptr sret(%"core::result::Result<usize, std::io::error::Error>") align 8, ptr align 1, ptr align 1, i64) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree nosync nonlazybind willreturn uwtable
define internal fastcc zeroext i1 @_ZN3std2io5error5Error14is_interrupted17h79019939c164723cE(ptr nocapture readonly align 8 %self) unnamed_addr #19 !dbg !702 {
start:
  %_2 = alloca %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>", align 8
  %_12 = load ptr, ptr %self, align 8, !dbg !705, !nonnull !33, !noundef !33
  call fastcc void @_ZN3std2io5error14repr_bitpacked11decode_repr17haf037564bcdeb11dE(ptr nonnull sret(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>") align 8 %_2, ptr nonnull %_12), !dbg !711
  %0 = load i8, ptr %_2, align 8, !dbg !712, !range !498, !noundef !33
  %_4 = zext i8 %0 to i64, !dbg !712
  switch i64 %_4, label %bb7 [
    i64 0, label %bb2
    i64 1, label %bb4
    i64 2, label %bb1
    i64 3, label %bb3
  ], !dbg !713

bb7:                                              ; preds = %start
  unreachable, !dbg !713

bb2:                                              ; preds = %start
  %1 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Os", ptr %_2, i64 0, i32 1, !dbg !714
  %code = load i32, ptr %1, align 4, !dbg !714, !noundef !33
  %2 = icmp eq i32 %code, 4, !dbg !715
  br label %bb5, !dbg !724

bb4:                                              ; preds = %start
  %3 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Simple", ptr %_2, i64 0, i32 1, !dbg !725
  %4 = load i8, ptr %3, align 1, !dbg !725, !range !726, !noundef !33
  %5 = icmp eq i8 %4, 35, !dbg !727
  br label %bb5, !dbg !735

bb1:                                              ; preds = %start
  %6 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", ptr %_2, i64 0, i32 1, !dbg !736
  %m = load ptr, ptr %6, align 8, !dbg !736, !nonnull !33, !align !148, !noundef !33
  %7 = getelementptr inbounds %"std::io::error::SimpleMessage", ptr %m, i64 0, i32 1, !dbg !737
  %8 = load i8, ptr %7, align 8, !dbg !737, !range !726, !noundef !33
  %9 = icmp eq i8 %8, 35, !dbg !741
  br label %bb5, !dbg !744

bb3:                                              ; preds = %start
  %10 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", ptr %_2, i64 0, i32 1, !dbg !745
  %c = load ptr, ptr %10, align 8, !dbg !745, !nonnull !33, !align !148, !noundef !33
  %11 = getelementptr inbounds %"std::io::error::Custom", ptr %c, i64 0, i32 1, !dbg !746
  %12 = load i8, ptr %11, align 8, !dbg !746, !range !726, !noundef !33
  %13 = icmp eq i8 %12, 35, !dbg !750
  br label %bb5, !dbg !753

bb5:                                              ; preds = %bb3, %bb1, %bb4, %bb2
  %_0.0.in = phi i1 [ %13, %bb3 ], [ %9, %bb1 ], [ %5, %bb4 ], [ %2, %bb2 ]
  ret i1 %_0.0.in, !dbg !754
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index26slice_start_index_len_fail17hb6e6adbe9bcaa20aE(i64, i64, ptr align 8) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nofree nosync nonlazybind willreturn memory(argmem: write, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_ZN3std2io5error14repr_bitpacked11decode_repr17haf037564bcdeb11dE(ptr nocapture writeonly sret(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>") align 8 %_0, ptr %ptr) unnamed_addr #17 personality ptr @rust_eh_personality !dbg !755 {
start:
  %0 = ptrtoint ptr %ptr to i64, !dbg !756
  %_5 = and i64 %0, 3, !dbg !761
  switch i64 %_5, label %start.unreachabledefault [
    i64 2, label %bb2
    i64 3, label %bb3
    i64 0, label %bb5
    i64 1, label %bb6
  ], !dbg !763

start.unreachabledefault:                         ; preds = %start
  unreachable

bb2:                                              ; preds = %start
  %1 = lshr i64 %0, 32, !dbg !764
  %code = trunc i64 %1 to i32, !dbg !764
  %2 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Os", ptr %_0, i64 0, i32 1, !dbg !765
  store i32 %code, ptr %2, align 4, !dbg !765
  store i8 0, ptr %_0, align 8, !dbg !765
  br label %bb9, !dbg !767

bb3:                                              ; preds = %start
  %_12 = lshr i64 %0, 32, !dbg !768
  %kind_bits = trunc i64 %_12 to i32, !dbg !768
  %3 = call fastcc i8 @_ZN3std2io5error14repr_bitpacked14kind_from_prim17h8857574e91a5e704E(i32 %kind_bits), !dbg !769, !range !466
  br label %bb4

bb5:                                              ; preds = %start
  %4 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", ptr %_0, i64 0, i32 1, !dbg !771
  store ptr %ptr, ptr %4, align 8, !dbg !771
  store i8 2, ptr %_0, align 8, !dbg !771
  br label %bb9, !dbg !772

bb6:                                              ; preds = %start
  %5 = getelementptr i8, ptr %ptr, i64 -1, !dbg !773
  br label %bb8

bb8:                                              ; preds = %bb6
  %6 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", ptr %_0, i64 0, i32 1, !dbg !784
  store ptr %5, ptr %6, align 8, !dbg !784
  store i8 3, ptr %_0, align 8, !dbg !784
  br label %bb9, !dbg !786

bb4:                                              ; preds = %bb3
  %7 = icmp ne i8 %3, 41, !dbg !787
  tail call void @llvm.assume(i1 %7), !dbg !791
  %8 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Simple", ptr %_0, i64 0, i32 1, !dbg !792
  store i8 %3, ptr %8, align 1, !dbg !792
  store i8 1, ptr %_0, align 8, !dbg !792
  br label %bb9, !dbg !794

bb9:                                              ; preds = %bb2, %bb4, %bb5, %bb8
  ret void, !dbg !795
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN3std9panicking3try7do_call17hab64abe00390c901E(ptr nocapture readonly %data) unnamed_addr #5 !dbg !796 {
start:
  %f = load ptr, ptr %data, align 8, !dbg !798, !nonnull !33, !align !148, !noundef !33
  tail call fastcc void @"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h9e45e160de3f35edE"(ptr nonnull align 8 %f), !dbg !813
  ret void, !dbg !815
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_ZN3std9panicking3try8do_catch17hd177a3503128d6f4E(ptr nocapture writeonly %data, ptr %payload) unnamed_addr #13 personality ptr @rust_eh_personality !dbg !816 {
start:
  %0 = invoke { ptr, ptr } @_ZN3std9panicking3try7cleanup17h6d4e570bbe25440aE(ptr %payload)
          to label %bb1 unwind label %terminate, !dbg !817

terminate:                                        ; preds = %start
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  tail call void @_ZN4core9panicking19panic_cannot_unwind17hfa9f734a74de1f5aE() #27, !dbg !821
  unreachable, !dbg !821

bb1:                                              ; preds = %start
  %obj.0 = extractvalue { ptr, ptr } %0, 0, !dbg !817
  %obj.1 = extractvalue { ptr, ptr } %0, 1, !dbg !817
  store ptr %obj.0, ptr %data, align 8, !dbg !822
  %2 = getelementptr inbounds i8, ptr %data, i64 8, !dbg !822
  store ptr %obj.1, ptr %2, align 8, !dbg !822
  ret void, !dbg !824
}

; Function Attrs: nonlazybind
define internal fastcc i32 @__rust_try(ptr nocapture readonly %0, ptr %1, ptr nocapture readonly %2) unnamed_addr #7 personality ptr @rust_eh_personality {
entry-block:
  invoke void %0(ptr %1)
          to label %common.ret unwind label %catch, !callees !825

common.ret:                                       ; preds = %entry-block, %catch
  %common.ret.op = phi i32 [ 1, %catch ], [ 0, %entry-block ]
  ret i32 %common.ret.op

catch:                                            ; preds = %entry-block
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  tail call void %2(ptr %1, ptr %4), !callees !826
  br label %common.ret
}

; Function Attrs: cold nonlazybind uwtable
declare { ptr, ptr } @_ZN3std9panicking3try7cleanup17h6d4e570bbe25440aE(ptr) unnamed_addr #20

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17hfa9f734a74de1f5aE() unnamed_addr #10

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h9e45e160de3f35edE"(ptr align 8 %self) unnamed_addr #5 !dbg !827 {
start:
  tail call fastcc void @_ZN4core3ops8function6FnOnce9call_once17h59358a273904c6c6E(ptr align 8 %self), !dbg !832
  ret void, !dbg !833
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core3ops8function6FnOnce9call_once17h59358a273904c6c6E(ptr align 8 %0) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !834 {
start:
  %_1 = alloca ptr, align 8
  store ptr %0, ptr %_1, align 8
  invoke fastcc void @"_ZN70_$LT$std..thread..Packet$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h6a5febaabc9414f2E"(ptr nonnull align 8 %_1)
          to label %bb1 unwind label %bb3, !dbg !835

bb3:                                              ; preds = %start
  %1 = landingpad { ptr, i32 }
          cleanup
  resume { ptr, i32 } %1, !dbg !835

bb1:                                              ; preds = %start
  ret void, !dbg !835
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN70_$LT$std..thread..Packet$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h6a5febaabc9414f2E"(ptr nocapture readonly align 8 %_1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !836 {
start:
  %_2 = alloca %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>", align 8
  store i64 0, ptr %_2, align 8, !dbg !838
  %self = load ptr, ptr %_1, align 8, !dbg !839, !nonnull !33, !align !148, !noundef !33
  invoke fastcc void @"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17h7836c66a3cefedddE"(ptr nonnull align 8 %self)
          to label %bb1 unwind label %bb2, !dbg !840

bb2:                                              ; preds = %start
  %0 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %self, ptr noundef nonnull align 8 dereferenceable(24) %_2, i64 24, i1 false), !dbg !840
  resume { ptr, i32 } %0, !dbg !841

bb1:                                              ; preds = %start
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %self, ptr noundef nonnull align 8 dereferenceable(24) %_2, i64 24, i1 false), !dbg !840
  ret void, !dbg !842
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr85drop_in_place$LT$core..pin..Pin$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$$GT$17h61ed8a6e4e26a075E"(ptr align 8 %_1) unnamed_addr #3 !dbg !843 {
start:
  tail call fastcc void @"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$17h76770dceea143a43E"(ptr align 8 %_1), !dbg !844
  ret void, !dbg !844
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$17h76770dceea143a43E"(ptr align 8 %_1) unnamed_addr #3 !dbg !845 {
start:
  tail call fastcc void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h64560a8df4e6d256E"(ptr align 8 %_1), !dbg !846
  ret void, !dbg !846
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h64560a8df4e6d256E"(ptr align 8 %self) unnamed_addr #5 !dbg !847 {
start:
  %self1 = load ptr, ptr %self, align 8, !dbg !848, !nonnull !33, !noundef !33
  %0 = atomicrmw sub ptr %self1, i64 1 release, align 8, !dbg !857
  %1 = icmp eq i64 %0, 1, !dbg !866
  br i1 %1, label %bb2, label %bb4, !dbg !866

bb2:                                              ; preds = %start
  tail call fastcc void @_ZN4core4sync6atomic5fence17hdb34cbebe24ab619E(i8 2), !dbg !867
  tail call fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h2b3af5afb82a5b83E"(ptr nonnull align 8 %self), !dbg !868
  br label %bb4, !dbg !868

bb4:                                              ; preds = %start, %bb2
  ret void, !dbg !870
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h2b3af5afb82a5b83E"(ptr align 8 %self) unnamed_addr #6 !dbg !871 {
start:
  %_x = alloca %"alloc::sync::Weak<std::thread::Packet<'_, ()>, &alloc::alloc::Global>", align 8
  %self1 = load ptr, ptr %self, align 8, !dbg !872, !nonnull !33, !noundef !33
  %_3 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Inner>", ptr %self1, i64 0, i32 2, !dbg !876
  tail call fastcc void @"_ZN4core3ptr39drop_in_place$LT$std..thread..Inner$GT$17h7e975b1c9fbe1fc1E"(ptr nonnull align 8 %_3), !dbg !878
  %_5 = load ptr, ptr %self, align 8, !dbg !879, !nonnull !33, !noundef !33
  %_6 = getelementptr i8, ptr %self, i64 8, !dbg !880
  store ptr %_5, ptr %_x, align 8, !dbg !881
  %0 = getelementptr inbounds i8, ptr %_x, i64 8, !dbg !881
  store ptr %_6, ptr %0, align 8, !dbg !881
  call fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Inner$C$$RF$alloc..alloc..Global$GT$$GT$17h090fb39eafd47674E"(ptr nonnull align 8 %_x), !dbg !882
  ret void, !dbg !886
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr39drop_in_place$LT$std..thread..Inner$GT$17h7e975b1c9fbe1fc1E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 !dbg !887 {
start:
  %0 = getelementptr inbounds %"std::thread::Inner", ptr %_1, i64 0, i32 1, !dbg !888
  tail call fastcc void @"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17h52fc51eff61cad41E"(ptr nonnull align 8 %0), !dbg !888
  ret void, !dbg !888
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Inner$C$$RF$alloc..alloc..Global$GT$$GT$17h090fb39eafd47674E"(ptr nocapture readonly align 8 %_1) unnamed_addr #12 !dbg !889 {
start:
  tail call fastcc void @"_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6033fa1b45917a20E"(ptr align 8 %_1), !dbg !890
  ret void, !dbg !890
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6033fa1b45917a20E"(ptr nocapture readonly align 8 %self) unnamed_addr #12 !dbg !891 {
start:
  %self1 = load ptr, ptr %self, align 8, !dbg !892, !nonnull !33, !noundef !33
  %_15 = icmp eq ptr %self1, inttoptr (i64 -1 to ptr), !dbg !897
  br i1 %_15, label %bb2, label %bb1, !dbg !900

bb1:                                              ; preds = %start
  %_19 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Inner>", ptr %self1, i64 0, i32 1, !dbg !902
  %0 = atomicrmw sub ptr %_19, i64 1 release, align 8, !dbg !904
  %1 = icmp eq i64 %0, 1, !dbg !914
  br i1 %1, label %bb3, label %bb8, !dbg !914

bb2:                                              ; preds = %start
  br label %bb8, !dbg !915

bb3:                                              ; preds = %bb1
  tail call fastcc void @_ZN4core4sync6atomic5fence17hdb34cbebe24ab619E(i8 2), !dbg !916
  %_6 = getelementptr inbounds i8, ptr %self, i64 8, !dbg !917
  %self3 = load ptr, ptr %self, align 8, !dbg !919, !nonnull !33, !noundef !33
  tail call fastcc void @"_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h5d6f1a76fe05ba9aE"(ptr nonnull align 8 %_6, ptr nonnull %self3, i64 8, i64 48), !dbg !917
  br label %bb8, !dbg !920

bb8:                                              ; preds = %bb3, %bb1, %bb2
  ret void, !dbg !915
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17h52fc51eff61cad41E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 !dbg !921 {
start:
  %0 = load ptr, ptr %_1, align 8, !dbg !922, !noundef !33
  %1 = icmp eq ptr %0, null, !dbg !922
  br i1 %1, label %bb1, label %bb2, !dbg !922

bb1:                                              ; preds = %bb2, %start
  ret void, !dbg !922

bb2:                                              ; preds = %start
  tail call fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17h6b9daf21158d83b6E"(ptr nonnull align 8 %_1), !dbg !922
  br label %bb1, !dbg !922
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17h6b9daf21158d83b6E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !923 {
start:
  call fastcc void @"_ZN68_$LT$alloc..ffi..c_str..CString$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb03b0a552e79e9b5E"(ptr align 8 %_1), !dbg !924
  br label %bb4

bb4:                                              ; preds = %start
  tail call fastcc void @"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17h3ed58b4a9fa7e57dE"(ptr align 8 %_1), !dbg !924
  ret void, !dbg !924
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @"_ZN68_$LT$alloc..ffi..c_str..CString$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb03b0a552e79e9b5E"(ptr nocapture readonly align 8 %self) unnamed_addr #21 !dbg !925 {
start:
  %_2.0 = load ptr, ptr %self, align 8, !dbg !930, !nonnull !33, !align !261, !noundef !33
  store i8 0, ptr %_2.0, align 1, !dbg !932
  ret void, !dbg !933
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17h3ed58b4a9fa7e57dE"(ptr nocapture readonly align 8 %_1) unnamed_addr #12 personality ptr @rust_eh_personality !dbg !934 {
bb3:
  tail call fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd04c945e43bcf4fdE"(ptr nonnull align 8 %_1), !dbg !935
  ret void, !dbg !935
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd04c945e43bcf4fdE"(ptr nocapture readonly align 8 %self) unnamed_addr #13 !dbg !936 {
start:
  %0 = getelementptr inbounds i8, ptr %self, i64 8, !dbg !937
  %ptr.1 = load i64, ptr %0, align 8, !dbg !937, !noundef !33
  %1 = icmp eq i64 %ptr.1, 0, !dbg !938
  br i1 %1, label %bb4, label %bb1, !dbg !938

bb1:                                              ; preds = %start
  %ptr.0 = load ptr, ptr %self, align 8, !dbg !937, !nonnull !33, !noundef !33
  %_8 = getelementptr inbounds i8, ptr %self, i64 16, !dbg !942
  tail call fastcc void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h0bc0eaec458bb9cdE"(ptr nonnull align 1 %_8, ptr nonnull %ptr.0, i64 1, i64 %ptr.1), !dbg !942
  br label %bb4, !dbg !943

bb4:                                              ; preds = %start, %bb1
  ret void, !dbg !944
}

; Function Attrs: nonlazybind uwtable
declare void @"_ZN77_$LT$std..sys..pal..unix..thread..Thread$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2455a369488eb470E"(ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9963602de3cf931fE"(ptr nocapture readonly align 8 %self) unnamed_addr #13 !dbg !945 {
start:
  %0 = getelementptr inbounds i8, ptr %self, i64 8, !dbg !946
  %ptr.1 = load ptr, ptr %0, align 8, !dbg !946, !nonnull !33, !align !148, !noundef !33
  %1 = getelementptr inbounds i64, ptr %ptr.1, i64 1, !dbg !947
  %2 = load i64, ptr %1, align 8, !dbg !947, !range !531, !invariant.load !33
  %3 = icmp eq i64 %2, 0, !dbg !958
  br i1 %3, label %bb4, label %bb1, !dbg !958

bb1:                                              ; preds = %start
  %4 = getelementptr inbounds i64, ptr %ptr.1, i64 2, !dbg !947
  %5 = load i64, ptr %4, align 8, !dbg !960, !range !539, !invariant.load !33
  %ptr.0 = load ptr, ptr %self, align 8, !dbg !946, !nonnull !33, !noundef !33
  %_8 = getelementptr inbounds i8, ptr %self, i64 16, !dbg !965
  tail call fastcc void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h0bc0eaec458bb9cdE"(ptr nonnull align 1 %_8, ptr nonnull %ptr.0, i64 %5, i64 %2), !dbg !965
  br label %bb4, !dbg !966

bb4:                                              ; preds = %start, %bb1
  ret void, !dbg !967
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h88590e793914625dE"(ptr nocapture readonly align 8 %self, ptr align 8 %f) unnamed_addr #3 !dbg !968 {
start:
  %_4.0 = load ptr, ptr %self, align 8, !dbg !970, !nonnull !33, !align !261, !noundef !33
  %0 = getelementptr inbounds i8, ptr %self, i64 8, !dbg !970
  %_4.1 = load ptr, ptr %0, align 8, !dbg !970, !nonnull !33, !align !148, !noundef !33
  %_0 = tail call zeroext i1 @"_ZN82_$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$u20$as$u20$core..fmt..Debug$GT$3fmt17h18d947fb575c25c8E"(ptr nonnull align 1 %_4.0, ptr nonnull align 8 %_4.1, ptr align 8 %f), !dbg !971
  ret i1 %_0, !dbg !972
}

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN82_$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$u20$as$u20$core..fmt..Debug$GT$3fmt17h18d947fb575c25c8E"(ptr align 1, ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @"_ZN3std6thread18JoinInner$LT$T$GT$4join17h37f5f30e9b449017E"(ptr align 8 %self) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !973 {
start:
  %src = alloca %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>", align 8
  %result = alloca %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>", align 8
  %0 = getelementptr inbounds %"std::thread::JoinInner<'_, ()>", ptr %self, i64 0, i32 2, !dbg !975
  %_3 = load i64, ptr %0, align 8, !dbg !975, !noundef !33
  invoke void @_ZN3std3sys3pal4unix6thread6Thread4join17h895d97bd495144ffE(i64 %_3)
          to label %bb1 unwind label %bb7, !dbg !975

bb7:                                              ; preds = %start, %bb12, %bb15
  %1 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hf3442f0736498466E"(ptr nonnull align 8 %self) #34
          to label %bb6 unwind label %terminate, !dbg !976

bb1:                                              ; preds = %start
  %this = getelementptr inbounds %"std::thread::JoinInner<'_, ()>", ptr %self, i64 0, i32 1, !dbg !977
  %_10 = call fastcc zeroext i1 @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9is_unique17h4d6b82d757b26a4eE"(ptr nonnull align 8 %this), !dbg !978
  br label %bb8

bb8:                                              ; preds = %bb1
  br i1 %_10, label %bb14, label %bb12, !dbg !978

bb12:                                             ; preds = %bb8
  invoke void @_ZN4core6option13unwrap_failed17h8a484d2e9090c178E(ptr nonnull align 8 @alloc_df98b5df7eeb714409f256abec08df6f) #33
          to label %unreachable unwind label %bb7, !dbg !982

bb14:                                             ; preds = %bb8
  %self2 = load ptr, ptr %this, align 8, !dbg !986, !nonnull !33, !noundef !33
  store i64 0, ptr %src, align 8, !dbg !992
  %2 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %self2, i64 0, i32 2, i32 1, !dbg !996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %result, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %src, i64 24, i1 false), !dbg !1005
  %_20 = load i64, ptr %result, align 8, !dbg !1011, !range !279, !noundef !33
  %3 = icmp eq i64 %_20, 0, !dbg !1015
  br i1 %3, label %bb15, label %bb16, !dbg !1015

unreachable:                                      ; preds = %bb15, %bb12
  unreachable

bb15:                                             ; preds = %bb14
  invoke void @_ZN4core6option13unwrap_failed17h8a484d2e9090c178E(ptr nonnull align 8 @alloc_248e7424ac947085569c564717f94fa4) #33
          to label %unreachable unwind label %bb7, !dbg !1016

bb16:                                             ; preds = %bb14
  %4 = getelementptr inbounds %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>::Some", ptr %result, i64 0, i32 1, !dbg !1017
  %val.0 = load ptr, ptr %4, align 8, !dbg !1017, !align !261, !noundef !33
  %5 = getelementptr inbounds %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>::Some", ptr %result, i64 0, i32 1, i32 1, !dbg !1017
  %val.1 = load ptr, ptr %5, align 8, !dbg !1017
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hf3442f0736498466E"(ptr nonnull align 8 %self)
          to label %bb5 unwind label %bb4, !dbg !976

bb4:                                              ; preds = %bb16
  %6 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h227a9b2252fd1403E"(ptr nonnull align 8 %this) #34
          to label %bb2 unwind label %terminate, !dbg !976

bb5:                                              ; preds = %bb16
  tail call fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h227a9b2252fd1403E"(ptr nonnull align 8 %this), !dbg !976
  %7 = insertvalue { ptr, ptr } poison, ptr %val.0, 0, !dbg !1018
  %8 = insertvalue { ptr, ptr } %7, ptr %val.1, 1, !dbg !1018
  ret { ptr, ptr } %8, !dbg !1018

terminate:                                        ; preds = %bb6, %bb4, %bb7
  %9 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  tail call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #27, !dbg !1019
  unreachable, !dbg !1019

bb2:                                              ; preds = %bb6, %bb4
  %.pn = phi { ptr, i32 } [ %1, %bb6 ], [ %6, %bb4 ]
  resume { ptr, i32 } %.pn, !dbg !1019

bb6:                                              ; preds = %bb7
  %10 = getelementptr inbounds %"std::thread::JoinInner<'_, ()>", ptr %self, i64 0, i32 1, !dbg !976
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h227a9b2252fd1403E"(ptr nonnull align 8 %10) #34
          to label %bb2 unwind label %terminate, !dbg !976
}

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std3sys3pal4unix6thread6Thread4join17h895d97bd495144ffE(i64) unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i1 @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9is_unique17h4d6b82d757b26a4eE"(ptr nocapture readonly align 8 %self) unnamed_addr #22 !dbg !1020 {
start:
  %self1 = load ptr, ptr %self, align 8, !dbg !1021, !nonnull !33, !noundef !33
  %_17 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %self1, i64 0, i32 1, !dbg !1030
  %0 = tail call fastcc { i64, i64 } @_ZN4core4sync6atomic23atomic_compare_exchange17h03e99bf2f9071549E(ptr nonnull %_17, i64 1, i64 -1, i8 2, i8 0), !dbg !1041
  %1 = extractvalue { i64, i64 } %0, 0, !dbg !1041
  %2 = icmp eq i64 %1, 0, !dbg !1042
  br i1 %2, label %bb1, label %bb3, !dbg !1042

bb1:                                              ; preds = %start
  %self4 = load ptr, ptr %self, align 8, !dbg !1043, !nonnull !33, !noundef !33
  %_6 = tail call fastcc i64 @_ZN4core4sync6atomic11atomic_load17h29d0b591c7b7271cE(ptr nonnull %self4, i8 2), !dbg !1050
  %unique = icmp eq i64 %_6, 1, !dbg !1055
  %_38 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %self4, i64 0, i32 1, !dbg !1056
  tail call fastcc void @_ZN4core4sync6atomic12atomic_store17hd228a5e0fe2355c3E(ptr nonnull %_38, i64 1, i8 1), !dbg !1064
  br label %bb3, !dbg !1065

bb3:                                              ; preds = %start, %bb1
  %_0.0 = phi i1 [ %unique, %bb1 ], [ false, %start ], !dbg !1066
  ret i1 %_0.0, !dbg !1067
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13unwrap_failed17h8a484d2e9090c178E(ptr align 8) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc { i64, i64 } @_ZN4core4sync6atomic23atomic_compare_exchange17h03e99bf2f9071549E(ptr nocapture %dst, i64 %old, i64 %new, i8 %0, i8 %1) unnamed_addr #23 !dbg !1068 {
bb12:
  %2 = cmpxchg ptr %dst, i64 1, i64 -1 acquire monotonic, align 8, !dbg !1069
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !1069
  br i1 %3, label %bb26, label %bb27, !dbg !1071

bb27:                                             ; preds = %bb12
  br label %bb28, !dbg !1073

bb26:                                             ; preds = %bb12
  br label %bb28, !dbg !1073

bb28:                                             ; preds = %bb26, %bb27
  %storemerge = phi i64 [ 1, %bb27 ], [ 0, %bb26 ], !dbg !1074
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !1069
  %5 = insertvalue { i64, i64 } poison, i64 %storemerge, 0, !dbg !1075
  %6 = insertvalue { i64, i64 } %5, i64 %4, 1, !dbg !1075
  ret { i64, i64 } %6, !dbg !1075
}

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc i64 @_ZN4core4sync6atomic11atomic_load17h29d0b591c7b7271cE(ptr nocapture readonly %dst, i8 %0) unnamed_addr #23 !dbg !1076 {
bb3:
  %1 = load atomic i64, ptr %dst acquire, align 8, !dbg !1077
  ret i64 %1, !dbg !1079
}

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4core4sync6atomic12atomic_store17hd228a5e0fe2355c3E(ptr nocapture writeonly %dst, i64 %val, i8 %0) unnamed_addr #23 !dbg !1080 {
bb3:
  store atomic i64 1, ptr %dst release, align 8, !dbg !1081
  ret void, !dbg !1083
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN3std6thread7Builder15spawn_unchecked17ha71e82dc55764a87E(ptr nocapture writeonly sret(%"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>") align 8 %_0, ptr nocapture readonly align 8 %self) unnamed_addr #3 !dbg !1084 {
start:
  %v = alloca %"std::thread::JoinInner<'_, ()>", align 8
  %val = alloca %"std::thread::JoinInner<'_, ()>", align 8
  %self1 = alloca %"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>", align 8
  %_4 = alloca %"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>", align 8
  %_3 = alloca %"std::thread::JoinHandle<()>", align 8
  call fastcc void @_ZN3std6thread7Builder16spawn_unchecked_17h80cdd8d27986d305E(ptr nonnull sret(%"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>") align 8 %self1, ptr align 8 %self, ptr null), !dbg !1085
  %0 = load ptr, ptr %self1, align 8, !dbg !1087, !noundef !33
  %.not = icmp eq ptr %0, null, !dbg !1087
  br i1 %.not, label %bb5.thread, label %bb5, !dbg !1092

bb5.thread:                                       ; preds = %start
  %1 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", ptr %self1, i64 0, i32 1, !dbg !1093
  %e = load ptr, ptr %1, align 8, !dbg !1093, !nonnull !33, !noundef !33
  %2 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", ptr %_4, i64 0, i32 1, !dbg !1094
  store ptr %e, ptr %2, align 8, !dbg !1094
  store ptr null, ptr %_4, align 8, !dbg !1094
  br label %bb3, !dbg !1091

bb5:                                              ; preds = %start
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %v, ptr noundef nonnull align 8 dereferenceable(24) %self1, i64 24, i1 false), !dbg !1096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_4, ptr noundef nonnull align 8 dereferenceable(24) %v, i64 24, i1 false), !dbg !1097
  %.pr = load ptr, ptr %_4, align 8, !dbg !1091
  %.not1 = icmp eq ptr %.pr, null, !dbg !1091
  br i1 %.not1, label %bb5.bb3_crit_edge, label %bb2, !dbg !1091

bb5.bb3_crit_edge:                                ; preds = %bb5
  %.phi.trans.insert = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", ptr %_4, i64 0, i32 1
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !dbg !1099
  br label %bb3, !dbg !1091

bb2:                                              ; preds = %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %val, ptr noundef nonnull align 8 dereferenceable(24) %_4, i64 24, i1 false), !dbg !1091
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_3, ptr noundef nonnull align 8 dereferenceable(24) %val, i64 24, i1 false), !dbg !1100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %_3, i64 24, i1 false), !dbg !1101
  br label %bb4, !dbg !1102

bb3:                                              ; preds = %bb5.bb3_crit_edge, %bb5.thread
  %3 = phi ptr [ %.pre, %bb5.bb3_crit_edge ], [ %e, %bb5.thread ], !dbg !1099
  %4 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", ptr %_0, i64 0, i32 1, !dbg !1103
  store ptr %3, ptr %4, align 8, !dbg !1103
  store ptr null, ptr %_0, align 8, !dbg !1103
  br label %bb4, !dbg !1102

bb4:                                              ; preds = %bb3, %bb2
  ret void, !dbg !1111
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9540720688dc75a7E"(ptr nocapture writeonly sret(%"std::thread::JoinHandle<()>") align 8 %t, ptr nocapture readonly align 8 %self, ptr nocapture readnone align 1 %msg.0, i64 %msg.1, ptr nocapture readnone align 8 %0) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !1112 {
start:
  %e = alloca ptr, align 8
  %1 = load ptr, ptr %self, align 8, !dbg !1113, !noundef !33
  %.not = icmp eq ptr %1, null, !dbg !1113
  br i1 %.not, label %bb1, label %bb3, !dbg !1114

bb3:                                              ; preds = %start
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %t, ptr noundef nonnull align 8 dereferenceable(24) %self, i64 24, i1 false), !dbg !1115
  ret void, !dbg !1116

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", ptr %self, i64 0, i32 1, !dbg !1117
  %3 = load ptr, ptr %2, align 8, !dbg !1117, !nonnull !33, !noundef !33
  store ptr %3, ptr %e, align 8, !dbg !1117
  invoke void @_ZN4core6result13unwrap_failed17h566b4fa76abf40a2E(ptr nonnull align 1 @alloc_e3605bf48dd8479a638909176cc37fce, i64 22, ptr nonnull align 1 %e, ptr nonnull align 8 @vtable.6, ptr nonnull align 8 @alloc_cfbb55ba8bd892c2ed60a2c3f28c3541) #33
          to label %unreachable unwind label %bb4, !dbg !1118

bb4:                                              ; preds = %bb1
  %4 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hbe6b5bd41666926aE"(ptr nonnull align 8 %e) #34
          to label %bb5 unwind label %terminate, !dbg !1120

unreachable:                                      ; preds = %bb1
  unreachable

terminate:                                        ; preds = %bb4
  %5 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #27, !dbg !1121
  unreachable, !dbg !1121

bb5:                                              ; preds = %bb4
  resume { ptr, i32 } %4, !dbg !1121
}

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hb0183faaec54836bE"(ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN3std6thread7Builder16spawn_unchecked_17h80cdd8d27986d305E(ptr nocapture writeonly sret(%"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>") align 8 %_0, ptr nocapture readonly align 8 %self, ptr nocapture readnone %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !1122 {
start:
  %_64 = alloca %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", align 8
  %_57 = alloca %"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>", align 8
  %x = alloca %"alloc::string::String", align 8
  %self4 = alloca %"core::result::Result<usize, std::io::error::Error>", align 8
  %_36 = alloca %"std::thread::JoinInner<'_, ()>", align 8
  %_33 = alloca %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@CVE_2020_26235.rs:19:28: 19:30}, ()>::{closure#1}}", align 8
  %main = alloca %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@CVE_2020_26235.rs:19:28: 19:30}, ()>::{closure#1}}", align 8
  %_20 = alloca ptr, align 8
  %output_capture = alloca ptr, align 8
  %their_packet = alloca ptr, align 8
  %value = alloca %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>", align 8
  %_15 = alloca %"core::cell::UnsafeCell<core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>>", align 8
  %data = alloca %"std::thread::Packet<'_, ()>", align 8
  %my_packet = alloca ptr, align 8
  %their_thread = alloca ptr, align 8
  %self2 = alloca %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>", align 8
  %my_thread = alloca ptr, align 8
  %name = alloca %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>", align 8
  %scope_data = alloca ptr, align 8
  store ptr null, ptr %scope_data, align 8
  %1 = getelementptr inbounds %"std::thread::Builder", ptr %self, i64 0, i32 1, !dbg !1123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %name, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !1123
  %2 = load i64, ptr %self, align 8, !dbg !1124, !range !279, !noundef !33
  %3 = icmp eq i64 %2, 0, !dbg !1125
  br i1 %3, label %bb34, label %bb35, !dbg !1125

bb34:                                             ; preds = %start
  %4 = invoke fastcc i64 @_ZN4core3ops8function6FnOnce9call_once17h3b69fafd37028148E()
          to label %bb36 unwind label %bb30, !dbg !1130

bb35:                                             ; preds = %start
  %5 = getelementptr inbounds i8, ptr %self, i64 8, !dbg !1124
  %6 = load i64, ptr %5, align 8, !dbg !1124
  br label %bb36, !dbg !1131

bb31.thread9:                                     ; preds = %bb39, %bb41, %bb38
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %8 = extractvalue { ptr, i32 } %lpad.thr_comm, 1
  br label %bb32, !dbg !1132

bb36:                                             ; preds = %bb34, %bb35
  %stack_size1.0 = phi i64 [ %6, %bb35 ], [ %4, %bb34 ], !dbg !1133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %self2, ptr noundef nonnull align 8 dereferenceable(24) %name, i64 24, i1 false), !dbg !1134
  %9 = load i64, ptr %self2, align 8, !dbg !1136, !range !1140, !noundef !33
  %10 = icmp eq i64 %9, -9223372036854775808, !dbg !1136
  br i1 %10, label %bb37, label %bb38, !dbg !1141

bb37:                                             ; preds = %bb36
  br label %bb39, !dbg !1142

bb38:                                             ; preds = %bb36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %x, ptr noundef nonnull align 8 dereferenceable(24) %self2, i64 24, i1 false), !dbg !1143
  invoke fastcc void @"_ZN66_$LT$T$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17h60ba09f7e7bb4a46E"(ptr nonnull sret(%"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>") align 8 %_57, ptr nonnull align 8 %x)
          to label %bb41 unwind label %bb31.thread9, !dbg !1144

bb39:                                             ; preds = %bb40, %bb37
  %11 = phi i64 [ %_56.1, %bb40 ], [ undef, %bb37 ], !dbg !1155
  %12 = phi ptr [ %_56.0, %bb40 ], [ null, %bb37 ], !dbg !1155
  %13 = invoke ptr @_ZN3std6thread6Thread3new17h9286f061390b10b6E(ptr align 1 %12, i64 %11)
          to label %bb1 unwind label %bb31.thread9, !dbg !1155

bb41:                                             ; preds = %bb38
  %14 = invoke fastcc { ptr, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h851ebc17aa702cc2E"(ptr nonnull align 8 %_57, ptr nonnull align 1 @alloc_498705839b3ae85466bce6e7ebfe4996, i64 47, ptr nonnull align 8 @alloc_3c7ed5a01079e282fcc9eb5544b30333)
          to label %bb40 unwind label %bb31.thread9, !dbg !1148

bb40:                                             ; preds = %bb41
  %_56.0 = extractvalue { ptr, i64 } %14, 0, !dbg !1148
  %_56.1 = extractvalue { ptr, i64 } %14, 1, !dbg !1148
  br label %bb39, !dbg !1156

bb1:                                              ; preds = %bb39
  store ptr %13, ptr %my_thread, align 8, !dbg !1155
  %_61 = call fastcc ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3aa793fac49652eeE"(ptr nonnull align 8 %my_thread), !dbg !1157
  br label %bb42

bb18:                                             ; preds = %bb28, %bb29
  %15 = phi i32 [ %54, %bb28 ], [ %23, %bb29 ]
  %16 = phi ptr [ %55, %bb28 ], [ %22, %bb29 ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hf3442f0736498466E"(ptr nonnull align 8 %my_thread) #34
          to label %bb19 unwind label %terminate, !dbg !1169

bb42:                                             ; preds = %bb1
  store ptr %_61, ptr %their_thread, align 8, !dbg !1170
  store i64 0, ptr %value, align 8, !dbg !1171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_15, ptr noundef nonnull align 8 dereferenceable(24) %value, i64 24, i1 false), !dbg !1173
  store ptr null, ptr %data, align 8, !dbg !1177
  %17 = getelementptr inbounds %"std::thread::Packet<'_, ()>", ptr %data, i64 0, i32 1, !dbg !1177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %_15, i64 24, i1 false), !dbg !1177
  store i64 1, ptr %_64, align 8, !dbg !1178
  %18 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %_64, i64 0, i32 1, !dbg !1178
  store i64 1, ptr %18, align 8, !dbg !1178
  %19 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %_64, i64 0, i32 2, !dbg !1178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %data, i64 32, i1 false), !dbg !1178
  %_4.i = invoke fastcc ptr @_ZN5alloc5alloc15exchange_malloc17h21f7745ba6eae1eaE(i64 48, i64 8)
          to label %bb43 unwind label %cleanup.i, !dbg !1182

cleanup.i:                                        ; preds = %bb42
  %20 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr85drop_in_place$LT$alloc..sync..ArcInner$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h40a9f5ebfdfc21edE"(ptr nonnull align 8 %_64) #34
          to label %bb29.thread unwind label %terminate.i, !dbg !1187

terminate.i:                                      ; preds = %cleanup.i
  %21 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #27, !dbg !1188
  unreachable, !dbg !1188

bb29:                                             ; preds = %bb17
  %22 = extractvalue { ptr, i32 } %.pn.pn, 0
  %23 = extractvalue { ptr, i32 } %.pn.pn, 1
  br i1 %.not2, label %bb18, label %bb28, !dbg !1189

bb29.thread:                                      ; preds = %cleanup.i
  %24 = extractvalue { ptr, i32 } %20, 1
  %25 = extractvalue { ptr, i32 } %20, 0
  br label %bb28, !dbg !1189

bb43:                                             ; preds = %bb42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %_4.i, ptr noundef nonnull align 8 dereferenceable(48) %_64, i64 48, i1 false), !dbg !1190
  store ptr %_4.i, ptr %my_packet, align 8, !dbg !1191
  %26 = call fastcc ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7644565280af90c9E"(ptr nonnull align 8 %my_packet), !dbg !1201
  br label %bb2

bb17:                                             ; preds = %bb22, %bb23.thread, %bb23, %bb26
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb26 ], [ %38, %bb23 ], [ %36, %bb23.thread ], [ %52, %bb22 ]
  %.not2 = phi i1 [ false, %bb26 ], [ true, %bb23 ], [ true, %bb23.thread ], [ true, %bb22 ], !dbg !1203
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h227a9b2252fd1403E"(ptr nonnull align 8 %my_packet) #34
          to label %bb29 unwind label %terminate, !dbg !1204

bb2:                                              ; preds = %bb43
  store ptr %26, ptr %their_packet, align 8, !dbg !1201
  %27 = invoke ptr @_ZN3std2io5stdio18set_output_capture17h47fa7577e7da3004E(ptr null)
          to label %bb3 unwind label %bb27.thread, !dbg !1205

bb27:                                             ; preds = %bb24
  br label %bb26

bb27.thread:                                      ; preds = %bb2
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %bb26, !dbg !1207

bb3:                                              ; preds = %bb2
  store ptr %27, ptr %output_capture, align 8, !dbg !1205
  %29 = icmp eq ptr %27, null, !dbg !1208
  br i1 %29, label %bb44, label %bb46, !dbg !1214

bb46:                                             ; preds = %bb3
  %_76 = call fastcc ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8be9ec22d8ecf029E"(ptr nonnull align 8 %output_capture), !dbg !1215
  br label %bb44

bb44:                                             ; preds = %bb46, %bb3
  %_21.0 = phi ptr [ null, %bb3 ], [ %_76, %bb46 ], !dbg !1217
  %30 = invoke ptr @_ZN3std2io5stdio18set_output_capture17h47fa7577e7da3004E(ptr %_21.0)
          to label %bb4 unwind label %bb24, !dbg !1218

bb4:                                              ; preds = %bb44
  store ptr %30, ptr %_20, align 8, !dbg !1218
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17h4a374c67cd6dfb28E"(ptr nonnull align 8 %_20)
          to label %bb5 unwind label %bb24, !dbg !1219

bb5:                                              ; preds = %bb4
  store ptr %_61, ptr %main, align 8, !dbg !1220
  %31 = load ptr, ptr %output_capture, align 8, !dbg !1220, !noundef !33
  %32 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@CVE_2020_26235.rs:19:28: 19:30}, ()>::{closure#1}}", ptr %main, i64 0, i32 2, !dbg !1220
  store ptr %31, ptr %32, align 8, !dbg !1220
  %33 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@CVE_2020_26235.rs:19:28: 19:30}, ()>::{closure#1}}", ptr %main, i64 0, i32 1, !dbg !1220
  store ptr %26, ptr %33, align 8, !dbg !1220
  %self13 = load ptr, ptr %my_packet, align 8, !dbg !1222, !nonnull !33, !noundef !33
  %34 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %self13, i64 0, i32 2, !dbg !1237
  %35 = load ptr, ptr %34, align 8, !dbg !1237, !noundef !33
  %.not5 = icmp eq ptr %35, null, !dbg !1237
  br i1 %.not5, label %bb8, label %bb6, !dbg !1237

bb6:                                              ; preds = %bb5
  %_30 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::scoped::ScopeData>", ptr %35, i64 0, i32 2, !dbg !1238
  invoke void @_ZN3std6thread6scoped9ScopeData29increment_num_running_threads17hb8778178a2b2dcd2E(ptr nonnull align 8 %_30)
          to label %bb8 unwind label %bb22, !dbg !1238

bb8:                                              ; preds = %bb6, %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_33, ptr noundef nonnull align 8 dereferenceable(24) %main, i64 24, i1 false), !dbg !1239
  %_4.i25 = invoke fastcc ptr @_ZN5alloc5alloc15exchange_malloc17h21f7745ba6eae1eaE(i64 24, i64 8)
          to label %bb9 unwind label %cleanup.i26, !dbg !1240

cleanup.i26:                                      ; preds = %bb8
  %36 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr156drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$CVE_2020_26235..main..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h44b8fc7c32c2ef81E"(ptr nonnull align 8 %_33) #34
          to label %bb23.thread unwind label %terminate.i27, !dbg !1244

terminate.i27:                                    ; preds = %cleanup.i26
  %37 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #27, !dbg !1245
  unreachable, !dbg !1245

bb23.thread:                                      ; preds = %cleanup.i26
  br label %bb17, !dbg !1246

bb23:                                             ; preds = %bb9
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %bb17, !dbg !1246

bb9:                                              ; preds = %bb8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_4.i25, ptr noundef nonnull align 8 dereferenceable(24) %_33, i64 24, i1 false), !dbg !1247
  invoke void @_ZN3std3sys3pal4unix6thread6Thread3new17h25822420d6359794E(ptr nonnull sret(%"core::result::Result<usize, std::io::error::Error>") align 8 %self4, i64 %stack_size1.0, ptr nonnull align 1 %_4.i25, ptr nonnull align 8 @vtable.2)
          to label %bb10 unwind label %bb23, !dbg !1248

bb10:                                             ; preds = %bb9
  %_109 = load i64, ptr %self4, align 8, !dbg !1252, !range !279, !noundef !33
  %39 = icmp eq i64 %_109, 0, !dbg !1255
  br i1 %39, label %bb11, label %bb12, !dbg !1255

bb11:                                             ; preds = %bb10
  %40 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Ok", ptr %self4, i64 0, i32 1, !dbg !1256
  %v = load i64, ptr %40, align 8, !dbg !1256, !noundef !33
  %_43 = load ptr, ptr %my_thread, align 8, !dbg !1257, !nonnull !33, !noundef !33
  %_44 = load ptr, ptr %my_packet, align 8, !dbg !1258, !nonnull !33, !noundef !33
  %41 = getelementptr inbounds %"std::thread::JoinInner<'_, ()>", ptr %_36, i64 0, i32 2, !dbg !1259
  store i64 %v, ptr %41, align 8, !dbg !1259
  store ptr %_43, ptr %_36, align 8, !dbg !1259
  %42 = getelementptr inbounds %"std::thread::JoinInner<'_, ()>", ptr %_36, i64 0, i32 1, !dbg !1259
  store ptr %_44, ptr %42, align 8, !dbg !1259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %_36, i64 24, i1 false), !dbg !1260
  br label %bb15, !dbg !1132

bb12:                                             ; preds = %bb10
  %43 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", ptr %self4, i64 0, i32 1, !dbg !1261
  %e = load ptr, ptr %43, align 8, !dbg !1261, !nonnull !33, !noundef !33
  %44 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", ptr %_0, i64 0, i32 1, !dbg !1262
  store ptr %e, ptr %44, align 8, !dbg !1262
  store ptr null, ptr %_0, align 8, !dbg !1262
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h227a9b2252fd1403E"(ptr nonnull align 8 %my_packet)
          to label %bb13 unwind label %bb16, !dbg !1204

bb15:                                             ; preds = %bb13, %bb11
  ret void, !dbg !1269

bb16:                                             ; preds = %bb12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = extractvalue { ptr, i32 } %45, 0
  %47 = extractvalue { ptr, i32 } %45, 1
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hf3442f0736498466E"(ptr nonnull align 8 %my_thread) #34
          to label %bb21 unwind label %terminate, !dbg !1169

bb13:                                             ; preds = %bb12
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hf3442f0736498466E"(ptr nonnull align 8 %my_thread)
          to label %bb15 unwind label %cleanup24, !dbg !1169

bb19:                                             ; preds = %bb18
  br label %bb21, !dbg !1132

cleanup24:                                        ; preds = %bb13
  %48 = landingpad { ptr, i32 }
          cleanup
  %49 = extractvalue { ptr, i32 } %48, 0
  %50 = extractvalue { ptr, i32 } %48, 1
  br label %bb21

terminate:                                        ; preds = %bb32, %bb30, %bb28, %bb26, %bb24, %bb22, %bb16, %bb17, %bb18
  %51 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #27, !dbg !1270
  unreachable, !dbg !1270

bb22:                                             ; preds = %bb6
  %52 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr156drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$CVE_2020_26235..main..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h44b8fc7c32c2ef81E"(ptr nonnull align 8 %main) #34
          to label %bb17 unwind label %terminate, !dbg !1246

bb24:                                             ; preds = %bb4, %bb44
  %53 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17h4a374c67cd6dfb28E"(ptr nonnull align 8 %output_capture) #34
          to label %bb27 unwind label %terminate, !dbg !1271

bb26:                                             ; preds = %bb27, %bb27.thread
  %.pn = phi { ptr, i32 } [ %53, %bb27 ], [ %28, %bb27.thread ]
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h227a9b2252fd1403E"(ptr nonnull align 8 %their_packet) #34
          to label %bb17 unwind label %terminate, !dbg !1207

bb28:                                             ; preds = %bb29.thread, %bb29
  %54 = phi i32 [ %24, %bb29.thread ], [ %23, %bb29 ]
  %55 = phi ptr [ %25, %bb29.thread ], [ %22, %bb29 ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hf3442f0736498466E"(ptr nonnull align 8 %their_thread) #34
          to label %bb18 unwind label %terminate, !dbg !1189

bb30:                                             ; preds = %bb34
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %56 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %57 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 1
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h5b8d6a2828f29de2E"(ptr nonnull align 8 %name) #34
          to label %bb32 unwind label %terminate, !dbg !1132

bb32:                                             ; preds = %bb31.thread9, %bb30
  %58 = phi i32 [ %8, %bb31.thread9 ], [ %57, %bb30 ]
  %59 = phi ptr [ %7, %bb31.thread9 ], [ %56, %bb30 ]
  invoke fastcc void @"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17hc230ee2b1e444aaeE"(ptr nonnull align 8 %scope_data) #34
          to label %bb21 unwind label %terminate, !dbg !1132

bb21:                                             ; preds = %bb19, %bb32, %cleanup24, %bb16
  %60 = phi i32 [ %15, %bb19 ], [ %58, %bb32 ], [ %50, %cleanup24 ], [ %47, %bb16 ], !dbg !1270
  %61 = phi ptr [ %16, %bb19 ], [ %59, %bb32 ], [ %49, %cleanup24 ], [ %46, %bb16 ], !dbg !1270
  %62 = insertvalue { ptr, i32 } poison, ptr %61, 0, !dbg !1270
  %63 = insertvalue { ptr, i32 } %62, i32 %60, 1, !dbg !1270
  resume { ptr, i32 } %63, !dbg !1270
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc i64 @_ZN4core3ops8function6FnOnce9call_once17h3b69fafd37028148E() unnamed_addr #5 !dbg !1272 {
start:
  %_0 = tail call i64 @_ZN3std10sys_common6thread9min_stack17h4877004752fad623E(), !dbg !1273
  ret i64 %_0, !dbg !1273
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN66_$LT$T$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17h60ba09f7e7bb4a46E"(ptr nocapture writeonly sret(%"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>") align 8 %_0, ptr nocapture readonly align 8 %self) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !1274 {
start:
  %_11 = alloca %"alloc::vec::Vec<u8>", align 8
  %_9 = alloca %"alloc::vec::Vec<u8>", align 8
  %_8 = alloca %"alloc::ffi::c_str::NulError", align 8
  %bytes = alloca %"alloc::vec::Vec<u8>", align 8
  call fastcc void @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h6b577a793cb4ade8E"(ptr nonnull sret(%"alloc::vec::Vec<u8>") align 8 %bytes, ptr align 8 %self, ptr nonnull align 8 @alloc_5c9d34f18b8b9cda7f74f6cd144f9475), !dbg !1278
  %0 = getelementptr inbounds i8, ptr %bytes, i64 8, !dbg !1279
  %self1 = load ptr, ptr %0, align 8, !dbg !1279, !nonnull !33, !noundef !33
  %1 = getelementptr inbounds %"alloc::vec::Vec<u8>", ptr %bytes, i64 0, i32 1, !dbg !1298
  %len = load i64, ptr %1, align 8, !dbg !1298, !noundef !33
  %_23 = icmp ult i64 %len, 16, !dbg !1299
  br i1 %_23, label %bb10, label %bb12, !dbg !1299

bb12:                                             ; preds = %start
  %2 = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h8f0bf65eb3f4aa75E(i8 0, ptr nonnull align 1 %self1, i64 %len)
          to label %bb14 unwind label %bb7, !dbg !1305

bb10:                                             ; preds = %start
  %3 = invoke fastcc { i64, i64 } @_ZN4core5slice6memchr12memchr_naive17h70f456fdae6ed15fE(i8 0, ptr nonnull align 1 %self1, i64 %len)
          to label %bb11 unwind label %bb7, !dbg !1306

bb8:                                              ; preds = %bb2
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb6, !dbg !1307

bb14:                                             ; preds = %bb12
  br label %bb9, !dbg !1305

bb9:                                              ; preds = %bb11, %bb14
  %.pn = phi { i64, i64 } [ %3, %bb11 ], [ %2, %bb14 ]
  %_6 = extractvalue { i64, i64 } %.pn, 0, !dbg !1304
  %4 = icmp eq i64 %_6, 0, !dbg !1308
  br i1 %4, label %bb2, label %bb3, !dbg !1308

bb11:                                             ; preds = %bb10
  br label %bb9, !dbg !1309

bb2:                                              ; preds = %bb9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_11, ptr noundef nonnull align 8 dereferenceable(24) %bytes, i64 24, i1 false), !dbg !1310
  %5 = invoke { ptr, i64 } @_ZN5alloc3ffi5c_str7CString19_from_vec_unchecked17haed2596d76a1241bE(ptr nonnull align 8 %_11)
          to label %bb4 unwind label %bb8, !dbg !1312

bb3:                                              ; preds = %bb9
  %i = extractvalue { i64, i64 } %.pn, 1, !dbg !1313
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_9, ptr noundef nonnull align 8 dereferenceable(24) %bytes, i64 24, i1 false), !dbg !1314
  %6 = getelementptr inbounds %"alloc::ffi::c_str::NulError", ptr %_8, i64 0, i32 1, !dbg !1316
  store i64 %i, ptr %6, align 8, !dbg !1316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_8, ptr noundef nonnull align 8 dereferenceable(24) %_9, i64 24, i1 false), !dbg !1316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %_0, ptr noundef nonnull align 8 dereferenceable(32) %_8, i64 32, i1 false), !dbg !1317
  br label %bb5, !dbg !1318

bb4:                                              ; preds = %bb2
  %_10.0 = extractvalue { ptr, i64 } %5, 0, !dbg !1312
  %_10.1 = extractvalue { ptr, i64 } %5, 1, !dbg !1312
  %7 = getelementptr inbounds %"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>::Ok", ptr %_0, i64 0, i32 1, !dbg !1319
  store ptr %_10.0, ptr %7, align 8, !dbg !1319
  %8 = getelementptr inbounds %"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>::Ok", ptr %_0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1319
  store i64 %_10.1, ptr %8, align 8, !dbg !1319
  store i64 -9223372036854775808, ptr %_0, align 8, !dbg !1319
  br label %bb5, !dbg !1320

bb5:                                              ; preds = %bb4, %bb3
  ret void, !dbg !1321

bb6:                                              ; preds = %bb8, %bb7
  %lpad.thr_comm.pn = phi { ptr, i32 } [ %lpad.thr_comm, %bb7 ], [ %lpad.thr_comm.split-lp, %bb8 ]
  resume { ptr, i32 } %lpad.thr_comm.pn, !dbg !1322

bb7:                                              ; preds = %bb10, %bb12
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfc35a56705acb343E"(ptr nonnull align 8 %bytes) #34
          to label %bb6 unwind label %terminate, !dbg !1307

terminate:                                        ; preds = %bb7
  %9 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #27, !dbg !1322
  unreachable, !dbg !1322
}

; Function Attrs: nonlazybind uwtable
declare ptr @_ZN3std6thread6Thread3new17h9286f061390b10b6E(ptr align 1, i64) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h851ebc17aa702cc2E"(ptr nocapture readonly align 8 %self, ptr nocapture readnone align 1 %msg.0, i64 %msg.1, ptr nocapture readnone align 8 %0) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !1323 {
start:
  %e = alloca %"alloc::ffi::c_str::NulError", align 8
  %1 = load i64, ptr %self, align 8, !dbg !1324, !range !1140, !noundef !33
  %2 = icmp eq i64 %1, -9223372036854775808, !dbg !1324
  br i1 %2, label %bb3, label %bb1, !dbg !1325

bb3:                                              ; preds = %start
  %3 = getelementptr inbounds %"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>::Ok", ptr %self, i64 0, i32 1, !dbg !1326
  %t.0 = load ptr, ptr %3, align 8, !dbg !1326, !nonnull !33, !align !261, !noundef !33
  %4 = getelementptr inbounds %"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>::Ok", ptr %self, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1326
  %t.1 = load i64, ptr %4, align 8, !dbg !1326, !noundef !33
  %5 = insertvalue { ptr, i64 } poison, ptr %t.0, 0, !dbg !1327
  %6 = insertvalue { ptr, i64 } %5, i64 %t.1, 1, !dbg !1327
  ret { ptr, i64 } %6, !dbg !1327

bb1:                                              ; preds = %start
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %e, ptr noundef nonnull align 8 dereferenceable(32) %self, i64 32, i1 false), !dbg !1328
  invoke void @_ZN4core6result13unwrap_failed17h566b4fa76abf40a2E(ptr nonnull align 1 @alloc_498705839b3ae85466bce6e7ebfe4996, i64 47, ptr nonnull align 1 %e, ptr nonnull align 8 @vtable.5, ptr nonnull align 8 @alloc_3c7ed5a01079e282fcc9eb5544b30333) #33
          to label %unreachable unwind label %bb4, !dbg !1329

bb4:                                              ; preds = %bb1
  %7 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr48drop_in_place$LT$alloc..ffi..c_str..NulError$GT$17h54c01bc34e4d844aE"(ptr nonnull align 8 %e) #34
          to label %bb5 unwind label %terminate, !dbg !1331

unreachable:                                      ; preds = %bb1
  unreachable

terminate:                                        ; preds = %bb4
  %8 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #27, !dbg !1332
  unreachable, !dbg !1332

bb5:                                              ; preds = %bb4
  resume { ptr, i32 } %7, !dbg !1332
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc nonnull ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3aa793fac49652eeE"(ptr nocapture readonly align 8 %self) unnamed_addr #13 !dbg !1333 {
start:
  %self1 = load ptr, ptr %self, align 8, !dbg !1335, !nonnull !33, !noundef !33
  %0 = atomicrmw add ptr %self1, i64 1 monotonic, align 8, !dbg !1344
  %_4 = icmp slt i64 %0, 0, !dbg !1353
  br i1 %_4, label %bb1, label %bb2, !dbg !1353

bb2:                                              ; preds = %start
  %ptr = load ptr, ptr %self, align 8, !dbg !1355, !nonnull !33, !noundef !33
  ret ptr %ptr, !dbg !1357

bb1:                                              ; preds = %start
  tail call void @llvm.trap(), !dbg !1358
  unreachable, !dbg !1358
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc ptr @_ZN5alloc5alloc15exchange_malloc17h21f7745ba6eae1eaE(i64 %size, i64 %align) unnamed_addr #5 !dbg !1359 {
start:
  %0 = tail call fastcc { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h891f85d5c57af587E(ptr nonnull align 1 @alloc_513570631223a12912d85da2bec3b15a, i64 8, i64 %size, i1 zeroext false), !dbg !1360
  %1 = extractvalue { ptr, i64 } %0, 0, !dbg !1360
  %.not = icmp eq ptr %1, null, !dbg !1365
  br i1 %.not, label %bb1, label %bb2, !dbg !1366

bb2:                                              ; preds = %start
  ret ptr %1, !dbg !1367

bb1:                                              ; preds = %start
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h085c72f91e671903E(i64 8, i64 %size) #33, !dbg !1368
  unreachable, !dbg !1368
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr85drop_in_place$LT$alloc..sync..ArcInner$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h40a9f5ebfdfc21edE"(ptr align 8 %_1) unnamed_addr #3 !dbg !1369 {
start:
  %0 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %_1, i64 0, i32 2, !dbg !1370
  tail call fastcc void @"_ZN4core3ptr56drop_in_place$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$17h2c56497c3c6a5b5eE"(ptr nonnull align 8 %0), !dbg !1370
  ret void, !dbg !1370
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc nonnull ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7644565280af90c9E"(ptr nocapture readonly align 8 %self) unnamed_addr #13 !dbg !1371 {
start:
  %self1 = load ptr, ptr %self, align 8, !dbg !1372, !nonnull !33, !noundef !33
  %0 = atomicrmw add ptr %self1, i64 1 monotonic, align 8, !dbg !1381
  %_4 = icmp slt i64 %0, 0, !dbg !1390
  br i1 %_4, label %bb1, label %bb2, !dbg !1390

bb2:                                              ; preds = %start
  %ptr = load ptr, ptr %self, align 8, !dbg !1392, !nonnull !33, !noundef !33
  ret ptr %ptr, !dbg !1394

bb1:                                              ; preds = %start
  tail call void @llvm.trap(), !dbg !1395
  unreachable, !dbg !1395
}

; Function Attrs: nonlazybind uwtable
declare ptr @_ZN3std2io5stdio18set_output_capture17h47fa7577e7da3004E(ptr) unnamed_addr #3

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc nonnull ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8be9ec22d8ecf029E"(ptr nocapture readonly align 8 %self) unnamed_addr #13 !dbg !1396 {
start:
  %self1 = load ptr, ptr %self, align 8, !dbg !1397, !nonnull !33, !noundef !33
  %0 = atomicrmw add ptr %self1, i64 1 monotonic, align 8, !dbg !1406
  %_4 = icmp slt i64 %0, 0, !dbg !1415
  br i1 %_4, label %bb1, label %bb2, !dbg !1415

bb2:                                              ; preds = %start
  %ptr = load ptr, ptr %self, align 8, !dbg !1417, !nonnull !33, !noundef !33
  ret ptr %ptr, !dbg !1419

bb1:                                              ; preds = %start
  tail call void @llvm.trap(), !dbg !1420
  unreachable, !dbg !1420
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17h4a374c67cd6dfb28E"(ptr align 8 %_1) unnamed_addr #3 !dbg !1421 {
start:
  %0 = load ptr, ptr %_1, align 8, !dbg !1422, !noundef !33
  %1 = icmp eq ptr %0, null, !dbg !1422
  br i1 %1, label %bb1, label %bb2, !dbg !1422

bb1:                                              ; preds = %bb2, %start
  ret void, !dbg !1422

bb2:                                              ; preds = %start
  tail call fastcc void @"_ZN4core3ptr101drop_in_place$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$17h26853e77453d0308E"(ptr nonnull align 8 %_1), !dbg !1422
  br label %bb1, !dbg !1422
}

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std6thread6scoped9ScopeData29increment_num_running_threads17hb8778178a2b2dcd2E(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr156drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$CVE_2020_26235..main..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h44b8fc7c32c2ef81E"(ptr align 8 %_1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !1423 {
start:
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hf3442f0736498466E"(ptr align 8 %_1)
          to label %bb8 unwind label %bb5, !dbg !1424

bb5:                                              ; preds = %start
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@CVE_2020_26235.rs:19:28: 19:30}, ()>::{closure#1}}", ptr %_1, i64 0, i32 2, !dbg !1424
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17h4a374c67cd6dfb28E"(ptr nonnull align 8 %1) #34
          to label %bb4 unwind label %terminate, !dbg !1424

bb8:                                              ; preds = %start
  %2 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@CVE_2020_26235.rs:19:28: 19:30}, ()>::{closure#1}}", ptr %_1, i64 0, i32 2, !dbg !1424
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17h4a374c67cd6dfb28E"(ptr nonnull align 8 %2)
          to label %bb7 unwind label %cleanup1, !dbg !1424

bb4:                                              ; preds = %cleanup1, %bb5
  %.pn = phi { ptr, i32 } [ %4, %cleanup1 ], [ %0, %bb5 ]
  %3 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@CVE_2020_26235.rs:19:28: 19:30}, ()>::{closure#1}}", ptr %_1, i64 0, i32 3, !dbg !1424
  br label %bb3

cleanup1:                                         ; preds = %bb8
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb4

bb7:                                              ; preds = %bb8
  %5 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@CVE_2020_26235.rs:19:28: 19:30}, ()>::{closure#1}}", ptr %_1, i64 0, i32 3, !dbg !1424
  br label %bb6

bb3:                                              ; preds = %bb4
  %6 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@CVE_2020_26235.rs:19:28: 19:30}, ()>::{closure#1}}", ptr %_1, i64 0, i32 1, !dbg !1424
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h227a9b2252fd1403E"(ptr nonnull align 8 %6) #34
          to label %bb1 unwind label %terminate, !dbg !1424

bb6:                                              ; preds = %bb7
  %7 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@CVE_2020_26235.rs:19:28: 19:30}, ()>::{closure#1}}", ptr %_1, i64 0, i32 1, !dbg !1424
  tail call fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h227a9b2252fd1403E"(ptr nonnull align 8 %7), !dbg !1424
  ret void, !dbg !1424

terminate:                                        ; preds = %bb3, %bb5
  %8 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  tail call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #27, !dbg !1424
  unreachable, !dbg !1424

bb1:                                              ; preds = %bb3
  resume { ptr, i32 } %.pn, !dbg !1424
}

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std3sys3pal4unix6thread6Thread3new17h25822420d6359794E(ptr sret(%"core::result::Result<usize, std::io::error::Error>") align 8, i64, ptr align 1, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h5b8d6a2828f29de2E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 !dbg !1425 {
start:
  %0 = load i64, ptr %_1, align 8, !dbg !1426, !range !1140, !noundef !33
  %1 = icmp eq i64 %0, -9223372036854775808, !dbg !1426
  br i1 %1, label %bb1, label %bb2, !dbg !1426

bb1:                                              ; preds = %bb2, %start
  ret void, !dbg !1426

bb2:                                              ; preds = %start
  tail call fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb957259dd3b0b205E"(ptr nonnull align 8 %_1), !dbg !1426
  br label %bb1, !dbg !1426
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb957259dd3b0b205E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 !dbg !1427 {
start:
  tail call fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfc35a56705acb343E"(ptr align 8 %_1), !dbg !1428
  ret void, !dbg !1428
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfc35a56705acb343E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !1429 {
start:
  br label %bb4

bb4:                                              ; preds = %start
  tail call fastcc void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h49d85581a88492a6E"(ptr align 8 %_1), !dbg !1430
  ret void, !dbg !1430
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h49d85581a88492a6E"(ptr nocapture readonly align 8 %_1) unnamed_addr #12 !dbg !1431 {
start:
  tail call fastcc void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haafd16b75df880faE"(ptr align 8 %_1), !dbg !1432
  ret void, !dbg !1432
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haafd16b75df880faE"(ptr nocapture readonly align 8 %self) unnamed_addr #12 !dbg !1433 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  call fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h6eb8b83fdd45a706E"(ptr nonnull sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") align 8 %_2, ptr align 8 %self), !dbg !1435
  %0 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", ptr %_2, i64 0, i32 1, !dbg !1437
  %1 = load i64, ptr %0, align 8, !dbg !1437, !range !1140, !noundef !33
  %.not = icmp eq i64 %1, 0, !dbg !1437
  br i1 %.not, label %bb4, label %bb2, !dbg !1437

bb2:                                              ; preds = %start
  %ptr = load ptr, ptr %_2, align 8, !dbg !1438, !nonnull !33, !noundef !33
  %2 = getelementptr inbounds { ptr, %"core::alloc::layout::Layout" }, ptr %_2, i64 0, i32 1, i32 1, !dbg !1439
  %layout.1 = load i64, ptr %2, align 8, !dbg !1439, !noundef !33
  %_7 = getelementptr inbounds i8, ptr %self, i64 16, !dbg !1440
  call fastcc void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h0bc0eaec458bb9cdE"(ptr nonnull align 1 %_7, ptr nonnull %ptr, i64 %1, i64 %layout.1), !dbg !1440
  br label %bb4, !dbg !1442

bb4:                                              ; preds = %bb2, %start
  ret void, !dbg !1443
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h6eb8b83fdd45a706E"(ptr nocapture writeonly sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") align 8 %_0, ptr nocapture readonly align 8 %self) unnamed_addr #24 !dbg !1444 {
bb1:
  %_9 = alloca { ptr, %"core::alloc::layout::Layout" }, align 8
  %_3 = load i64, ptr %self, align 8, !dbg !1445, !noundef !33
  %0 = icmp eq i64 %_3, 0, !dbg !1445
  br i1 %0, label %bb2, label %bb3, !dbg !1445

bb2:                                              ; preds = %bb1
  %1 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", ptr %_0, i64 0, i32 1, !dbg !1446
  store i64 0, ptr %1, align 8, !dbg !1446
  br label %bb4, !dbg !1447

bb3:                                              ; preds = %bb1
  %2 = getelementptr inbounds i8, ptr %self, i64 8, !dbg !1448
  %self3 = load ptr, ptr %2, align 8, !dbg !1448, !nonnull !33, !noundef !33
  store ptr %self3, ptr %_9, align 8, !dbg !1454
  %3 = getelementptr inbounds { ptr, %"core::alloc::layout::Layout" }, ptr %_9, i64 0, i32 1, !dbg !1454
  store i64 1, ptr %3, align 8, !dbg !1454
  %4 = getelementptr inbounds { ptr, %"core::alloc::layout::Layout" }, ptr %_9, i64 0, i32 1, i32 1, !dbg !1454
  store i64 %_3, ptr %4, align 8, !dbg !1454
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %_9, i64 24, i1 false), !dbg !1455
  br label %bb4, !dbg !1447

bb4:                                              ; preds = %bb3, %bb2
  ret void, !dbg !1456
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h1f179259d3765555E"(ptr %_1) unnamed_addr #5 !dbg !1457 {
start:
  tail call fastcc void @"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17h16d84311cf8f08f3E"(ptr align 8 %_1), !dbg !1458
  ret void, !dbg !1458
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17h16d84311cf8f08f3E"(ptr align 8 %_1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !1459 {
start:
  %_x = alloca ptr, align 8
  %_17 = alloca %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>", align 8
  %_12 = alloca %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>", align 8
  %_7 = alloca ptr, align 8
  %0 = invoke { ptr, i64 } @_ZN3std6thread6Thread5cname17he8eff7cc14160c1eE(ptr align 8 %_1)
          to label %bb1 unwind label %bb20.thread, !dbg !1460

bb20:                                             ; preds = %bb5
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb19

bb20.thread:                                      ; preds = %start, %bb2, %bb3, %bb4
  %_26.1 = phi i1 [ false, %bb4 ], [ false, %bb3 ], [ true, %bb2 ], [ true, %start ], !dbg !1462
  %1 = landingpad { ptr, i32 }
          cleanup
  br label %bb19, !dbg !1463

bb1:                                              ; preds = %start
  %2 = extractvalue { ptr, i64 } %0, 0, !dbg !1460
  %.not2 = icmp eq ptr %2, null, !dbg !1464
  br i1 %.not2, label %bb3, label %bb2, !dbg !1464

bb2:                                              ; preds = %bb1
  %3 = extractvalue { ptr, i64 } %0, 1, !dbg !1460
  invoke void @_ZN3std3sys3pal4unix6thread6Thread8set_name17h76dc80adfde750b1E(ptr nonnull align 1 %2, i64 %3)
          to label %bb3 unwind label %bb20.thread, !dbg !1465

bb3:                                              ; preds = %bb2, %bb1
  %4 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@CVE_2020_26235.rs:19:28: 19:30}, ()>::{closure#1}}", ptr %_1, i64 0, i32 2, !dbg !1466
  %_8 = load ptr, ptr %4, align 8, !dbg !1466, !noundef !33
  %5 = invoke ptr @_ZN3std2io5stdio18set_output_capture17h47fa7577e7da3004E(ptr %_8)
          to label %bb4 unwind label %bb20.thread, !dbg !1467

bb4:                                              ; preds = %bb3
  store ptr %5, ptr %_7, align 8, !dbg !1467
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17h4a374c67cd6dfb28E"(ptr nonnull align 8 %_7)
          to label %bb5 unwind label %bb20.thread, !dbg !1468

bb5:                                              ; preds = %bb4
  invoke void @_ZN3std3sys3pal4unix6thread5guard7current17ha2bb65882033f000E(ptr nonnull sret(%"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>") align 8 %_12)
          to label %bb6 unwind label %bb20, !dbg !1469

bb12:                                             ; preds = %bb7, %bb8
  %_23.2.ph = phi i8 [ 1, %bb7 ], [ 0, %bb8 ]
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb13, !dbg !1463

bb6:                                              ; preds = %bb5
  %_13 = load ptr, ptr %_1, align 8, !dbg !1472, !nonnull !33, !noundef !33
  invoke void @_ZN3std10sys_common11thread_info3set17h2c664b76c70cf208E(ptr nonnull align 8 %_12, ptr nonnull %_13)
          to label %bb7 unwind label %bb13.thread, !dbg !1473

bb13.thread:                                      ; preds = %bb6
  %lpad.thr_comm41 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %lpad.thr_comm41, 0
  %7 = extractvalue { ptr, i32 } %lpad.thr_comm41, 1
  br label %bb14, !dbg !1463

bb7:                                              ; preds = %bb6
  %8 = invoke fastcc { ptr, ptr } @_ZN3std9panicking3try17h80b519338250a03eE()
          to label %bb22 unwind label %bb12, !dbg !1474

bb22:                                             ; preds = %bb7
  %try_result.0 = extractvalue { ptr, ptr } %8, 0, !dbg !1474
  %try_result.1 = extractvalue { ptr, ptr } %8, 1, !dbg !1474
  %9 = getelementptr inbounds %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>::Some", ptr %_17, i64 0, i32 1, !dbg !1479
  store ptr %try_result.0, ptr %9, align 8, !dbg !1479
  %10 = getelementptr inbounds %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>::Some", ptr %_17, i64 0, i32 1, i32 1, !dbg !1479
  store ptr %try_result.1, ptr %10, align 8, !dbg !1479
  store i64 1, ptr %_17, align 8, !dbg !1479
  %11 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@CVE_2020_26235.rs:19:28: 19:30}, ()>::{closure#1}}", ptr %_1, i64 0, i32 1, !dbg !1482
  %self4 = load ptr, ptr %11, align 8, !dbg !1482, !nonnull !33, !noundef !33
  %_40 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %self4, i64 0, i32 2, i32 1, !dbg !1494
  invoke fastcc void @"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17h7836c66a3cefedddE"(ptr nonnull align 8 %_40)
          to label %bb8 unwind label %bb13.thread45, !dbg !1498

bb13.thread45:                                    ; preds = %bb22
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = extractvalue { ptr, i32 } %12, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_40, ptr noundef nonnull align 8 dereferenceable(24) %_17, i64 24, i1 false), !dbg !1498
  br label %bb14, !dbg !1463

bb8:                                              ; preds = %bb22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_40, ptr noundef nonnull align 8 dereferenceable(24) %_17, i64 24, i1 false), !dbg !1498
  %15 = load ptr, ptr %11, align 8, !dbg !1499, !nonnull !33, !noundef !33
  store ptr %15, ptr %_x, align 8, !dbg !1499
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h227a9b2252fd1403E"(ptr nonnull align 8 %_x)
          to label %bb23 unwind label %bb12, !dbg !1500

bb23:                                             ; preds = %bb8
  ret void, !dbg !1504

bb17:                                             ; preds = %bb19
  br i1 %_26.012, label %bb18, label %bb15, !dbg !1463

bb19:                                             ; preds = %bb20, %bb20.thread
  %.pn = phi { ptr, i32 } [ %1, %bb20.thread ], [ %lpad.thr_comm, %bb20 ]
  %_26.012 = phi i1 [ %_26.1, %bb20.thread ], [ false, %bb20 ]
  %_25.010 = phi i1 [ true, %bb20.thread ], [ false, %bb20 ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hf3442f0736498466E"(ptr align 8 %_1) #34
          to label %bb17 unwind label %terminate, !dbg !1463

terminate:                                        ; preds = %bb14, %bb18, %bb19
  %16 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #27, !dbg !1505
  unreachable, !dbg !1505

bb15:                                             ; preds = %bb18, %bb17
  br i1 %_25.010, label %bb16, label %bb13, !dbg !1463

bb18:                                             ; preds = %bb17
  %17 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@CVE_2020_26235.rs:19:28: 19:30}, ()>::{closure#1}}", ptr %_1, i64 0, i32 2, !dbg !1463
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17h4a374c67cd6dfb28E"(ptr nonnull align 8 %17) #34
          to label %bb15 unwind label %terminate, !dbg !1463

bb13:                                             ; preds = %bb16, %bb12, %bb15
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb16 ], [ %.pn, %bb15 ], [ %lpad.thr_comm.split-lp, %bb12 ]
  %_23.092831 = phi i8 [ 1, %bb16 ], [ 1, %bb15 ], [ %_23.2.ph, %bb12 ]
  %18 = extractvalue { ptr, i32 } %.pn.pn, 0
  %19 = extractvalue { ptr, i32 } %.pn.pn, 1
  %20 = and i8 %_23.092831, 1, !dbg !1463
  %.not1 = icmp eq i8 %20, 0, !dbg !1463
  br i1 %.not1, label %bb10, label %bb14, !dbg !1463

bb16:                                             ; preds = %bb15
  %21 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@CVE_2020_26235.rs:19:28: 19:30}, ()>::{closure#1}}", ptr %_1, i64 0, i32 3, !dbg !1463
  br label %bb13

bb10:                                             ; preds = %bb14, %bb13
  %22 = phi i32 [ %26, %bb14 ], [ %19, %bb13 ], !dbg !1505
  %23 = phi ptr [ %27, %bb14 ], [ %18, %bb13 ], !dbg !1505
  %24 = insertvalue { ptr, i32 } poison, ptr %23, 0, !dbg !1505
  %25 = insertvalue { ptr, i32 } %24, i32 %22, 1, !dbg !1505
  resume { ptr, i32 } %25, !dbg !1505

bb14:                                             ; preds = %bb13.thread45, %bb13.thread, %bb13
  %26 = phi i32 [ %14, %bb13.thread45 ], [ %7, %bb13.thread ], [ %19, %bb13 ]
  %27 = phi ptr [ %13, %bb13.thread45 ], [ %6, %bb13.thread ], [ %18, %bb13 ]
  %28 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@CVE_2020_26235.rs:19:28: 19:30}, ()>::{closure#1}}", ptr %_1, i64 0, i32 1, !dbg !1463
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h227a9b2252fd1403E"(ptr nonnull align 8 %28) #34
          to label %bb10 unwind label %terminate, !dbg !1463
}

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_ZN3std6thread6Thread5cname17he8eff7cc14160c1eE(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std3sys3pal4unix6thread6Thread8set_name17h76dc80adfde750b1E(ptr align 1, i64) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std3sys3pal4unix6thread5guard7current17ha2bb65882033f000E(ptr sret(%"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>") align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std10sys_common11thread_info3set17h2c664b76c70cf208E(ptr align 8, ptr) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_ZN3std9panicking3try17h80b519338250a03eE() unnamed_addr #3 !dbg !1506 {
start:
  %data = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %0 = call fastcc i32 @__rust_try(ptr nonnull @_ZN3std9panicking3try7do_call17h9069631fdbf1b3edE, ptr nonnull %data, ptr nonnull @_ZN3std9panicking3try8do_catch17h6f1590165f690618E), !dbg !1507, !range !394
  %1 = icmp eq i32 %0, 0, !dbg !1507
  br i1 %1, label %bb2, label %bb3, !dbg !1507

bb2:                                              ; preds = %start
  br label %bb4, !dbg !1511

bb3:                                              ; preds = %start
  %slot.0 = load ptr, ptr %data, align 8, !dbg !1512, !nonnull !33, !align !261, !noundef !33
  %2 = getelementptr inbounds i8, ptr %data, i64 8, !dbg !1512
  %slot.1 = load ptr, ptr %2, align 8, !dbg !1512, !nonnull !33, !align !148, !noundef !33
  br label %bb4, !dbg !1511

bb4:                                              ; preds = %bb3, %bb2
  %3 = phi ptr [ %slot.1, %bb3 ], [ undef, %bb2 ], !dbg !1513
  %4 = phi ptr [ %slot.0, %bb3 ], [ null, %bb2 ], !dbg !1513
  %5 = insertvalue { ptr, ptr } poison, ptr %4, 0, !dbg !1513
  %6 = insertvalue { ptr, ptr } %5, ptr %3, 1, !dbg !1513
  ret { ptr, ptr } %6, !dbg !1513
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN3std9panicking3try7do_call17h9069631fdbf1b3edE(ptr nocapture readnone %data) unnamed_addr #5 !dbg !1514 {
start:
  tail call fastcc void @"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17hadee9695ca68d4f6E"(), !dbg !1515
  ret void, !dbg !1520
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_ZN3std9panicking3try8do_catch17h6f1590165f690618E(ptr nocapture writeonly %data, ptr %payload) unnamed_addr #13 personality ptr @rust_eh_personality !dbg !1521 {
start:
  %0 = invoke { ptr, ptr } @_ZN3std9panicking3try7cleanup17h6d4e570bbe25440aE(ptr %payload)
          to label %bb1 unwind label %terminate, !dbg !1522

terminate:                                        ; preds = %start
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  tail call void @_ZN4core9panicking19panic_cannot_unwind17hfa9f734a74de1f5aE() #27, !dbg !1526
  unreachable, !dbg !1526

bb1:                                              ; preds = %start
  %obj.0 = extractvalue { ptr, ptr } %0, 0, !dbg !1522
  %obj.1 = extractvalue { ptr, ptr } %0, 1, !dbg !1522
  store ptr %obj.0, ptr %data, align 8, !dbg !1527
  %2 = getelementptr inbounds i8, ptr %data, i64 8, !dbg !1527
  store ptr %obj.1, ptr %2, align 8, !dbg !1527
  ret void, !dbg !1529
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17hadee9695ca68d4f6E"() unnamed_addr #5 !dbg !1530 {
start:
  tail call fastcc void @"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h7aa041f200ab2387E"(), !dbg !1531
  ret void, !dbg !1532
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h7aa041f200ab2387E"() unnamed_addr #5 !dbg !1533 {
start:
  tail call fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h84fca60a6f789d64E(), !dbg !1535
  ret void, !dbg !1536
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h84fca60a6f789d64E() unnamed_addr #6 !dbg !1537 {
start:
  tail call fastcc void @"_ZN14CVE_2020_262354main28_$u7b$$u7b$closure$u7d$$u7d$17h82277864e49eb8f2E"(), !dbg !1538
  tail call void asm sideeffect "", "~{memory}"() #32, !dbg !1539, !srcloc !76
  ret void, !dbg !1544
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN14CVE_2020_262354main28_$u7b$$u7b$closure$u7d$$u7d$17h82277864e49eb8f2E"() unnamed_addr #5 personality ptr @rust_eh_personality !dbg !1545 {
start:
  %e.i = alloca %"alloc::ffi::c_str::NulError", align 8
  %_3 = alloca %"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>", align 8
  %val = alloca %"alloc::ffi::c_str::CString", align 8
  call fastcc void @_ZN5alloc3ffi5c_str7CString3new17h93e3632d1d83de70E(ptr nonnull sret(%"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>") align 8 %_3, ptr nonnull align 1 @alloc_9713a0717675e9c95076d8b2a34ce074, i64 3), !dbg !1547
  %0 = load i64, ptr %_3, align 8, !dbg !1548, !range !1140, !noundef !33
  %1 = icmp eq i64 %0, -9223372036854775808, !dbg !1548
  br i1 %1, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h65556ffe8bcc99b8E.exit", label %bb1.i, !dbg !1551

bb1.i:                                            ; preds = %start
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %e.i, ptr noundef nonnull align 8 dereferenceable(32) %_3, i64 32, i1 false), !dbg !1552
  invoke void @_ZN4core6result13unwrap_failed17h566b4fa76abf40a2E(ptr nonnull align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 43, ptr nonnull align 1 %e.i, ptr nonnull align 8 @vtable.5, ptr nonnull align 8 @alloc_28622ef2541181b086819053c4b41a6e) #33
          to label %unreachable.i unwind label %cleanup.i, !dbg !1553

cleanup.i:                                        ; preds = %bb1.i
  %2 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr48drop_in_place$LT$alloc..ffi..c_str..NulError$GT$17h54c01bc34e4d844aE"(ptr nonnull align 8 %e.i) #34
          to label %bb5.i unwind label %terminate.i, !dbg !1555

unreachable.i:                                    ; preds = %bb1.i
  unreachable

terminate.i:                                      ; preds = %cleanup.i
  %3 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #27, !dbg !1556
  unreachable, !dbg !1556

common.resume:                                    ; preds = %bb5.i
  resume { ptr, i32 } %2, !dbg !1557

bb5.i:                                            ; preds = %cleanup.i
  br label %common.resume

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h65556ffe8bcc99b8E.exit": ; preds = %start
  %4 = getelementptr inbounds %"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>::Ok", ptr %_3, i64 0, i32 1, !dbg !1558
  %t.0.i = load ptr, ptr %4, align 8, !dbg !1558, !nonnull !33, !align !261, !noundef !33
  %5 = getelementptr inbounds %"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>::Ok", ptr %_3, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1558
  %t.1.i = load i64, ptr %5, align 8, !dbg !1558, !noundef !33
  store ptr %t.0.i, ptr %val, align 8, !dbg !1547
  %6 = getelementptr inbounds i8, ptr %val, i64 8, !dbg !1547
  store i64 %t.1.i, ptr %6, align 8, !dbg !1547
  %7 = call fastcc { ptr, i64 } @"_ZN70_$LT$alloc..ffi..c_str..CString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h40d187a0463a349cE"(ptr nonnull align 8 %val), !dbg !1559
  br label %bb3

bb3:                                              ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h65556ffe8bcc99b8E.exit"
  %_6.0 = extractvalue { ptr, i64 } %7, 0, !dbg !1559
  %_6.1 = extractvalue { ptr, i64 } %7, 1, !dbg !1559
  br label %bb4

bb4:                                              ; preds = %bb3
  %_4 = call i32 @set_tz(ptr %_6.0), !dbg !1562
  call fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17h6b9daf21158d83b6E"(ptr nonnull align 8 %val), !dbg !1563
  ret void, !dbg !1564
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN5alloc3ffi5c_str7CString3new17h93e3632d1d83de70E(ptr sret(%"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>") align 8 %_0, ptr nocapture readnone align 1 %t.0, i64 %t.1) unnamed_addr #3 !dbg !1565 {
start:
  tail call void @"_ZN72_$LT$$RF$str$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17h05cc01a18673bca8E"(ptr sret(%"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>") align 8 %_0, ptr nonnull align 1 @alloc_9713a0717675e9c95076d8b2a34ce074, i64 3), !dbg !1566
  ret void, !dbg !1567
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr48drop_in_place$LT$alloc..ffi..c_str..NulError$GT$17h54c01bc34e4d844aE"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 !dbg !1568 {
start:
  tail call fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfc35a56705acb343E"(ptr align 8 %_1), !dbg !1569
  ret void, !dbg !1569
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc { ptr, i64 } @"_ZN70_$LT$alloc..ffi..c_str..CString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h40d187a0463a349cE"(ptr nocapture readonly align 8 %self) unnamed_addr #25 !dbg !1570 {
start:
  %_5.0 = load ptr, ptr %self, align 8, !dbg !1572, !nonnull !33, !noundef !33
  %0 = getelementptr inbounds i8, ptr %self, i64 8, !dbg !1572
  %_5.1 = load i64, ptr %0, align 8, !dbg !1572, !noundef !33
  %1 = insertvalue { ptr, i64 } poison, ptr %_5.0, 0, !dbg !1577
  %2 = insertvalue { ptr, i64 } %1, i64 %_5.1, 1, !dbg !1577
  ret { ptr, i64 } %2, !dbg !1577
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN64_$LT$alloc..ffi..c_str..NulError$u20$as$u20$core..fmt..Debug$GT$3fmt17h79c0ae529cfbcd1bE"(ptr align 8 %self, ptr align 8 %f) unnamed_addr #5 !dbg !1578 {
start:
  %_8 = alloca ptr, align 8
  %_5 = getelementptr inbounds %"alloc::ffi::c_str::NulError", ptr %self, i64 0, i32 1, !dbg !1580
  store ptr %self, ptr %_8, align 8, !dbg !1581
  %_0 = call zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hb946ec1de769060bE(ptr align 8 %f, ptr nonnull align 1 @alloc_49c0eff15ce41ce22a2d8c8b146a94ef, i64 8, ptr nonnull align 1 %_5, ptr nonnull align 8 @vtable.8, ptr nonnull align 1 %_8, ptr nonnull align 8 @vtable.9), !dbg !1582
  ret i1 %_0, !dbg !1583
}

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hb946ec1de769060bE(ptr align 8, ptr align 1, i64, ptr align 1, ptr align 8, ptr align 1, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @"_ZN4core3ptr50drop_in_place$LT$$RF$alloc..vec..Vec$LT$u8$GT$$GT$17h3992cf91b34db211E"(ptr nocapture readnone align 8 %_1) unnamed_addr #4 !dbg !1584 {
start:
  ret void, !dbg !1585
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd6d6e73d31546889E"(ptr nocapture readonly align 8 %self, ptr align 8 %f) unnamed_addr #3 !dbg !1586 {
start:
  %_3 = load ptr, ptr %self, align 8, !dbg !1588, !nonnull !33, !align !148, !noundef !33
  %_0 = tail call fastcc zeroext i1 @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h31999e893c5707daE"(ptr nonnull align 8 %_3, ptr align 8 %f), !dbg !1589
  ret i1 %_0, !dbg !1590
}

; Function Attrs: nonlazybind uwtable
define internal fastcc zeroext i1 @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h31999e893c5707daE"(ptr nocapture readonly align 8 %self, ptr align 8 %f) unnamed_addr #3 !dbg !1591 {
start:
  %0 = getelementptr inbounds i8, ptr %self, i64 8, !dbg !1593
  %self1 = load ptr, ptr %0, align 8, !dbg !1593, !nonnull !33, !noundef !33
  %1 = getelementptr inbounds %"alloc::vec::Vec<u8>", ptr %self, i64 0, i32 1, !dbg !1604
  %len = load i64, ptr %1, align 8, !dbg !1604, !noundef !33
  %_0 = tail call fastcc zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1b4a69ebc1f4329bE"(ptr nonnull align 1 %self1, i64 %len, ptr align 8 %f), !dbg !1605
  ret i1 %_0, !dbg !1606
}

; Function Attrs: nonlazybind uwtable
define internal fastcc zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1b4a69ebc1f4329bE"(ptr align 1 %self.0, i64 %self.1, ptr align 8 %f) unnamed_addr #3 !dbg !1607 {
bb6:
  %_5 = alloca %"core::fmt::builders::DebugList<'_, '_>", align 8
  call void @_ZN4core3fmt9Formatter10debug_list17h149015fd7be1ba26E(ptr nonnull sret(%"core::fmt::builders::DebugList<'_, '_>") align 8 %_5, ptr align 8 %f), !dbg !1609
  %0 = getelementptr inbounds i8, ptr %self.0, i64 %self.1, !dbg !1610
  %1 = icmp ne ptr %self.0, null
  call void @llvm.assume(i1 %1)
  %_3 = call fastcc align 8 ptr @_ZN4core3fmt8builders9DebugList7entries17h9bef692612339022E(ptr nonnull align 8 %_5, ptr nonnull %self.0, ptr nonnull %0), !dbg !1609
  %_0 = call zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h607b22500ce6076aE(ptr nonnull align 8 %_5), !dbg !1609
  ret i1 %_0, !dbg !1628
}

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3fmt9Formatter10debug_list17h149015fd7be1ba26E(ptr sret(%"core::fmt::builders::DebugList<'_, '_>") align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
define internal fastcc align 8 ptr @_ZN4core3fmt8builders9DebugList7entries17h9bef692612339022E(ptr returned align 8 %self, ptr %entries.0, ptr %entries.1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !1629 {
start:
  %entry = alloca ptr, align 8
  %iter = alloca %"core::slice::iter::Iter<'_, u8>", align 8
  %0 = tail call fastcc { ptr, ptr } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4ccfd2bcff5b1310E"(ptr %entries.0, ptr %entries.1), !dbg !1633
  %_3.0 = extractvalue { ptr, ptr } %0, 0, !dbg !1633
  %_3.1 = extractvalue { ptr, ptr } %0, 1, !dbg !1633
  store ptr %_3.0, ptr %iter, align 8, !dbg !1633
  %1 = getelementptr inbounds i8, ptr %iter, i64 8, !dbg !1633
  store ptr %_3.1, ptr %1, align 8, !dbg !1633
  br label %bb2, !dbg !1634

bb2:                                              ; preds = %bb4, %start
  %2 = call fastcc align 1 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h64f8cdaeb1b6ff8eE"(ptr nonnull align 8 %iter), !dbg !1636
  br label %bb3

bb11:                                             ; preds = %bb10
  resume { ptr, i32 } %4, !dbg !1637

bb3:                                              ; preds = %bb2
  %3 = icmp eq ptr %2, null, !dbg !1636
  br i1 %3, label %bb6, label %bb4, !dbg !1636

bb6:                                              ; preds = %bb3
  ret ptr %self, !dbg !1638

bb4:                                              ; preds = %bb3
  store ptr %2, ptr %entry, align 8, !dbg !1639
  %_9 = invoke align 8 ptr @_ZN4core3fmt8builders9DebugList5entry17h5d20dd743daa8c38E(ptr align 8 %self, ptr nonnull align 1 %entry, ptr nonnull align 8 @vtable.4)
          to label %bb2 unwind label %bb10, !dbg !1640

bb10:                                             ; preds = %bb4
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb11, !dbg !1642
}

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h607b22500ce6076aE(ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc { ptr, ptr } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4ccfd2bcff5b1310E"(ptr %self.0, ptr %self.1) unnamed_addr #4 !dbg !1643 {
start:
  %0 = insertvalue { ptr, ptr } poison, ptr %self.0, 0, !dbg !1649
  %1 = insertvalue { ptr, ptr } %0, ptr %self.1, 1, !dbg !1649
  ret { ptr, ptr } %1, !dbg !1649
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc align 1 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h64f8cdaeb1b6ff8eE"(ptr nocapture align 8 %self) unnamed_addr #26 !dbg !1650 {
bb3:
  %self2 = load ptr, ptr %self, align 8, !dbg !1653, !nonnull !33, !noundef !33
  %self1 = getelementptr inbounds i8, ptr %self, i64 8, !dbg !1661
  %0 = load ptr, ptr %self1, align 8, !dbg !1661, !nonnull !33, !noundef !33
  %1 = icmp eq ptr %self2, %0, !dbg !1653
  br i1 %1, label %bb6, label %bb9, !dbg !1663

bb9:                                              ; preds = %bb3
  %_30 = getelementptr inbounds i8, ptr %self2, i64 1, !dbg !1664
  store ptr %_30, ptr %self, align 8, !dbg !1676
  br label %bb6, !dbg !1677

bb6:                                              ; preds = %bb3, %bb9
  %_0.0 = phi ptr [ %self2, %bb9 ], [ null, %bb3 ], !dbg !1678
  ret ptr %_0.0, !dbg !1679
}

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_ZN4core3fmt8builders9DebugList5entry17h5d20dd743daa8c38E(ptr align 8, ptr align 1, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @"_ZN4core3ptr27drop_in_place$LT$$RF$u8$GT$17hf54db6ea981c9ffbE"(ptr nocapture readnone align 8 %_1) unnamed_addr #4 !dbg !1680 {
start:
  ret void, !dbg !1681
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h09eaa55106e16f1bE"(ptr nocapture readonly align 8 %self, ptr align 8 %f) unnamed_addr #3 !dbg !1682 {
start:
  %_3 = load ptr, ptr %self, align 8, !dbg !1683, !nonnull !33, !align !261, !noundef !33
  %_0 = tail call fastcc zeroext i1 @"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17hacadb5ebecb5f522E"(ptr nonnull align 1 %_3, ptr align 8 %f), !dbg !1684
  ret i1 %_0, !dbg !1685
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc zeroext i1 @"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17hacadb5ebecb5f522E"(ptr align 1 %self, ptr align 8 %f) unnamed_addr #5 !dbg !1686 {
start:
  %0 = getelementptr inbounds %"core::fmt::Formatter<'_>", ptr %f, i64 0, i32 4, !dbg !1690
  %_4 = load i32, ptr %0, align 4, !dbg !1690, !noundef !33
  %_3 = and i32 %_4, 16, !dbg !1690
  %1 = icmp eq i32 %_3, 0, !dbg !1695
  br i1 %1, label %bb2, label %bb1, !dbg !1695

bb2:                                              ; preds = %start
  %_5 = and i32 %_4, 32, !dbg !1696
  %2 = icmp eq i32 %_5, 0, !dbg !1700
  br i1 %2, label %bb4, label %bb3, !dbg !1700

bb1:                                              ; preds = %start
  %3 = tail call zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h5491a99e5df195d5E"(ptr align 1 %self, ptr nonnull align 8 %f), !dbg !1701
  br label %bb6, !dbg !1701

bb4:                                              ; preds = %bb2
  %4 = tail call zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h99ee99222d3e115aE"(ptr align 1 %self, ptr nonnull align 8 %f), !dbg !1702
  br label %bb6, !dbg !1702

bb3:                                              ; preds = %bb2
  %5 = tail call zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17h685b2bbffb06450aE"(ptr align 1 %self, ptr nonnull align 8 %f), !dbg !1703
  br label %bb6, !dbg !1703

bb6:                                              ; preds = %bb4, %bb3, %bb1
  %_0.1 = phi i1 [ %3, %bb1 ], [ %4, %bb4 ], [ %5, %bb3 ], !dbg !1704
  ret i1 %_0.1, !dbg !1705
}

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h5491a99e5df195d5E"(ptr align 1, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h99ee99222d3e115aE"(ptr align 1, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17h685b2bbffb06450aE"(ptr align 1, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @"_ZN4core3ptr26drop_in_place$LT$usize$GT$17h7a27933a3c20087dE"(ptr nocapture readnone align 8 %_1) unnamed_addr #4 !dbg !1706 {
start:
  ret void, !dbg !1707
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h2f2f37621fcaa7e3E"(ptr align 8 %self, ptr align 8 %f) unnamed_addr #5 !dbg !1708 {
start:
  %0 = getelementptr inbounds %"core::fmt::Formatter<'_>", ptr %f, i64 0, i32 4, !dbg !1710
  %_4 = load i32, ptr %0, align 4, !dbg !1710, !noundef !33
  %_3 = and i32 %_4, 16, !dbg !1710
  %1 = icmp eq i32 %_3, 0, !dbg !1714
  br i1 %1, label %bb2, label %bb1, !dbg !1714

bb2:                                              ; preds = %start
  %_5 = and i32 %_4, 32, !dbg !1715
  %2 = icmp eq i32 %_5, 0, !dbg !1719
  br i1 %2, label %bb4, label %bb3, !dbg !1719

bb1:                                              ; preds = %start
  %3 = tail call zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h644fa137a4214e55E"(ptr align 8 %self, ptr nonnull align 8 %f), !dbg !1720
  br label %bb6, !dbg !1720

bb4:                                              ; preds = %bb2
  %4 = tail call zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h16e2d8a35fcc5a92E"(ptr align 8 %self, ptr nonnull align 8 %f), !dbg !1721
  br label %bb6, !dbg !1721

bb3:                                              ; preds = %bb2
  %5 = tail call zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17hf2e8a08e617b8e39E"(ptr align 8 %self, ptr nonnull align 8 %f), !dbg !1722
  br label %bb6, !dbg !1722

bb6:                                              ; preds = %bb4, %bb3, %bb1
  %_0.1 = phi i1 [ %3, %bb1 ], [ %4, %bb4 ], [ %5, %bb3 ], !dbg !1723
  ret i1 %_0.1, !dbg !1724
}

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h644fa137a4214e55E"(ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17hf2e8a08e617b8e39E"(ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN72_$LT$$RF$str$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17h05cc01a18673bca8E"(ptr sret(%"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>") align 8, ptr align 1, i64) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr101drop_in_place$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$17h26853e77453d0308E"(ptr align 8 %_1) unnamed_addr #3 !dbg !1725 {
start:
  tail call fastcc void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha565802968166814E"(ptr align 8 %_1), !dbg !1726
  ret void, !dbg !1726
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha565802968166814E"(ptr align 8 %self) unnamed_addr #5 !dbg !1727 {
start:
  %self1 = load ptr, ptr %self, align 8, !dbg !1728, !nonnull !33, !noundef !33
  %0 = atomicrmw sub ptr %self1, i64 1 release, align 8, !dbg !1737
  %1 = icmp eq i64 %0, 1, !dbg !1746
  br i1 %1, label %bb2, label %bb4, !dbg !1746

bb2:                                              ; preds = %start
  tail call fastcc void @_ZN4core4sync6atomic5fence17hdb34cbebe24ab619E(i8 2), !dbg !1747
  tail call fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb42a7db4c2b5d6d3E"(ptr nonnull align 8 %self), !dbg !1748
  br label %bb4, !dbg !1748

bb4:                                              ; preds = %start, %bb2
  ret void, !dbg !1750
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb42a7db4c2b5d6d3E"(ptr align 8 %self) unnamed_addr #6 !dbg !1751 {
start:
  %_x = alloca %"alloc::sync::Weak<std::thread::Packet<'_, ()>, &alloc::alloc::Global>", align 8
  %self1 = load ptr, ptr %self, align 8, !dbg !1752, !nonnull !33, !noundef !33
  %_3 = getelementptr inbounds %"alloc::sync::ArcInner<std::sync::mutex::Mutex<alloc::vec::Vec<u8>>>", ptr %self1, i64 0, i32 2, !dbg !1756
  tail call fastcc void @"_ZN4core3ptr77drop_in_place$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h0acb0d0335df0d72E"(ptr nonnull align 8 %_3), !dbg !1758
  %_5 = load ptr, ptr %self, align 8, !dbg !1759, !nonnull !33, !noundef !33
  %_6 = getelementptr i8, ptr %self, i64 8, !dbg !1760
  store ptr %_5, ptr %_x, align 8, !dbg !1761
  %0 = getelementptr inbounds i8, ptr %_x, i64 8, !dbg !1761
  store ptr %_6, ptr %0, align 8, !dbg !1761
  call fastcc void @"_ZN4core3ptr129drop_in_place$LT$alloc..sync..Weak$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h917789b5e4c75f54E"(ptr nonnull align 8 %_x), !dbg !1762
  ret void, !dbg !1766
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr77drop_in_place$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h0acb0d0335df0d72E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 !dbg !1767 {
start:
  %0 = getelementptr inbounds %"std::sync::mutex::Mutex<alloc::vec::Vec<u8>>", ptr %_1, i64 0, i32 3, !dbg !1768
  tail call fastcc void @"_ZN4core3ptr76drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hde633b482e84e171E"(ptr nonnull align 8 %0), !dbg !1768
  ret void, !dbg !1768
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr129drop_in_place$LT$alloc..sync..Weak$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h917789b5e4c75f54E"(ptr nocapture readonly align 8 %_1) unnamed_addr #12 !dbg !1769 {
start:
  tail call fastcc void @"_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fb8e7b5ce589200E"(ptr align 8 %_1), !dbg !1770
  ret void, !dbg !1770
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fb8e7b5ce589200E"(ptr nocapture readonly align 8 %self) unnamed_addr #12 !dbg !1771 {
start:
  %self1 = load ptr, ptr %self, align 8, !dbg !1772, !nonnull !33, !noundef !33
  %_15 = icmp eq ptr %self1, inttoptr (i64 -1 to ptr), !dbg !1777
  br i1 %_15, label %bb2, label %bb1, !dbg !1780

bb1:                                              ; preds = %start
  %_19 = getelementptr inbounds %"alloc::sync::ArcInner<std::sync::mutex::Mutex<alloc::vec::Vec<u8>>>", ptr %self1, i64 0, i32 1, !dbg !1782
  %0 = atomicrmw sub ptr %_19, i64 1 release, align 8, !dbg !1784
  %1 = icmp eq i64 %0, 1, !dbg !1794
  br i1 %1, label %bb3, label %bb8, !dbg !1794

bb2:                                              ; preds = %start
  br label %bb8, !dbg !1795

bb3:                                              ; preds = %bb1
  tail call fastcc void @_ZN4core4sync6atomic5fence17hdb34cbebe24ab619E(i8 2), !dbg !1796
  %_6 = getelementptr inbounds i8, ptr %self, i64 8, !dbg !1797
  %self3 = load ptr, ptr %self, align 8, !dbg !1799, !nonnull !33, !noundef !33
  tail call fastcc void @"_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h5d6f1a76fe05ba9aE"(ptr nonnull align 8 %_6, ptr nonnull %self3, i64 8, i64 48), !dbg !1797
  br label %bb8, !dbg !1800

bb8:                                              ; preds = %bb3, %bb1, %bb2
  ret void, !dbg !1795
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr76drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hde633b482e84e171E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 !dbg !1801 {
start:
  tail call fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfc35a56705acb343E"(ptr align 8 %_1), !dbg !1802
  ret void, !dbg !1802
}

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #27

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h891f85d5c57af587E(ptr nocapture readnone align 1 %self, i64 %0, i64 %1, i1 zeroext %zeroed) unnamed_addr #13 !dbg !1803 {
start:
  %2 = icmp eq i64 %1, 0, !dbg !1805
  br i1 %2, label %bb2, label %bb5, !dbg !1805

bb2:                                              ; preds = %start
  %ptr = inttoptr i64 %0 to ptr, !dbg !1806
  br label %bb8, !dbg !1815

bb8:                                              ; preds = %bb7, %bb6, %bb2
  %3 = phi i64 [ undef, %bb7 ], [ %1, %bb6 ], [ 0, %bb2 ], !dbg !1816
  %4 = phi ptr [ null, %bb7 ], [ %8, %bb6 ], [ %ptr, %bb2 ], !dbg !1816
  %5 = insertvalue { ptr, i64 } poison, ptr %4, 0, !dbg !1816
  %6 = insertvalue { ptr, i64 } %5, i64 %3, 1, !dbg !1816
  ret { ptr, i64 } %6, !dbg !1816

bb5:                                              ; preds = %start
  %7 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1, !dbg !1817
  %8 = tail call ptr @__rust_alloc(i64 %1, i64 %0) #32, !dbg !1828
  %9 = icmp eq ptr %8, null, !dbg !1829
  br i1 %9, label %bb7, label %bb6, !dbg !1829

bb6:                                              ; preds = %bb5
  br label %bb8, !dbg !1834

bb7:                                              ; preds = %bb5
  br label %bb8, !dbg !1816
}

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h085c72f91e671903E(i64, i64) unnamed_addr #28

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias ptr @__rust_alloc(i64, i64 allocalign) unnamed_addr #29

; Function Attrs: inlinehint mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h6b577a793cb4ade8E"(ptr nocapture writeonly sret(%"alloc::vec::Vec<u8>") align 8 %_0, ptr nocapture readonly align 8 %self, ptr nocapture readnone align 8 %0) unnamed_addr #30 !dbg !1835 {
start:
  tail call fastcc void @"_ZN5alloc6string104_$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..vec..Vec$LT$u8$GT$$GT$4from17he4850e0d9eb835e9E"(ptr sret(%"alloc::vec::Vec<u8>") align 8 %_0, ptr align 8 %self), !dbg !1839
  ret void, !dbg !1840
}

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h8f0bf65eb3f4aa75E(i8, ptr align 1, i64) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, i64 } @_ZN4core5slice6memchr12memchr_naive17h70f456fdae6ed15fE(i8 %x, ptr nocapture readonly align 1 %text.0, i64 %text.1) unnamed_addr #5 !dbg !1841 {
start:
  %_43.not = icmp eq i64 %text.1, 0, !dbg !1842
  br i1 %_43.not, label %bb7, label %bb2, !dbg !1842

bb2:                                              ; preds = %start, %bb5
  %i.04 = phi i64 [ %4, %bb5 ], [ 0, %start ]
  %0 = tail call i1 @llvm.expect.i1(i1 true, i1 true), !dbg !1844
  br i1 %0, label %bb3, label %panic, !dbg !1844

bb7:                                              ; preds = %start, %bb5, %bb4
  %1 = phi i64 [ %i.04, %bb4 ], [ undef, %bb5 ], [ undef, %start ], !dbg !1845
  %storemerge = phi i64 [ 1, %bb4 ], [ 0, %bb5 ], [ 0, %start ], !dbg !1846
  %2 = insertvalue { i64, i64 } poison, i64 %storemerge, 0, !dbg !1845
  %3 = insertvalue { i64, i64 } %2, i64 %1, 1, !dbg !1845
  ret { i64, i64 } %3, !dbg !1845

bb3:                                              ; preds = %bb2
  %scevgep = getelementptr i8, ptr %text.0, i64 %i.04, !dbg !1844
  %_8 = load i8, ptr %scevgep, align 1, !dbg !1844, !noundef !33
  %_7 = icmp eq i8 %_8, 0, !dbg !1844
  br i1 %_7, label %bb4, label %bb5, !dbg !1844

panic:                                            ; preds = %bb2
  tail call void @_ZN4core9panicking18panic_bounds_check17hcaba71f5f538ebe0E(i64 %i.04, i64 %text.1, ptr nonnull align 8 @alloc_65452916cca6d97cc375fac7cb56cd3a) #33, !dbg !1844
  unreachable, !dbg !1844

bb5:                                              ; preds = %bb3
  %4 = add nuw i64 %i.04, 1, !dbg !1847
  %exitcond.not = icmp eq i64 %4, %text.1, !dbg !1842
  br i1 %exitcond.not, label %bb7, label %bb2, !dbg !1842

bb4:                                              ; preds = %bb3
  br label %bb7, !dbg !1845
}

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_ZN5alloc3ffi5c_str7CString19_from_vec_unchecked17haed2596d76a1241bE(ptr align 8) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #31

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17hcaba71f5f538ebe0E(i64, i64, ptr align 8) unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZN5alloc6string104_$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..vec..Vec$LT$u8$GT$$GT$4from17he4850e0d9eb835e9E"(ptr nocapture writeonly sret(%"alloc::vec::Vec<u8>") align 8 %_0, ptr nocapture readonly align 8 %string) unnamed_addr #24 !dbg !1848 {
start:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %string, i64 24, i1 false), !dbg !1852
  ret void, !dbg !1857
}

; Function Attrs: nonlazybind uwtable
declare i64 @_ZN3std10sys_common6thread9min_stack17h4877004752fad623E() unnamed_addr #3

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN3std6thread7Builder15spawn_unchecked17hf8f20c27512da4bfE(ptr nocapture writeonly sret(%"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>") align 8 %_0, ptr nocapture readonly align 8 %self) unnamed_addr #3 !dbg !1858 {
start:
  %v = alloca %"std::thread::JoinInner<'_, ()>", align 8
  %val = alloca %"std::thread::JoinInner<'_, ()>", align 8
  %self1 = alloca %"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>", align 8
  %_4 = alloca %"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>", align 8
  %_3 = alloca %"std::thread::JoinHandle<()>", align 8
  call fastcc void @_ZN3std6thread7Builder16spawn_unchecked_17he5bd980f25619d8eE(ptr nonnull sret(%"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>") align 8 %self1, ptr align 8 %self, ptr null), !dbg !1859
  %0 = load ptr, ptr %self1, align 8, !dbg !1861, !noundef !33
  %.not = icmp eq ptr %0, null, !dbg !1861
  br i1 %.not, label %bb5.thread, label %bb5, !dbg !1865

bb5.thread:                                       ; preds = %start
  %1 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", ptr %self1, i64 0, i32 1, !dbg !1866
  %e = load ptr, ptr %1, align 8, !dbg !1866, !nonnull !33, !noundef !33
  %2 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", ptr %_4, i64 0, i32 1, !dbg !1867
  store ptr %e, ptr %2, align 8, !dbg !1867
  store ptr null, ptr %_4, align 8, !dbg !1867
  br label %bb3, !dbg !1864

bb5:                                              ; preds = %start
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %v, ptr noundef nonnull align 8 dereferenceable(24) %self1, i64 24, i1 false), !dbg !1869
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_4, ptr noundef nonnull align 8 dereferenceable(24) %v, i64 24, i1 false), !dbg !1870
  %.pr = load ptr, ptr %_4, align 8, !dbg !1864
  %.not1 = icmp eq ptr %.pr, null, !dbg !1864
  br i1 %.not1, label %bb5.bb3_crit_edge, label %bb2, !dbg !1864

bb5.bb3_crit_edge:                                ; preds = %bb5
  %.phi.trans.insert = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", ptr %_4, i64 0, i32 1
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !dbg !1872
  br label %bb3, !dbg !1864

bb2:                                              ; preds = %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %val, ptr noundef nonnull align 8 dereferenceable(24) %_4, i64 24, i1 false), !dbg !1864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_3, ptr noundef nonnull align 8 dereferenceable(24) %val, i64 24, i1 false), !dbg !1873
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %_3, i64 24, i1 false), !dbg !1874
  br label %bb4, !dbg !1875

bb3:                                              ; preds = %bb5.bb3_crit_edge, %bb5.thread
  %3 = phi ptr [ %.pre, %bb5.bb3_crit_edge ], [ %e, %bb5.thread ], !dbg !1872
  %4 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", ptr %_0, i64 0, i32 1, !dbg !1876
  store ptr %3, ptr %4, align 8, !dbg !1876
  store ptr null, ptr %_0, align 8, !dbg !1876
  br label %bb4, !dbg !1875

bb4:                                              ; preds = %bb3, %bb2
  ret void, !dbg !1883
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN3std6thread7Builder16spawn_unchecked_17he5bd980f25619d8eE(ptr nocapture writeonly sret(%"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>") align 8 %_0, ptr nocapture readonly align 8 %self, ptr nocapture readnone %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !1884 {
start:
  %_64 = alloca %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", align 8
  %_57 = alloca %"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>", align 8
  %x = alloca %"alloc::string::String", align 8
  %self4 = alloca %"core::result::Result<usize, std::io::error::Error>", align 8
  %_36 = alloca %"std::thread::JoinInner<'_, ()>", align 8
  %_33 = alloca %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@CVE_2020_26235.rs:19:28: 19:30}, ()>::{closure#1}}", align 8
  %main = alloca %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@CVE_2020_26235.rs:19:28: 19:30}, ()>::{closure#1}}", align 8
  %_20 = alloca ptr, align 8
  %output_capture = alloca ptr, align 8
  %their_packet = alloca ptr, align 8
  %value = alloca %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>", align 8
  %_15 = alloca %"core::cell::UnsafeCell<core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>>", align 8
  %data = alloca %"std::thread::Packet<'_, ()>", align 8
  %my_packet = alloca ptr, align 8
  %their_thread = alloca ptr, align 8
  %self2 = alloca %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>", align 8
  %my_thread = alloca ptr, align 8
  %name = alloca %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>", align 8
  %scope_data = alloca ptr, align 8
  store ptr null, ptr %scope_data, align 8
  %1 = getelementptr inbounds %"std::thread::Builder", ptr %self, i64 0, i32 1, !dbg !1885
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %name, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !1885
  %2 = load i64, ptr %self, align 8, !dbg !1886, !range !279, !noundef !33
  %3 = icmp eq i64 %2, 0, !dbg !1887
  br i1 %3, label %bb34, label %bb35, !dbg !1887

bb34:                                             ; preds = %start
  %4 = invoke fastcc i64 @_ZN4core3ops8function6FnOnce9call_once17h3b69fafd37028148E()
          to label %bb36 unwind label %bb30, !dbg !1892

bb35:                                             ; preds = %start
  %5 = getelementptr inbounds i8, ptr %self, i64 8, !dbg !1886
  %6 = load i64, ptr %5, align 8, !dbg !1886
  br label %bb36, !dbg !1893

bb31.thread9:                                     ; preds = %bb39, %bb41, %bb38
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %8 = extractvalue { ptr, i32 } %lpad.thr_comm, 1
  br label %bb32, !dbg !1894

bb36:                                             ; preds = %bb34, %bb35
  %stack_size1.0 = phi i64 [ %6, %bb35 ], [ %4, %bb34 ], !dbg !1895
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %self2, ptr noundef nonnull align 8 dereferenceable(24) %name, i64 24, i1 false), !dbg !1896
  %9 = load i64, ptr %self2, align 8, !dbg !1898, !range !1140, !noundef !33
  %10 = icmp eq i64 %9, -9223372036854775808, !dbg !1898
  br i1 %10, label %bb37, label %bb38, !dbg !1902

bb37:                                             ; preds = %bb36
  br label %bb39, !dbg !1903

bb38:                                             ; preds = %bb36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %x, ptr noundef nonnull align 8 dereferenceable(24) %self2, i64 24, i1 false), !dbg !1904
  invoke fastcc void @"_ZN66_$LT$T$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17h60ba09f7e7bb4a46E"(ptr nonnull sret(%"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>") align 8 %_57, ptr nonnull align 8 %x)
          to label %bb41 unwind label %bb31.thread9, !dbg !1905

bb39:                                             ; preds = %bb40, %bb37
  %11 = phi i64 [ %_56.1, %bb40 ], [ undef, %bb37 ], !dbg !1913
  %12 = phi ptr [ %_56.0, %bb40 ], [ null, %bb37 ], !dbg !1913
  %13 = invoke ptr @_ZN3std6thread6Thread3new17h9286f061390b10b6E(ptr align 1 %12, i64 %11)
          to label %bb1 unwind label %bb31.thread9, !dbg !1913

bb41:                                             ; preds = %bb38
  %14 = invoke fastcc { ptr, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h851ebc17aa702cc2E"(ptr nonnull align 8 %_57, ptr nonnull align 1 @alloc_498705839b3ae85466bce6e7ebfe4996, i64 47, ptr nonnull align 8 @alloc_3c7ed5a01079e282fcc9eb5544b30333)
          to label %bb40 unwind label %bb31.thread9, !dbg !1908

bb40:                                             ; preds = %bb41
  %_56.0 = extractvalue { ptr, i64 } %14, 0, !dbg !1908
  %_56.1 = extractvalue { ptr, i64 } %14, 1, !dbg !1908
  br label %bb39, !dbg !1914

bb1:                                              ; preds = %bb39
  store ptr %13, ptr %my_thread, align 8, !dbg !1913
  %_61 = call fastcc ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3aa793fac49652eeE"(ptr nonnull align 8 %my_thread), !dbg !1915
  br label %bb42

bb18:                                             ; preds = %bb28, %bb29
  %15 = phi i32 [ %54, %bb28 ], [ %23, %bb29 ]
  %16 = phi ptr [ %55, %bb28 ], [ %22, %bb29 ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hf3442f0736498466E"(ptr nonnull align 8 %my_thread) #34
          to label %bb19 unwind label %terminate, !dbg !1923

bb42:                                             ; preds = %bb1
  store ptr %_61, ptr %their_thread, align 8, !dbg !1924
  store i64 0, ptr %value, align 8, !dbg !1925
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_15, ptr noundef nonnull align 8 dereferenceable(24) %value, i64 24, i1 false), !dbg !1927
  store ptr null, ptr %data, align 8, !dbg !1931
  %17 = getelementptr inbounds %"std::thread::Packet<'_, ()>", ptr %data, i64 0, i32 1, !dbg !1931
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %_15, i64 24, i1 false), !dbg !1931
  store i64 1, ptr %_64, align 8, !dbg !1932
  %18 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %_64, i64 0, i32 1, !dbg !1932
  store i64 1, ptr %18, align 8, !dbg !1932
  %19 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %_64, i64 0, i32 2, !dbg !1932
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %data, i64 32, i1 false), !dbg !1932
  %_4.i = invoke fastcc ptr @_ZN5alloc5alloc15exchange_malloc17h21f7745ba6eae1eaE(i64 48, i64 8)
          to label %bb43 unwind label %cleanup.i, !dbg !1936

cleanup.i:                                        ; preds = %bb42
  %20 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr85drop_in_place$LT$alloc..sync..ArcInner$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h40a9f5ebfdfc21edE"(ptr nonnull align 8 %_64) #34
          to label %bb29.thread unwind label %terminate.i, !dbg !1938

terminate.i:                                      ; preds = %cleanup.i
  %21 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #27, !dbg !1939
  unreachable, !dbg !1939

bb29:                                             ; preds = %bb17
  %22 = extractvalue { ptr, i32 } %.pn.pn, 0
  %23 = extractvalue { ptr, i32 } %.pn.pn, 1
  br i1 %.not2, label %bb18, label %bb28, !dbg !1940

bb29.thread:                                      ; preds = %cleanup.i
  %24 = extractvalue { ptr, i32 } %20, 1
  %25 = extractvalue { ptr, i32 } %20, 0
  br label %bb28, !dbg !1940

bb43:                                             ; preds = %bb42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %_4.i, ptr noundef nonnull align 8 dereferenceable(48) %_64, i64 48, i1 false), !dbg !1941
  store ptr %_4.i, ptr %my_packet, align 8, !dbg !1942
  %26 = call fastcc ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7644565280af90c9E"(ptr nonnull align 8 %my_packet), !dbg !1952
  br label %bb2

bb17:                                             ; preds = %bb22, %bb23.thread, %bb23, %bb26
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb26 ], [ %38, %bb23 ], [ %36, %bb23.thread ], [ %52, %bb22 ]
  %.not2 = phi i1 [ false, %bb26 ], [ true, %bb23 ], [ true, %bb23.thread ], [ true, %bb22 ], !dbg !1954
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h227a9b2252fd1403E"(ptr nonnull align 8 %my_packet) #34
          to label %bb29 unwind label %terminate, !dbg !1955

bb2:                                              ; preds = %bb43
  store ptr %26, ptr %their_packet, align 8, !dbg !1952
  %27 = invoke ptr @_ZN3std2io5stdio18set_output_capture17h47fa7577e7da3004E(ptr null)
          to label %bb3 unwind label %bb27.thread, !dbg !1956

bb27:                                             ; preds = %bb24
  br label %bb26

bb27.thread:                                      ; preds = %bb2
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %bb26, !dbg !1958

bb3:                                              ; preds = %bb2
  store ptr %27, ptr %output_capture, align 8, !dbg !1956
  %29 = icmp eq ptr %27, null, !dbg !1959
  br i1 %29, label %bb44, label %bb46, !dbg !1964

bb46:                                             ; preds = %bb3
  %_76 = call fastcc ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8be9ec22d8ecf029E"(ptr nonnull align 8 %output_capture), !dbg !1965
  br label %bb44

bb44:                                             ; preds = %bb46, %bb3
  %_21.0 = phi ptr [ null, %bb3 ], [ %_76, %bb46 ], !dbg !1967
  %30 = invoke ptr @_ZN3std2io5stdio18set_output_capture17h47fa7577e7da3004E(ptr %_21.0)
          to label %bb4 unwind label %bb24, !dbg !1968

bb4:                                              ; preds = %bb44
  store ptr %30, ptr %_20, align 8, !dbg !1968
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17h4a374c67cd6dfb28E"(ptr nonnull align 8 %_20)
          to label %bb5 unwind label %bb24, !dbg !1969

bb5:                                              ; preds = %bb4
  store ptr %_61, ptr %main, align 8, !dbg !1970
  %31 = load ptr, ptr %output_capture, align 8, !dbg !1970, !noundef !33
  %32 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@CVE_2020_26235.rs:19:28: 19:30}, ()>::{closure#1}}", ptr %main, i64 0, i32 2, !dbg !1970
  store ptr %31, ptr %32, align 8, !dbg !1970
  %33 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@CVE_2020_26235.rs:19:28: 19:30}, ()>::{closure#1}}", ptr %main, i64 0, i32 1, !dbg !1970
  store ptr %26, ptr %33, align 8, !dbg !1970
  %self13 = load ptr, ptr %my_packet, align 8, !dbg !1972, !nonnull !33, !noundef !33
  %34 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %self13, i64 0, i32 2, !dbg !1986
  %35 = load ptr, ptr %34, align 8, !dbg !1986, !noundef !33
  %.not5 = icmp eq ptr %35, null, !dbg !1986
  br i1 %.not5, label %bb8, label %bb6, !dbg !1986

bb6:                                              ; preds = %bb5
  %_30 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::scoped::ScopeData>", ptr %35, i64 0, i32 2, !dbg !1987
  invoke void @_ZN3std6thread6scoped9ScopeData29increment_num_running_threads17hb8778178a2b2dcd2E(ptr nonnull align 8 %_30)
          to label %bb8 unwind label %bb22, !dbg !1987

bb8:                                              ; preds = %bb6, %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_33, ptr noundef nonnull align 8 dereferenceable(24) %main, i64 24, i1 false), !dbg !1988
  %_4.i25 = invoke fastcc ptr @_ZN5alloc5alloc15exchange_malloc17h21f7745ba6eae1eaE(i64 24, i64 8)
          to label %bb9 unwind label %cleanup.i26, !dbg !1989

cleanup.i26:                                      ; preds = %bb8
  %36 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr156drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$CVE_2020_26235..main..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h82aff6e68105d0fdE"(ptr nonnull align 8 %_33) #34
          to label %bb23.thread unwind label %terminate.i27, !dbg !1993

terminate.i27:                                    ; preds = %cleanup.i26
  %37 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #27, !dbg !1994
  unreachable, !dbg !1994

bb23.thread:                                      ; preds = %cleanup.i26
  br label %bb17, !dbg !1995

bb23:                                             ; preds = %bb9
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %bb17, !dbg !1995

bb9:                                              ; preds = %bb8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_4.i25, ptr noundef nonnull align 8 dereferenceable(24) %_33, i64 24, i1 false), !dbg !1996
  br label %bb10
  ; invoke void @_ZN3std3sys3pal4unix6thread6Thread3new17h25822420d6359794E(ptr nonnull sret(%"core::result::Result<usize, std::io::error::Error>") align 8 %self4, i64 %stack_size1.0, ptr nonnull align 1 %_4.i25, ptr nonnull align 8 @vtable.3)
          ; to label %bb10 unwind label %bb23, !dbg !1997

bb10:                                             ; preds = %bb9
  %_109 = load i64, ptr %self4, align 8, !dbg !2001, !range !279, !noundef !33
  %39 = icmp eq i64 %_109, 0, !dbg !2004
  br i1 %39, label %bb11, label %bb12, !dbg !2004

bb11:                                             ; preds = %bb10
  %40 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Ok", ptr %self4, i64 0, i32 1, !dbg !2005
  %v = load i64, ptr %40, align 8, !dbg !2005, !noundef !33
  %_43 = load ptr, ptr %my_thread, align 8, !dbg !2006, !nonnull !33, !noundef !33
  %_44 = load ptr, ptr %my_packet, align 8, !dbg !2007, !nonnull !33, !noundef !33
  %41 = getelementptr inbounds %"std::thread::JoinInner<'_, ()>", ptr %_36, i64 0, i32 2, !dbg !2008
  store i64 %v, ptr %41, align 8, !dbg !2008
  store ptr %_43, ptr %_36, align 8, !dbg !2008
  %42 = getelementptr inbounds %"std::thread::JoinInner<'_, ()>", ptr %_36, i64 0, i32 1, !dbg !2008
  store ptr %_44, ptr %42, align 8, !dbg !2008
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %_36, i64 24, i1 false), !dbg !2009
  br label %bb15, !dbg !1894

bb12:                                             ; preds = %bb10
  %43 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", ptr %self4, i64 0, i32 1, !dbg !2010
  %e = load ptr, ptr %43, align 8, !dbg !2010, !nonnull !33, !noundef !33
  %44 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", ptr %_0, i64 0, i32 1, !dbg !2011
  store ptr %e, ptr %44, align 8, !dbg !2011
  store ptr null, ptr %_0, align 8, !dbg !2011
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h227a9b2252fd1403E"(ptr nonnull align 8 %my_packet)
          to label %bb13 unwind label %bb16, !dbg !1955

bb15:                                             ; preds = %bb13, %bb11
  ret void, !dbg !2018

bb16:                                             ; preds = %bb12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = extractvalue { ptr, i32 } %45, 0
  %47 = extractvalue { ptr, i32 } %45, 1
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hf3442f0736498466E"(ptr nonnull align 8 %my_thread) #34
          to label %bb21 unwind label %terminate, !dbg !1923

bb13:                                             ; preds = %bb12
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hf3442f0736498466E"(ptr nonnull align 8 %my_thread)
          to label %bb15 unwind label %cleanup24, !dbg !1923

bb19:                                             ; preds = %bb18
  br label %bb21, !dbg !1894

cleanup24:                                        ; preds = %bb13
  %48 = landingpad { ptr, i32 }
          cleanup
  %49 = extractvalue { ptr, i32 } %48, 0
  %50 = extractvalue { ptr, i32 } %48, 1
  br label %bb21

terminate:                                        ; preds = %bb32, %bb30, %bb28, %bb26, %bb24, %bb22, %bb16, %bb17, %bb18
  %51 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #27, !dbg !2019
  unreachable, !dbg !2019

bb22:                                             ; preds = %bb6
  %52 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr156drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$CVE_2020_26235..main..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h82aff6e68105d0fdE"(ptr nonnull align 8 %main) #34
          to label %bb17 unwind label %terminate, !dbg !1995

bb24:                                             ; preds = %bb4, %bb44
  %53 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17h4a374c67cd6dfb28E"(ptr nonnull align 8 %output_capture) #34
          to label %bb27 unwind label %terminate, !dbg !2020

bb26:                                             ; preds = %bb27, %bb27.thread
  %.pn = phi { ptr, i32 } [ %53, %bb27 ], [ %28, %bb27.thread ]
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h227a9b2252fd1403E"(ptr nonnull align 8 %their_packet) #34
          to label %bb17 unwind label %terminate, !dbg !1958

bb28:                                             ; preds = %bb29.thread, %bb29
  %54 = phi i32 [ %24, %bb29.thread ], [ %23, %bb29 ]
  %55 = phi ptr [ %25, %bb29.thread ], [ %22, %bb29 ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hf3442f0736498466E"(ptr nonnull align 8 %their_thread) #34
          to label %bb18 unwind label %terminate, !dbg !1940

bb30:                                             ; preds = %bb34
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %56 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %57 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 1
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h5b8d6a2828f29de2E"(ptr nonnull align 8 %name) #34
          to label %bb32 unwind label %terminate, !dbg !1894

bb32:                                             ; preds = %bb31.thread9, %bb30
  %58 = phi i32 [ %8, %bb31.thread9 ], [ %57, %bb30 ]
  %59 = phi ptr [ %7, %bb31.thread9 ], [ %56, %bb30 ]
  invoke fastcc void @"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17hc230ee2b1e444aaeE"(ptr nonnull align 8 %scope_data) #34
          to label %bb21 unwind label %terminate, !dbg !1894

bb21:                                             ; preds = %bb19, %bb32, %cleanup24, %bb16
  %60 = phi i32 [ %15, %bb19 ], [ %58, %bb32 ], [ %50, %cleanup24 ], [ %47, %bb16 ], !dbg !2019
  %61 = phi ptr [ %16, %bb19 ], [ %59, %bb32 ], [ %49, %cleanup24 ], [ %46, %bb16 ], !dbg !2019
  %62 = insertvalue { ptr, i32 } poison, ptr %61, 0, !dbg !2019
  %63 = insertvalue { ptr, i32 } %62, i32 %60, 1, !dbg !2019
  resume { ptr, i32 } %63, !dbg !2019
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr156drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$CVE_2020_26235..main..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h82aff6e68105d0fdE"(ptr align 8 %_1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !2021 {
start:
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hf3442f0736498466E"(ptr align 8 %_1)
          to label %bb8 unwind label %bb5, !dbg !2022

bb5:                                              ; preds = %start
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@CVE_2020_26235.rs:19:28: 19:30}, ()>::{closure#1}}", ptr %_1, i64 0, i32 2, !dbg !2022
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17h4a374c67cd6dfb28E"(ptr nonnull align 8 %1) #34
          to label %bb4 unwind label %terminate, !dbg !2022

bb8:                                              ; preds = %start
  %2 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@CVE_2020_26235.rs:19:28: 19:30}, ()>::{closure#1}}", ptr %_1, i64 0, i32 2, !dbg !2022
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17h4a374c67cd6dfb28E"(ptr nonnull align 8 %2)
          to label %bb7 unwind label %cleanup1, !dbg !2022

bb4:                                              ; preds = %cleanup1, %bb5
  %.pn = phi { ptr, i32 } [ %4, %cleanup1 ], [ %0, %bb5 ]
  %3 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@CVE_2020_26235.rs:19:28: 19:30}, ()>::{closure#1}}", ptr %_1, i64 0, i32 3, !dbg !2022
  br label %bb3

cleanup1:                                         ; preds = %bb8
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb4

bb7:                                              ; preds = %bb8
  %5 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@CVE_2020_26235.rs:19:28: 19:30}, ()>::{closure#1}}", ptr %_1, i64 0, i32 3, !dbg !2022
  br label %bb6

bb3:                                              ; preds = %bb4
  %6 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@CVE_2020_26235.rs:19:28: 19:30}, ()>::{closure#1}}", ptr %_1, i64 0, i32 1, !dbg !2022
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h227a9b2252fd1403E"(ptr nonnull align 8 %6) #34
          to label %bb1 unwind label %terminate, !dbg !2022

bb6:                                              ; preds = %bb7
  %7 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@CVE_2020_26235.rs:19:28: 19:30}, ()>::{closure#1}}", ptr %_1, i64 0, i32 1, !dbg !2022
  tail call fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h227a9b2252fd1403E"(ptr nonnull align 8 %7), !dbg !2022
  ret void, !dbg !2022

terminate:                                        ; preds = %bb3, %bb5
  %8 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  tail call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #27, !dbg !2022
  unreachable, !dbg !2022

bb1:                                              ; preds = %bb3
  resume { ptr, i32 } %.pn, !dbg !2022
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hfa7a3cc30f613067E"(ptr %_1) unnamed_addr #5 !dbg !2023 {
start:
  tail call fastcc void @"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17h147e04594c638b70E"(ptr align 8 %_1), !dbg !2024
  ret void, !dbg !2024
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17h147e04594c638b70E"(ptr align 8 %_1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !2025 {
start:
  %_x = alloca ptr, align 8
  %_17 = alloca %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>", align 8
  %_12 = alloca %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>", align 8
  %_7 = alloca ptr, align 8
  %0 = invoke { ptr, i64 } @_ZN3std6thread6Thread5cname17he8eff7cc14160c1eE(ptr align 8 %_1)
          to label %bb1 unwind label %bb20.thread, !dbg !2026

bb20:                                             ; preds = %bb5
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb19

bb20.thread:                                      ; preds = %start, %bb2, %bb3, %bb4
  %_26.1 = phi i1 [ false, %bb4 ], [ false, %bb3 ], [ true, %bb2 ], [ true, %start ], !dbg !2028
  %1 = landingpad { ptr, i32 }
          cleanup
  br label %bb19, !dbg !2029

bb1:                                              ; preds = %start
  %2 = extractvalue { ptr, i64 } %0, 0, !dbg !2026
  %.not2 = icmp eq ptr %2, null, !dbg !2030
  br i1 %.not2, label %bb3, label %bb2, !dbg !2030

bb2:                                              ; preds = %bb1
  %3 = extractvalue { ptr, i64 } %0, 1, !dbg !2026
  invoke void @_ZN3std3sys3pal4unix6thread6Thread8set_name17h76dc80adfde750b1E(ptr nonnull align 1 %2, i64 %3)
          to label %bb3 unwind label %bb20.thread, !dbg !2031

bb3:                                              ; preds = %bb2, %bb1
  %4 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@CVE_2020_26235.rs:19:28: 19:30}, ()>::{closure#1}}", ptr %_1, i64 0, i32 2, !dbg !2032
  %_8 = load ptr, ptr %4, align 8, !dbg !2032, !noundef !33
  %5 = invoke ptr @_ZN3std2io5stdio18set_output_capture17h47fa7577e7da3004E(ptr %_8)
          to label %bb4 unwind label %bb20.thread, !dbg !2033

bb4:                                              ; preds = %bb3
  store ptr %5, ptr %_7, align 8, !dbg !2033
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17h4a374c67cd6dfb28E"(ptr nonnull align 8 %_7)
          to label %bb5 unwind label %bb20.thread, !dbg !2034

bb5:                                              ; preds = %bb4
  invoke void @_ZN3std3sys3pal4unix6thread5guard7current17ha2bb65882033f000E(ptr nonnull sret(%"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>") align 8 %_12)
          to label %bb6 unwind label %bb20, !dbg !2035

bb12:                                             ; preds = %bb7, %bb8
  %_23.2.ph = phi i8 [ 1, %bb7 ], [ 0, %bb8 ]
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb13, !dbg !2029

bb6:                                              ; preds = %bb5
  %_13 = load ptr, ptr %_1, align 8, !dbg !2038, !nonnull !33, !noundef !33
  invoke void @_ZN3std10sys_common11thread_info3set17h2c664b76c70cf208E(ptr nonnull align 8 %_12, ptr nonnull %_13)
          to label %bb7 unwind label %bb13.thread, !dbg !2039

bb13.thread:                                      ; preds = %bb6
  %lpad.thr_comm41 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %lpad.thr_comm41, 0
  %7 = extractvalue { ptr, i32 } %lpad.thr_comm41, 1
  br label %bb14, !dbg !2029

bb7:                                              ; preds = %bb6
  %8 = invoke fastcc { ptr, ptr } @_ZN3std9panicking3try17h7ab4e93257365d22E()
          to label %bb22 unwind label %bb12, !dbg !2040

bb22:                                             ; preds = %bb7
  %try_result.0 = extractvalue { ptr, ptr } %8, 0, !dbg !2040
  %try_result.1 = extractvalue { ptr, ptr } %8, 1, !dbg !2040
  %9 = getelementptr inbounds %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>::Some", ptr %_17, i64 0, i32 1, !dbg !2045
  store ptr %try_result.0, ptr %9, align 8, !dbg !2045
  %10 = getelementptr inbounds %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>::Some", ptr %_17, i64 0, i32 1, i32 1, !dbg !2045
  store ptr %try_result.1, ptr %10, align 8, !dbg !2045
  store i64 1, ptr %_17, align 8, !dbg !2045
  %11 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@CVE_2020_26235.rs:19:28: 19:30}, ()>::{closure#1}}", ptr %_1, i64 0, i32 1, !dbg !2048
  %self4 = load ptr, ptr %11, align 8, !dbg !2048, !nonnull !33, !noundef !33
  %_40 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %self4, i64 0, i32 2, i32 1, !dbg !2060
  invoke fastcc void @"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17h7836c66a3cefedddE"(ptr nonnull align 8 %_40)
          to label %bb8 unwind label %bb13.thread45, !dbg !2064

bb13.thread45:                                    ; preds = %bb22
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = extractvalue { ptr, i32 } %12, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_40, ptr noundef nonnull align 8 dereferenceable(24) %_17, i64 24, i1 false), !dbg !2064
  br label %bb14, !dbg !2029

bb8:                                              ; preds = %bb22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_40, ptr noundef nonnull align 8 dereferenceable(24) %_17, i64 24, i1 false), !dbg !2064
  %15 = load ptr, ptr %11, align 8, !dbg !2065, !nonnull !33, !noundef !33
  store ptr %15, ptr %_x, align 8, !dbg !2065
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h227a9b2252fd1403E"(ptr nonnull align 8 %_x)
          to label %bb23 unwind label %bb12, !dbg !2066

bb23:                                             ; preds = %bb8
  ret void, !dbg !2070

bb17:                                             ; preds = %bb19
  br i1 %_26.012, label %bb18, label %bb15, !dbg !2029

bb19:                                             ; preds = %bb20, %bb20.thread
  %.pn = phi { ptr, i32 } [ %1, %bb20.thread ], [ %lpad.thr_comm, %bb20 ]
  %_26.012 = phi i1 [ %_26.1, %bb20.thread ], [ false, %bb20 ]
  %_25.010 = phi i1 [ true, %bb20.thread ], [ false, %bb20 ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hf3442f0736498466E"(ptr align 8 %_1) #34
          to label %bb17 unwind label %terminate, !dbg !2029

terminate:                                        ; preds = %bb14, %bb18, %bb19
  %16 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #27, !dbg !2071
  unreachable, !dbg !2071

bb15:                                             ; preds = %bb18, %bb17
  br i1 %_25.010, label %bb16, label %bb13, !dbg !2029

bb18:                                             ; preds = %bb17
  %17 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@CVE_2020_26235.rs:19:28: 19:30}, ()>::{closure#1}}", ptr %_1, i64 0, i32 2, !dbg !2029
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17h4a374c67cd6dfb28E"(ptr nonnull align 8 %17) #34
          to label %bb15 unwind label %terminate, !dbg !2029

bb13:                                             ; preds = %bb16, %bb12, %bb15
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb16 ], [ %.pn, %bb15 ], [ %lpad.thr_comm.split-lp, %bb12 ]
  %_23.092831 = phi i8 [ 1, %bb16 ], [ 1, %bb15 ], [ %_23.2.ph, %bb12 ]
  %18 = extractvalue { ptr, i32 } %.pn.pn, 0
  %19 = extractvalue { ptr, i32 } %.pn.pn, 1
  %20 = and i8 %_23.092831, 1, !dbg !2029
  %.not1 = icmp eq i8 %20, 0, !dbg !2029
  br i1 %.not1, label %bb10, label %bb14, !dbg !2029

bb16:                                             ; preds = %bb15
  %21 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@CVE_2020_26235.rs:19:28: 19:30}, ()>::{closure#1}}", ptr %_1, i64 0, i32 3, !dbg !2029
  br label %bb13

bb10:                                             ; preds = %bb14, %bb13
  %22 = phi i32 [ %26, %bb14 ], [ %19, %bb13 ], !dbg !2071
  %23 = phi ptr [ %27, %bb14 ], [ %18, %bb13 ], !dbg !2071
  %24 = insertvalue { ptr, i32 } poison, ptr %23, 0, !dbg !2071
  %25 = insertvalue { ptr, i32 } %24, i32 %22, 1, !dbg !2071
  resume { ptr, i32 } %25, !dbg !2071

bb14:                                             ; preds = %bb13.thread45, %bb13.thread, %bb13
  %26 = phi i32 [ %14, %bb13.thread45 ], [ %7, %bb13.thread ], [ %19, %bb13 ]
  %27 = phi ptr [ %13, %bb13.thread45 ], [ %6, %bb13.thread ], [ %18, %bb13 ]
  %28 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@CVE_2020_26235.rs:19:28: 19:30}, ()>::{closure#1}}", ptr %_1, i64 0, i32 1, !dbg !2029
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h227a9b2252fd1403E"(ptr nonnull align 8 %28) #34
          to label %bb10 unwind label %terminate, !dbg !2029
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_ZN3std9panicking3try17h7ab4e93257365d22E() unnamed_addr #3 !dbg !2072 {
start:
  %data = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %0 = call fastcc i32 @__rust_try(ptr nonnull @_ZN3std9panicking3try7do_call17h6b944bbd59d22d42E, ptr nonnull %data, ptr nonnull @_ZN3std9panicking3try8do_catch17haef4d649ad8ab040E), !dbg !2073, !range !394
  %1 = icmp eq i32 %0, 0, !dbg !2073
  br i1 %1, label %bb2, label %bb3, !dbg !2073

bb2:                                              ; preds = %start
  br label %bb4, !dbg !2077

bb3:                                              ; preds = %start
  %slot.0 = load ptr, ptr %data, align 8, !dbg !2078, !nonnull !33, !align !261, !noundef !33
  %2 = getelementptr inbounds i8, ptr %data, i64 8, !dbg !2078
  %slot.1 = load ptr, ptr %2, align 8, !dbg !2078, !nonnull !33, !align !148, !noundef !33
  br label %bb4, !dbg !2077

bb4:                                              ; preds = %bb3, %bb2
  %3 = phi ptr [ %slot.1, %bb3 ], [ undef, %bb2 ], !dbg !2079
  %4 = phi ptr [ %slot.0, %bb3 ], [ null, %bb2 ], !dbg !2079
  %5 = insertvalue { ptr, ptr } poison, ptr %4, 0, !dbg !2079
  %6 = insertvalue { ptr, ptr } %5, ptr %3, 1, !dbg !2079
  ret { ptr, ptr } %6, !dbg !2079
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN3std9panicking3try7do_call17h6b944bbd59d22d42E(ptr nocapture readnone %data) unnamed_addr #5 !dbg !2080 {
start:
  tail call fastcc void @"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h414827d17fa90cf3E"(), !dbg !2081
  ret void, !dbg !2086
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_ZN3std9panicking3try8do_catch17haef4d649ad8ab040E(ptr nocapture writeonly %data, ptr %payload) unnamed_addr #13 personality ptr @rust_eh_personality !dbg !2087 {
start:
  %0 = invoke { ptr, ptr } @_ZN3std9panicking3try7cleanup17h6d4e570bbe25440aE(ptr %payload)
          to label %bb1 unwind label %terminate, !dbg !2088

terminate:                                        ; preds = %start
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  tail call void @_ZN4core9panicking19panic_cannot_unwind17hfa9f734a74de1f5aE() #27, !dbg !2092
  unreachable, !dbg !2092

bb1:                                              ; preds = %start
  %obj.0 = extractvalue { ptr, ptr } %0, 0, !dbg !2088
  %obj.1 = extractvalue { ptr, ptr } %0, 1, !dbg !2088
  store ptr %obj.0, ptr %data, align 8, !dbg !2093
  %2 = getelementptr inbounds i8, ptr %data, i64 8, !dbg !2093
  store ptr %obj.1, ptr %2, align 8, !dbg !2093
  ret void, !dbg !2095
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h414827d17fa90cf3E"() unnamed_addr #5 !dbg !2096 {
start:
  tail call fastcc void @"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hc592a3a30b32cb86E"(), !dbg !2097
  ret void, !dbg !2098
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hc592a3a30b32cb86E"() unnamed_addr #5 !dbg !2099 {
start:
  tail call fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hce9d03d17988b0d2E(), !dbg !2100
  ret void, !dbg !2101
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hce9d03d17988b0d2E() unnamed_addr #6 !dbg !2102 {
start:
  tail call fastcc void @"_ZN14CVE_2020_262354main28_$u7b$$u7b$closure$u7d$$u7d$17h96d9432bcfd061e0E"(), !dbg !2103
  tail call void asm sideeffect "", "~{memory}"() #32, !dbg !2104, !srcloc !76
  ret void, !dbg !2109
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN14CVE_2020_262354main28_$u7b$$u7b$closure$u7d$$u7d$17h96d9432bcfd061e0E"() unnamed_addr #5 !dbg !2110 {
start:
  %tz_ptr = tail call ptr @get_tz(), !dbg !2111
  %0 = tail call fastcc { ptr, i64 } @_ZN4core3ffi5c_str4CStr8from_ptr17hb2d8f0b8dd7ec914E(ptr %tz_ptr), !dbg !2113
  ret void, !dbg !2115
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_ZN4core3ffi5c_str4CStr8from_ptr17hb2d8f0b8dd7ec914E(ptr %ptr) unnamed_addr #5 !dbg !2116 {
start:
  %len = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %ptr), !dbg !2121
  %len1 = add i64 %len, 1, !dbg !2132
  %0 = insertvalue { ptr, i64 } poison, ptr %ptr, 0, !dbg !2135
  %1 = insertvalue { ptr, i64 } %0, i64 %len1, 1, !dbg !2135
  ret { ptr, i64 } %1, !dbg !2135
}

; Function Attrs: nonlazybind uwtable
declare i64 @strlen(ptr) unnamed_addr #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nonlazybind "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint mustprogress nofree norecurse nounwind nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { inlinehint mustprogress nofree nosync nonlazybind willreturn memory(argmem: write, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { inlinehint mustprogress nofree nosync nounwind nonlazybind willreturn memory(inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { inlinehint mustprogress nofree nosync nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { mustprogress nofree norecurse nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { inlinehint mustprogress nofree norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { cold noreturn nounwind }
attributes #28 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { inlinehint mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #32 = { nounwind }
attributes #33 = { noreturn }
attributes #34 = { cold }

!llvm.dbg.cu = !{!7, !9}
!llvm.ident = !{!11, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 4, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "CVE_2020_26235.c", directory: "/mnt/c/Users/froze/Desktop/concurrent-cpg-cxx/files", checksumkind: CSK_MD5, checksum: "9092873ff4973ef12ae09f07675b7efb")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 3)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 17.0.6 (++20231209124227+6009708b4367-1~exp1~20231209124336.77)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !8, splitDebugInlining: false, nameTableKind: None)
!8 = !{!0}
!9 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !10, producer: "clang LLVM (rustc version 1.77.0-nightly (11f32b73e 2024-01-31))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "CVE_2020_26235.rs/@/CVE_2020_26235.8e64f0980541d5b4-cgu.0", directory: "/mnt/c/Users/froze/Desktop/concurrent-cpg-cxx/files")
!11 = !{!"Ubuntu clang version 17.0.6 (++20231209124227+6009708b4367-1~exp1~20231209124336.77)"}
!12 = !{!"rustc version 1.77.0-nightly (11f32b73e 2024-01-31)"}
!13 = !{i32 7, !"Dwarf Version", i32 5}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{i32 8, !"PIC Level", i32 2}
!17 = !{i32 7, !"PIE Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 2}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{i32 2, !"RtLibUseGOT", i32 1}
!21 = distinct !DISubprogram(name: "get_tz", scope: !2, file: !2, line: 3, type: !22, scopeLine: 3, spFlags: DISPFlagDefinition, unit: !7)
!22 = !DISubroutineType(types: !23)
!23 = !{!24}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!25 = !DILocation(line: 4, column: 12, scope: !21)
!26 = !DILocation(line: 4, column: 5, scope: !21)
!27 = distinct !DISubprogram(name: "set_tz", scope: !2, file: !2, line: 7, type: !28, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !33)
!28 = !DISubroutineType(types: !29)
!29 = !{!30, !31}
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!33 = !{}
!34 = !DILocalVariable(name: "val", arg: 1, scope: !27, file: !2, line: 7, type: !31)
!35 = !DILocation(line: 7, column: 24, scope: !27)
!36 = !DILocation(line: 8, column: 25, scope: !27)
!37 = !DILocation(line: 8, column: 12, scope: !27)
!38 = !DILocation(line: 8, column: 5, scope: !27)
!39 = distinct !DISubprogram(name: "lang_start<()>", linkageName: "_ZN3std2rt10lang_start17h9d960e0e2bdb16a6E", scope: !41, file: !40, line: 159, type: !43, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!40 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/std/src/rt.rs", directory: "", checksumkind: CSK_MD5, checksum: "37ab242d99ebf1886f0e7617537b82aa")
!41 = !DINamespace(name: "rt", scope: !42)
!42 = !DINamespace(name: "std", scope: null)
!43 = !DISubroutineType(types: !33)
!44 = !DILocation(line: 166, column: 10, scope: !39)
!45 = !DILocation(line: 165, column: 17, scope: !39)
!46 = !DILocation(line: 172, column: 2, scope: !39)
!47 = distinct !DISubprogram(name: "drop_in_place<std::rt::lang_start::{closure_env#0}<()>>", linkageName: "_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h10f0ddfadd65a924E", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!48 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/ptr/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "f7e71cc5fe46b5d7ce750e8b099ff7ff")
!49 = !DINamespace(name: "ptr", scope: !50)
!50 = !DINamespace(name: "core", scope: null)
!51 = !DILocation(line: 507, column: 1, scope: !47)
!52 = distinct !DISubprogram(name: "call_once<std::rt::lang_start::{closure_env#0}<()>, ()>", linkageName: "_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hb31814e4c228a468E", scope: !54, file: !53, line: 250, type: !43, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!53 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/ops/function.rs", directory: "", checksumkind: CSK_MD5, checksum: "abc772494ea8033dad5cae2e40e54b10")
!54 = !DINamespace(name: "FnOnce", scope: !55)
!55 = !DINamespace(name: "function", scope: !56)
!56 = !DINamespace(name: "ops", scope: !50)
!57 = !DILocation(line: 250, column: 5, scope: !52)
!58 = !{i32 0, i32 256}
!59 = distinct !DISubprogram(name: "{closure#0}<()>", linkageName: "_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17ha94dee9f7394be01E", scope: !60, file: !40, line: 166, type: !43, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!60 = !DINamespace(name: "lang_start", scope: !41)
!61 = !DILocation(line: 166, column: 77, scope: !59)
!62 = !DILocation(line: 166, column: 18, scope: !59)
!63 = !DILocation(line: 166, column: 100, scope: !59)
!64 = distinct !DISubprogram(name: "__rust_begin_short_backtrace<fn(), ()>", linkageName: "_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17ha53bfe313c91a9bcE", scope: !66, file: !65, line: 151, type: !43, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!65 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/std/src/sys_common/backtrace.rs", directory: "", checksumkind: CSK_MD5, checksum: "ea95829b2a6298387d0233825edf7299")
!66 = !DINamespace(name: "backtrace", scope: !67)
!67 = !DINamespace(name: "sys_common", scope: !42)
!68 = !DILocation(line: 155, column: 18, scope: !64)
!69 = !DILocation(line: 334, column: 5, scope: !70, inlinedAt: !74)
!70 = distinct !DILexicalBlock(scope: !72, file: !71, line: 333, column: 1)
!71 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/hint.rs", directory: "", checksumkind: CSK_MD5, checksum: "9e658e1509a108e11f079d44cec9a3fb")
!72 = distinct !DISubprogram(name: "black_box<()>", linkageName: "_ZN4core4hint9black_box17hdbdb40d8ee40d1d4E", scope: !73, file: !71, line: 333, type: !43, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!73 = !DINamespace(name: "hint", scope: !50)
!74 = !DILocation(line: 158, column: 5, scope: !75)
!75 = distinct !DILexicalBlock(scope: !64, file: !65, line: 155, column: 5)
!76 = !{i32 3900195}
!77 = !DILocation(line: 161, column: 2, scope: !64)
!78 = distinct !DISubprogram(name: "call_once<fn(), ()>", linkageName: "_ZN4core3ops8function6FnOnce9call_once17h64590148215e69fbE", scope: !54, file: !53, line: 250, type: !43, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!79 = !DILocation(line: 250, column: 5, scope: !78)
!80 = distinct !DISubprogram(name: "call_once<std::rt::lang_start::{closure_env#0}<()>, ()>", linkageName: "_ZN4core3ops8function6FnOnce9call_once17h3ba0e2ebbb75f4c5E", scope: !54, file: !53, line: 250, type: !43, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!81 = !DILocation(line: 250, column: 5, scope: !80)
!82 = distinct !DISubprogram(name: "main", linkageName: "_ZN14CVE_2020_262354main17h91af2a3aadc3dba0E", scope: !84, file: !83, line: 11, type: !43, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagMainSubprogram, unit: !9, templateParams: !33)
!83 = !DIFile(filename: "CVE_2020_26235.rs", directory: "/mnt/c/Users/froze/Desktop/concurrent-cpg-cxx/files", checksumkind: CSK_MD5, checksum: "30596a11a20e74e6dbb4b70202619ad0")
!84 = !DINamespace(name: "CVE_2020_26235", scope: null)
!85 = !DILocation(line: 12, column: 14, scope: !82)
!86 = !DILocation(line: 19, column: 14, scope: !87)
!87 = distinct !DILexicalBlock(scope: !82, file: !83, line: 12, column: 5)
!88 = !DILocation(line: 24, column: 5, scope: !89)
!89 = distinct !DILexicalBlock(scope: !87, file: !83, line: 19, column: 5)
!90 = !DILocation(line: 26, column: 1, scope: !87)
!91 = !DILocation(line: 1071, column: 15, scope: !92, inlinedAt: !96)
!92 = distinct !DISubprogram(name: "unwrap<(), alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>", linkageName: "_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h938b6dee05d90f46E", scope: !94, file: !93, line: 1067, type: !43, scopeLine: 1067, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!93 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/result.rs", directory: "", checksumkind: CSK_MD5, checksum: "f043c7a959d5403a67894cc038c0dd9b")
!94 = !DINamespace(name: "Result", scope: !95)
!95 = !DINamespace(name: "result", scope: !50)
!96 = distinct !DILocation(line: 24, column: 5, scope: !89)
!97 = !DILocation(line: 1071, column: 9, scope: !92, inlinedAt: !96)
!98 = !DILocation(line: 1073, column: 17, scope: !92, inlinedAt: !96)
!99 = !DILocation(line: 1073, column: 23, scope: !100, inlinedAt: !96)
!100 = distinct !DILexicalBlock(scope: !92, file: !93, line: 1073, column: 13)
!101 = !DILocation(line: 1073, column: 86, scope: !92, inlinedAt: !96)
!102 = !DILocation(line: 1067, column: 5, scope: !92, inlinedAt: !96)
!103 = !DILocation(line: 25, column: 5, scope: !89)
!104 = !DILocation(line: 1071, column: 15, scope: !92, inlinedAt: !105)
!105 = distinct !DILocation(line: 25, column: 5, scope: !89)
!106 = !DILocation(line: 1071, column: 9, scope: !92, inlinedAt: !105)
!107 = !DILocation(line: 1073, column: 17, scope: !92, inlinedAt: !105)
!108 = !DILocation(line: 1073, column: 23, scope: !100, inlinedAt: !105)
!109 = !DILocation(line: 1073, column: 86, scope: !92, inlinedAt: !105)
!110 = !DILocation(line: 1067, column: 5, scope: !92, inlinedAt: !105)
!111 = !DILocation(line: 26, column: 2, scope: !112)
!112 = !DILexicalBlockFile(scope: !82, file: !83, discriminator: 0)
!113 = !DILocation(line: 11, column: 1, scope: !82)
!114 = !DILocation(line: 26, column: 1, scope: !82)
!115 = distinct !DISubprogram(name: "spawn<CVE_2020_26235::main::{closure_env#0}, ()>", linkageName: "_ZN3std6thread5spawn17h64ebb1dd1991f81fE", scope: !117, file: !116, line: 678, type: !43, scopeLine: 678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!116 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/std/src/thread/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "3c282e7c2338d2c796c9bc9660d50837")
!117 = !DINamespace(name: "thread", scope: !42)
!118 = !DILocation(line: 291, column: 25, scope: !119, inlinedAt: !122)
!119 = distinct !DILexicalBlock(scope: !120, file: !116, line: 290, column: 5)
!120 = distinct !DISubprogram(name: "new", linkageName: "_ZN3std6thread7Builder3new17hfdf0f349fd9499b1E", scope: !121, file: !116, line: 290, type: !43, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!121 = !DINamespace(name: "Builder", scope: !117)
!122 = !DILocation(line: 684, column: 5, scope: !115)
!123 = !DILocation(line: 291, column: 9, scope: !119, inlinedAt: !122)
!124 = !DILocation(line: 389, column: 18, scope: !125, inlinedAt: !128)
!125 = distinct !DILexicalBlock(scope: !126, file: !116, line: 389, column: 9)
!126 = distinct !DILexicalBlock(scope: !127, file: !116, line: 383, column: 5)
!127 = distinct !DISubprogram(name: "spawn<CVE_2020_26235::main::{closure_env#0}, ()>", linkageName: "_ZN3std6thread7Builder5spawn17h37e1f09d73e6c9a1E", scope: !121, file: !116, line: 383, type: !43, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!128 = !DILocation(line: 684, column: 20, scope: !115)
!129 = !DILocation(line: 685, column: 2, scope: !115)
!130 = distinct !DISubprogram(name: "spawn<CVE_2020_26235::main::{closure_env#1}, ()>", linkageName: "_ZN3std6thread5spawn17h75261b6b5937bc6aE", scope: !117, file: !116, line: 678, type: !43, scopeLine: 678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!131 = !DILocation(line: 291, column: 25, scope: !132, inlinedAt: !134)
!132 = distinct !DILexicalBlock(scope: !133, file: !116, line: 290, column: 5)
!133 = distinct !DISubprogram(name: "new", linkageName: "_ZN3std6thread7Builder3new17hfdf0f349fd9499b1E", scope: !121, file: !116, line: 290, type: !43, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!134 = !DILocation(line: 684, column: 5, scope: !130)
!135 = !DILocation(line: 291, column: 9, scope: !132, inlinedAt: !134)
!136 = !DILocation(line: 389, column: 18, scope: !137, inlinedAt: !140)
!137 = distinct !DILexicalBlock(scope: !138, file: !116, line: 389, column: 9)
!138 = distinct !DILexicalBlock(scope: !139, file: !116, line: 383, column: 5)
!139 = distinct !DISubprogram(name: "spawn<CVE_2020_26235::main::{closure_env#1}, ()>", linkageName: "_ZN3std6thread7Builder5spawn17hea44141fae43a175E", scope: !121, file: !116, line: 383, type: !43, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!140 = !DILocation(line: 684, column: 20, scope: !130)
!141 = !DILocation(line: 685, column: 2, scope: !130)
!142 = distinct !DISubprogram(name: "join<()>", linkageName: "_ZN3std6thread19JoinHandle$LT$T$GT$4join17hcea5719e14ef9744E", scope: !143, file: !116, line: 1649, type: !43, scopeLine: 1649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!143 = !DINamespace(name: "JoinHandle", scope: !117)
!144 = !DILocation(line: 1650, column: 9, scope: !142)
!145 = !DILocation(line: 1651, column: 6, scope: !142)
!146 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>", linkageName: "_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17haac18471cb09fd30E", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!147 = !DILocation(line: 507, column: 1, scope: !146)
!148 = !{i64 8}
!149 = distinct !DISubprogram(name: "drop_in_place<std::thread::JoinHandle<()>>", linkageName: "_ZN4core3ptr60drop_in_place$LT$std..thread..JoinHandle$LT$$LP$$RP$$GT$$GT$17h80f2a582275f296bE", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!150 = !DILocation(line: 507, column: 1, scope: !149)
!151 = distinct !DISubprogram(name: "drop_in_place<std::thread::JoinInner<()>>", linkageName: "_ZN4core3ptr59drop_in_place$LT$std..thread..JoinInner$LT$$LP$$RP$$GT$$GT$17h37aa9b5b80261b91E", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!152 = !DILocation(line: 507, column: 1, scope: !151)
!153 = distinct !DISubprogram(name: "drop_in_place<std::sys::pal::unix::thread::Thread>", linkageName: "_ZN4core3ptr56drop_in_place$LT$std..sys..pal..unix..thread..Thread$GT$17hf0d36827c88c9704E", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!154 = !DILocation(line: 507, column: 1, scope: !153)
!155 = distinct !DISubprogram(name: "drop_in_place<std::thread::Thread>", linkageName: "_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hf3442f0736498466E", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!156 = !DILocation(line: 507, column: 1, scope: !155)
!157 = distinct !DISubprogram(name: "drop_in_place<alloc::sync::Arc<std::thread::Packet<()>, alloc::alloc::Global>>", linkageName: "_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h227a9b2252fd1403E", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!158 = !DILocation(line: 507, column: 1, scope: !157)
!159 = distinct !DISubprogram(name: "drop<std::thread::Packet<()>, alloc::alloc::Global>", linkageName: "_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf59bc6faeee3fe59E", scope: !161, file: !160, line: 2372, type: !43, scopeLine: 2372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!160 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/alloc/src/sync.rs", directory: "", checksumkind: CSK_MD5, checksum: "550c43074b00200894ef58472e827d0c")
!161 = !DINamespace(name: "{impl#33}", scope: !162)
!162 = !DINamespace(name: "sync", scope: !163)
!163 = !DINamespace(name: "alloc", scope: null)
!164 = !DILocation(line: 399, column: 20, scope: !165, inlinedAt: !171)
!165 = distinct !DILexicalBlock(scope: !167, file: !166, line: 399, column: 9)
!166 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/ptr/non_null.rs", directory: "", checksumkind: CSK_MD5, checksum: "d232b4a1150e9e47bf554073bdb98e48")
!167 = distinct !DILexicalBlock(scope: !168, file: !166, line: 395, column: 5)
!168 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<std::thread::Packet<()>>>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h2b8a518320d994d1E", scope: !169, file: !166, line: 395, type: !43, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!169 = !DINamespace(name: "NonNull", scope: !170)
!170 = !DINamespace(name: "non_null", scope: !49)
!171 = !DILocation(line: 1748, column: 27, scope: !172, inlinedAt: !176)
!172 = distinct !DILexicalBlock(scope: !173, file: !160, line: 1748, column: 9)
!173 = distinct !DILexicalBlock(scope: !174, file: !160, line: 1742, column: 5)
!174 = distinct !DISubprogram(name: "inner<std::thread::Packet<()>, alloc::alloc::Global>", linkageName: "_ZN5alloc4sync16Arc$LT$T$C$A$GT$5inner17h532228e6b1f83e20E", scope: !175, file: !160, line: 1742, type: !43, scopeLine: 1742, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!175 = !DINamespace(name: "Arc", scope: !162)
!176 = !DILocation(line: 2376, column: 17, scope: !159)
!177 = !DILocation(line: 3345, column: 24, scope: !178, inlinedAt: !184)
!178 = distinct !DILexicalBlock(scope: !180, file: !179, line: 3341, column: 5)
!179 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/sync/atomic.rs", directory: "", checksumkind: CSK_MD5, checksum: "aa4c9c1f34624ecab1bb6e307c35a709")
!180 = distinct !DILexicalBlock(scope: !181, file: !179, line: 3339, column: 1)
!181 = distinct !DISubprogram(name: "atomic_sub<usize>", linkageName: "_ZN4core4sync6atomic10atomic_sub17heaade2912ce1ce0eE", scope: !182, file: !179, line: 3339, type: !43, scopeLine: 3339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!182 = !DINamespace(name: "atomic", scope: !183)
!183 = !DINamespace(name: "sync", scope: !50)
!184 = !DILocation(line: 2683, column: 26, scope: !185, inlinedAt: !189)
!185 = distinct !DILexicalBlock(scope: !186, file: !179, line: 2683, column: 17)
!186 = distinct !DILexicalBlock(scope: !187, file: !179, line: 2681, column: 13)
!187 = distinct !DISubprogram(name: "fetch_sub", linkageName: "_ZN4core4sync6atomic11AtomicUsize9fetch_sub17h5640ae42c9f15fc4E", scope: !188, file: !179, line: 2681, type: !43, scopeLine: 2681, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!188 = !DINamespace(name: "AtomicUsize", scope: !182)
!189 = !DILocation(line: 2376, column: 32, scope: !159)
!190 = !DILocation(line: 2376, column: 12, scope: !159)
!191 = !DILocation(line: 2408, column: 9, scope: !159)
!192 = !DILocation(line: 2411, column: 13, scope: !193)
!193 = distinct !DILexicalBlock(scope: !159, file: !160, line: 2410, column: 9)
!194 = !DILocation(line: 2413, column: 6, scope: !159)
!195 = distinct !DISubprogram(name: "fence", linkageName: "_ZN4core4sync6atomic5fence17hdb34cbebe24ab619E", scope: !182, file: !179, line: 3632, type: !43, scopeLine: 3632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!196 = !DILocation(line: 3636, column: 24, scope: !197)
!197 = distinct !DILexicalBlock(scope: !195, file: !179, line: 3634, column: 5)
!198 = !DILocation(line: 3643, column: 2, scope: !195)
!199 = distinct !DISubprogram(name: "drop_slow<std::thread::Packet<()>, alloc::alloc::Global>", linkageName: "_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h68c4fa1c4ab8b832E", scope: !175, file: !160, line: 1753, type: !43, scopeLine: 1753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!200 = !DILocation(line: 2312, column: 25, scope: !201, inlinedAt: !204)
!201 = distinct !DILexicalBlock(scope: !202, file: !160, line: 2312, column: 9)
!202 = distinct !DILexicalBlock(scope: !203, file: !160, line: 2309, column: 5)
!203 = distinct !DISubprogram(name: "get_mut_unchecked<std::thread::Packet<()>, alloc::alloc::Global>", linkageName: "_ZN5alloc4sync16Arc$LT$T$C$A$GT$17get_mut_unchecked17h3fc6680a32467ad9E", scope: !175, file: !160, line: 2309, type: !43, scopeLine: 2309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!204 = !DILocation(line: 1756, column: 37, scope: !205)
!205 = distinct !DILexicalBlock(scope: !199, file: !160, line: 1756, column: 9)
!206 = !DILocation(line: 1756, column: 18, scope: !205)
!207 = !DILocation(line: 1762, column: 26, scope: !199)
!208 = !DILocation(line: 1762, column: 43, scope: !199)
!209 = !DILocation(line: 1762, column: 14, scope: !199)
!210 = !DILocation(line: 992, column: 24, scope: !211, inlinedAt: !215)
!211 = distinct !DILexicalBlock(scope: !213, file: !212, line: 992, column: 1)
!212 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/mem/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "e36b2fda282da6a5896c58e02ead2af0")
!213 = distinct !DISubprogram(name: "drop<alloc::sync::Weak<std::thread::Packet<()>, &alloc::alloc::Global>>", linkageName: "_ZN4core3mem4drop17he81fd63cafb1a24bE", scope: !214, file: !212, line: 992, type: !43, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!214 = !DINamespace(name: "mem", scope: !50)
!215 = !DILocation(line: 1762, column: 9, scope: !199)
!216 = !DILocation(line: 1763, column: 6, scope: !199)
!217 = distinct !DISubprogram(name: "drop_in_place<std::thread::Packet<()>>", linkageName: "_ZN4core3ptr56drop_in_place$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$17h2c56497c3c6a5b5eE", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!218 = !DILocation(line: 507, column: 1, scope: !217)
!219 = distinct !DISubprogram(name: "drop_in_place<alloc::sync::Weak<std::thread::Packet<()>, &alloc::alloc::Global>>", linkageName: "_ZN4core3ptr108drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$$LP$$RP$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h3b7facf498b7675cE", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!220 = !DILocation(line: 507, column: 1, scope: !219)
!221 = distinct !DISubprogram(name: "drop<std::thread::Packet<()>, &alloc::alloc::Global>", linkageName: "_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h912cb4061d81d055E", scope: !222, file: !160, line: 2984, type: !43, scopeLine: 2984, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!222 = !DINamespace(name: "{impl#42}", scope: !162)
!223 = !DILocation(line: 2845, column: 19, scope: !224, inlinedAt: !227)
!224 = distinct !DILexicalBlock(scope: !225, file: !160, line: 2844, column: 5)
!225 = distinct !DISubprogram(name: "inner<std::thread::Packet<()>, &alloc::alloc::Global>", linkageName: "_ZN5alloc4sync17Weak$LT$T$C$A$GT$5inner17h6f8d5176c56a0b71E", scope: !226, file: !160, line: 2844, type: !43, scopeLine: 2844, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!226 = !DINamespace(name: "Weak", scope: !162)
!227 = !DILocation(line: 2993, column: 47, scope: !228)
!228 = distinct !DILexicalBlock(scope: !221, file: !160, line: 2993, column: 55)
!229 = !DILocation(line: 2791, column: 5, scope: !230, inlinedAt: !234)
!230 = distinct !DILexicalBlock(scope: !232, file: !231, line: 2790, column: 1)
!231 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/alloc/src/rc.rs", directory: "", checksumkind: CSK_MD5, checksum: "7d2753a7b61a8a63df1f61f415361e2a")
!232 = distinct !DISubprogram(name: "is_dangling<alloc::sync::ArcInner<std::thread::Packet<()>>>", linkageName: "_ZN5alloc2rc11is_dangling17haa7c3212e0cd198bE", scope: !233, file: !231, line: 2790, type: !43, scopeLine: 2790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!233 = !DINamespace(name: "rc", scope: !163)
!234 = !DILocation(line: 2846, column: 12, scope: !235, inlinedAt: !227)
!235 = distinct !DILexicalBlock(scope: !224, file: !160, line: 2845, column: 9)
!236 = !DILocation(line: 2852, column: 69, scope: !237, inlinedAt: !227)
!237 = distinct !DILexicalBlock(scope: !235, file: !160, line: 2852, column: 18)
!238 = !DILocation(line: 3345, column: 24, scope: !239, inlinedAt: !242)
!239 = distinct !DILexicalBlock(scope: !240, file: !179, line: 3341, column: 5)
!240 = distinct !DILexicalBlock(scope: !241, file: !179, line: 3339, column: 1)
!241 = distinct !DISubprogram(name: "atomic_sub<usize>", linkageName: "_ZN4core4sync6atomic10atomic_sub17heaade2912ce1ce0eE", scope: !182, file: !179, line: 3339, type: !43, scopeLine: 3339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!242 = !DILocation(line: 2683, column: 26, scope: !243, inlinedAt: !246)
!243 = distinct !DILexicalBlock(scope: !244, file: !179, line: 2683, column: 17)
!244 = distinct !DILexicalBlock(scope: !245, file: !179, line: 2681, column: 13)
!245 = distinct !DISubprogram(name: "fetch_sub", linkageName: "_ZN4core4sync6atomic11AtomicUsize9fetch_sub17h5640ae42c9f15fc4E", scope: !188, file: !179, line: 2681, type: !43, scopeLine: 2681, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!246 = !DILocation(line: 2995, column: 23, scope: !247)
!247 = distinct !DILexicalBlock(scope: !221, file: !160, line: 2993, column: 9)
!248 = !DILocation(line: 2995, column: 12, scope: !247)
!249 = !DILocation(line: 3001, column: 6, scope: !221)
!250 = !DILocation(line: 2996, column: 13, scope: !247)
!251 = !DILocation(line: 2998, column: 17, scope: !252)
!252 = distinct !DILexicalBlock(scope: !247, file: !160, line: 2997, column: 13)
!253 = !DILocation(line: 2998, column: 39, scope: !252)
!254 = !DILocation(line: 2995, column: 9, scope: !247)
!255 = distinct !DISubprogram(name: "deallocate<alloc::alloc::Global>", linkageName: "_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h5d6f1a76fe05ba9aE", scope: !257, file: !256, line: 384, type: !43, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!256 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/alloc/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "9c7c0ffd26d9d84da022f1f1fae0fbfe")
!257 = !DINamespace(name: "{impl#2}", scope: !258)
!258 = !DINamespace(name: "alloc", scope: !50)
!259 = !DILocation(line: 386, column: 18, scope: !260)
!260 = distinct !DILexicalBlock(scope: !255, file: !256, line: 386, column: 9)
!261 = !{i64 1}
!262 = !DILocation(line: 387, column: 6, scope: !255)
!263 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h0bc0eaec458bb9cdE", scope: !265, file: !264, line: 250, type: !43, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!264 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/alloc/src/alloc.rs", directory: "", checksumkind: CSK_MD5, checksum: "bc8cbec5c1b0f1b7cb4763ff68221ee0")
!265 = !DINamespace(name: "{impl#1}", scope: !266)
!266 = !DINamespace(name: "alloc", scope: !163)
!267 = !DILocation(line: 251, column: 12, scope: !263)
!268 = !DILocation(line: 117, column: 14, scope: !269, inlinedAt: !272)
!269 = distinct !DILexicalBlock(scope: !270, file: !264, line: 117, column: 5)
!270 = distinct !DILexicalBlock(scope: !271, file: !264, line: 116, column: 1)
!271 = distinct !DISubprogram(name: "dealloc", linkageName: "_ZN5alloc5alloc7dealloc17h17163e6ca4b15874E", scope: !266, file: !264, line: 116, type: !43, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!272 = !DILocation(line: 254, column: 22, scope: !273)
!273 = distinct !DILexicalBlock(scope: !263, file: !264, line: 254, column: 13)
!274 = !DILocation(line: 251, column: 9, scope: !263)
!275 = !DILocation(line: 256, column: 6, scope: !263)
!276 = distinct !DISubprogram(name: "drop<()>", linkageName: "_ZN70_$LT$std..thread..Packet$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9f3f95ac36f415a7E", scope: !277, file: !116, line: 1476, type: !43, scopeLine: 1476, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!277 = !DINamespace(name: "{impl#7}", scope: !117)
!278 = !DILocation(line: 1480, column: 40, scope: !276)
!279 = !{i64 0, i64 2}
!280 = !DILocation(line: 1480, column: 31, scope: !276)
!281 = !DILocation(line: 142, column: 14, scope: !282, inlinedAt: !287)
!282 = distinct !DILexicalBlock(scope: !284, file: !283, line: 142, column: 5)
!283 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/std/src/panic.rs", directory: "", checksumkind: CSK_MD5, checksum: "8adf1c3a338b64d3aaf8ffef364612d8")
!284 = distinct !DILexicalBlock(scope: !285, file: !283, line: 141, column: 1)
!285 = distinct !DISubprogram(name: "catch_unwind<core::panic::unwind_safe::AssertUnwindSafe<std::thread::{impl#7}::drop::{closure_env#0}<()>>, ()>", linkageName: "_ZN3std5panic12catch_unwind17h1859006c7e7eccceE", scope: !286, file: !283, line: 141, type: !43, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!286 = !DINamespace(name: "panic", scope: !42)
!287 = !DILocation(line: 1491, column: 25, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !116, line: 1493, column: 13)
!289 = distinct !DILexicalBlock(scope: !276, file: !116, line: 1480, column: 9)
!290 = !DILocation(line: 1491, column: 16, scope: !288)
!291 = !DILocation(line: 1494, column: 13, scope: !292)
!292 = !DILexicalBlockFile(scope: !293, file: !116, discriminator: 0)
!293 = distinct !DILexicalBlock(scope: !288, file: !40, line: 36, column: 66)
!294 = !DILocation(line: 1495, column: 9, scope: !289)
!295 = !DILocation(line: 1497, column: 16, scope: !296)
!296 = distinct !DILexicalBlock(scope: !289, file: !116, line: 1497, column: 42)
!297 = !DILocation(line: 1494, column: 13, scope: !288)
!298 = !DILocation(line: 1476, column: 5, scope: !276)
!299 = !DILocation(line: 1502, column: 13, scope: !296)
!300 = !DILocation(line: 1497, column: 9, scope: !289)
!301 = !DILocation(line: 1504, column: 6, scope: !276)
!302 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<alloc::sync::Arc<std::thread::scoped::ScopeData, alloc::alloc::Global>>>", linkageName: "_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17hc230ee2b1e444aaeE", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!303 = !DILocation(line: 507, column: 1, scope: !302)
!304 = distinct !DISubprogram(name: "drop_in_place<core::cell::UnsafeCell<core::option::Option<core::result::Result<(), alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>>", linkageName: "_ZN4core3ptr188drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$$GT$17h699be22d21dc7920E", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!305 = !DILocation(line: 507, column: 1, scope: !304)
!306 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<core::result::Result<(), alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17h7836c66a3cefedddE", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!307 = !DILocation(line: 507, column: 1, scope: !306)
!308 = distinct !DISubprogram(name: "drop_in_place<core::result::Result<(), alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>", linkageName: "_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h897a97f986a7514cE", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!309 = !DILocation(line: 507, column: 1, scope: !308)
!310 = distinct !DISubprogram(name: "drop_in_place<alloc::sync::Arc<std::thread::scoped::ScopeData, alloc::alloc::Global>>", linkageName: "_ZN4core3ptr75drop_in_place$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$17h927b77db22fab1b3E", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!311 = !DILocation(line: 507, column: 1, scope: !310)
!312 = distinct !DISubprogram(name: "drop<std::thread::scoped::ScopeData, alloc::alloc::Global>", linkageName: "_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hab18f717569722b4E", scope: !161, file: !160, line: 2372, type: !43, scopeLine: 2372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!313 = !DILocation(line: 399, column: 20, scope: !314, inlinedAt: !317)
!314 = distinct !DILexicalBlock(scope: !315, file: !166, line: 399, column: 9)
!315 = distinct !DILexicalBlock(scope: !316, file: !166, line: 395, column: 5)
!316 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<std::thread::scoped::ScopeData>>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h0c80f311248f593aE", scope: !169, file: !166, line: 395, type: !43, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!317 = !DILocation(line: 1748, column: 27, scope: !318, inlinedAt: !321)
!318 = distinct !DILexicalBlock(scope: !319, file: !160, line: 1748, column: 9)
!319 = distinct !DILexicalBlock(scope: !320, file: !160, line: 1742, column: 5)
!320 = distinct !DISubprogram(name: "inner<std::thread::scoped::ScopeData, alloc::alloc::Global>", linkageName: "_ZN5alloc4sync16Arc$LT$T$C$A$GT$5inner17h8912f15cd7d6ede1E", scope: !175, file: !160, line: 1742, type: !43, scopeLine: 1742, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!321 = !DILocation(line: 2376, column: 17, scope: !312)
!322 = !DILocation(line: 3345, column: 24, scope: !323, inlinedAt: !326)
!323 = distinct !DILexicalBlock(scope: !324, file: !179, line: 3341, column: 5)
!324 = distinct !DILexicalBlock(scope: !325, file: !179, line: 3339, column: 1)
!325 = distinct !DISubprogram(name: "atomic_sub<usize>", linkageName: "_ZN4core4sync6atomic10atomic_sub17heaade2912ce1ce0eE", scope: !182, file: !179, line: 3339, type: !43, scopeLine: 3339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!326 = !DILocation(line: 2683, column: 26, scope: !327, inlinedAt: !330)
!327 = distinct !DILexicalBlock(scope: !328, file: !179, line: 2683, column: 17)
!328 = distinct !DILexicalBlock(scope: !329, file: !179, line: 2681, column: 13)
!329 = distinct !DISubprogram(name: "fetch_sub", linkageName: "_ZN4core4sync6atomic11AtomicUsize9fetch_sub17h5640ae42c9f15fc4E", scope: !188, file: !179, line: 2681, type: !43, scopeLine: 2681, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!330 = !DILocation(line: 2376, column: 32, scope: !312)
!331 = !DILocation(line: 2376, column: 12, scope: !312)
!332 = !DILocation(line: 2408, column: 9, scope: !312)
!333 = !DILocation(line: 2411, column: 13, scope: !334)
!334 = distinct !DILexicalBlock(scope: !312, file: !160, line: 2410, column: 9)
!335 = !DILocation(line: 2413, column: 6, scope: !312)
!336 = distinct !DISubprogram(name: "drop_slow<std::thread::scoped::ScopeData, alloc::alloc::Global>", linkageName: "_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9148759783f10b7dE", scope: !175, file: !160, line: 1753, type: !43, scopeLine: 1753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!337 = !DILocation(line: 2312, column: 25, scope: !338, inlinedAt: !341)
!338 = distinct !DILexicalBlock(scope: !339, file: !160, line: 2312, column: 9)
!339 = distinct !DILexicalBlock(scope: !340, file: !160, line: 2309, column: 5)
!340 = distinct !DISubprogram(name: "get_mut_unchecked<std::thread::scoped::ScopeData, alloc::alloc::Global>", linkageName: "_ZN5alloc4sync16Arc$LT$T$C$A$GT$17get_mut_unchecked17h64818690979d2afaE", scope: !175, file: !160, line: 2309, type: !43, scopeLine: 2309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!341 = !DILocation(line: 1756, column: 37, scope: !342)
!342 = distinct !DILexicalBlock(scope: !336, file: !160, line: 1756, column: 9)
!343 = !DILocation(line: 1756, column: 18, scope: !342)
!344 = !DILocation(line: 1762, column: 26, scope: !336)
!345 = !DILocation(line: 1762, column: 43, scope: !336)
!346 = !DILocation(line: 1762, column: 14, scope: !336)
!347 = !DILocation(line: 992, column: 24, scope: !348, inlinedAt: !350)
!348 = distinct !DILexicalBlock(scope: !349, file: !212, line: 992, column: 1)
!349 = distinct !DISubprogram(name: "drop<alloc::sync::Weak<std::thread::scoped::ScopeData, &alloc::alloc::Global>>", linkageName: "_ZN4core3mem4drop17h26de5ede043c3e51E", scope: !214, file: !212, line: 992, type: !43, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!350 = !DILocation(line: 1762, column: 9, scope: !336)
!351 = !DILocation(line: 1763, column: 6, scope: !336)
!352 = distinct !DISubprogram(name: "drop_in_place<std::thread::scoped::ScopeData>", linkageName: "_ZN4core3ptr51drop_in_place$LT$std..thread..scoped..ScopeData$GT$17hde5f8f9cbe162524E", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!353 = !DILocation(line: 507, column: 1, scope: !352)
!354 = distinct !DISubprogram(name: "drop_in_place<alloc::sync::Weak<std::thread::scoped::ScopeData, &alloc::alloc::Global>>", linkageName: "_ZN4core3ptr103drop_in_place$LT$alloc..sync..Weak$LT$std..thread..scoped..ScopeData$C$$RF$alloc..alloc..Global$GT$$GT$17h5be186858ee5ecaeE", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!355 = !DILocation(line: 507, column: 1, scope: !354)
!356 = distinct !DISubprogram(name: "drop<std::thread::scoped::ScopeData, &alloc::alloc::Global>", linkageName: "_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52e4b9e4957771f5E", scope: !222, file: !160, line: 2984, type: !43, scopeLine: 2984, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!357 = !DILocation(line: 2845, column: 19, scope: !358, inlinedAt: !360)
!358 = distinct !DILexicalBlock(scope: !359, file: !160, line: 2844, column: 5)
!359 = distinct !DISubprogram(name: "inner<std::thread::scoped::ScopeData, &alloc::alloc::Global>", linkageName: "_ZN5alloc4sync17Weak$LT$T$C$A$GT$5inner17h09c4eb69a1609604E", scope: !226, file: !160, line: 2844, type: !43, scopeLine: 2844, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!360 = !DILocation(line: 2993, column: 47, scope: !361)
!361 = distinct !DILexicalBlock(scope: !356, file: !160, line: 2993, column: 55)
!362 = !DILocation(line: 2791, column: 5, scope: !363, inlinedAt: !365)
!363 = distinct !DILexicalBlock(scope: !364, file: !231, line: 2790, column: 1)
!364 = distinct !DISubprogram(name: "is_dangling<alloc::sync::ArcInner<std::thread::scoped::ScopeData>>", linkageName: "_ZN5alloc2rc11is_dangling17h6d4da3f7c97f8f8eE", scope: !233, file: !231, line: 2790, type: !43, scopeLine: 2790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!365 = !DILocation(line: 2846, column: 12, scope: !366, inlinedAt: !360)
!366 = distinct !DILexicalBlock(scope: !358, file: !160, line: 2845, column: 9)
!367 = !DILocation(line: 2852, column: 69, scope: !368, inlinedAt: !360)
!368 = distinct !DILexicalBlock(scope: !366, file: !160, line: 2852, column: 18)
!369 = !DILocation(line: 3345, column: 24, scope: !370, inlinedAt: !373)
!370 = distinct !DILexicalBlock(scope: !371, file: !179, line: 3341, column: 5)
!371 = distinct !DILexicalBlock(scope: !372, file: !179, line: 3339, column: 1)
!372 = distinct !DISubprogram(name: "atomic_sub<usize>", linkageName: "_ZN4core4sync6atomic10atomic_sub17heaade2912ce1ce0eE", scope: !182, file: !179, line: 3339, type: !43, scopeLine: 3339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!373 = !DILocation(line: 2683, column: 26, scope: !374, inlinedAt: !377)
!374 = distinct !DILexicalBlock(scope: !375, file: !179, line: 2683, column: 17)
!375 = distinct !DILexicalBlock(scope: !376, file: !179, line: 2681, column: 13)
!376 = distinct !DISubprogram(name: "fetch_sub", linkageName: "_ZN4core4sync6atomic11AtomicUsize9fetch_sub17h5640ae42c9f15fc4E", scope: !188, file: !179, line: 2681, type: !43, scopeLine: 2681, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!377 = !DILocation(line: 2995, column: 23, scope: !378)
!378 = distinct !DILexicalBlock(scope: !356, file: !160, line: 2993, column: 9)
!379 = !DILocation(line: 2995, column: 12, scope: !378)
!380 = !DILocation(line: 3001, column: 6, scope: !356)
!381 = !DILocation(line: 2996, column: 13, scope: !378)
!382 = !DILocation(line: 2998, column: 17, scope: !383)
!383 = distinct !DILexicalBlock(scope: !378, file: !160, line: 2997, column: 13)
!384 = !DILocation(line: 2998, column: 39, scope: !383)
!385 = !DILocation(line: 2995, column: 9, scope: !378)
!386 = distinct !DISubprogram(name: "try<(), core::panic::unwind_safe::AssertUnwindSafe<std::thread::{impl#7}::drop::{closure_env#0}<()>>>", linkageName: "_ZN3std9panicking3try17h2770365d176f6ca9E", scope: !388, file: !387, line: 474, type: !43, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!387 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/std/src/panicking.rs", directory: "", checksumkind: CSK_MD5, checksum: "4607b89309c9e0d7da4147a05032c339")
!388 = !DINamespace(name: "panicking", scope: !42)
!389 = !DILocation(line: 505, column: 20, scope: !386)
!390 = !DILocation(line: 518, column: 19, scope: !391)
!391 = distinct !DILexicalBlock(scope: !392, file: !387, line: 517, column: 5)
!392 = distinct !DILexicalBlock(scope: !393, file: !387, line: 507, column: 5)
!393 = distinct !DILexicalBlock(scope: !386, file: !387, line: 505, column: 5)
!394 = !{i32 0, i32 2}
!395 = !DILocation(line: 518, column: 16, scope: !391)
!396 = !DILocation(line: 521, column: 42, scope: !391)
!397 = !DILocation(line: 584, column: 2, scope: !386)
!398 = distinct !DISubprogram(name: "new_v1", linkageName: "_ZN4core3fmt9Arguments6new_v117h5b1af555eaf81b8eE", scope: !400, file: !399, line: 331, type: !43, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!399 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/fmt/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "f2f9e528240e472a11f8ea13e1ff6e2a")
!400 = !DINamespace(name: "Arguments", scope: !401)
!401 = !DINamespace(name: "fmt", scope: !50)
!402 = !DILocation(line: 332, column: 12, scope: !398)
!403 = !DILocation(line: 335, column: 9, scope: !398)
!404 = !DILocation(line: 336, column: 6, scope: !398)
!405 = !DILocation(line: 325, column: 9, scope: !406, inlinedAt: !408)
!406 = distinct !DILexicalBlock(scope: !407, file: !399, line: 321, column: 5)
!407 = distinct !DISubprogram(name: "new_const", linkageName: "_ZN4core3fmt9Arguments9new_const17h11f902fa0ed96819E", scope: !400, file: !399, line: 321, type: !43, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!408 = !DILocation(line: 106, column: 38, scope: !409)
!409 = !DILexicalBlockFile(scope: !398, file: !410, discriminator: 0)
!410 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/panic.rs", directory: "", checksumkind: CSK_MD5, checksum: "20344942d88925c2c0cb1f59161dfcc4")
!411 = !DILocation(line: 333, column: 13, scope: !398)
!412 = distinct !DISubprogram(name: "write_fmt<std::sys::pal::unix::stdio::Stderr>", linkageName: "_ZN3std2io5Write9write_fmt17h3daa9a4618f4ac87E", scope: !414, file: !413, line: 1825, type: !43, scopeLine: 1825, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!413 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/std/src/io/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "aa2ef9da1798c805c6d27cad93aa8d48")
!414 = !DINamespace(name: "Write", scope: !415)
!415 = !DINamespace(name: "io", scope: !42)
!416 = !DILocation(line: 1845, column: 26, scope: !412)
!417 = !DILocation(line: 1846, column: 15, scope: !418)
!418 = distinct !DILexicalBlock(scope: !412, file: !413, line: 1845, column: 9)
!419 = !DILocation(line: 1857, column: 5, scope: !412)
!420 = !DILocation(line: 1846, column: 9, scope: !418)
!421 = !DILocation(line: 539, column: 18, scope: !422, inlinedAt: !424)
!422 = distinct !DILexicalBlock(scope: !423, file: !93, line: 538, column: 5)
!423 = distinct !DISubprogram(name: "is_ok<(), std::io::error::Error>", linkageName: "_ZN4core6result19Result$LT$T$C$E$GT$5is_ok17he22d8e5f6a8795f6E", scope: !94, file: !93, line: 538, type: !43, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!424 = !DILocation(line: 582, column: 15, scope: !425, inlinedAt: !427)
!425 = distinct !DILexicalBlock(scope: !426, file: !93, line: 581, column: 5)
!426 = distinct !DISubprogram(name: "is_err<(), std::io::error::Error>", linkageName: "_ZN4core6result19Result$LT$T$C$E$GT$6is_err17h6421df3c65a201aaE", scope: !94, file: !93, line: 581, type: !43, scopeLine: 581, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!427 = !DILocation(line: 1850, column: 33, scope: !418)
!428 = !DILocation(line: 1850, column: 20, scope: !418)
!429 = !DILocation(line: 1857, column: 6, scope: !412)
!430 = !DILocation(line: 1825, column: 5, scope: !412)
!431 = distinct !DISubprogram(name: "drop_in_place<core::result::Result<(), std::io::error::Error>>", linkageName: "_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h84378f750af2621eE", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!432 = !DILocation(line: 507, column: 1, scope: !431)
!433 = distinct !DISubprogram(name: "drop_in_place<std::io::error::Error>", linkageName: "_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hbe6b5bd41666926aE", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!434 = !DILocation(line: 507, column: 1, scope: !433)
!435 = distinct !DISubprogram(name: "drop_in_place<std::io::error::repr_bitpacked::Repr>", linkageName: "_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hab36c48d7da12234E", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!436 = !DILocation(line: 507, column: 1, scope: !435)
!437 = distinct !DISubprogram(name: "drop", linkageName: "_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17h55dea4351a5f6046E", scope: !439, file: !438, line: 231, type: !43, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!438 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/std/src/io/error/repr_bitpacked.rs", directory: "", checksumkind: CSK_MD5, checksum: "d73f0b9baf83ff80a7224bac62d7f074")
!439 = !DINamespace(name: "{impl#3}", scope: !440)
!440 = !DINamespace(name: "repr_bitpacked", scope: !441)
!441 = !DINamespace(name: "error", scope: !415)
!442 = !DILocation(line: 235, column: 33, scope: !443)
!443 = distinct !DILexicalBlock(scope: !437, file: !438, line: 234, column: 9)
!444 = !DILocation(line: 235, column: 21, scope: !443)
!445 = !DILocation(line: 235, column: 72, scope: !443)
!446 = !DILocation(line: 237, column: 6, scope: !437)
!447 = distinct !DISubprogram(name: "decode_repr<alloc::boxed::Box<std::io::error::Custom, alloc::alloc::Global>, std::io::error::repr_bitpacked::{impl#3}::drop::{closure_env#0}>", linkageName: "_ZN3std2io5error14repr_bitpacked11decode_repr17h4cfc897f6f8c2596E", scope: !440, file: !438, line: 245, type: !43, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!448 = !DILocation(line: 217, column: 18, scope: !449, inlinedAt: !455)
!449 = distinct !DILexicalBlock(scope: !451, file: !450, line: 217, column: 9)
!450 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/ptr/mut_ptr.rs", directory: "", checksumkind: CSK_MD5, checksum: "808b4fd6ebe4ec5e852b0548de72a2f7")
!451 = distinct !DILexicalBlock(scope: !452, file: !450, line: 213, column: 5)
!452 = distinct !DISubprogram(name: "addr<()>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h9c332a19e56e28c2E", scope: !453, file: !450, line: 213, type: !43, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!453 = !DINamespace(name: "{impl#0}", scope: !454)
!454 = !DINamespace(name: "mut_ptr", scope: !49)
!455 = !DILocation(line: 249, column: 29, scope: !447)
!456 = !DILocation(line: 250, column: 11, scope: !457)
!457 = distinct !DILexicalBlock(scope: !447, file: !438, line: 249, column: 5)
!458 = !DILocation(line: 250, column: 5, scope: !457)
!459 = !DILocation(line: 252, column: 24, scope: !457)
!460 = !DILocation(line: 253, column: 13, scope: !461)
!461 = distinct !DILexicalBlock(scope: !457, file: !438, line: 252, column: 13)
!462 = !DILocation(line: 254, column: 9, scope: !457)
!463 = !DILocation(line: 256, column: 29, scope: !457)
!464 = !DILocation(line: 257, column: 24, scope: !465)
!465 = distinct !DILexicalBlock(scope: !457, file: !438, line: 256, column: 13)
!466 = !{i8 0, i8 42}
!467 = !DILocation(line: 269, column: 31, scope: !457)
!468 = !DILocation(line: 269, column: 94, scope: !457)
!469 = !DILocation(line: 564, column: 18, scope: !470, inlinedAt: !473)
!470 = distinct !DILexicalBlock(scope: !471, file: !450, line: 564, column: 9)
!471 = distinct !DILexicalBlock(scope: !472, file: !450, line: 559, column: 5)
!472 = distinct !DISubprogram(name: "wrapping_offset<u8>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$15wrapping_offset17ha8f4526834ac7478E", scope: !453, file: !450, line: 559, type: !43, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!473 = !DILocation(line: 1299, column: 14, scope: !474, inlinedAt: !476)
!474 = distinct !DILexicalBlock(scope: !475, file: !450, line: 1295, column: 5)
!475 = distinct !DISubprogram(name: "wrapping_sub<u8>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$12wrapping_sub17hae069ecf1b3e002dE", scope: !453, file: !450, line: 1295, type: !43, scopeLine: 1295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!476 = !DILocation(line: 1318, column: 27, scope: !477, inlinedAt: !479)
!477 = distinct !DILexicalBlock(scope: !478, file: !450, line: 1317, column: 5)
!478 = distinct !DISubprogram(name: "wrapping_byte_sub<()>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$17wrapping_byte_sub17ha27f0979708cbc61E", scope: !453, file: !450, line: 1317, type: !43, scopeLine: 1317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!479 = !DILocation(line: 274, column: 39, scope: !457)
!480 = !DILocation(line: 275, column: 31, scope: !481)
!481 = distinct !DILexicalBlock(scope: !457, file: !438, line: 274, column: 13)
!482 = !DILocation(line: 275, column: 13, scope: !481)
!483 = !DILocation(line: 282, column: 1, scope: !447)
!484 = !DILocation(line: 974, column: 15, scope: !485, inlinedAt: !490)
!485 = distinct !DILexicalBlock(scope: !487, file: !486, line: 970, column: 5)
!486 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/option.rs", directory: "", checksumkind: CSK_MD5, checksum: "40abdcdb90bd47861267097536f7c5d8")
!487 = distinct !DISubprogram(name: "unwrap_or_else<std::io::error::ErrorKind, std::io::error::repr_bitpacked::decode_repr::{closure_env#0}<alloc::boxed::Box<std::io::error::Custom, alloc::alloc::Global>, std::io::error::repr_bitpacked::{impl#3}::drop::{closure_env#0}>>", linkageName: "_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17hd476abc1924bca3bE", scope: !488, file: !486, line: 970, type: !43, scopeLine: 970, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!488 = !DINamespace(name: "Option", scope: !489)
!489 = !DINamespace(name: "option", scope: !50)
!490 = !DILocation(line: 257, column: 50, scope: !465)
!491 = !DILocation(line: 974, column: 9, scope: !485, inlinedAt: !490)
!492 = !DILocation(line: 267, column: 13, scope: !493)
!493 = distinct !DILexicalBlock(scope: !465, file: !438, line: 257, column: 13)
!494 = !DILocation(line: 268, column: 9, scope: !457)
!495 = !DILocation(line: 282, column: 2, scope: !447)
!496 = distinct !DISubprogram(name: "drop_in_place<std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom, alloc::alloc::Global>>>", linkageName: "_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17h9dd9ecb2c69dfa48E", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!497 = !DILocation(line: 507, column: 1, scope: !496)
!498 = !{i8 0, i8 4}
!499 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<std::io::error::Custom, alloc::alloc::Global>>", linkageName: "_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h296ae5d5a911393cE", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!500 = !DILocation(line: 507, column: 1, scope: !499)
!501 = distinct !DISubprogram(name: "drop_in_place<std::io::error::Custom>", linkageName: "_ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17hea336d1c282b764bE", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!502 = !DILocation(line: 507, column: 1, scope: !501)
!503 = distinct !DISubprogram(name: "drop<std::io::error::Custom, alloc::alloc::Global>", linkageName: "_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h07c4c2135c5f53e6E", scope: !505, file: !504, line: 1235, type: !43, scopeLine: 1235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!504 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/alloc/src/boxed.rs", directory: "", checksumkind: CSK_MD5, checksum: "9bb94677fbfcd025dd44ee034a0b7f7d")
!505 = !DINamespace(name: "{impl#8}", scope: !506)
!506 = !DINamespace(name: "boxed", scope: !163)
!507 = !DILocation(line: 1238, column: 19, scope: !503)
!508 = !DILocation(line: 1243, column: 17, scope: !509)
!509 = distinct !DILexicalBlock(scope: !510, file: !504, line: 1241, column: 13)
!510 = distinct !DILexicalBlock(scope: !511, file: !504, line: 1240, column: 9)
!511 = distinct !DILexicalBlock(scope: !503, file: !504, line: 1238, column: 9)
!512 = !DILocation(line: 1246, column: 6, scope: !503)
!513 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>", linkageName: "_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$17h2795b47bcc0296cdE", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!514 = !DILocation(line: 507, column: 1, scope: !513)
!515 = distinct !DISubprogram(name: "drop<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>", linkageName: "_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf679f183ab14447aE", scope: !505, file: !504, line: 1235, type: !43, scopeLine: 1235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!516 = !DILocation(line: 1238, column: 19, scope: !515)
!517 = !DILocation(line: 394, column: 14, scope: !518, inlinedAt: !521)
!518 = distinct !DILexicalBlock(scope: !519, file: !212, line: 394, column: 5)
!519 = distinct !DILexicalBlock(scope: !520, file: !212, line: 392, column: 1)
!520 = distinct !DISubprogram(name: "size_of_val_raw<(dyn core::error::Error + core::marker::Send + core::marker::Sync)>", linkageName: "_ZN4core3mem15size_of_val_raw17hecc442ba8643cf61E", scope: !214, file: !212, line: 392, type: !43, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!521 = !DILocation(line: 201, column: 39, scope: !522, inlinedAt: !528)
!522 = distinct !DILexicalBlock(scope: !524, file: !523, line: 201, column: 29)
!523 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/alloc/layout.rs", directory: "", checksumkind: CSK_MD5, checksum: "84e2cb2acf593d90cc5b5d683a678f65")
!524 = distinct !DILexicalBlock(scope: !525, file: !523, line: 199, column: 5)
!525 = distinct !DISubprogram(name: "for_value_raw<(dyn core::error::Error + core::marker::Send + core::marker::Sync)>", linkageName: "_ZN4core5alloc6layout6Layout13for_value_raw17h288cbb4d21c50b86E", scope: !526, file: !523, line: 199, type: !43, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!526 = !DINamespace(name: "Layout", scope: !527)
!527 = !DINamespace(name: "layout", scope: !258)
!528 = !DILocation(line: 1241, column: 26, scope: !529)
!529 = distinct !DILexicalBlock(scope: !530, file: !504, line: 1240, column: 9)
!530 = distinct !DILexicalBlock(scope: !515, file: !504, line: 1238, column: 9)
!531 = !{i64 0, i64 -9223372036854775808}
!532 = !DILocation(line: 1242, column: 16, scope: !533)
!533 = distinct !DILexicalBlock(scope: !529, file: !504, line: 1241, column: 13)
!534 = !DILocation(line: 536, column: 14, scope: !535, inlinedAt: !538)
!535 = distinct !DILexicalBlock(scope: !536, file: !212, line: 536, column: 5)
!536 = distinct !DILexicalBlock(scope: !537, file: !212, line: 534, column: 1)
!537 = distinct !DISubprogram(name: "align_of_val_raw<(dyn core::error::Error + core::marker::Send + core::marker::Sync)>", linkageName: "_ZN4core3mem16align_of_val_raw17h8bec3af21f909ef7E", scope: !214, file: !212, line: 534, type: !43, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!538 = !DILocation(line: 201, column: 64, scope: !522, inlinedAt: !528)
!539 = !{i64 1, i64 0}
!540 = !DILocation(line: 1243, column: 17, scope: !533)
!541 = !DILocation(line: 1242, column: 13, scope: !533)
!542 = !DILocation(line: 1246, column: 6, scope: !515)
!543 = distinct !DISubprogram(name: "kind_from_prim", linkageName: "_ZN3std2io5error14repr_bitpacked14kind_from_prim17h8857574e91a5e704E", scope: !440, file: !438, line: 288, type: !43, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!544 = !DILocation(line: 301, column: 5, scope: !543)
!545 = !DILocation(line: 344, column: 2, scope: !543)
!546 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h44c30c074b20a2b6E", scope: !547, file: !438, line: 235, type: !43, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!547 = !DINamespace(name: "drop", scope: !439)
!548 = !DILocation(line: 235, column: 71, scope: !546)
!549 = distinct !DISubprogram(name: "drop_in_place<std::io::Write::write_fmt::Adapter<std::sys::pal::unix::stdio::Stderr>>", linkageName: "_ZN4core3ptr97drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..sys..pal..unix..stdio..Stderr$GT$$GT$17h19513f68692c85baE", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!550 = !DILocation(line: 507, column: 1, scope: !549)
!551 = distinct !DISubprogram(name: "write_str<std::sys::pal::unix::stdio::Stderr>", linkageName: "_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h8f2df3dee1a7f0a5E", scope: !552, file: !413, line: 1834, type: !43, scopeLine: 1834, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!552 = !DINamespace(name: "{impl#0}", scope: !553)
!553 = !DINamespace(name: "write_fmt", scope: !414)
!554 = !DILocation(line: 1835, column: 23, scope: !551)
!555 = !DILocation(line: 1835, column: 17, scope: !551)
!556 = !DILocation(line: 1838, column: 25, scope: !557)
!557 = distinct !DILexicalBlock(scope: !551, file: !413, line: 1837, column: 21)
!558 = !DILocation(line: 1842, column: 14, scope: !551)
!559 = !DILocation(line: 1834, column: 13, scope: !551)
!560 = !DILocation(line: 1842, column: 13, scope: !551)
!561 = distinct !DISubprogram(name: "write_char<std::io::Write::write_fmt::Adapter<std::sys::pal::unix::stdio::Stderr>>", linkageName: "_ZN4core3fmt5Write10write_char17h4f01b2b0d5f948e5E", scope: !562, file: !399, line: 166, type: !43, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!562 = !DINamespace(name: "Write", scope: !401)
!563 = !DILocation(line: 167, column: 43, scope: !561)
!564 = !DILocation(line: 682, column: 42, scope: !565, inlinedAt: !572)
!565 = distinct !DILexicalBlock(scope: !567, file: !566, line: 682, column: 9)
!566 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/char/methods.rs", directory: "", checksumkind: CSK_MD5, checksum: "1da24b0324873142de4e6ec9fd7437bd")
!567 = distinct !DILexicalBlock(scope: !568, file: !566, line: 680, column: 5)
!568 = distinct !DISubprogram(name: "encode_utf8", linkageName: "_ZN4core4char7methods22_$LT$impl$u20$char$GT$11encode_utf817h38ea5cbbf0ec08b3E", scope: !569, file: !566, line: 680, type: !43, scopeLine: 680, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!569 = !DINamespace(name: "{impl#0}", scope: !570)
!570 = !DINamespace(name: "methods", scope: !571)
!571 = !DINamespace(name: "char", scope: !50)
!572 = !DILocation(line: 167, column: 26, scope: !561)
!573 = !DILocation(line: 167, column: 9, scope: !561)
!574 = !DILocation(line: 168, column: 6, scope: !561)
!575 = distinct !DISubprogram(name: "write_fmt<std::io::Write::write_fmt::Adapter<std::sys::pal::unix::stdio::Stderr>>", linkageName: "_ZN4core3fmt5Write9write_fmt17h0e2d40cf4102a079E", scope: !562, file: !399, line: 194, type: !43, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!576 = !DILocation(line: 215, column: 9, scope: !575)
!577 = !DILocation(line: 216, column: 6, scope: !575)
!578 = distinct !DISubprogram(name: "spec_write_fmt<std::io::Write::write_fmt::Adapter<std::sys::pal::unix::stdio::Stderr>>", linkageName: "_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h8e1c4d362e134ddbE", scope: !579, file: !399, line: 210, type: !43, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!579 = !DINamespace(name: "{impl#1}", scope: !580)
!580 = !DINamespace(name: "write_fmt", scope: !562)
!581 = !DILocation(line: 211, column: 17, scope: !578)
!582 = !DILocation(line: 212, column: 14, scope: !578)
!583 = distinct !DISubprogram(name: "encode_utf8_raw", linkageName: "_ZN4core4char7methods15encode_utf8_raw17hf0ab1d524fecd9a9E", scope: !570, file: !566, line: 1769, type: !43, scopeLine: 1769, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!584 = !DILocation(line: 1742, column: 8, scope: !585, inlinedAt: !587)
!585 = distinct !DILexicalBlock(scope: !586, file: !566, line: 1741, column: 1)
!586 = distinct !DISubprogram(name: "len_utf8", linkageName: "_ZN4core4char7methods8len_utf817h8ebace71b4f3f3e8E", scope: !570, file: !566, line: 1741, type: !43, scopeLine: 1741, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!587 = !DILocation(line: 1770, column: 15, scope: !583)
!588 = !DILocation(line: 1744, column: 15, scope: !585, inlinedAt: !587)
!589 = !DILocation(line: 1746, column: 15, scope: !585, inlinedAt: !587)
!590 = !DILocation(line: 1773, column: 13, scope: !591)
!591 = distinct !DILexicalBlock(scope: !592, file: !566, line: 1772, column: 9)
!592 = distinct !DILexicalBlock(scope: !583, file: !566, line: 1770, column: 5)
!593 = !DILocation(line: 1774, column: 9, scope: !592)
!594 = !DILocation(line: 1797, column: 16, scope: !592)
!595 = !DILocation(line: 446, column: 9, scope: !596, inlinedAt: !602)
!596 = distinct !DILexicalBlock(scope: !598, file: !597, line: 445, column: 5)
!597 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/slice/index.rs", directory: "", checksumkind: CSK_MD5, checksum: "19489bf30accd8a2a6434f8cef0f6067")
!598 = distinct !DISubprogram(name: "index_mut<u8>", linkageName: "_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h8a3b9ec2973a3c93E", scope: !599, file: !597, line: 445, type: !43, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!599 = !DINamespace(name: "{impl#5}", scope: !600)
!600 = !DINamespace(name: "index", scope: !601)
!601 = !DINamespace(name: "slice", scope: !50)
!602 = !DILocation(line: 29, column: 15, scope: !603, inlinedAt: !606)
!603 = distinct !DILexicalBlock(scope: !604, file: !597, line: 28, column: 5)
!604 = distinct !DISubprogram(name: "index_mut<u8, core::ops::range::RangeTo<usize>>", linkageName: "_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h8a1ea826fa0f3b11E", scope: !605, file: !597, line: 28, type: !43, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!605 = !DINamespace(name: "{impl#1}", scope: !600)
!606 = !DILocation(line: 1797, column: 13, scope: !592)
!607 = !DILocation(line: 1798, column: 2, scope: !583)
!608 = !DILocation(line: 1776, column: 19, scope: !609)
!609 = distinct !DILexicalBlock(scope: !592, file: !566, line: 1775, column: 9)
!610 = !DILocation(line: 1776, column: 18, scope: !609)
!611 = !DILocation(line: 1776, column: 13, scope: !609)
!612 = !DILocation(line: 1777, column: 18, scope: !609)
!613 = !DILocation(line: 1777, column: 13, scope: !609)
!614 = !DILocation(line: 1778, column: 9, scope: !592)
!615 = !DILocation(line: 1780, column: 19, scope: !616)
!616 = distinct !DILexicalBlock(scope: !592, file: !566, line: 1779, column: 9)
!617 = !DILocation(line: 1780, column: 18, scope: !616)
!618 = !DILocation(line: 1780, column: 13, scope: !616)
!619 = !DILocation(line: 1781, column: 19, scope: !616)
!620 = !DILocation(line: 1781, column: 18, scope: !616)
!621 = !DILocation(line: 1781, column: 13, scope: !616)
!622 = !DILocation(line: 1782, column: 18, scope: !616)
!623 = !DILocation(line: 1782, column: 13, scope: !616)
!624 = !DILocation(line: 1783, column: 9, scope: !592)
!625 = !DILocation(line: 1785, column: 19, scope: !626)
!626 = distinct !DILexicalBlock(scope: !592, file: !566, line: 1784, column: 9)
!627 = !DILocation(line: 1785, column: 18, scope: !626)
!628 = !DILocation(line: 1785, column: 13, scope: !626)
!629 = !DILocation(line: 1786, column: 19, scope: !626)
!630 = !DILocation(line: 1786, column: 18, scope: !626)
!631 = !DILocation(line: 1786, column: 13, scope: !626)
!632 = !DILocation(line: 1787, column: 19, scope: !626)
!633 = !DILocation(line: 1787, column: 18, scope: !626)
!634 = !DILocation(line: 1787, column: 13, scope: !626)
!635 = !DILocation(line: 1788, column: 18, scope: !626)
!636 = !DILocation(line: 1788, column: 13, scope: !626)
!637 = !DILocation(line: 1789, column: 9, scope: !592)
!638 = distinct !DISubprogram(name: "index_mut<u8>", linkageName: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h685690eb09a700fcE", scope: !639, file: !597, line: 401, type: !43, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!639 = !DINamespace(name: "{impl#4}", scope: !600)
!640 = !DILocation(line: 402, column: 12, scope: !638)
!641 = !DILocation(line: 404, column: 19, scope: !638)
!642 = !DILocation(line: 403, column: 13, scope: !638)
!643 = !DILocation(line: 384, column: 27, scope: !644, inlinedAt: !647)
!644 = distinct !DILexicalBlock(scope: !645, file: !597, line: 383, column: 9)
!645 = distinct !DILexicalBlock(scope: !646, file: !597, line: 377, column: 5)
!646 = distinct !DISubprogram(name: "get_unchecked_mut<u8>", linkageName: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17haf87801ddfd082e2E", scope: !639, file: !597, line: 377, type: !43, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!647 = !DILocation(line: 408, column: 29, scope: !648)
!648 = distinct !DILexicalBlock(scope: !638, file: !597, line: 408, column: 9)
!649 = !DILocation(line: 1045, column: 18, scope: !650, inlinedAt: !653)
!650 = distinct !DILexicalBlock(scope: !651, file: !450, line: 1045, column: 9)
!651 = distinct !DILexicalBlock(scope: !652, file: !450, line: 1040, column: 5)
!652 = distinct !DISubprogram(name: "add<u8>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h68ea06319dc70c33E", scope: !453, file: !450, line: 1040, type: !43, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!653 = !DILocation(line: 385, column: 62, scope: !654, inlinedAt: !647)
!654 = distinct !DILexicalBlock(scope: !644, file: !597, line: 384, column: 13)
!655 = !DILocation(line: 409, column: 6, scope: !638)
!656 = !DILocation(line: 405, column: 13, scope: !638)
!657 = distinct !DISubprogram(name: "write_all<std::sys::pal::unix::stdio::Stderr>", linkageName: "_ZN3std2io5Write9write_all17h49c60de90589491fE", scope: !414, file: !413, line: 1704, type: !43, scopeLine: 1704, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!658 = !DILocation(line: 1705, column: 16, scope: !657)
!659 = !DILocation(line: 1706, column: 30, scope: !657)
!660 = !DILocation(line: 1706, column: 19, scope: !657)
!661 = !DILocation(line: 1706, column: 13, scope: !657)
!662 = !DILocation(line: 0, scope: !657)
!663 = !DILocation(line: 1719, column: 6, scope: !657)
!664 = !DILocation(line: 1714, column: 21, scope: !657)
!665 = !DILocation(line: 1714, column: 31, scope: !657)
!666 = !DILocation(line: 479, column: 12, scope: !667, inlinedAt: !670)
!667 = distinct !DILexicalBlock(scope: !668, file: !597, line: 478, column: 5)
!668 = distinct !DISubprogram(name: "index<u8>", linkageName: "_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc561558bb7793216E", scope: !669, file: !597, line: 478, type: !43, scopeLine: 478, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!669 = !DINamespace(name: "{impl#6}", scope: !600)
!670 = !DILocation(line: 18, column: 15, scope: !671, inlinedAt: !674)
!671 = distinct !DILexicalBlock(scope: !672, file: !597, line: 17, column: 5)
!672 = distinct !DISubprogram(name: "index<u8, core::ops::range::RangeFrom<usize>>", linkageName: "_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hebb9fb0f42cb7c56E", scope: !673, file: !597, line: 17, type: !43, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!673 = !DINamespace(name: "{impl#0}", scope: !600)
!674 = !DILocation(line: 1713, column: 36, scope: !675)
!675 = distinct !DILexicalBlock(scope: !657, file: !413, line: 1713, column: 17)
!676 = !DILocation(line: 371, column: 27, scope: !677, inlinedAt: !680)
!677 = distinct !DILexicalBlock(scope: !678, file: !597, line: 370, column: 9)
!678 = distinct !DILexicalBlock(scope: !679, file: !597, line: 361, column: 5)
!679 = distinct !DISubprogram(name: "get_unchecked<u8>", linkageName: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17he58566a40e2fd5fdE", scope: !639, file: !597, line: 361, type: !43, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!680 = !DILocation(line: 468, column: 44, scope: !681, inlinedAt: !684)
!681 = distinct !DILexicalBlock(scope: !682, file: !597, line: 468, column: 9)
!682 = distinct !DILexicalBlock(scope: !683, file: !597, line: 466, column: 5)
!683 = distinct !DISubprogram(name: "get_unchecked<u8>", linkageName: "_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17ha2a6b677b7a1656bE", scope: !669, file: !597, line: 466, type: !43, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!684 = !DILocation(line: 483, column: 25, scope: !685, inlinedAt: !670)
!685 = distinct !DILexicalBlock(scope: !667, file: !597, line: 483, column: 9)
!686 = !DILocation(line: 944, column: 18, scope: !687, inlinedAt: !693)
!687 = distinct !DILexicalBlock(scope: !689, file: !688, line: 944, column: 9)
!688 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/ptr/const_ptr.rs", directory: "", checksumkind: CSK_MD5, checksum: "09014d329840bfd2d530919196ac4f25")
!689 = distinct !DILexicalBlock(scope: !690, file: !688, line: 939, column: 5)
!690 = distinct !DISubprogram(name: "add<u8>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$3add17h18375bd88229bfedE", scope: !691, file: !688, line: 939, type: !43, scopeLine: 939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!691 = !DINamespace(name: "{impl#0}", scope: !692)
!692 = !DINamespace(name: "const_ptr", scope: !49)
!693 = !DILocation(line: 372, column: 54, scope: !694, inlinedAt: !680)
!694 = distinct !DILexicalBlock(scope: !677, file: !597, line: 371, column: 13)
!695 = !DILocation(line: 1713, column: 40, scope: !657)
!696 = !DILocation(line: 480, column: 13, scope: !667, inlinedAt: !670)
!697 = !DILocation(line: 1717, column: 9, scope: !657)
!698 = !DILocation(line: 1715, column: 21, scope: !657)
!699 = !DILocation(line: 1, column: 1, scope: !700)
!700 = !DILexicalBlockFile(scope: !657, file: !83, discriminator: 0)
!701 = !DILocation(line: 1704, column: 5, scope: !657)
!702 = distinct !DISubprogram(name: "is_interrupted", linkageName: "_ZN3std2io5error5Error14is_interrupted17h79019939c164723cE", scope: !704, file: !703, line: 946, type: !43, scopeLine: 946, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!703 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/std/src/io/error.rs", directory: "", checksumkind: CSK_MD5, checksum: "201b11646fb2abb20f285994b72946bf")
!704 = !DINamespace(name: "Error", scope: !441)
!705 = !DILocation(line: 211, column: 30, scope: !706, inlinedAt: !710)
!706 = distinct !DILexicalBlock(scope: !707, file: !438, line: 211, column: 9)
!707 = distinct !DILexicalBlock(scope: !708, file: !438, line: 209, column: 5)
!708 = distinct !DISubprogram(name: "data", linkageName: "_ZN3std2io5error14repr_bitpacked4Repr4data17h7677c990fa9b0ac1E", scope: !709, file: !438, line: 209, type: !43, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!709 = !DINamespace(name: "Repr", scope: !440)
!710 = !DILocation(line: 947, column: 25, scope: !702)
!711 = !DILocation(line: 211, column: 18, scope: !706, inlinedAt: !710)
!712 = !DILocation(line: 947, column: 15, scope: !702)
!713 = !DILocation(line: 947, column: 9, scope: !702)
!714 = !DILocation(line: 948, column: 27, scope: !702)
!715 = !DILocation(line: 246, column: 5, scope: !716, inlinedAt: !722)
!716 = distinct !DILexicalBlock(scope: !718, file: !717, line: 245, column: 1)
!717 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/std/src/sys/pal/unix/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "9a27a23c5ffe5c99a9b8ebce328717cf")
!718 = distinct !DISubprogram(name: "is_interrupted", linkageName: "_ZN3std3sys3pal4unix14is_interrupted17hf7a9f2e497e0ea1fE", scope: !719, file: !717, line: 245, type: !43, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!719 = !DINamespace(name: "unix", scope: !720)
!720 = !DINamespace(name: "pal", scope: !721)
!721 = !DINamespace(name: "sys", scope: !42)
!722 = !DILocation(line: 948, column: 36, scope: !723)
!723 = distinct !DILexicalBlock(scope: !702, file: !703, line: 948, column: 13)
!724 = !DILocation(line: 948, column: 60, scope: !702)
!725 = !DILocation(line: 950, column: 31, scope: !702)
!726 = !{i8 0, i8 41}
!727 = !DILocation(line: 175, column: 45, scope: !728, inlinedAt: !733)
!728 = distinct !DILexicalBlock(scope: !729, file: !703, line: 175, column: 45)
!729 = distinct !DILexicalBlock(scope: !730, file: !703, line: 175, column: 45)
!730 = distinct !DILexicalBlock(scope: !731, file: !703, line: 175, column: 45)
!731 = distinct !DISubprogram(name: "eq", linkageName: "_ZN66_$LT$std..io..error..ErrorKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17haf27734818d761d5E", scope: !732, file: !703, line: 175, type: !43, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!732 = !DINamespace(name: "{impl#19}", scope: !441)
!733 = !DILocation(line: 950, column: 40, scope: !734)
!734 = distinct !DILexicalBlock(scope: !702, file: !703, line: 950, column: 13)
!735 = !DILocation(line: 950, column: 69, scope: !702)
!736 = !DILocation(line: 951, column: 38, scope: !702)
!737 = !DILocation(line: 175, column: 45, scope: !738, inlinedAt: !739)
!738 = distinct !DILexicalBlock(scope: !731, file: !703, line: 175, column: 45)
!739 = !DILocation(line: 951, column: 44, scope: !740)
!740 = distinct !DILexicalBlock(scope: !702, file: !703, line: 951, column: 13)
!741 = !DILocation(line: 175, column: 45, scope: !742, inlinedAt: !739)
!742 = distinct !DILexicalBlock(scope: !743, file: !703, line: 175, column: 45)
!743 = distinct !DILexicalBlock(scope: !738, file: !703, line: 175, column: 45)
!744 = !DILocation(line: 951, column: 75, scope: !702)
!745 = !DILocation(line: 949, column: 31, scope: !702)
!746 = !DILocation(line: 175, column: 45, scope: !747, inlinedAt: !748)
!747 = distinct !DILexicalBlock(scope: !731, file: !703, line: 175, column: 45)
!748 = !DILocation(line: 949, column: 37, scope: !749)
!749 = distinct !DILexicalBlock(scope: !702, file: !703, line: 949, column: 13)
!750 = !DILocation(line: 175, column: 45, scope: !751, inlinedAt: !748)
!751 = distinct !DILexicalBlock(scope: !752, file: !703, line: 175, column: 45)
!752 = distinct !DILexicalBlock(scope: !747, file: !703, line: 175, column: 45)
!753 = !DILocation(line: 949, column: 68, scope: !702)
!754 = !DILocation(line: 953, column: 6, scope: !702)
!755 = distinct !DISubprogram(name: "decode_repr<&std::io::error::Custom, std::io::error::repr_bitpacked::{impl#2}::data::{closure_env#0}>", linkageName: "_ZN3std2io5error14repr_bitpacked11decode_repr17haf037564bcdeb11dE", scope: !440, file: !438, line: 245, type: !43, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!756 = !DILocation(line: 217, column: 18, scope: !757, inlinedAt: !760)
!757 = distinct !DILexicalBlock(scope: !758, file: !450, line: 217, column: 9)
!758 = distinct !DILexicalBlock(scope: !759, file: !450, line: 213, column: 5)
!759 = distinct !DISubprogram(name: "addr<()>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h9c332a19e56e28c2E", scope: !453, file: !450, line: 213, type: !43, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!760 = !DILocation(line: 249, column: 29, scope: !755)
!761 = !DILocation(line: 250, column: 11, scope: !762)
!762 = distinct !DILexicalBlock(scope: !755, file: !438, line: 249, column: 5)
!763 = !DILocation(line: 250, column: 5, scope: !762)
!764 = !DILocation(line: 252, column: 24, scope: !762)
!765 = !DILocation(line: 253, column: 13, scope: !766)
!766 = distinct !DILexicalBlock(scope: !762, file: !438, line: 252, column: 13)
!767 = !DILocation(line: 254, column: 9, scope: !762)
!768 = !DILocation(line: 256, column: 29, scope: !762)
!769 = !DILocation(line: 257, column: 24, scope: !770)
!770 = distinct !DILexicalBlock(scope: !762, file: !438, line: 256, column: 13)
!771 = !DILocation(line: 269, column: 31, scope: !762)
!772 = !DILocation(line: 269, column: 94, scope: !762)
!773 = !DILocation(line: 564, column: 18, scope: !774, inlinedAt: !777)
!774 = distinct !DILexicalBlock(scope: !775, file: !450, line: 564, column: 9)
!775 = distinct !DILexicalBlock(scope: !776, file: !450, line: 559, column: 5)
!776 = distinct !DISubprogram(name: "wrapping_offset<u8>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$15wrapping_offset17ha8f4526834ac7478E", scope: !453, file: !450, line: 559, type: !43, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!777 = !DILocation(line: 1299, column: 14, scope: !778, inlinedAt: !780)
!778 = distinct !DILexicalBlock(scope: !779, file: !450, line: 1295, column: 5)
!779 = distinct !DISubprogram(name: "wrapping_sub<u8>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$12wrapping_sub17hae069ecf1b3e002dE", scope: !453, file: !450, line: 1295, type: !43, scopeLine: 1295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!780 = !DILocation(line: 1318, column: 27, scope: !781, inlinedAt: !783)
!781 = distinct !DILexicalBlock(scope: !782, file: !450, line: 1317, column: 5)
!782 = distinct !DISubprogram(name: "wrapping_byte_sub<()>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$17wrapping_byte_sub17ha27f0979708cbc61E", scope: !453, file: !450, line: 1317, type: !43, scopeLine: 1317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!783 = !DILocation(line: 274, column: 39, scope: !762)
!784 = !DILocation(line: 275, column: 13, scope: !785)
!785 = distinct !DILexicalBlock(scope: !762, file: !438, line: 274, column: 13)
!786 = !DILocation(line: 282, column: 1, scope: !755)
!787 = !DILocation(line: 974, column: 15, scope: !788, inlinedAt: !790)
!788 = distinct !DILexicalBlock(scope: !789, file: !486, line: 970, column: 5)
!789 = distinct !DISubprogram(name: "unwrap_or_else<std::io::error::ErrorKind, std::io::error::repr_bitpacked::decode_repr::{closure_env#0}<&std::io::error::Custom, std::io::error::repr_bitpacked::{impl#2}::data::{closure_env#0}>>", linkageName: "_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17h7b472889c7aad269E", scope: !488, file: !486, line: 970, type: !43, scopeLine: 970, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!790 = !DILocation(line: 257, column: 50, scope: !770)
!791 = !DILocation(line: 974, column: 9, scope: !788, inlinedAt: !790)
!792 = !DILocation(line: 267, column: 13, scope: !793)
!793 = distinct !DILexicalBlock(scope: !770, file: !438, line: 257, column: 13)
!794 = !DILocation(line: 268, column: 9, scope: !762)
!795 = !DILocation(line: 282, column: 2, scope: !755)
!796 = distinct !DISubprogram(name: "do_call<core::panic::unwind_safe::AssertUnwindSafe<std::thread::{impl#7}::drop::{closure_env#0}<()>>, ()>", linkageName: "_ZN3std9panicking3try7do_call17hab64abe00390c901E", scope: !797, file: !387, line: 548, type: !43, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!797 = !DINamespace(name: "try", scope: !388)
!798 = !DILocation(line: 1215, column: 9, scope: !799, inlinedAt: !802)
!799 = distinct !DILexicalBlock(scope: !800, file: !48, line: 1210, column: 5)
!800 = distinct !DILexicalBlock(scope: !801, file: !48, line: 1182, column: 1)
!801 = distinct !DISubprogram(name: "read<core::panic::unwind_safe::AssertUnwindSafe<std::thread::{impl#7}::drop::{closure_env#0}<()>>>", linkageName: "_ZN4core3ptr4read17h387fcd2869667d2aE", scope: !49, file: !48, line: 1182, type: !43, scopeLine: 1182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!802 = !DILocation(line: 113, column: 18, scope: !803, inlinedAt: !809)
!803 = distinct !DILexicalBlock(scope: !805, file: !804, line: 113, column: 9)
!804 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/mem/manually_drop.rs", directory: "", checksumkind: CSK_MD5, checksum: "db150196ad24cbd302765ce40020defd")
!805 = distinct !DILexicalBlock(scope: !806, file: !804, line: 110, column: 5)
!806 = distinct !DISubprogram(name: "take<core::panic::unwind_safe::AssertUnwindSafe<std::thread::{impl#7}::drop::{closure_env#0}<()>>>", linkageName: "_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$4take17h927e21e05f52adfbE", scope: !807, file: !804, line: 110, type: !43, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!807 = !DINamespace(name: "ManuallyDrop", scope: !808)
!808 = !DINamespace(name: "manually_drop", scope: !214)
!809 = !DILocation(line: 553, column: 21, scope: !810)
!810 = distinct !DILexicalBlock(scope: !811, file: !387, line: 552, column: 13)
!811 = distinct !DILexicalBlock(scope: !812, file: !387, line: 551, column: 13)
!812 = distinct !DILexicalBlock(scope: !796, file: !387, line: 550, column: 9)
!813 = !DILocation(line: 554, column: 40, scope: !814)
!814 = distinct !DILexicalBlock(scope: !810, file: !387, line: 553, column: 13)
!815 = !DILocation(line: 556, column: 6, scope: !796)
!816 = distinct !DISubprogram(name: "do_catch<core::panic::unwind_safe::AssertUnwindSafe<std::thread::{impl#7}::drop::{closure_env#0}<()>>, ()>", linkageName: "_ZN3std9panicking3try8do_catch17hd177a3503128d6f4E", scope: !797, file: !387, line: 571, type: !43, scopeLine: 571, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!817 = !DILocation(line: 580, column: 23, scope: !818)
!818 = distinct !DILexicalBlock(scope: !819, file: !387, line: 579, column: 13)
!819 = distinct !DILexicalBlock(scope: !820, file: !387, line: 578, column: 13)
!820 = distinct !DILexicalBlock(scope: !816, file: !387, line: 577, column: 9)
!821 = !DILocation(line: 571, column: 5, scope: !816)
!822 = !DILocation(line: 581, column: 13, scope: !823)
!823 = distinct !DILexicalBlock(scope: !818, file: !387, line: 580, column: 13)
!824 = !DILocation(line: 583, column: 6, scope: !816)
!825 = !{ptr @_ZN3std9panicking3try7do_call17h6b944bbd59d22d42E, ptr @_ZN3std9panicking3try7do_call17h9069631fdbf1b3edE, ptr @_ZN3std9panicking3try7do_call17hab64abe00390c901E}
!826 = !{ptr @_ZN3std9panicking3try8do_catch17h6f1590165f690618E, ptr @_ZN3std9panicking3try8do_catch17haef4d649ad8ab040E, ptr @_ZN3std9panicking3try8do_catch17hd177a3503128d6f4E}
!827 = distinct !DISubprogram(name: "call_once<(), std::thread::{impl#7}::drop::{closure_env#0}<()>>", linkageName: "_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h9e45e160de3f35edE", scope: !829, file: !828, line: 271, type: !43, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!828 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/panic/unwind_safe.rs", directory: "", checksumkind: CSK_MD5, checksum: "3aeae5e206c350fd6397a6ba1631e091")
!829 = !DINamespace(name: "{impl#23}", scope: !830)
!830 = !DINamespace(name: "unwind_safe", scope: !831)
!831 = !DINamespace(name: "panic", scope: !50)
!832 = !DILocation(line: 272, column: 9, scope: !827)
!833 = !DILocation(line: 273, column: 6, scope: !827)
!834 = distinct !DISubprogram(name: "call_once<std::thread::{impl#7}::drop::{closure_env#0}<()>, ()>", linkageName: "_ZN4core3ops8function6FnOnce9call_once17h59358a273904c6c6E", scope: !54, file: !53, line: 250, type: !43, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!835 = !DILocation(line: 250, column: 5, scope: !834)
!836 = distinct !DISubprogram(name: "{closure#0}<()>", linkageName: "_ZN70_$LT$std..thread..Packet$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h6a5febaabc9414f2E", scope: !837, file: !116, line: 1491, type: !43, scopeLine: 1491, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!837 = !DINamespace(name: "drop", scope: !277)
!838 = !DILocation(line: 1492, column: 38, scope: !836)
!839 = !DILocation(line: 1492, column: 14, scope: !836)
!840 = !DILocation(line: 1492, column: 13, scope: !836)
!841 = !DILocation(line: 1491, column: 69, scope: !836)
!842 = !DILocation(line: 1493, column: 10, scope: !836)
!843 = distinct !DISubprogram(name: "drop_in_place<core::pin::Pin<alloc::sync::Arc<std::thread::Inner, alloc::alloc::Global>>>", linkageName: "_ZN4core3ptr85drop_in_place$LT$core..pin..Pin$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$$GT$17h61ed8a6e4e26a075E", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!844 = !DILocation(line: 507, column: 1, scope: !843)
!845 = distinct !DISubprogram(name: "drop_in_place<alloc::sync::Arc<std::thread::Inner, alloc::alloc::Global>>", linkageName: "_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$17h76770dceea143a43E", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!846 = !DILocation(line: 507, column: 1, scope: !845)
!847 = distinct !DISubprogram(name: "drop<std::thread::Inner, alloc::alloc::Global>", linkageName: "_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h64560a8df4e6d256E", scope: !161, file: !160, line: 2372, type: !43, scopeLine: 2372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!848 = !DILocation(line: 399, column: 20, scope: !849, inlinedAt: !852)
!849 = distinct !DILexicalBlock(scope: !850, file: !166, line: 399, column: 9)
!850 = distinct !DILexicalBlock(scope: !851, file: !166, line: 395, column: 5)
!851 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<std::thread::Inner>>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h4dbbff9939c1d124E", scope: !169, file: !166, line: 395, type: !43, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!852 = !DILocation(line: 1748, column: 27, scope: !853, inlinedAt: !856)
!853 = distinct !DILexicalBlock(scope: !854, file: !160, line: 1748, column: 9)
!854 = distinct !DILexicalBlock(scope: !855, file: !160, line: 1742, column: 5)
!855 = distinct !DISubprogram(name: "inner<std::thread::Inner, alloc::alloc::Global>", linkageName: "_ZN5alloc4sync16Arc$LT$T$C$A$GT$5inner17hee8ab5ba1cd10258E", scope: !175, file: !160, line: 1742, type: !43, scopeLine: 1742, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!856 = !DILocation(line: 2376, column: 17, scope: !847)
!857 = !DILocation(line: 3345, column: 24, scope: !858, inlinedAt: !861)
!858 = distinct !DILexicalBlock(scope: !859, file: !179, line: 3341, column: 5)
!859 = distinct !DILexicalBlock(scope: !860, file: !179, line: 3339, column: 1)
!860 = distinct !DISubprogram(name: "atomic_sub<usize>", linkageName: "_ZN4core4sync6atomic10atomic_sub17heaade2912ce1ce0eE", scope: !182, file: !179, line: 3339, type: !43, scopeLine: 3339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!861 = !DILocation(line: 2683, column: 26, scope: !862, inlinedAt: !865)
!862 = distinct !DILexicalBlock(scope: !863, file: !179, line: 2683, column: 17)
!863 = distinct !DILexicalBlock(scope: !864, file: !179, line: 2681, column: 13)
!864 = distinct !DISubprogram(name: "fetch_sub", linkageName: "_ZN4core4sync6atomic11AtomicUsize9fetch_sub17h5640ae42c9f15fc4E", scope: !188, file: !179, line: 2681, type: !43, scopeLine: 2681, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!865 = !DILocation(line: 2376, column: 32, scope: !847)
!866 = !DILocation(line: 2376, column: 12, scope: !847)
!867 = !DILocation(line: 2408, column: 9, scope: !847)
!868 = !DILocation(line: 2411, column: 13, scope: !869)
!869 = distinct !DILexicalBlock(scope: !847, file: !160, line: 2410, column: 9)
!870 = !DILocation(line: 2413, column: 6, scope: !847)
!871 = distinct !DISubprogram(name: "drop_slow<std::thread::Inner, alloc::alloc::Global>", linkageName: "_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h2b3af5afb82a5b83E", scope: !175, file: !160, line: 1753, type: !43, scopeLine: 1753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!872 = !DILocation(line: 2312, column: 25, scope: !873, inlinedAt: !876)
!873 = distinct !DILexicalBlock(scope: !874, file: !160, line: 2312, column: 9)
!874 = distinct !DILexicalBlock(scope: !875, file: !160, line: 2309, column: 5)
!875 = distinct !DISubprogram(name: "get_mut_unchecked<std::thread::Inner, alloc::alloc::Global>", linkageName: "_ZN5alloc4sync16Arc$LT$T$C$A$GT$17get_mut_unchecked17h6bf4b85451f13943E", scope: !175, file: !160, line: 2309, type: !43, scopeLine: 2309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!876 = !DILocation(line: 1756, column: 37, scope: !877)
!877 = distinct !DILexicalBlock(scope: !871, file: !160, line: 1756, column: 9)
!878 = !DILocation(line: 1756, column: 18, scope: !877)
!879 = !DILocation(line: 1762, column: 26, scope: !871)
!880 = !DILocation(line: 1762, column: 43, scope: !871)
!881 = !DILocation(line: 1762, column: 14, scope: !871)
!882 = !DILocation(line: 992, column: 24, scope: !883, inlinedAt: !885)
!883 = distinct !DILexicalBlock(scope: !884, file: !212, line: 992, column: 1)
!884 = distinct !DISubprogram(name: "drop<alloc::sync::Weak<std::thread::Inner, &alloc::alloc::Global>>", linkageName: "_ZN4core3mem4drop17ha7313749a96d8d67E", scope: !214, file: !212, line: 992, type: !43, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!885 = !DILocation(line: 1762, column: 9, scope: !871)
!886 = !DILocation(line: 1763, column: 6, scope: !871)
!887 = distinct !DISubprogram(name: "drop_in_place<std::thread::Inner>", linkageName: "_ZN4core3ptr39drop_in_place$LT$std..thread..Inner$GT$17h7e975b1c9fbe1fc1E", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!888 = !DILocation(line: 507, column: 1, scope: !887)
!889 = distinct !DISubprogram(name: "drop_in_place<alloc::sync::Weak<std::thread::Inner, &alloc::alloc::Global>>", linkageName: "_ZN4core3ptr91drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Inner$C$$RF$alloc..alloc..Global$GT$$GT$17h090fb39eafd47674E", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!890 = !DILocation(line: 507, column: 1, scope: !889)
!891 = distinct !DISubprogram(name: "drop<std::thread::Inner, &alloc::alloc::Global>", linkageName: "_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6033fa1b45917a20E", scope: !222, file: !160, line: 2984, type: !43, scopeLine: 2984, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!892 = !DILocation(line: 2845, column: 19, scope: !893, inlinedAt: !895)
!893 = distinct !DILexicalBlock(scope: !894, file: !160, line: 2844, column: 5)
!894 = distinct !DISubprogram(name: "inner<std::thread::Inner, &alloc::alloc::Global>", linkageName: "_ZN5alloc4sync17Weak$LT$T$C$A$GT$5inner17hb7b3193f735b604bE", scope: !226, file: !160, line: 2844, type: !43, scopeLine: 2844, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!895 = !DILocation(line: 2993, column: 47, scope: !896)
!896 = distinct !DILexicalBlock(scope: !891, file: !160, line: 2993, column: 55)
!897 = !DILocation(line: 2791, column: 5, scope: !898, inlinedAt: !900)
!898 = distinct !DILexicalBlock(scope: !899, file: !231, line: 2790, column: 1)
!899 = distinct !DISubprogram(name: "is_dangling<alloc::sync::ArcInner<std::thread::Inner>>", linkageName: "_ZN5alloc2rc11is_dangling17hcfcfa8ff8acd87f2E", scope: !233, file: !231, line: 2790, type: !43, scopeLine: 2790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!900 = !DILocation(line: 2846, column: 12, scope: !901, inlinedAt: !895)
!901 = distinct !DILexicalBlock(scope: !893, file: !160, line: 2845, column: 9)
!902 = !DILocation(line: 2852, column: 69, scope: !903, inlinedAt: !895)
!903 = distinct !DILexicalBlock(scope: !901, file: !160, line: 2852, column: 18)
!904 = !DILocation(line: 3345, column: 24, scope: !905, inlinedAt: !908)
!905 = distinct !DILexicalBlock(scope: !906, file: !179, line: 3341, column: 5)
!906 = distinct !DILexicalBlock(scope: !907, file: !179, line: 3339, column: 1)
!907 = distinct !DISubprogram(name: "atomic_sub<usize>", linkageName: "_ZN4core4sync6atomic10atomic_sub17heaade2912ce1ce0eE", scope: !182, file: !179, line: 3339, type: !43, scopeLine: 3339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!908 = !DILocation(line: 2683, column: 26, scope: !909, inlinedAt: !912)
!909 = distinct !DILexicalBlock(scope: !910, file: !179, line: 2683, column: 17)
!910 = distinct !DILexicalBlock(scope: !911, file: !179, line: 2681, column: 13)
!911 = distinct !DISubprogram(name: "fetch_sub", linkageName: "_ZN4core4sync6atomic11AtomicUsize9fetch_sub17h5640ae42c9f15fc4E", scope: !188, file: !179, line: 2681, type: !43, scopeLine: 2681, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!912 = !DILocation(line: 2995, column: 23, scope: !913)
!913 = distinct !DILexicalBlock(scope: !891, file: !160, line: 2993, column: 9)
!914 = !DILocation(line: 2995, column: 12, scope: !913)
!915 = !DILocation(line: 3001, column: 6, scope: !891)
!916 = !DILocation(line: 2996, column: 13, scope: !913)
!917 = !DILocation(line: 2998, column: 17, scope: !918)
!918 = distinct !DILexicalBlock(scope: !913, file: !160, line: 2997, column: 13)
!919 = !DILocation(line: 2998, column: 39, scope: !918)
!920 = !DILocation(line: 2995, column: 9, scope: !913)
!921 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<alloc::ffi::c_str::CString>>", linkageName: "_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17h52fc51eff61cad41E", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!922 = !DILocation(line: 507, column: 1, scope: !921)
!923 = distinct !DISubprogram(name: "drop_in_place<alloc::ffi::c_str::CString>", linkageName: "_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17h6b9daf21158d83b6E", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!924 = !DILocation(line: 507, column: 1, scope: !923)
!925 = distinct !DISubprogram(name: "drop", linkageName: "_ZN68_$LT$alloc..ffi..c_str..CString$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb03b0a552e79e9b5E", scope: !927, file: !926, line: 701, type: !43, scopeLine: 701, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!926 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/alloc/src/ffi/c_str.rs", directory: "", checksumkind: CSK_MD5, checksum: "8189941a7e0504c17ae83a6aecdf4011")
!927 = !DINamespace(name: "{impl#2}", scope: !928)
!928 = !DINamespace(name: "c_str", scope: !929)
!929 = !DINamespace(name: "ffi", scope: !163)
!930 = !DILocation(line: 703, column: 14, scope: !931)
!931 = distinct !DILexicalBlock(scope: !925, file: !926, line: 702, column: 9)
!932 = !DILocation(line: 703, column: 13, scope: !931)
!933 = !DILocation(line: 705, column: 6, scope: !925)
!934 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<[u8], alloc::alloc::Global>>", linkageName: "_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17h3ed58b4a9fa7e57dE", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!935 = !DILocation(line: 507, column: 1, scope: !934)
!936 = distinct !DISubprogram(name: "drop<[u8], alloc::alloc::Global>", linkageName: "_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd04c945e43bcf4fdE", scope: !505, file: !504, line: 1235, type: !43, scopeLine: 1235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!937 = !DILocation(line: 1238, column: 19, scope: !936)
!938 = !DILocation(line: 1242, column: 16, scope: !939)
!939 = distinct !DILexicalBlock(scope: !940, file: !504, line: 1241, column: 13)
!940 = distinct !DILexicalBlock(scope: !941, file: !504, line: 1240, column: 9)
!941 = distinct !DILexicalBlock(scope: !936, file: !504, line: 1238, column: 9)
!942 = !DILocation(line: 1243, column: 17, scope: !939)
!943 = !DILocation(line: 1242, column: 13, scope: !939)
!944 = !DILocation(line: 1246, column: 6, scope: !936)
!945 = distinct !DISubprogram(name: "drop<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>", linkageName: "_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9963602de3cf931fE", scope: !505, file: !504, line: 1235, type: !43, scopeLine: 1235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!946 = !DILocation(line: 1238, column: 19, scope: !945)
!947 = !DILocation(line: 394, column: 14, scope: !948, inlinedAt: !951)
!948 = distinct !DILexicalBlock(scope: !949, file: !212, line: 394, column: 5)
!949 = distinct !DILexicalBlock(scope: !950, file: !212, line: 392, column: 1)
!950 = distinct !DISubprogram(name: "size_of_val_raw<(dyn core::any::Any + core::marker::Send)>", linkageName: "_ZN4core3mem15size_of_val_raw17h992b0c73cfa7a801E", scope: !214, file: !212, line: 392, type: !43, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!951 = !DILocation(line: 201, column: 39, scope: !952, inlinedAt: !955)
!952 = distinct !DILexicalBlock(scope: !953, file: !523, line: 201, column: 29)
!953 = distinct !DILexicalBlock(scope: !954, file: !523, line: 199, column: 5)
!954 = distinct !DISubprogram(name: "for_value_raw<(dyn core::any::Any + core::marker::Send)>", linkageName: "_ZN4core5alloc6layout6Layout13for_value_raw17hc6bb6bea21da650cE", scope: !526, file: !523, line: 199, type: !43, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!955 = !DILocation(line: 1241, column: 26, scope: !956)
!956 = distinct !DILexicalBlock(scope: !957, file: !504, line: 1240, column: 9)
!957 = distinct !DILexicalBlock(scope: !945, file: !504, line: 1238, column: 9)
!958 = !DILocation(line: 1242, column: 16, scope: !959)
!959 = distinct !DILexicalBlock(scope: !956, file: !504, line: 1241, column: 13)
!960 = !DILocation(line: 536, column: 14, scope: !961, inlinedAt: !964)
!961 = distinct !DILexicalBlock(scope: !962, file: !212, line: 536, column: 5)
!962 = distinct !DILexicalBlock(scope: !963, file: !212, line: 534, column: 1)
!963 = distinct !DISubprogram(name: "align_of_val_raw<(dyn core::any::Any + core::marker::Send)>", linkageName: "_ZN4core3mem16align_of_val_raw17h9714f793953634bbE", scope: !214, file: !212, line: 534, type: !43, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!964 = !DILocation(line: 201, column: 64, scope: !952, inlinedAt: !955)
!965 = !DILocation(line: 1243, column: 17, scope: !959)
!966 = !DILocation(line: 1242, column: 13, scope: !959)
!967 = !DILocation(line: 1246, column: 6, scope: !945)
!968 = distinct !DISubprogram(name: "fmt<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>", linkageName: "_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h88590e793914625dE", scope: !969, file: !504, line: 1911, type: !43, scopeLine: 1911, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!969 = !DINamespace(name: "{impl#36}", scope: !506)
!970 = !DILocation(line: 1912, column: 25, scope: !968)
!971 = !DILocation(line: 1912, column: 9, scope: !968)
!972 = !DILocation(line: 1913, column: 6, scope: !968)
!973 = distinct !DISubprogram(name: "join<()>", linkageName: "_ZN3std6thread18JoinInner$LT$T$GT$4join17h37f5f30e9b449017E", scope: !974, file: !116, line: 1515, type: !43, scopeLine: 1515, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!974 = !DINamespace(name: "JoinInner", scope: !117)
!975 = !DILocation(line: 1516, column: 9, scope: !973)
!976 = !DILocation(line: 1518, column: 5, scope: !973)
!977 = !DILocation(line: 1517, column: 22, scope: !973)
!978 = !DILocation(line: 2235, column: 12, scope: !979, inlinedAt: !981)
!979 = distinct !DILexicalBlock(scope: !980, file: !160, line: 2234, column: 5)
!980 = distinct !DISubprogram(name: "get_mut<std::thread::Packet<()>, alloc::alloc::Global>", linkageName: "_ZN5alloc4sync16Arc$LT$T$C$A$GT$7get_mut17h606c81aeece5619fE", scope: !175, file: !160, line: 2234, type: !43, scopeLine: 2234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!981 = !DILocation(line: 1517, column: 9, scope: !973)
!982 = !DILocation(line: 931, column: 21, scope: !983, inlinedAt: !985)
!983 = distinct !DILexicalBlock(scope: !984, file: !486, line: 928, column: 5)
!984 = distinct !DISubprogram(name: "unwrap<&mut std::thread::Packet<()>>", linkageName: "_ZN4core6option15Option$LT$T$GT$6unwrap17hea20bcfa569180b9E", scope: !488, file: !486, line: 928, type: !43, scopeLine: 928, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!985 = !DILocation(line: 1517, column: 40, scope: !973)
!986 = !DILocation(line: 2312, column: 25, scope: !987, inlinedAt: !990)
!987 = distinct !DILexicalBlock(scope: !988, file: !160, line: 2312, column: 9)
!988 = distinct !DILexicalBlock(scope: !989, file: !160, line: 2309, column: 5)
!989 = distinct !DISubprogram(name: "get_mut_unchecked<std::thread::Packet<()>, alloc::alloc::Global>", linkageName: "_ZN5alloc4sync16Arc$LT$T$C$A$GT$17get_mut_unchecked17h3fc6680a32467ad9E", scope: !175, file: !160, line: 2309, type: !43, scopeLine: 2309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!990 = !DILocation(line: 2241, column: 27, scope: !991, inlinedAt: !981)
!991 = distinct !DILexicalBlock(scope: !979, file: !160, line: 2241, column: 13)
!992 = !DILocation(line: 1690, column: 28, scope: !993, inlinedAt: !995)
!993 = distinct !DILexicalBlock(scope: !994, file: !486, line: 1688, column: 5)
!994 = distinct !DISubprogram(name: "take<core::result::Result<(), alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>", linkageName: "_ZN4core6option15Option$LT$T$GT$4take17hc5f6e31eceabbaf3E", scope: !488, file: !486, line: 1688, type: !43, scopeLine: 1688, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!995 = !DILocation(line: 1517, column: 66, scope: !973)
!996 = !DILocation(line: 1215, column: 9, scope: !997, inlinedAt: !1000)
!997 = distinct !DILexicalBlock(scope: !998, file: !48, line: 1210, column: 5)
!998 = distinct !DILexicalBlock(scope: !999, file: !48, line: 1182, column: 1)
!999 = distinct !DISubprogram(name: "read<core::option::Option<core::result::Result<(), alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_ZN4core3ptr4read17hd730e6b8111d97e4E", scope: !49, file: !48, line: 1182, type: !43, scopeLine: 1182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1000 = !DILocation(line: 921, column: 22, scope: !1001, inlinedAt: !1004)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !212, line: 920, column: 5)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !212, line: 912, column: 1)
!1003 = distinct !DISubprogram(name: "replace<core::option::Option<core::result::Result<(), alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_ZN4core3mem7replace17hf75adef966c096d9E", scope: !214, file: !212, line: 912, type: !43, scopeLine: 912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1004 = !DILocation(line: 1690, column: 9, scope: !993, inlinedAt: !995)
!1005 = !DILocation(line: 1415, column: 9, scope: !1006, inlinedAt: !1009)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !48, line: 1410, column: 5)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !48, line: 1398, column: 1)
!1008 = distinct !DISubprogram(name: "write<core::option::Option<core::result::Result<(), alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_ZN4core3ptr5write17h690df6b8de8956e8E", scope: !49, file: !48, line: 1398, type: !43, scopeLine: 1398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1009 = !DILocation(line: 922, column: 9, scope: !1010, inlinedAt: !1004)
!1010 = distinct !DILexicalBlock(scope: !1001, file: !212, line: 921, column: 9)
!1011 = !DILocation(line: 929, column: 15, scope: !1012, inlinedAt: !1014)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !486, line: 928, column: 5)
!1013 = distinct !DISubprogram(name: "unwrap<core::result::Result<(), alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>", linkageName: "_ZN4core6option15Option$LT$T$GT$6unwrap17h715c9a5d7018b613E", scope: !488, file: !486, line: 928, type: !43, scopeLine: 928, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1014 = !DILocation(line: 1517, column: 73, scope: !973)
!1015 = !DILocation(line: 929, column: 9, scope: !1012, inlinedAt: !1014)
!1016 = !DILocation(line: 931, column: 21, scope: !1012, inlinedAt: !1014)
!1017 = !DILocation(line: 930, column: 18, scope: !1012, inlinedAt: !1014)
!1018 = !DILocation(line: 1518, column: 6, scope: !973)
!1019 = !DILocation(line: 1515, column: 5, scope: !973)
!1020 = distinct !DISubprogram(name: "is_unique<std::thread::Packet<()>, alloc::alloc::Global>", linkageName: "_ZN5alloc4sync16Arc$LT$T$C$A$GT$9is_unique17h4d6b82d757b26a4eE", scope: !175, file: !160, line: 2319, type: !43, scopeLine: 2319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1021 = !DILocation(line: 399, column: 20, scope: !1022, inlinedAt: !1025)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !166, line: 399, column: 9)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !166, line: 395, column: 5)
!1024 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<std::thread::Packet<()>>>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h2b8a518320d994d1E", scope: !169, file: !166, line: 395, type: !43, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1025 = !DILocation(line: 1748, column: 27, scope: !1026, inlinedAt: !1029)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !160, line: 1748, column: 9)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !160, line: 1742, column: 5)
!1028 = distinct !DISubprogram(name: "inner<std::thread::Packet<()>, alloc::alloc::Global>", linkageName: "_ZN5alloc4sync16Arc$LT$T$C$A$GT$5inner17h532228e6b1f83e20E", scope: !175, file: !160, line: 1742, type: !43, scopeLine: 1742, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1029 = !DILocation(line: 2327, column: 17, scope: !1020)
!1030 = !DILocation(line: 2116, column: 9, scope: !1031, inlinedAt: !1036)
!1031 = distinct !DILexicalBlock(scope: !1033, file: !1032, line: 2112, column: 5)
!1032 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/cell.rs", directory: "", checksumkind: CSK_MD5, checksum: "b0d7fce865d67685e67f51481f8c133a")
!1033 = distinct !DISubprogram(name: "get<usize>", linkageName: "_ZN4core4cell19UnsafeCell$LT$T$GT$3get17h9795db0fe66dca3dE", scope: !1034, file: !1032, line: 2112, type: !43, scopeLine: 2112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1034 = !DINamespace(name: "UnsafeCell", scope: !1035)
!1035 = !DINamespace(name: "cell", scope: !50)
!1036 = !DILocation(line: 2572, column: 57, scope: !1037, inlinedAt: !1040)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !179, line: 2572, column: 17)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !179, line: 2566, column: 13)
!1039 = distinct !DISubprogram(name: "compare_exchange", linkageName: "_ZN4core4sync6atomic11AtomicUsize16compare_exchange17h75db09654b6628a7E", scope: !188, file: !179, line: 2566, type: !43, scopeLine: 2566, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1040 = !DILocation(line: 2327, column: 30, scope: !1020)
!1041 = !DILocation(line: 3254, column: 1, scope: !1037, inlinedAt: !1040)
!1042 = !DILocation(line: 2327, column: 12, scope: !1020)
!1043 = !DILocation(line: 399, column: 20, scope: !1044, inlinedAt: !1046)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !166, line: 399, column: 9)
!1045 = distinct !DILexicalBlock(scope: !1024, file: !166, line: 395, column: 5)
!1046 = !DILocation(line: 1748, column: 27, scope: !1047, inlinedAt: !1049)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !160, line: 1748, column: 9)
!1048 = distinct !DILexicalBlock(scope: !1028, file: !160, line: 1742, column: 5)
!1049 = !DILocation(line: 2331, column: 31, scope: !1020)
!1050 = !DILocation(line: 3254, column: 1, scope: !1051, inlinedAt: !1054)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !179, line: 2401, column: 17)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !179, line: 2399, column: 13)
!1053 = distinct !DISubprogram(name: "load", linkageName: "_ZN4core4sync6atomic11AtomicUsize4load17hef3dfa0d613c57eaE", scope: !188, file: !179, line: 2399, type: !43, scopeLine: 2399, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1054 = !DILocation(line: 2331, column: 46, scope: !1020)
!1055 = !DILocation(line: 2331, column: 26, scope: !1020)
!1056 = !DILocation(line: 2116, column: 9, scope: !1057, inlinedAt: !1058)
!1057 = distinct !DILexicalBlock(scope: !1033, file: !1032, line: 2112, column: 5)
!1058 = !DILocation(line: 2428, column: 46, scope: !1059, inlinedAt: !1062)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !179, line: 2428, column: 17)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !179, line: 2426, column: 13)
!1061 = distinct !DISubprogram(name: "store", linkageName: "_ZN4core4sync6atomic11AtomicUsize5store17hec98bc7e42fc0f49E", scope: !188, file: !179, line: 2426, type: !43, scopeLine: 2426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1062 = !DILocation(line: 2336, column: 31, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1020, file: !160, line: 2331, column: 13)
!1064 = !DILocation(line: 3254, column: 1, scope: !1059, inlinedAt: !1062)
!1065 = !DILocation(line: 2327, column: 9, scope: !1020)
!1066 = !DILocation(line: 0, scope: !1020)
!1067 = !DILocation(line: 2341, column: 6, scope: !1020)
!1068 = distinct !DISubprogram(name: "atomic_compare_exchange<usize>", linkageName: "_ZN4core4sync6atomic23atomic_compare_exchange17h03e99bf2f9071549E", scope: !182, file: !179, line: 3355, type: !43, scopeLine: 3355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1069 = !DILocation(line: 3368, column: 35, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1068, file: !179, line: 3363, column: 21)
!1071 = !DILocation(line: 3384, column: 8, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1068, file: !179, line: 3363, column: 5)
!1073 = !DILocation(line: 3384, column: 5, scope: !1072)
!1074 = !DILocation(line: 3384, scope: !1072)
!1075 = !DILocation(line: 3385, column: 2, scope: !1068)
!1076 = distinct !DISubprogram(name: "atomic_load<usize>", linkageName: "_ZN4core4sync6atomic11atomic_load17h29d0b591c7b7271cE", scope: !182, file: !179, line: 3289, type: !43, scopeLine: 3289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1077 = !DILocation(line: 3294, column: 24, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1076, file: !179, line: 3291, column: 5)
!1079 = !DILocation(line: 3300, column: 2, scope: !1076)
!1080 = distinct !DISubprogram(name: "atomic_store<usize>", linkageName: "_ZN4core4sync6atomic12atomic_store17hd228a5e0fe2355c3E", scope: !182, file: !179, line: 3274, type: !43, scopeLine: 3274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1081 = !DILocation(line: 3279, column: 24, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1080, file: !179, line: 3276, column: 5)
!1083 = !DILocation(line: 3285, column: 2, scope: !1080)
!1084 = distinct !DISubprogram(name: "spawn_unchecked<CVE_2020_26235::main::{closure_env#1}, ()>", linkageName: "_ZN3std6thread7Builder15spawn_unchecked17ha71e82dc55764a87E", scope: !121, file: !116, line: 451, type: !43, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1085 = !DILocation(line: 457, column: 32, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1084, file: !116, line: 457, column: 23)
!1087 = !DILocation(line: 1946, column: 15, scope: !1088, inlinedAt: !1091)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !93, line: 1945, column: 5)
!1089 = distinct !DISubprogram(name: "branch<std::thread::JoinInner<()>, std::io::error::Error>", linkageName: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h4becfad85139ac1aE", scope: !1090, file: !93, line: 1945, type: !43, scopeLine: 1945, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1090 = !DINamespace(name: "{impl#26}", scope: !95)
!1091 = !DILocation(line: 457, column: 23, scope: !1084)
!1092 = !DILocation(line: 1946, column: 9, scope: !1088, inlinedAt: !1091)
!1093 = !DILocation(line: 1948, column: 17, scope: !1088, inlinedAt: !1091)
!1094 = !DILocation(line: 1948, column: 23, scope: !1095, inlinedAt: !1091)
!1095 = distinct !DILexicalBlock(scope: !1088, file: !93, line: 1948, column: 13)
!1096 = !DILocation(line: 1947, column: 16, scope: !1088, inlinedAt: !1091)
!1097 = !DILocation(line: 1947, column: 22, scope: !1098, inlinedAt: !1091)
!1098 = distinct !DILexicalBlock(scope: !1088, file: !93, line: 1947, column: 13)
!1099 = !DILocation(line: 457, column: 64, scope: !1084)
!1100 = !DILocation(line: 457, column: 12, scope: !1084)
!1101 = !DILocation(line: 457, column: 9, scope: !1084)
!1102 = !DILocation(line: 458, column: 5, scope: !1084)
!1103 = !DILocation(line: 1959, column: 23, scope: !1104, inlinedAt: !1108)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !93, line: 1959, column: 13)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !93, line: 1957, column: 5)
!1106 = distinct !DISubprogram(name: "from_residual<std::thread::JoinHandle<()>, std::io::error::Error, std::io::error::Error>", linkageName: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h90a5e0018609e13fE", scope: !1107, file: !93, line: 1957, type: !43, scopeLine: 1957, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1107 = !DINamespace(name: "{impl#27}", scope: !95)
!1108 = !DILocation(line: 457, column: 23, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !116, line: 457, column: 64)
!1110 = distinct !DILexicalBlock(scope: !1084, file: !116, line: 457, column: 64)
!1111 = !DILocation(line: 458, column: 6, scope: !1084)
!1112 = distinct !DISubprogram(name: "expect<std::thread::JoinHandle<()>, std::io::error::Error>", linkageName: "_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9540720688dc75a7E", scope: !94, file: !93, line: 1024, type: !43, scopeLine: 1024, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1113 = !DILocation(line: 1028, column: 15, scope: !1112)
!1114 = !DILocation(line: 1028, column: 9, scope: !1112)
!1115 = !DILocation(line: 1029, column: 16, scope: !1112)
!1116 = !DILocation(line: 1032, column: 6, scope: !1112)
!1117 = !DILocation(line: 1030, column: 17, scope: !1112)
!1118 = !DILocation(line: 1030, column: 23, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1112, file: !93, line: 1030, column: 13)
!1120 = !DILocation(line: 1030, column: 44, scope: !1112)
!1121 = !DILocation(line: 1024, column: 5, scope: !1112)
!1122 = distinct !DISubprogram(name: "spawn_unchecked_<CVE_2020_26235::main::{closure_env#1}, ()>", linkageName: "_ZN3std6thread7Builder16spawn_unchecked_17h80cdd8d27986d305E", scope: !121, file: !116, line: 460, type: !43, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1123 = !DILocation(line: 471, column: 23, scope: !1122)
!1124 = !DILocation(line: 471, column: 29, scope: !1122)
!1125 = !DILocation(line: 974, column: 9, scope: !1126, inlinedAt: !1128)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !486, line: 970, column: 5)
!1127 = distinct !DISubprogram(name: "unwrap_or_else<usize, fn() -> usize>", linkageName: "_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17h91fbde5c64af3db4E", scope: !488, file: !486, line: 970, type: !43, scopeLine: 970, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1128 = !DILocation(line: 473, column: 37, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1122, file: !116, line: 471, column: 9)
!1130 = !DILocation(line: 976, column: 21, scope: !1126, inlinedAt: !1128)
!1131 = !DILocation(line: 975, column: 24, scope: !1126, inlinedAt: !1128)
!1132 = !DILocation(line: 571, column: 5, scope: !1122)
!1133 = !DILocation(line: 0, scope: !1126, inlinedAt: !1128)
!1134 = !DILocation(line: 475, column: 37, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1129, file: !116, line: 473, column: 9)
!1136 = !DILocation(line: 1071, column: 15, scope: !1137, inlinedAt: !1139)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !486, line: 1067, column: 5)
!1138 = distinct !DISubprogram(name: "map<alloc::string::String, alloc::ffi::c_str::CString, std::thread::{impl#0}::spawn_unchecked_::{closure_env#0}<CVE_2020_26235::main::{closure_env#1}, ()>>", linkageName: "_ZN4core6option15Option$LT$T$GT$3map17h1ff563e7d2da43ebE", scope: !488, file: !486, line: 1067, type: !43, scopeLine: 1067, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1139 = !DILocation(line: 475, column: 42, scope: !1135)
!1140 = !{i64 0, i64 -9223372036854775807}
!1141 = !DILocation(line: 1071, column: 9, scope: !1137, inlinedAt: !1139)
!1142 = !DILocation(line: 1073, column: 21, scope: !1137, inlinedAt: !1139)
!1143 = !DILocation(line: 1072, column: 18, scope: !1137, inlinedAt: !1139)
!1144 = !DILocation(line: 316, column: 9, scope: !1145, inlinedAt: !1148)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !926, line: 261, column: 5)
!1146 = distinct !DISubprogram(name: "new<alloc::string::String>", linkageName: "_ZN5alloc3ffi5c_str7CString3new17h74a82e656c553778E", scope: !1147, file: !926, line: 261, type: !43, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1147 = !DINamespace(name: "CString", scope: !928)
!1148 = !DILocation(line: 476, column: 13, scope: !1149, inlinedAt: !1153)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !116, line: 475, column: 46)
!1150 = distinct !DISubprogram(name: "{closure#0}<CVE_2020_26235::main::{closure_env#1}, ()>", linkageName: "_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17h1c8e357b0a9801e2E", scope: !1151, file: !116, line: 475, type: !43, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1151 = !DINamespace(name: "spawn_unchecked_", scope: !1152)
!1152 = !DINamespace(name: "{impl#0}", scope: !117)
!1153 = !DILocation(line: 1072, column: 29, scope: !1154, inlinedAt: !1139)
!1154 = distinct !DILexicalBlock(scope: !1137, file: !486, line: 1072, column: 13)
!1155 = !DILocation(line: 475, column: 25, scope: !1135)
!1156 = !DILocation(line: 1072, column: 33, scope: !1137, inlinedAt: !1139)
!1157 = !DILocation(line: 1089, column: 16, scope: !1158, inlinedAt: !1163)
!1158 = distinct !DILexicalBlock(scope: !1160, file: !1159, line: 1089, column: 16)
!1159 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/pin.rs", directory: "", checksumkind: CSK_MD5, checksum: "7d7391e73e5aefa0974102d8bc641303")
!1160 = distinct !DISubprogram(name: "clone<alloc::sync::Arc<std::thread::Inner, alloc::alloc::Global>>", linkageName: "_ZN64_$LT$core..pin..Pin$LT$Ptr$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb70fe05c090b5d46E", scope: !1161, file: !1159, line: 1089, type: !43, scopeLine: 1089, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1161 = !DINamespace(name: "{impl#22}", scope: !1162)
!1162 = !DINamespace(name: "pin", scope: !50)
!1163 = !DILocation(line: 1269, column: 5, scope: !1164, inlinedAt: !1167)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !116, line: 1248, column: 10)
!1165 = distinct !DISubprogram(name: "clone", linkageName: "_ZN58_$LT$std..thread..Thread$u20$as$u20$core..clone..Clone$GT$5clone17h541a17bc0ca9ceedE", scope: !1166, file: !116, line: 1248, type: !43, scopeLine: 1248, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1166 = !DINamespace(name: "{impl#23}", scope: !117)
!1167 = !DILocation(line: 478, column: 38, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1135, file: !116, line: 475, column: 9)
!1169 = !DILocation(line: 571, column: 5, scope: !1135)
!1170 = !DILocation(line: 1248, column: 10, scope: !1164, inlinedAt: !1167)
!1171 = !DILocation(line: 482, column: 37, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1168, file: !116, line: 478, column: 9)
!1173 = !DILocation(line: 2048, column: 9, scope: !1174, inlinedAt: !1176)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !1032, line: 2047, column: 5)
!1175 = distinct !DISubprogram(name: "new<core::option::Option<core::result::Result<(), alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_ZN4core4cell19UnsafeCell$LT$T$GT$3new17h793898b50fa683f1E", scope: !1034, file: !1032, line: 2047, type: !43, scopeLine: 2047, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1176 = !DILocation(line: 482, column: 21, scope: !1172)
!1177 = !DILocation(line: 480, column: 58, scope: !1172)
!1178 = !DILocation(line: 395, column: 34, scope: !1179, inlinedAt: !1181)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !160, line: 392, column: 5)
!1180 = distinct !DISubprogram(name: "new<std::thread::Packet<()>>", linkageName: "_ZN5alloc4sync12Arc$LT$T$GT$3new17h14403e4c0bc74a61E", scope: !175, file: !160, line: 392, type: !43, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1181 = !DILocation(line: 480, column: 49, scope: !1172)
!1182 = !DILocation(line: 217, column: 9, scope: !1183, inlinedAt: !1186)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !504, line: 217, column: 9)
!1184 = distinct !DISubprogram(name: "new<alloc::sync::ArcInner<std::thread::Packet<()>>>", linkageName: "_ZN5alloc5boxed12Box$LT$T$GT$3new17h33a5335985298b83E", scope: !1185, file: !504, line: 215, type: !43, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1185 = !DINamespace(name: "{impl#0}", scope: !506)
!1186 = distinct !DILocation(line: 395, column: 25, scope: !1179, inlinedAt: !1181)
!1187 = !DILocation(line: 218, column: 5, scope: !1184, inlinedAt: !1186)
!1188 = !DILocation(line: 215, column: 5, scope: !1184, inlinedAt: !1186)
!1189 = !DILocation(line: 571, column: 5, scope: !1168)
!1190 = !DILocation(line: 217, column: 18, scope: !1184, inlinedAt: !1186)
!1191 = !DILocation(line: 290, column: 9, scope: !1192, inlinedAt: !1194)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !160, line: 289, column: 5)
!1193 = distinct !DISubprogram(name: "from_inner_in<std::thread::Packet<()>, alloc::alloc::Global>", linkageName: "_ZN5alloc4sync16Arc$LT$T$C$A$GT$13from_inner_in17h1e58572eda13f44eE", scope: !175, file: !160, line: 289, type: !43, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1194 = !DILocation(line: 273, column: 18, scope: !1195, inlinedAt: !1198)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !160, line: 273, column: 9)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !160, line: 272, column: 5)
!1197 = distinct !DISubprogram(name: "from_inner<std::thread::Packet<()>>", linkageName: "_ZN5alloc4sync12Arc$LT$T$GT$10from_inner17h1f555e3cb0b6b3e4E", scope: !175, file: !160, line: 272, type: !43, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1198 = !DILocation(line: 400, column: 18, scope: !1199, inlinedAt: !1181)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !160, line: 400, column: 9)
!1200 = distinct !DILexicalBlock(scope: !1179, file: !160, line: 395, column: 9)
!1201 = !DILocation(line: 485, column: 28, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1172, file: !116, line: 480, column: 9)
!1203 = !DILocation(line: 0, scope: !1168)
!1204 = !DILocation(line: 571, column: 5, scope: !1172)
!1205 = !DILocation(line: 487, column: 30, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1202, file: !116, line: 485, column: 9)
!1207 = !DILocation(line: 571, column: 5, scope: !1202)
!1208 = !DILocation(line: 2002, column: 15, scope: !1209, inlinedAt: !1212)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !486, line: 2001, column: 5)
!1210 = distinct !DISubprogram(name: "clone<alloc::sync::Arc<std::sync::mutex::Mutex<alloc::vec::Vec<u8, alloc::alloc::Global>>, alloc::alloc::Global>>", linkageName: "_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4d24431b454f6511E", scope: !1211, file: !486, line: 2001, type: !43, scopeLine: 2001, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1211 = !DINamespace(name: "{impl#5}", scope: !489)
!1212 = !DILocation(line: 488, column: 54, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1206, file: !116, line: 487, column: 9)
!1214 = !DILocation(line: 2002, column: 9, scope: !1209, inlinedAt: !1212)
!1215 = !DILocation(line: 2003, column: 29, scope: !1216, inlinedAt: !1212)
!1216 = distinct !DILexicalBlock(scope: !1209, file: !486, line: 2003, column: 13)
!1217 = !DILocation(line: 0, scope: !1209, inlinedAt: !1212)
!1218 = !DILocation(line: 488, column: 9, scope: !1213)
!1219 = !DILocation(line: 488, column: 62, scope: !1213)
!1220 = !DILocation(line: 515, column: 20, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1213, file: !116, line: 514, column: 9)
!1222 = !DILocation(line: 399, column: 20, scope: !1223, inlinedAt: !1226)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !166, line: 399, column: 9)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !166, line: 395, column: 5)
!1225 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<std::thread::Packet<()>>>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h2b8a518320d994d1E", scope: !169, file: !166, line: 395, type: !43, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1226 = !DILocation(line: 1748, column: 27, scope: !1227, inlinedAt: !1230)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !160, line: 1748, column: 9)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !160, line: 1742, column: 5)
!1229 = distinct !DISubprogram(name: "inner<std::thread::Packet<()>, alloc::alloc::Global>", linkageName: "_ZN5alloc4sync16Arc$LT$T$C$A$GT$5inner17h532228e6b1f83e20E", scope: !175, file: !160, line: 1742, type: !43, scopeLine: 1742, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1230 = !DILocation(line: 2058, column: 15, scope: !1231, inlinedAt: !1234)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !160, line: 2057, column: 5)
!1232 = distinct !DISubprogram(name: "deref<std::thread::Packet<()>, alloc::alloc::Global>", linkageName: "_ZN73_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8c449dfb6de9e575E", scope: !1233, file: !160, line: 2057, type: !43, scopeLine: 2057, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1233 = !DINamespace(name: "{impl#29}", scope: !162)
!1234 = !DILocation(line: 544, column: 36, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !116, line: 544, column: 52)
!1236 = distinct !DILexicalBlock(scope: !1221, file: !116, line: 515, column: 9)
!1237 = !DILocation(line: 544, column: 16, scope: !1235)
!1238 = !DILocation(line: 545, column: 13, scope: !1235)
!1239 = !DILocation(line: 548, column: 29, scope: !1236)
!1240 = !DILocation(line: 217, column: 9, scope: !1241, inlinedAt: !1243)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !504, line: 217, column: 9)
!1242 = distinct !DISubprogram(name: "new<std::thread::{impl#0}::spawn_unchecked_::{closure_env#1}<CVE_2020_26235::main::{closure_env#1}, ()>>", linkageName: "_ZN5alloc5boxed12Box$LT$T$GT$3new17h7cc04dcd47335c58E", scope: !1185, file: !504, line: 215, type: !43, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1243 = distinct !DILocation(line: 548, column: 20, scope: !1236)
!1244 = !DILocation(line: 218, column: 5, scope: !1242, inlinedAt: !1243)
!1245 = !DILocation(line: 215, column: 5, scope: !1242, inlinedAt: !1243)
!1246 = !DILocation(line: 571, column: 5, scope: !1221)
!1247 = !DILocation(line: 217, column: 18, scope: !1242, inlinedAt: !1243)
!1248 = !DILocation(line: 567, column: 30, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !116, line: 567, column: 21)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !116, line: 551, column: 9)
!1251 = distinct !DILexicalBlock(scope: !1236, file: !116, line: 548, column: 9)
!1252 = !DILocation(line: 1946, column: 15, scope: !1253, inlinedAt: !1248)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !93, line: 1945, column: 5)
!1254 = distinct !DISubprogram(name: "branch<std::sys::pal::unix::thread::Thread, std::io::error::Error>", linkageName: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h8252c5d0fdbabe2bE", scope: !1090, file: !93, line: 1945, type: !43, scopeLine: 1945, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1255 = !DILocation(line: 1946, column: 9, scope: !1253, inlinedAt: !1248)
!1256 = !DILocation(line: 1947, column: 16, scope: !1253, inlinedAt: !1248)
!1257 = !DILocation(line: 568, column: 21, scope: !1250)
!1258 = !DILocation(line: 569, column: 21, scope: !1250)
!1259 = !DILocation(line: 553, column: 12, scope: !1250)
!1260 = !DILocation(line: 553, column: 9, scope: !1250)
!1261 = !DILocation(line: 1948, column: 17, scope: !1253, inlinedAt: !1248)
!1262 = !DILocation(line: 1959, column: 23, scope: !1263, inlinedAt: !1266)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !93, line: 1959, column: 13)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !93, line: 1957, column: 5)
!1265 = distinct !DISubprogram(name: "from_residual<std::thread::JoinInner<()>, std::io::error::Error, std::io::error::Error>", linkageName: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hab94d72c6a998104E", scope: !1107, file: !93, line: 1957, type: !43, scopeLine: 1957, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1266 = !DILocation(line: 567, column: 30, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !116, line: 567, column: 64)
!1268 = distinct !DILexicalBlock(scope: !1249, file: !116, line: 567, column: 64)
!1269 = !DILocation(line: 571, column: 6, scope: !1122)
!1270 = !DILocation(line: 460, column: 5, scope: !1122)
!1271 = !DILocation(line: 571, column: 5, scope: !1206)
!1272 = distinct !DISubprogram(name: "call_once<fn() -> usize, ()>", linkageName: "_ZN4core3ops8function6FnOnce9call_once17h3b69fafd37028148E", scope: !54, file: !53, line: 250, type: !43, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1273 = !DILocation(line: 250, column: 5, scope: !1272)
!1274 = distinct !DISubprogram(name: "spec_new_impl<alloc::string::String>", linkageName: "_ZN66_$LT$T$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17h60ba09f7e7bb4a46E", scope: !1275, file: !926, line: 267, type: !43, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1275 = !DINamespace(name: "{impl#0}", scope: !1276)
!1276 = !DINamespace(name: "new", scope: !1277)
!1277 = !DINamespace(name: "{impl#1}", scope: !928)
!1278 = !DILocation(line: 268, column: 38, scope: !1274)
!1279 = !DILocation(line: 239, column: 9, scope: !1280, inlinedAt: !1285)
!1280 = distinct !DILexicalBlock(scope: !1282, file: !1281, line: 238, column: 5)
!1281 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/alloc/src/raw_vec.rs", directory: "", checksumkind: CSK_MD5, checksum: "0b5ec706c41528fbcb5248091f9e606a")
!1282 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h35a0d6a5fd2c2914E", scope: !1283, file: !1281, line: 238, type: !43, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1283 = !DINamespace(name: "RawVec", scope: !1284)
!1284 = !DINamespace(name: "raw_vec", scope: !163)
!1285 = !DILocation(line: 1271, column: 18, scope: !1286, inlinedAt: !1291)
!1286 = distinct !DILexicalBlock(scope: !1288, file: !1287, line: 1268, column: 5)
!1287 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/alloc/src/vec/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "68599339b266867eb81e581cd10beab0")
!1288 = distinct !DISubprogram(name: "as_ptr<u8, alloc::alloc::Global>", linkageName: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h0a066996ca9d1097E", scope: !1289, file: !1287, line: 1268, type: !43, scopeLine: 1268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1289 = !DINamespace(name: "Vec", scope: !1290)
!1290 = !DINamespace(name: "vec", scope: !163)
!1291 = !DILocation(line: 2706, column: 45, scope: !1292, inlinedAt: !1296)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !1287, line: 2706, column: 9)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !1287, line: 2705, column: 5)
!1294 = distinct !DISubprogram(name: "deref<u8, alloc::alloc::Global>", linkageName: "_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hc973a82148dcb74fE", scope: !1295, file: !1287, line: 2705, type: !43, scopeLine: 2705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1295 = !DINamespace(name: "{impl#8}", scope: !1290)
!1296 = !DILocation(line: 269, column: 41, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1274, file: !926, line: 268, column: 17)
!1298 = !DILocation(line: 2706, column: 55, scope: !1292, inlinedAt: !1296)
!1299 = !DILocation(line: 29, column: 8, scope: !1300, inlinedAt: !1304)
!1300 = distinct !DILexicalBlock(scope: !1302, file: !1301, line: 27, column: 1)
!1301 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/slice/memchr.rs", directory: "", checksumkind: CSK_MD5, checksum: "58bcea75c121467bae56fe63c4fbebe6")
!1302 = distinct !DISubprogram(name: "memchr", linkageName: "_ZN4core5slice6memchr6memchr17h5c5c3b1c52501876E", scope: !1303, file: !1301, line: 27, type: !43, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1303 = !DINamespace(name: "memchr", scope: !601)
!1304 = !DILocation(line: 269, column: 23, scope: !1297)
!1305 = !DILocation(line: 33, column: 5, scope: !1300, inlinedAt: !1304)
!1306 = !DILocation(line: 30, column: 16, scope: !1300, inlinedAt: !1304)
!1307 = !DILocation(line: 273, column: 13, scope: !1274)
!1308 = !DILocation(line: 269, column: 17, scope: !1297)
!1309 = !DILocation(line: 34, column: 2, scope: !1300, inlinedAt: !1304)
!1310 = !DILocation(line: 271, column: 70, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1297, file: !926, line: 271, column: 32)
!1312 = !DILocation(line: 271, column: 41, scope: !1311)
!1313 = !DILocation(line: 0, scope: !1300, inlinedAt: !1304)
!1314 = !DILocation(line: 270, column: 48, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1297, file: !926, line: 270, column: 21)
!1316 = !DILocation(line: 270, column: 36, scope: !1315)
!1317 = !DILocation(line: 270, column: 32, scope: !1315)
!1318 = !DILocation(line: 270, column: 54, scope: !1297)
!1319 = !DILocation(line: 271, column: 29, scope: !1297)
!1320 = !DILocation(line: 271, column: 78, scope: !1297)
!1321 = !DILocation(line: 273, column: 14, scope: !1274)
!1322 = !DILocation(line: 267, column: 13, scope: !1274)
!1323 = distinct !DISubprogram(name: "expect<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>", linkageName: "_ZN4core6result19Result$LT$T$C$E$GT$6expect17h851ebc17aa702cc2E", scope: !94, file: !93, line: 1024, type: !43, scopeLine: 1024, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1324 = !DILocation(line: 1028, column: 15, scope: !1323)
!1325 = !DILocation(line: 1028, column: 9, scope: !1323)
!1326 = !DILocation(line: 1029, column: 16, scope: !1323)
!1327 = !DILocation(line: 1032, column: 6, scope: !1323)
!1328 = !DILocation(line: 1030, column: 17, scope: !1323)
!1329 = !DILocation(line: 1030, column: 23, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1323, file: !93, line: 1030, column: 13)
!1331 = !DILocation(line: 1030, column: 44, scope: !1323)
!1332 = !DILocation(line: 1024, column: 5, scope: !1323)
!1333 = distinct !DISubprogram(name: "clone<std::thread::Inner, alloc::alloc::Global>", linkageName: "_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3aa793fac49652eeE", scope: !1334, file: !160, line: 2015, type: !43, scopeLine: 2015, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1334 = !DINamespace(name: "{impl#28}", scope: !162)
!1335 = !DILocation(line: 399, column: 20, scope: !1336, inlinedAt: !1339)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !166, line: 399, column: 9)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !166, line: 395, column: 5)
!1338 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<std::thread::Inner>>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h4dbbff9939c1d124E", scope: !169, file: !166, line: 395, type: !43, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1339 = !DILocation(line: 1748, column: 27, scope: !1340, inlinedAt: !1343)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !160, line: 1748, column: 9)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !160, line: 1742, column: 5)
!1342 = distinct !DISubprogram(name: "inner<std::thread::Inner, alloc::alloc::Global>", linkageName: "_ZN5alloc4sync16Arc$LT$T$C$A$GT$5inner17hee8ab5ba1cd10258E", scope: !175, file: !160, line: 1742, type: !43, scopeLine: 1742, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1343 = !DILocation(line: 2027, column: 29, scope: !1333)
!1344 = !DILocation(line: 3326, column: 24, scope: !1345, inlinedAt: !1348)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !179, line: 3324, column: 5)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !179, line: 3322, column: 1)
!1347 = distinct !DISubprogram(name: "atomic_add<usize>", linkageName: "_ZN4core4sync6atomic10atomic_add17h802a3d188248133eE", scope: !182, file: !179, line: 3322, type: !43, scopeLine: 3322, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1348 = !DILocation(line: 2653, column: 26, scope: !1349, inlinedAt: !1352)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !179, line: 2653, column: 17)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !179, line: 2651, column: 13)
!1351 = distinct !DISubprogram(name: "fetch_add", linkageName: "_ZN4core4sync6atomic11AtomicUsize9fetch_add17h7d2eeefdf6f666f3E", scope: !188, file: !179, line: 2651, type: !43, scopeLine: 2651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1352 = !DILocation(line: 2027, column: 44, scope: !1333)
!1353 = !DILocation(line: 2044, column: 12, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1333, file: !160, line: 2027, column: 9)
!1355 = !DILocation(line: 2048, column: 38, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1354, file: !160, line: 2048, column: 9)
!1357 = !DILocation(line: 2049, column: 6, scope: !1333)
!1358 = !DILocation(line: 2045, column: 13, scope: !1354)
!1359 = distinct !DISubprogram(name: "exchange_malloc", linkageName: "_ZN5alloc5alloc15exchange_malloc17h21f7745ba6eae1eaE", scope: !266, file: !264, line: 328, type: !43, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1360 = !DILocation(line: 241, column: 9, scope: !1361, inlinedAt: !1363)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !264, line: 240, column: 5)
!1362 = distinct !DISubprogram(name: "allocate", linkageName: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hb764e976075a88f1E", scope: !265, file: !264, line: 240, type: !43, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1363 = !DILocation(line: 330, column: 18, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1359, file: !264, line: 329, column: 5)
!1365 = !DILocation(line: 330, column: 11, scope: !1364)
!1366 = !DILocation(line: 330, column: 5, scope: !1364)
!1367 = !DILocation(line: 334, column: 2, scope: !1359)
!1368 = !DILocation(line: 332, column: 19, scope: !1364)
!1369 = distinct !DISubprogram(name: "drop_in_place<alloc::sync::ArcInner<std::thread::Packet<()>>>", linkageName: "_ZN4core3ptr85drop_in_place$LT$alloc..sync..ArcInner$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h40a9f5ebfdfc21edE", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1370 = !DILocation(line: 507, column: 1, scope: !1369)
!1371 = distinct !DISubprogram(name: "clone<std::thread::Packet<()>, alloc::alloc::Global>", linkageName: "_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7644565280af90c9E", scope: !1334, file: !160, line: 2015, type: !43, scopeLine: 2015, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1372 = !DILocation(line: 399, column: 20, scope: !1373, inlinedAt: !1376)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !166, line: 399, column: 9)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !166, line: 395, column: 5)
!1375 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<std::thread::Packet<()>>>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h2b8a518320d994d1E", scope: !169, file: !166, line: 395, type: !43, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1376 = !DILocation(line: 1748, column: 27, scope: !1377, inlinedAt: !1380)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !160, line: 1748, column: 9)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !160, line: 1742, column: 5)
!1379 = distinct !DISubprogram(name: "inner<std::thread::Packet<()>, alloc::alloc::Global>", linkageName: "_ZN5alloc4sync16Arc$LT$T$C$A$GT$5inner17h532228e6b1f83e20E", scope: !175, file: !160, line: 1742, type: !43, scopeLine: 1742, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1380 = !DILocation(line: 2027, column: 29, scope: !1371)
!1381 = !DILocation(line: 3326, column: 24, scope: !1382, inlinedAt: !1385)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !179, line: 3324, column: 5)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !179, line: 3322, column: 1)
!1384 = distinct !DISubprogram(name: "atomic_add<usize>", linkageName: "_ZN4core4sync6atomic10atomic_add17h802a3d188248133eE", scope: !182, file: !179, line: 3322, type: !43, scopeLine: 3322, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1385 = !DILocation(line: 2653, column: 26, scope: !1386, inlinedAt: !1389)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !179, line: 2653, column: 17)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !179, line: 2651, column: 13)
!1388 = distinct !DISubprogram(name: "fetch_add", linkageName: "_ZN4core4sync6atomic11AtomicUsize9fetch_add17h7d2eeefdf6f666f3E", scope: !188, file: !179, line: 2651, type: !43, scopeLine: 2651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1389 = !DILocation(line: 2027, column: 44, scope: !1371)
!1390 = !DILocation(line: 2044, column: 12, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1371, file: !160, line: 2027, column: 9)
!1392 = !DILocation(line: 2048, column: 38, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1391, file: !160, line: 2048, column: 9)
!1394 = !DILocation(line: 2049, column: 6, scope: !1371)
!1395 = !DILocation(line: 2045, column: 13, scope: !1391)
!1396 = distinct !DISubprogram(name: "clone<std::sync::mutex::Mutex<alloc::vec::Vec<u8, alloc::alloc::Global>>, alloc::alloc::Global>", linkageName: "_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8be9ec22d8ecf029E", scope: !1334, file: !160, line: 2015, type: !43, scopeLine: 2015, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1397 = !DILocation(line: 399, column: 20, scope: !1398, inlinedAt: !1401)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !166, line: 399, column: 9)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !166, line: 395, column: 5)
!1400 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<std::sync::mutex::Mutex<alloc::vec::Vec<u8, alloc::alloc::Global>>>>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hecc011c5db9241f8E", scope: !169, file: !166, line: 395, type: !43, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1401 = !DILocation(line: 1748, column: 27, scope: !1402, inlinedAt: !1405)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !160, line: 1748, column: 9)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !160, line: 1742, column: 5)
!1404 = distinct !DISubprogram(name: "inner<std::sync::mutex::Mutex<alloc::vec::Vec<u8, alloc::alloc::Global>>, alloc::alloc::Global>", linkageName: "_ZN5alloc4sync16Arc$LT$T$C$A$GT$5inner17h160c40d886a96dcfE", scope: !175, file: !160, line: 1742, type: !43, scopeLine: 1742, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1405 = !DILocation(line: 2027, column: 29, scope: !1396)
!1406 = !DILocation(line: 3326, column: 24, scope: !1407, inlinedAt: !1410)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !179, line: 3324, column: 5)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !179, line: 3322, column: 1)
!1409 = distinct !DISubprogram(name: "atomic_add<usize>", linkageName: "_ZN4core4sync6atomic10atomic_add17h802a3d188248133eE", scope: !182, file: !179, line: 3322, type: !43, scopeLine: 3322, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1410 = !DILocation(line: 2653, column: 26, scope: !1411, inlinedAt: !1414)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !179, line: 2653, column: 17)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !179, line: 2651, column: 13)
!1413 = distinct !DISubprogram(name: "fetch_add", linkageName: "_ZN4core4sync6atomic11AtomicUsize9fetch_add17h7d2eeefdf6f666f3E", scope: !188, file: !179, line: 2651, type: !43, scopeLine: 2651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1414 = !DILocation(line: 2027, column: 44, scope: !1396)
!1415 = !DILocation(line: 2044, column: 12, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1396, file: !160, line: 2027, column: 9)
!1417 = !DILocation(line: 2048, column: 38, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1416, file: !160, line: 2048, column: 9)
!1419 = !DILocation(line: 2049, column: 6, scope: !1396)
!1420 = !DILocation(line: 2045, column: 13, scope: !1416)
!1421 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<alloc::sync::Arc<std::sync::mutex::Mutex<alloc::vec::Vec<u8, alloc::alloc::Global>>, alloc::alloc::Global>>>", linkageName: "_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17h4a374c67cd6dfb28E", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1422 = !DILocation(line: 507, column: 1, scope: !1421)
!1423 = distinct !DISubprogram(name: "drop_in_place<std::thread::{impl#0}::spawn_unchecked_::{closure_env#1}<CVE_2020_26235::main::{closure_env#1}, ()>>", linkageName: "_ZN4core3ptr156drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$CVE_2020_26235..main..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h44b8fc7c32c2ef81E", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1424 = !DILocation(line: 507, column: 1, scope: !1423)
!1425 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<alloc::string::String>>", linkageName: "_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h5b8d6a2828f29de2E", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1426 = !DILocation(line: 507, column: 1, scope: !1425)
!1427 = distinct !DISubprogram(name: "drop_in_place<alloc::string::String>", linkageName: "_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb957259dd3b0b205E", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1428 = !DILocation(line: 507, column: 1, scope: !1427)
!1429 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::Vec<u8, alloc::alloc::Global>>", linkageName: "_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfc35a56705acb343E", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1430 = !DILocation(line: 507, column: 1, scope: !1429)
!1431 = distinct !DISubprogram(name: "drop_in_place<alloc::raw_vec::RawVec<u8, alloc::alloc::Global>>", linkageName: "_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h49d85581a88492a6E", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1432 = !DILocation(line: 507, column: 1, scope: !1431)
!1433 = distinct !DISubprogram(name: "drop<u8, alloc::alloc::Global>", linkageName: "_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haafd16b75df880faE", scope: !1434, file: !1281, line: 529, type: !43, scopeLine: 529, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1434 = !DINamespace(name: "{impl#4}", scope: !1284)
!1435 = !DILocation(line: 530, column: 38, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1433, file: !1281, line: 530, column: 60)
!1437 = !DILocation(line: 530, column: 16, scope: !1436)
!1438 = !DILocation(line: 530, column: 22, scope: !1436)
!1439 = !DILocation(line: 530, column: 27, scope: !1436)
!1440 = !DILocation(line: 531, column: 22, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1436, file: !1281, line: 531, column: 13)
!1442 = !DILocation(line: 530, column: 9, scope: !1433)
!1443 = !DILocation(line: 533, column: 6, scope: !1433)
!1444 = distinct !DISubprogram(name: "current_memory<u8, alloc::alloc::Global>", linkageName: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h6eb8b83fdd45a706E", scope: !1283, file: !1281, line: 255, type: !43, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1445 = !DILocation(line: 256, column: 25, scope: !1444)
!1446 = !DILocation(line: 257, column: 13, scope: !1444)
!1447 = !DILocation(line: 256, column: 9, scope: !1444)
!1448 = !DILocation(line: 268, column: 23, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !1281, line: 267, column: 17)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !1281, line: 266, column: 17)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !1281, line: 265, column: 17)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !1281, line: 264, column: 13)
!1453 = distinct !DILexicalBlock(scope: !1444, file: !1281, line: 263, column: 13)
!1454 = !DILocation(line: 268, column: 22, scope: !1449)
!1455 = !DILocation(line: 268, column: 17, scope: !1449)
!1456 = !DILocation(line: 271, column: 6, scope: !1444)
!1457 = distinct !DISubprogram(name: "call_once<std::thread::{impl#0}::spawn_unchecked_::{closure_env#1}<CVE_2020_26235::main::{closure_env#1}, ()>, ()>", linkageName: "_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h1f179259d3765555E", scope: !54, file: !53, line: 250, type: !43, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1458 = !DILocation(line: 250, column: 5, scope: !1457)
!1459 = distinct !DISubprogram(name: "{closure#1}<CVE_2020_26235::main::{closure_env#1}, ()>", linkageName: "_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17h16d84311cf8f08f3E", scope: !1151, file: !116, line: 515, type: !43, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1460 = !DILocation(line: 516, column: 33, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1459, file: !116, line: 516, column: 54)
!1462 = !DILocation(line: 0, scope: !1459)
!1463 = !DILocation(line: 542, column: 9, scope: !1459)
!1464 = !DILocation(line: 516, column: 20, scope: !1461)
!1465 = !DILocation(line: 517, column: 17, scope: !1461)
!1466 = !DILocation(line: 520, column: 43, scope: !1459)
!1467 = !DILocation(line: 520, column: 13, scope: !1459)
!1468 = !DILocation(line: 520, column: 58, scope: !1459)
!1469 = !DILocation(line: 527, column: 39, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !116, line: 527, column: 30)
!1471 = distinct !DILexicalBlock(scope: !1459, file: !116, line: 523, column: 13)
!1472 = !DILocation(line: 527, column: 64, scope: !1471)
!1473 = !DILocation(line: 527, column: 13, scope: !1471)
!1474 = !DILocation(line: 142, column: 14, scope: !1475, inlinedAt: !1478)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !283, line: 142, column: 5)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !283, line: 141, column: 1)
!1477 = distinct !DISubprogram(name: "catch_unwind<core::panic::unwind_safe::AssertUnwindSafe<std::thread::{impl#0}::spawn_unchecked_::{closure#1}::{closure_env#0}<CVE_2020_26235::main::{closure_env#1}, ()>>, ()>", linkageName: "_ZN3std5panic12catch_unwind17h23147004e7a105daE", scope: !286, file: !283, line: 141, type: !43, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1478 = !DILocation(line: 528, column: 30, scope: !1471)
!1479 = !DILocation(line: 535, column: 51, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !116, line: 535, column: 13)
!1481 = distinct !DILexicalBlock(scope: !1471, file: !116, line: 528, column: 13)
!1482 = !DILocation(line: 399, column: 20, scope: !1483, inlinedAt: !1486)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !166, line: 399, column: 9)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !166, line: 395, column: 5)
!1485 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<std::thread::Packet<()>>>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h2b8a518320d994d1E", scope: !169, file: !166, line: 395, type: !43, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1486 = !DILocation(line: 1748, column: 27, scope: !1487, inlinedAt: !1490)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !160, line: 1748, column: 9)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !160, line: 1742, column: 5)
!1489 = distinct !DISubprogram(name: "inner<std::thread::Packet<()>, alloc::alloc::Global>", linkageName: "_ZN5alloc4sync16Arc$LT$T$C$A$GT$5inner17h532228e6b1f83e20E", scope: !175, file: !160, line: 1742, type: !43, scopeLine: 1742, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1490 = !DILocation(line: 2058, column: 15, scope: !1491, inlinedAt: !1493)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !160, line: 2057, column: 5)
!1492 = distinct !DISubprogram(name: "deref<std::thread::Packet<()>, alloc::alloc::Global>", linkageName: "_ZN73_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8c449dfb6de9e575E", scope: !1233, file: !160, line: 2057, type: !43, scopeLine: 2057, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1493 = !DILocation(line: 535, column: 23, scope: !1480)
!1494 = !DILocation(line: 2116, column: 9, scope: !1495, inlinedAt: !1497)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !1032, line: 2112, column: 5)
!1496 = distinct !DISubprogram(name: "get<core::option::Option<core::result::Result<(), alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_ZN4core4cell19UnsafeCell$LT$T$GT$3get17h4c2d70657cb2e928E", scope: !1034, file: !1032, line: 2112, type: !43, scopeLine: 2112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1497 = !DILocation(line: 535, column: 43, scope: !1480)
!1498 = !DILocation(line: 535, column: 22, scope: !1480)
!1499 = !DILocation(line: 539, column: 18, scope: !1481)
!1500 = !DILocation(line: 992, column: 24, scope: !1501, inlinedAt: !1503)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !212, line: 992, column: 1)
!1502 = distinct !DISubprogram(name: "drop<alloc::sync::Arc<std::thread::Packet<()>, alloc::alloc::Global>>", linkageName: "_ZN4core3mem4drop17hc0d7ef674acea663E", scope: !214, file: !212, line: 992, type: !43, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1503 = !DILocation(line: 539, column: 13, scope: !1481)
!1504 = !DILocation(line: 542, column: 10, scope: !1459)
!1505 = !DILocation(line: 515, column: 20, scope: !1459)
!1506 = distinct !DISubprogram(name: "try<(), core::panic::unwind_safe::AssertUnwindSafe<std::thread::{impl#0}::spawn_unchecked_::{closure#1}::{closure_env#0}<CVE_2020_26235::main::{closure_env#1}, ()>>>", linkageName: "_ZN3std9panicking3try17h80b519338250a03eE", scope: !388, file: !387, line: 474, type: !43, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1507 = !DILocation(line: 518, column: 19, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !387, line: 517, column: 5)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !387, line: 507, column: 5)
!1510 = distinct !DILexicalBlock(scope: !1506, file: !387, line: 505, column: 5)
!1511 = !DILocation(line: 518, column: 16, scope: !1508)
!1512 = !DILocation(line: 521, column: 42, scope: !1508)
!1513 = !DILocation(line: 584, column: 2, scope: !1506)
!1514 = distinct !DISubprogram(name: "do_call<core::panic::unwind_safe::AssertUnwindSafe<std::thread::{impl#0}::spawn_unchecked_::{closure#1}::{closure_env#0}<CVE_2020_26235::main::{closure_env#1}, ()>>, ()>", linkageName: "_ZN3std9panicking3try7do_call17h9069631fdbf1b3edE", scope: !797, file: !387, line: 548, type: !43, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1515 = !DILocation(line: 554, column: 40, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !387, line: 553, column: 13)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !387, line: 552, column: 13)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !387, line: 551, column: 13)
!1519 = distinct !DILexicalBlock(scope: !1514, file: !387, line: 550, column: 9)
!1520 = !DILocation(line: 556, column: 6, scope: !1514)
!1521 = distinct !DISubprogram(name: "do_catch<core::panic::unwind_safe::AssertUnwindSafe<std::thread::{impl#0}::spawn_unchecked_::{closure#1}::{closure_env#0}<CVE_2020_26235::main::{closure_env#1}, ()>>, ()>", linkageName: "_ZN3std9panicking3try8do_catch17h6f1590165f690618E", scope: !797, file: !387, line: 571, type: !43, scopeLine: 571, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1522 = !DILocation(line: 580, column: 23, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !387, line: 579, column: 13)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !387, line: 578, column: 13)
!1525 = distinct !DILexicalBlock(scope: !1521, file: !387, line: 577, column: 9)
!1526 = !DILocation(line: 571, column: 5, scope: !1521)
!1527 = !DILocation(line: 581, column: 13, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1523, file: !387, line: 580, column: 13)
!1529 = !DILocation(line: 583, column: 6, scope: !1521)
!1530 = distinct !DISubprogram(name: "call_once<(), std::thread::{impl#0}::spawn_unchecked_::{closure#1}::{closure_env#0}<CVE_2020_26235::main::{closure_env#1}, ()>>", linkageName: "_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17hadee9695ca68d4f6E", scope: !829, file: !828, line: 271, type: !43, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1531 = !DILocation(line: 272, column: 9, scope: !1530)
!1532 = !DILocation(line: 273, column: 6, scope: !1530)
!1533 = distinct !DISubprogram(name: "{closure#0}<CVE_2020_26235::main::{closure_env#1}, ()>", linkageName: "_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h7aa041f200ab2387E", scope: !1534, file: !116, line: 528, type: !43, scopeLine: 528, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1534 = !DINamespace(name: "{closure#1}", scope: !1151)
!1535 = !DILocation(line: 529, column: 17, scope: !1533)
!1536 = !DILocation(line: 530, column: 14, scope: !1533)
!1537 = distinct !DISubprogram(name: "__rust_begin_short_backtrace<CVE_2020_26235::main::{closure_env#1}, ()>", linkageName: "_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h84fca60a6f789d64E", scope: !66, file: !65, line: 151, type: !43, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1538 = !DILocation(line: 155, column: 18, scope: !1537)
!1539 = !DILocation(line: 334, column: 5, scope: !1540, inlinedAt: !1542)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !71, line: 333, column: 1)
!1541 = distinct !DISubprogram(name: "black_box<()>", linkageName: "_ZN4core4hint9black_box17hdbdb40d8ee40d1d4E", scope: !73, file: !71, line: 333, type: !43, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1542 = !DILocation(line: 158, column: 5, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1537, file: !65, line: 155, column: 5)
!1544 = !DILocation(line: 161, column: 2, scope: !1537)
!1545 = distinct !DISubprogram(name: "{closure#1}", linkageName: "_ZN14CVE_2020_262354main28_$u7b$$u7b$closure$u7d$$u7d$17h82277864e49eb8f2E", scope: !1546, file: !83, line: 19, type: !43, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1546 = !DINamespace(name: "main", scope: !84)
!1547 = !DILocation(line: 20, column: 19, scope: !1545)
!1548 = !DILocation(line: 1071, column: 15, scope: !1549, inlinedAt: !1550)
!1549 = distinct !DISubprogram(name: "unwrap<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>", linkageName: "_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h65556ffe8bcc99b8E", scope: !94, file: !93, line: 1067, type: !43, scopeLine: 1067, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1550 = distinct !DILocation(line: 20, column: 19, scope: !1545)
!1551 = !DILocation(line: 1071, column: 9, scope: !1549, inlinedAt: !1550)
!1552 = !DILocation(line: 1073, column: 17, scope: !1549, inlinedAt: !1550)
!1553 = !DILocation(line: 1073, column: 23, scope: !1554, inlinedAt: !1550)
!1554 = distinct !DILexicalBlock(scope: !1549, file: !93, line: 1073, column: 13)
!1555 = !DILocation(line: 1073, column: 86, scope: !1549, inlinedAt: !1550)
!1556 = !DILocation(line: 1067, column: 5, scope: !1549, inlinedAt: !1550)
!1557 = !DILocation(line: 0, scope: !1545)
!1558 = !DILocation(line: 1072, column: 16, scope: !1549, inlinedAt: !1550)
!1559 = !DILocation(line: 21, column: 25, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !83, line: 21, column: 9)
!1561 = distinct !DILexicalBlock(scope: !1545, file: !83, line: 20, column: 9)
!1562 = !DILocation(line: 21, column: 18, scope: !1560)
!1563 = !DILocation(line: 22, column: 5, scope: !1545)
!1564 = !DILocation(line: 22, column: 6, scope: !1545)
!1565 = distinct !DISubprogram(name: "new<&str>", linkageName: "_ZN5alloc3ffi5c_str7CString3new17h93e3632d1d83de70E", scope: !1147, file: !926, line: 261, type: !43, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1566 = !DILocation(line: 316, column: 9, scope: !1565)
!1567 = !DILocation(line: 317, column: 6, scope: !1565)
!1568 = distinct !DISubprogram(name: "drop_in_place<alloc::ffi::c_str::NulError>", linkageName: "_ZN4core3ptr48drop_in_place$LT$alloc..ffi..c_str..NulError$GT$17h54c01bc34e4d844aE", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1569 = !DILocation(line: 507, column: 1, scope: !1568)
!1570 = distinct !DISubprogram(name: "deref", linkageName: "_ZN70_$LT$alloc..ffi..c_str..CString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h40d187a0463a349cE", scope: !1571, file: !926, line: 713, type: !43, scopeLine: 713, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1571 = !DINamespace(name: "{impl#3}", scope: !928)
!1572 = !DILocation(line: 562, column: 9, scope: !1573, inlinedAt: !1575)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !926, line: 561, column: 5)
!1574 = distinct !DISubprogram(name: "as_bytes_with_nul", linkageName: "_ZN5alloc3ffi5c_str7CString17as_bytes_with_nul17hb23cdf95d11bf8d4E", scope: !1147, file: !926, line: 561, type: !43, scopeLine: 561, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1575 = !DILocation(line: 714, column: 59, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1570, file: !926, line: 714, column: 9)
!1577 = !DILocation(line: 715, column: 6, scope: !1570)
!1578 = distinct !DISubprogram(name: "fmt", linkageName: "_ZN64_$LT$alloc..ffi..c_str..NulError$u20$as$u20$core..fmt..Debug$GT$3fmt17h79c0ae529cfbcd1bE", scope: !1579, file: !926, line: 134, type: !43, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1579 = !DINamespace(name: "{impl#48}", scope: !928)
!1580 = !DILocation(line: 136, column: 21, scope: !1578)
!1581 = !DILocation(line: 136, column: 28, scope: !1578)
!1582 = !DILocation(line: 134, column: 32, scope: !1578)
!1583 = !DILocation(line: 134, column: 37, scope: !1578)
!1584 = distinct !DISubprogram(name: "drop_in_place<&alloc::vec::Vec<u8, alloc::alloc::Global>>", linkageName: "_ZN4core3ptr50drop_in_place$LT$$RF$alloc..vec..Vec$LT$u8$GT$$GT$17h3992cf91b34db211E", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1585 = !DILocation(line: 507, column: 1, scope: !1584)
!1586 = distinct !DISubprogram(name: "fmt<alloc::vec::Vec<u8, alloc::alloc::Global>>", linkageName: "_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd6d6e73d31546889E", scope: !1587, file: !399, line: 2294, type: !43, scopeLine: 2294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1587 = !DINamespace(name: "{impl#51}", scope: !401)
!1588 = !DILocation(line: 2294, column: 71, scope: !1586)
!1589 = !DILocation(line: 2294, column: 62, scope: !1586)
!1590 = !DILocation(line: 2294, column: 84, scope: !1586)
!1591 = distinct !DISubprogram(name: "fmt<u8, alloc::alloc::Global>", linkageName: "_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h31999e893c5707daE", scope: !1592, file: !1287, line: 3165, type: !43, scopeLine: 3165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1592 = !DINamespace(name: "{impl#26}", scope: !1290)
!1593 = !DILocation(line: 239, column: 9, scope: !1594, inlinedAt: !1596)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !1281, line: 238, column: 5)
!1595 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h35a0d6a5fd2c2914E", scope: !1283, file: !1281, line: 238, type: !43, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1596 = !DILocation(line: 1271, column: 18, scope: !1597, inlinedAt: !1599)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !1287, line: 1268, column: 5)
!1598 = distinct !DISubprogram(name: "as_ptr<u8, alloc::alloc::Global>", linkageName: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h0a066996ca9d1097E", scope: !1289, file: !1287, line: 1268, type: !43, scopeLine: 1268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1599 = !DILocation(line: 2706, column: 45, scope: !1600, inlinedAt: !1603)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !1287, line: 2706, column: 9)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !1287, line: 2705, column: 5)
!1602 = distinct !DISubprogram(name: "deref<u8, alloc::alloc::Global>", linkageName: "_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hc973a82148dcb74fE", scope: !1295, file: !1287, line: 2705, type: !43, scopeLine: 2705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1603 = !DILocation(line: 3166, column: 26, scope: !1591)
!1604 = !DILocation(line: 2706, column: 55, scope: !1600, inlinedAt: !1603)
!1605 = !DILocation(line: 3166, column: 9, scope: !1591)
!1606 = !DILocation(line: 3167, column: 6, scope: !1591)
!1607 = distinct !DISubprogram(name: "fmt<u8>", linkageName: "_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1b4a69ebc1f4329bE", scope: !1608, file: !399, line: 2521, type: !43, scopeLine: 2521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1608 = !DINamespace(name: "{impl#24}", scope: !401)
!1609 = !DILocation(line: 2522, column: 9, scope: !1607)
!1610 = !DILocation(line: 944, column: 18, scope: !1611, inlinedAt: !1614)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !688, line: 944, column: 9)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !688, line: 939, column: 5)
!1613 = distinct !DISubprogram(name: "add<u8>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$3add17h18375bd88229bfedE", scope: !691, file: !688, line: 939, type: !43, scopeLine: 939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1614 = !DILocation(line: 93, column: 79, scope: !1615, inlinedAt: !1622)
!1615 = distinct !DILexicalBlock(scope: !1617, file: !1616, line: 92, column: 9)
!1616 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/slice/iter.rs", directory: "", checksumkind: CSK_MD5, checksum: "4a31f2367d995abb89e196ff48eb2b78")
!1617 = distinct !DILexicalBlock(scope: !1618, file: !1616, line: 90, column: 9)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !1616, line: 89, column: 5)
!1619 = distinct !DISubprogram(name: "new<u8>", linkageName: "_ZN4core5slice4iter13Iter$LT$T$GT$3new17hf48fd71aa222a27cE", scope: !1620, file: !1616, line: 89, type: !43, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1620 = !DINamespace(name: "Iter", scope: !1621)
!1621 = !DINamespace(name: "iter", scope: !601)
!1622 = !DILocation(line: 1021, column: 9, scope: !1623, inlinedAt: !1627)
!1623 = distinct !DILexicalBlock(scope: !1625, file: !1624, line: 1020, column: 5)
!1624 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/slice/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "6276e1ca6d9d6580e16e7d92d2aa0025")
!1625 = distinct !DISubprogram(name: "iter<u8>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17he3cdfd1a4a5ba453E", scope: !1626, file: !1624, line: 1020, type: !43, scopeLine: 1020, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1626 = !DINamespace(name: "{impl#0}", scope: !601)
!1627 = !DILocation(line: 2522, column: 37, scope: !1607)
!1628 = !DILocation(line: 2523, column: 6, scope: !1607)
!1629 = distinct !DISubprogram(name: "entries<&u8, core::slice::iter::Iter<u8>>", linkageName: "_ZN4core3fmt8builders9DebugList7entries17h9bef692612339022E", scope: !1631, file: !1630, line: 689, type: !43, scopeLine: 689, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1630 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/fmt/builders.rs", directory: "", checksumkind: CSK_MD5, checksum: "e001ddbb6a5d5667cffdfcedcee2dd35")
!1631 = !DINamespace(name: "DebugList", scope: !1632)
!1632 = !DINamespace(name: "builders", scope: !401)
!1633 = !DILocation(line: 694, column: 22, scope: !1629)
!1634 = !DILocation(line: 694, column: 9, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1629, file: !1630, line: 694, column: 9)
!1636 = !DILocation(line: 694, column: 22, scope: !1635)
!1637 = !DILocation(line: 689, column: 5, scope: !1629)
!1638 = !DILocation(line: 698, column: 6, scope: !1629)
!1639 = !DILocation(line: 694, column: 13, scope: !1635)
!1640 = !DILocation(line: 695, column: 13, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1635, file: !1630, line: 694, column: 30)
!1642 = !DILocation(line: 696, column: 9, scope: !1635)
!1643 = distinct !DISubprogram(name: "into_iter<core::slice::iter::Iter<u8>>", linkageName: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4ccfd2bcff5b1310E", scope: !1645, file: !1644, line: 278, type: !43, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1644 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/iter/traits/collect.rs", directory: "", checksumkind: CSK_MD5, checksum: "b390a74a8068e14f2e90b22e417c358e")
!1645 = !DINamespace(name: "{impl#0}", scope: !1646)
!1646 = !DINamespace(name: "collect", scope: !1647)
!1647 = !DINamespace(name: "traits", scope: !1648)
!1648 = !DINamespace(name: "iter", scope: !50)
!1649 = !DILocation(line: 280, column: 6, scope: !1643)
!1650 = distinct !DISubprogram(name: "next<u8>", linkageName: "_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h64f8cdaeb1b6ff8eE", scope: !1652, file: !1651, line: 156, type: !43, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1651 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/slice/iter/macros.rs", directory: "", checksumkind: CSK_MD5, checksum: "7726e07357344d9f68af434574978b56")
!1652 = !DINamespace(name: "{impl#181}", scope: !1621)
!1653 = !DILocation(line: 1796, column: 9, scope: !1654, inlinedAt: !1657)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !166, line: 1795, column: 5)
!1655 = distinct !DISubprogram(name: "eq<u8>", linkageName: "_ZN78_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbad9ca521861a83cE", scope: !1656, file: !166, line: 1795, type: !43, scopeLine: 1795, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1656 = !DINamespace(name: "{impl#12}", scope: !170)
!1657 = !DILocation(line: 44, column: 20, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !1651, line: 33, column: 13)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !1651, line: 25, column: 86)
!1660 = distinct !DILexicalBlock(scope: !1650, file: !1651, line: 161, column: 17)
!1661 = !DILocation(line: 162, column: 24, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1659, file: !1651, line: 33, column: 24)
!1663 = !DILocation(line: 162, column: 24, scope: !1659)
!1664 = !DILocation(line: 623, column: 37, scope: !1665, inlinedAt: !1668)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !166, line: 623, column: 9)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !166, line: 615, column: 5)
!1667 = distinct !DISubprogram(name: "add<u8>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$3add17h91c3f34aab678c17E", scope: !169, file: !166, line: 615, type: !43, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1668 = !DILocation(line: 109, column: 53, scope: !1669, inlinedAt: !1675)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !1651, line: 21, column: 13)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !1651, line: 11, column: 90)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !1651, line: 106, column: 17)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !1651, line: 102, column: 17)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !1651, line: 101, column: 13)
!1674 = distinct !DISubprogram(name: "post_inc_start<u8>", linkageName: "_ZN4core5slice4iter13Iter$LT$T$GT$14post_inc_start17h0f5eb78675d649d5E", scope: !1620, file: !1651, line: 101, type: !43, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1675 = !DILocation(line: 77, column: 39, scope: !1660)
!1676 = !DILocation(line: 109, column: 33, scope: !1669, inlinedAt: !1675)
!1677 = !DILocation(line: 162, column: 21, scope: !1660)
!1678 = !DILocation(line: 0, scope: !1660)
!1679 = !DILocation(line: 168, column: 14, scope: !1650)
!1680 = distinct !DISubprogram(name: "drop_in_place<&u8>", linkageName: "_ZN4core3ptr27drop_in_place$LT$$RF$u8$GT$17hf54db6ea981c9ffbE", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1681 = !DILocation(line: 507, column: 1, scope: !1680)
!1682 = distinct !DISubprogram(name: "fmt<u8>", linkageName: "_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h09eaa55106e16f1bE", scope: !1587, file: !399, line: 2294, type: !43, scopeLine: 2294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1683 = !DILocation(line: 2294, column: 71, scope: !1682)
!1684 = !DILocation(line: 2294, column: 62, scope: !1682)
!1685 = !DILocation(line: 2294, column: 84, scope: !1682)
!1686 = distinct !DISubprogram(name: "fmt", linkageName: "_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17hacadb5ebecb5f522E", scope: !1688, file: !1687, line: 189, type: !43, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1687 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/fmt/num.rs", directory: "", checksumkind: CSK_MD5, checksum: "e54845ef989d12b8a79056a0477bb701")
!1688 = !DINamespace(name: "{impl#84}", scope: !1689)
!1689 = !DINamespace(name: "num", scope: !401)
!1690 = !DILocation(line: 1853, column: 9, scope: !1691, inlinedAt: !1694)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !399, line: 1852, column: 5)
!1692 = distinct !DISubprogram(name: "debug_lower_hex", linkageName: "_ZN4core3fmt9Formatter15debug_lower_hex17ha9f04fb6ffc385cdE", scope: !1693, file: !399, line: 1852, type: !43, scopeLine: 1852, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1693 = !DINamespace(name: "Formatter", scope: !401)
!1694 = !DILocation(line: 190, column: 22, scope: !1686)
!1695 = !DILocation(line: 190, column: 20, scope: !1686)
!1696 = !DILocation(line: 1857, column: 9, scope: !1697, inlinedAt: !1699)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !399, line: 1856, column: 5)
!1698 = distinct !DISubprogram(name: "debug_upper_hex", linkageName: "_ZN4core3fmt9Formatter15debug_upper_hex17hff47f04f5d070e77E", scope: !1693, file: !399, line: 1856, type: !43, scopeLine: 1856, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1699 = !DILocation(line: 192, column: 29, scope: !1686)
!1700 = !DILocation(line: 192, column: 27, scope: !1686)
!1701 = !DILocation(line: 191, column: 21, scope: !1686)
!1702 = !DILocation(line: 195, column: 21, scope: !1686)
!1703 = !DILocation(line: 193, column: 21, scope: !1686)
!1704 = !DILocation(line: 0, scope: !1686)
!1705 = !DILocation(line: 197, column: 14, scope: !1686)
!1706 = distinct !DISubprogram(name: "drop_in_place<usize>", linkageName: "_ZN4core3ptr26drop_in_place$LT$usize$GT$17h7a27933a3c20087dE", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1707 = !DILocation(line: 507, column: 1, scope: !1706)
!1708 = distinct !DISubprogram(name: "fmt", linkageName: "_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h2f2f37621fcaa7e3E", scope: !1709, file: !1687, line: 189, type: !43, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1709 = !DINamespace(name: "{impl#89}", scope: !1689)
!1710 = !DILocation(line: 1853, column: 9, scope: !1711, inlinedAt: !1713)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !399, line: 1852, column: 5)
!1712 = distinct !DISubprogram(name: "debug_lower_hex", linkageName: "_ZN4core3fmt9Formatter15debug_lower_hex17ha9f04fb6ffc385cdE", scope: !1693, file: !399, line: 1852, type: !43, scopeLine: 1852, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1713 = !DILocation(line: 190, column: 22, scope: !1708)
!1714 = !DILocation(line: 190, column: 20, scope: !1708)
!1715 = !DILocation(line: 1857, column: 9, scope: !1716, inlinedAt: !1718)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !399, line: 1856, column: 5)
!1717 = distinct !DISubprogram(name: "debug_upper_hex", linkageName: "_ZN4core3fmt9Formatter15debug_upper_hex17hff47f04f5d070e77E", scope: !1693, file: !399, line: 1856, type: !43, scopeLine: 1856, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1718 = !DILocation(line: 192, column: 29, scope: !1708)
!1719 = !DILocation(line: 192, column: 27, scope: !1708)
!1720 = !DILocation(line: 191, column: 21, scope: !1708)
!1721 = !DILocation(line: 195, column: 21, scope: !1708)
!1722 = !DILocation(line: 193, column: 21, scope: !1708)
!1723 = !DILocation(line: 0, scope: !1708)
!1724 = !DILocation(line: 197, column: 14, scope: !1708)
!1725 = distinct !DISubprogram(name: "drop_in_place<alloc::sync::Arc<std::sync::mutex::Mutex<alloc::vec::Vec<u8, alloc::alloc::Global>>, alloc::alloc::Global>>", linkageName: "_ZN4core3ptr101drop_in_place$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$17h26853e77453d0308E", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1726 = !DILocation(line: 507, column: 1, scope: !1725)
!1727 = distinct !DISubprogram(name: "drop<std::sync::mutex::Mutex<alloc::vec::Vec<u8, alloc::alloc::Global>>, alloc::alloc::Global>", linkageName: "_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha565802968166814E", scope: !161, file: !160, line: 2372, type: !43, scopeLine: 2372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1728 = !DILocation(line: 399, column: 20, scope: !1729, inlinedAt: !1732)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !166, line: 399, column: 9)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !166, line: 395, column: 5)
!1731 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<std::sync::mutex::Mutex<alloc::vec::Vec<u8, alloc::alloc::Global>>>>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hecc011c5db9241f8E", scope: !169, file: !166, line: 395, type: !43, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1732 = !DILocation(line: 1748, column: 27, scope: !1733, inlinedAt: !1736)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !160, line: 1748, column: 9)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !160, line: 1742, column: 5)
!1735 = distinct !DISubprogram(name: "inner<std::sync::mutex::Mutex<alloc::vec::Vec<u8, alloc::alloc::Global>>, alloc::alloc::Global>", linkageName: "_ZN5alloc4sync16Arc$LT$T$C$A$GT$5inner17h160c40d886a96dcfE", scope: !175, file: !160, line: 1742, type: !43, scopeLine: 1742, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1736 = !DILocation(line: 2376, column: 17, scope: !1727)
!1737 = !DILocation(line: 3345, column: 24, scope: !1738, inlinedAt: !1741)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !179, line: 3341, column: 5)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !179, line: 3339, column: 1)
!1740 = distinct !DISubprogram(name: "atomic_sub<usize>", linkageName: "_ZN4core4sync6atomic10atomic_sub17heaade2912ce1ce0eE", scope: !182, file: !179, line: 3339, type: !43, scopeLine: 3339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1741 = !DILocation(line: 2683, column: 26, scope: !1742, inlinedAt: !1745)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !179, line: 2683, column: 17)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !179, line: 2681, column: 13)
!1744 = distinct !DISubprogram(name: "fetch_sub", linkageName: "_ZN4core4sync6atomic11AtomicUsize9fetch_sub17h5640ae42c9f15fc4E", scope: !188, file: !179, line: 2681, type: !43, scopeLine: 2681, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1745 = !DILocation(line: 2376, column: 32, scope: !1727)
!1746 = !DILocation(line: 2376, column: 12, scope: !1727)
!1747 = !DILocation(line: 2408, column: 9, scope: !1727)
!1748 = !DILocation(line: 2411, column: 13, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1727, file: !160, line: 2410, column: 9)
!1750 = !DILocation(line: 2413, column: 6, scope: !1727)
!1751 = distinct !DISubprogram(name: "drop_slow<std::sync::mutex::Mutex<alloc::vec::Vec<u8, alloc::alloc::Global>>, alloc::alloc::Global>", linkageName: "_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb42a7db4c2b5d6d3E", scope: !175, file: !160, line: 1753, type: !43, scopeLine: 1753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1752 = !DILocation(line: 2312, column: 25, scope: !1753, inlinedAt: !1756)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !160, line: 2312, column: 9)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !160, line: 2309, column: 5)
!1755 = distinct !DISubprogram(name: "get_mut_unchecked<std::sync::mutex::Mutex<alloc::vec::Vec<u8, alloc::alloc::Global>>, alloc::alloc::Global>", linkageName: "_ZN5alloc4sync16Arc$LT$T$C$A$GT$17get_mut_unchecked17h720fa5ce5a513817E", scope: !175, file: !160, line: 2309, type: !43, scopeLine: 2309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1756 = !DILocation(line: 1756, column: 37, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1751, file: !160, line: 1756, column: 9)
!1758 = !DILocation(line: 1756, column: 18, scope: !1757)
!1759 = !DILocation(line: 1762, column: 26, scope: !1751)
!1760 = !DILocation(line: 1762, column: 43, scope: !1751)
!1761 = !DILocation(line: 1762, column: 14, scope: !1751)
!1762 = !DILocation(line: 992, column: 24, scope: !1763, inlinedAt: !1765)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !212, line: 992, column: 1)
!1764 = distinct !DISubprogram(name: "drop<alloc::sync::Weak<std::sync::mutex::Mutex<alloc::vec::Vec<u8, alloc::alloc::Global>>, &alloc::alloc::Global>>", linkageName: "_ZN4core3mem4drop17h1a35565309421633E", scope: !214, file: !212, line: 992, type: !43, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1765 = !DILocation(line: 1762, column: 9, scope: !1751)
!1766 = !DILocation(line: 1763, column: 6, scope: !1751)
!1767 = distinct !DISubprogram(name: "drop_in_place<std::sync::mutex::Mutex<alloc::vec::Vec<u8, alloc::alloc::Global>>>", linkageName: "_ZN4core3ptr77drop_in_place$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h0acb0d0335df0d72E", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1768 = !DILocation(line: 507, column: 1, scope: !1767)
!1769 = distinct !DISubprogram(name: "drop_in_place<alloc::sync::Weak<std::sync::mutex::Mutex<alloc::vec::Vec<u8, alloc::alloc::Global>>, &alloc::alloc::Global>>", linkageName: "_ZN4core3ptr129drop_in_place$LT$alloc..sync..Weak$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h917789b5e4c75f54E", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1770 = !DILocation(line: 507, column: 1, scope: !1769)
!1771 = distinct !DISubprogram(name: "drop<std::sync::mutex::Mutex<alloc::vec::Vec<u8, alloc::alloc::Global>>, &alloc::alloc::Global>", linkageName: "_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fb8e7b5ce589200E", scope: !222, file: !160, line: 2984, type: !43, scopeLine: 2984, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1772 = !DILocation(line: 2845, column: 19, scope: !1773, inlinedAt: !1775)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !160, line: 2844, column: 5)
!1774 = distinct !DISubprogram(name: "inner<std::sync::mutex::Mutex<alloc::vec::Vec<u8, alloc::alloc::Global>>, &alloc::alloc::Global>", linkageName: "_ZN5alloc4sync17Weak$LT$T$C$A$GT$5inner17h7ec4bbb3b636b6a4E", scope: !226, file: !160, line: 2844, type: !43, scopeLine: 2844, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1775 = !DILocation(line: 2993, column: 47, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1771, file: !160, line: 2993, column: 55)
!1777 = !DILocation(line: 2791, column: 5, scope: !1778, inlinedAt: !1780)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !231, line: 2790, column: 1)
!1779 = distinct !DISubprogram(name: "is_dangling<alloc::sync::ArcInner<std::sync::mutex::Mutex<alloc::vec::Vec<u8, alloc::alloc::Global>>>>", linkageName: "_ZN5alloc2rc11is_dangling17hcc1d936758373cb6E", scope: !233, file: !231, line: 2790, type: !43, scopeLine: 2790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1780 = !DILocation(line: 2846, column: 12, scope: !1781, inlinedAt: !1775)
!1781 = distinct !DILexicalBlock(scope: !1773, file: !160, line: 2845, column: 9)
!1782 = !DILocation(line: 2852, column: 69, scope: !1783, inlinedAt: !1775)
!1783 = distinct !DILexicalBlock(scope: !1781, file: !160, line: 2852, column: 18)
!1784 = !DILocation(line: 3345, column: 24, scope: !1785, inlinedAt: !1788)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !179, line: 3341, column: 5)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !179, line: 3339, column: 1)
!1787 = distinct !DISubprogram(name: "atomic_sub<usize>", linkageName: "_ZN4core4sync6atomic10atomic_sub17heaade2912ce1ce0eE", scope: !182, file: !179, line: 3339, type: !43, scopeLine: 3339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1788 = !DILocation(line: 2683, column: 26, scope: !1789, inlinedAt: !1792)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !179, line: 2683, column: 17)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !179, line: 2681, column: 13)
!1791 = distinct !DISubprogram(name: "fetch_sub", linkageName: "_ZN4core4sync6atomic11AtomicUsize9fetch_sub17h5640ae42c9f15fc4E", scope: !188, file: !179, line: 2681, type: !43, scopeLine: 2681, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1792 = !DILocation(line: 2995, column: 23, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1771, file: !160, line: 2993, column: 9)
!1794 = !DILocation(line: 2995, column: 12, scope: !1793)
!1795 = !DILocation(line: 3001, column: 6, scope: !1771)
!1796 = !DILocation(line: 2996, column: 13, scope: !1793)
!1797 = !DILocation(line: 2998, column: 17, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1793, file: !160, line: 2997, column: 13)
!1799 = !DILocation(line: 2998, column: 39, scope: !1798)
!1800 = !DILocation(line: 2995, column: 9, scope: !1793)
!1801 = distinct !DISubprogram(name: "drop_in_place<core::cell::UnsafeCell<alloc::vec::Vec<u8, alloc::alloc::Global>>>", linkageName: "_ZN4core3ptr76drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hde633b482e84e171E", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1802 = !DILocation(line: 507, column: 1, scope: !1801)
!1803 = distinct !DISubprogram(name: "alloc_impl", linkageName: "_ZN5alloc5alloc6Global10alloc_impl17h891f85d5c57af587E", scope: !1804, file: !264, line: 176, type: !43, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1804 = !DINamespace(name: "Global", scope: !266)
!1805 = !DILocation(line: 177, column: 9, scope: !1803)
!1806 = !DILocation(line: 626, column: 14, scope: !1807, inlinedAt: !1810)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !48, line: 626, column: 5)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !48, line: 620, column: 1)
!1809 = distinct !DISubprogram(name: "invalid_mut<u8>", linkageName: "_ZN4core3ptr11invalid_mut17hd35aa7d4e39f882cE", scope: !49, file: !48, line: 620, type: !43, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1810 = !DILocation(line: 218, column: 41, scope: !1811, inlinedAt: !1814)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !523, line: 218, column: 9)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !523, line: 216, column: 5)
!1813 = distinct !DISubprogram(name: "dangling", linkageName: "_ZN4core5alloc6layout6Layout8dangling17hc664ba52e6bda4afE", scope: !526, file: !523, line: 216, type: !43, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1814 = !DILocation(line: 178, column: 58, scope: !1803)
!1815 = !DILocation(line: 178, column: 72, scope: !1803)
!1816 = !DILocation(line: 186, column: 6, scope: !1803)
!1817 = !DILocation(line: 1583, column: 9, scope: !1818, inlinedAt: !1821)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !48, line: 1578, column: 5)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !48, line: 1576, column: 1)
!1820 = distinct !DISubprogram(name: "read_volatile<u8>", linkageName: "_ZN4core3ptr13read_volatile17h3f9c2d247d87e1edE", scope: !49, file: !48, line: 1576, type: !43, scopeLine: 1576, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1821 = !DILocation(line: 96, column: 9, scope: !1822, inlinedAt: !1825)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !264, line: 93, column: 5)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !264, line: 92, column: 1)
!1824 = distinct !DISubprogram(name: "alloc", linkageName: "_ZN5alloc5alloc5alloc17h2efbcf35477cb53bE", scope: !266, file: !264, line: 92, type: !43, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1825 = !DILocation(line: 181, column: 73, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !264, line: 180, column: 21)
!1827 = distinct !DILexicalBlock(scope: !1803, file: !264, line: 180, column: 13)
!1828 = !DILocation(line: 98, column: 9, scope: !1822, inlinedAt: !1825)
!1829 = !DILocation(line: 244, column: 13, scope: !1830, inlinedAt: !1832)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !166, line: 243, column: 5)
!1831 = distinct !DISubprogram(name: "new<u8>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h85339c9025f8b7fcE", scope: !169, file: !166, line: 243, type: !43, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1832 = !DILocation(line: 182, column: 27, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1826, file: !264, line: 181, column: 17)
!1834 = !DILocation(line: 184, column: 13, scope: !1803)
!1835 = distinct !DISubprogram(name: "into<alloc::string::String, alloc::vec::Vec<u8, alloc::alloc::Global>>", linkageName: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h6b577a793cb4ade8E", scope: !1837, file: !1836, line: 757, type: !43, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1836 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/convert/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "b6b98688d364a0d079b203d234721b09")
!1837 = !DINamespace(name: "{impl#3}", scope: !1838)
!1838 = !DINamespace(name: "convert", scope: !50)
!1839 = !DILocation(line: 758, column: 9, scope: !1835)
!1840 = !DILocation(line: 759, column: 6, scope: !1835)
!1841 = distinct !DISubprogram(name: "memchr_naive", linkageName: "_ZN4core5slice6memchr12memchr_naive17h70f456fdae6ed15fE", scope: !1303, file: !1301, line: 38, type: !43, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1842 = !DILocation(line: 42, column: 11, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1841, file: !1301, line: 39, column: 5)
!1844 = !DILocation(line: 43, column: 12, scope: !1843)
!1845 = !DILocation(line: 51, column: 2, scope: !1841)
!1846 = !DILocation(line: 0, scope: !1843)
!1847 = !DILocation(line: 47, column: 9, scope: !1843)
!1848 = distinct !DISubprogram(name: "from", linkageName: "_ZN5alloc6string104_$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..vec..Vec$LT$u8$GT$$GT$4from17he4850e0d9eb835e9E", scope: !1850, file: !1849, line: 2959, type: !43, scopeLine: 2959, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1849 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/alloc/src/string.rs", directory: "", checksumkind: CSK_MD5, checksum: "fa2aba08356a8d7df87466adcb7b4075")
!1850 = !DINamespace(name: "{impl#66}", scope: !1851)
!1851 = !DINamespace(name: "string", scope: !163)
!1852 = !DILocation(line: 1000, column: 9, scope: !1853, inlinedAt: !1856)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !1849, line: 999, column: 5)
!1854 = distinct !DISubprogram(name: "into_bytes", linkageName: "_ZN5alloc6string6String10into_bytes17hda8ccc373b81d693E", scope: !1855, file: !1849, line: 999, type: !43, scopeLine: 999, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1855 = !DINamespace(name: "String", scope: !1851)
!1856 = !DILocation(line: 2960, column: 16, scope: !1848)
!1857 = !DILocation(line: 2961, column: 6, scope: !1848)
!1858 = distinct !DISubprogram(name: "spawn_unchecked<CVE_2020_26235::main::{closure_env#0}, ()>", linkageName: "_ZN3std6thread7Builder15spawn_unchecked17hf8f20c27512da4bfE", scope: !121, file: !116, line: 451, type: !43, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1859 = !DILocation(line: 457, column: 32, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1858, file: !116, line: 457, column: 23)
!1861 = !DILocation(line: 1946, column: 15, scope: !1862, inlinedAt: !1864)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !93, line: 1945, column: 5)
!1863 = distinct !DISubprogram(name: "branch<std::thread::JoinInner<()>, std::io::error::Error>", linkageName: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h4becfad85139ac1aE", scope: !1090, file: !93, line: 1945, type: !43, scopeLine: 1945, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1864 = !DILocation(line: 457, column: 23, scope: !1858)
!1865 = !DILocation(line: 1946, column: 9, scope: !1862, inlinedAt: !1864)
!1866 = !DILocation(line: 1948, column: 17, scope: !1862, inlinedAt: !1864)
!1867 = !DILocation(line: 1948, column: 23, scope: !1868, inlinedAt: !1864)
!1868 = distinct !DILexicalBlock(scope: !1862, file: !93, line: 1948, column: 13)
!1869 = !DILocation(line: 1947, column: 16, scope: !1862, inlinedAt: !1864)
!1870 = !DILocation(line: 1947, column: 22, scope: !1871, inlinedAt: !1864)
!1871 = distinct !DILexicalBlock(scope: !1862, file: !93, line: 1947, column: 13)
!1872 = !DILocation(line: 457, column: 64, scope: !1858)
!1873 = !DILocation(line: 457, column: 12, scope: !1858)
!1874 = !DILocation(line: 457, column: 9, scope: !1858)
!1875 = !DILocation(line: 458, column: 5, scope: !1858)
!1876 = !DILocation(line: 1959, column: 23, scope: !1877, inlinedAt: !1880)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !93, line: 1959, column: 13)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !93, line: 1957, column: 5)
!1879 = distinct !DISubprogram(name: "from_residual<std::thread::JoinHandle<()>, std::io::error::Error, std::io::error::Error>", linkageName: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h90a5e0018609e13fE", scope: !1107, file: !93, line: 1957, type: !43, scopeLine: 1957, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1880 = !DILocation(line: 457, column: 23, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !116, line: 457, column: 64)
!1882 = distinct !DILexicalBlock(scope: !1858, file: !116, line: 457, column: 64)
!1883 = !DILocation(line: 458, column: 6, scope: !1858)
!1884 = distinct !DISubprogram(name: "spawn_unchecked_<CVE_2020_26235::main::{closure_env#0}, ()>", linkageName: "_ZN3std6thread7Builder16spawn_unchecked_17he5bd980f25619d8eE", scope: !121, file: !116, line: 460, type: !43, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1885 = !DILocation(line: 471, column: 23, scope: !1884)
!1886 = !DILocation(line: 471, column: 29, scope: !1884)
!1887 = !DILocation(line: 974, column: 9, scope: !1888, inlinedAt: !1890)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !486, line: 970, column: 5)
!1889 = distinct !DISubprogram(name: "unwrap_or_else<usize, fn() -> usize>", linkageName: "_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17h91fbde5c64af3db4E", scope: !488, file: !486, line: 970, type: !43, scopeLine: 970, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1890 = !DILocation(line: 473, column: 37, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1884, file: !116, line: 471, column: 9)
!1892 = !DILocation(line: 976, column: 21, scope: !1888, inlinedAt: !1890)
!1893 = !DILocation(line: 975, column: 24, scope: !1888, inlinedAt: !1890)
!1894 = !DILocation(line: 571, column: 5, scope: !1884)
!1895 = !DILocation(line: 0, scope: !1888, inlinedAt: !1890)
!1896 = !DILocation(line: 475, column: 37, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1891, file: !116, line: 473, column: 9)
!1898 = !DILocation(line: 1071, column: 15, scope: !1899, inlinedAt: !1901)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !486, line: 1067, column: 5)
!1900 = distinct !DISubprogram(name: "map<alloc::string::String, alloc::ffi::c_str::CString, std::thread::{impl#0}::spawn_unchecked_::{closure_env#0}<CVE_2020_26235::main::{closure_env#0}, ()>>", linkageName: "_ZN4core6option15Option$LT$T$GT$3map17h26fa06dd925efd0dE", scope: !488, file: !486, line: 1067, type: !43, scopeLine: 1067, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1901 = !DILocation(line: 475, column: 42, scope: !1897)
!1902 = !DILocation(line: 1071, column: 9, scope: !1899, inlinedAt: !1901)
!1903 = !DILocation(line: 1073, column: 21, scope: !1899, inlinedAt: !1901)
!1904 = !DILocation(line: 1072, column: 18, scope: !1899, inlinedAt: !1901)
!1905 = !DILocation(line: 316, column: 9, scope: !1906, inlinedAt: !1908)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !926, line: 261, column: 5)
!1907 = distinct !DISubprogram(name: "new<alloc::string::String>", linkageName: "_ZN5alloc3ffi5c_str7CString3new17h74a82e656c553778E", scope: !1147, file: !926, line: 261, type: !43, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1908 = !DILocation(line: 476, column: 13, scope: !1909, inlinedAt: !1911)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !116, line: 475, column: 46)
!1910 = distinct !DISubprogram(name: "{closure#0}<CVE_2020_26235::main::{closure_env#0}, ()>", linkageName: "_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17h48c42a44156f2e6aE", scope: !1151, file: !116, line: 475, type: !43, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1911 = !DILocation(line: 1072, column: 29, scope: !1912, inlinedAt: !1901)
!1912 = distinct !DILexicalBlock(scope: !1899, file: !486, line: 1072, column: 13)
!1913 = !DILocation(line: 475, column: 25, scope: !1897)
!1914 = !DILocation(line: 1072, column: 33, scope: !1899, inlinedAt: !1901)
!1915 = !DILocation(line: 1089, column: 16, scope: !1916, inlinedAt: !1918)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !1159, line: 1089, column: 16)
!1917 = distinct !DISubprogram(name: "clone<alloc::sync::Arc<std::thread::Inner, alloc::alloc::Global>>", linkageName: "_ZN64_$LT$core..pin..Pin$LT$Ptr$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb70fe05c090b5d46E", scope: !1161, file: !1159, line: 1089, type: !43, scopeLine: 1089, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1918 = !DILocation(line: 1269, column: 5, scope: !1919, inlinedAt: !1921)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !116, line: 1248, column: 10)
!1920 = distinct !DISubprogram(name: "clone", linkageName: "_ZN58_$LT$std..thread..Thread$u20$as$u20$core..clone..Clone$GT$5clone17h541a17bc0ca9ceedE", scope: !1166, file: !116, line: 1248, type: !43, scopeLine: 1248, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1921 = !DILocation(line: 478, column: 38, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1897, file: !116, line: 475, column: 9)
!1923 = !DILocation(line: 571, column: 5, scope: !1897)
!1924 = !DILocation(line: 1248, column: 10, scope: !1919, inlinedAt: !1921)
!1925 = !DILocation(line: 482, column: 37, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1922, file: !116, line: 478, column: 9)
!1927 = !DILocation(line: 2048, column: 9, scope: !1928, inlinedAt: !1930)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !1032, line: 2047, column: 5)
!1929 = distinct !DISubprogram(name: "new<core::option::Option<core::result::Result<(), alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_ZN4core4cell19UnsafeCell$LT$T$GT$3new17h793898b50fa683f1E", scope: !1034, file: !1032, line: 2047, type: !43, scopeLine: 2047, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1930 = !DILocation(line: 482, column: 21, scope: !1926)
!1931 = !DILocation(line: 480, column: 58, scope: !1926)
!1932 = !DILocation(line: 395, column: 34, scope: !1933, inlinedAt: !1935)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !160, line: 392, column: 5)
!1934 = distinct !DISubprogram(name: "new<std::thread::Packet<()>>", linkageName: "_ZN5alloc4sync12Arc$LT$T$GT$3new17h14403e4c0bc74a61E", scope: !175, file: !160, line: 392, type: !43, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1935 = !DILocation(line: 480, column: 49, scope: !1926)
!1936 = !DILocation(line: 217, column: 9, scope: !1183, inlinedAt: !1937)
!1937 = distinct !DILocation(line: 395, column: 25, scope: !1933, inlinedAt: !1935)
!1938 = !DILocation(line: 218, column: 5, scope: !1184, inlinedAt: !1937)
!1939 = !DILocation(line: 215, column: 5, scope: !1184, inlinedAt: !1937)
!1940 = !DILocation(line: 571, column: 5, scope: !1922)
!1941 = !DILocation(line: 217, column: 18, scope: !1184, inlinedAt: !1937)
!1942 = !DILocation(line: 290, column: 9, scope: !1943, inlinedAt: !1945)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !160, line: 289, column: 5)
!1944 = distinct !DISubprogram(name: "from_inner_in<std::thread::Packet<()>, alloc::alloc::Global>", linkageName: "_ZN5alloc4sync16Arc$LT$T$C$A$GT$13from_inner_in17h1e58572eda13f44eE", scope: !175, file: !160, line: 289, type: !43, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1945 = !DILocation(line: 273, column: 18, scope: !1946, inlinedAt: !1949)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !160, line: 273, column: 9)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !160, line: 272, column: 5)
!1948 = distinct !DISubprogram(name: "from_inner<std::thread::Packet<()>>", linkageName: "_ZN5alloc4sync12Arc$LT$T$GT$10from_inner17h1f555e3cb0b6b3e4E", scope: !175, file: !160, line: 272, type: !43, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1949 = !DILocation(line: 400, column: 18, scope: !1950, inlinedAt: !1935)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !160, line: 400, column: 9)
!1951 = distinct !DILexicalBlock(scope: !1933, file: !160, line: 395, column: 9)
!1952 = !DILocation(line: 485, column: 28, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1926, file: !116, line: 480, column: 9)
!1954 = !DILocation(line: 0, scope: !1922)
!1955 = !DILocation(line: 571, column: 5, scope: !1926)
!1956 = !DILocation(line: 487, column: 30, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1953, file: !116, line: 485, column: 9)
!1958 = !DILocation(line: 571, column: 5, scope: !1953)
!1959 = !DILocation(line: 2002, column: 15, scope: !1960, inlinedAt: !1962)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !486, line: 2001, column: 5)
!1961 = distinct !DISubprogram(name: "clone<alloc::sync::Arc<std::sync::mutex::Mutex<alloc::vec::Vec<u8, alloc::alloc::Global>>, alloc::alloc::Global>>", linkageName: "_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4d24431b454f6511E", scope: !1211, file: !486, line: 2001, type: !43, scopeLine: 2001, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1962 = !DILocation(line: 488, column: 54, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1957, file: !116, line: 487, column: 9)
!1964 = !DILocation(line: 2002, column: 9, scope: !1960, inlinedAt: !1962)
!1965 = !DILocation(line: 2003, column: 29, scope: !1966, inlinedAt: !1962)
!1966 = distinct !DILexicalBlock(scope: !1960, file: !486, line: 2003, column: 13)
!1967 = !DILocation(line: 0, scope: !1960, inlinedAt: !1962)
!1968 = !DILocation(line: 488, column: 9, scope: !1963)
!1969 = !DILocation(line: 488, column: 62, scope: !1963)
!1970 = !DILocation(line: 515, column: 20, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1963, file: !116, line: 514, column: 9)
!1972 = !DILocation(line: 399, column: 20, scope: !1973, inlinedAt: !1976)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !166, line: 399, column: 9)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !166, line: 395, column: 5)
!1975 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<std::thread::Packet<()>>>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h2b8a518320d994d1E", scope: !169, file: !166, line: 395, type: !43, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1976 = !DILocation(line: 1748, column: 27, scope: !1977, inlinedAt: !1980)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !160, line: 1748, column: 9)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !160, line: 1742, column: 5)
!1979 = distinct !DISubprogram(name: "inner<std::thread::Packet<()>, alloc::alloc::Global>", linkageName: "_ZN5alloc4sync16Arc$LT$T$C$A$GT$5inner17h532228e6b1f83e20E", scope: !175, file: !160, line: 1742, type: !43, scopeLine: 1742, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1980 = !DILocation(line: 2058, column: 15, scope: !1981, inlinedAt: !1983)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !160, line: 2057, column: 5)
!1982 = distinct !DISubprogram(name: "deref<std::thread::Packet<()>, alloc::alloc::Global>", linkageName: "_ZN73_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8c449dfb6de9e575E", scope: !1233, file: !160, line: 2057, type: !43, scopeLine: 2057, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1983 = !DILocation(line: 544, column: 36, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !116, line: 544, column: 52)
!1985 = distinct !DILexicalBlock(scope: !1971, file: !116, line: 515, column: 9)
!1986 = !DILocation(line: 544, column: 16, scope: !1984)
!1987 = !DILocation(line: 545, column: 13, scope: !1984)
!1988 = !DILocation(line: 548, column: 29, scope: !1985)
!1989 = !DILocation(line: 217, column: 9, scope: !1990, inlinedAt: !1992)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !504, line: 217, column: 9)
!1991 = distinct !DISubprogram(name: "new<std::thread::{impl#0}::spawn_unchecked_::{closure_env#1}<CVE_2020_26235::main::{closure_env#0}, ()>>", linkageName: "_ZN5alloc5boxed12Box$LT$T$GT$3new17hb525657a3bf20b1cE", scope: !1185, file: !504, line: 215, type: !43, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!1992 = distinct !DILocation(line: 548, column: 20, scope: !1985)
!1993 = !DILocation(line: 218, column: 5, scope: !1991, inlinedAt: !1992)
!1994 = !DILocation(line: 215, column: 5, scope: !1991, inlinedAt: !1992)
!1995 = !DILocation(line: 571, column: 5, scope: !1971)
!1996 = !DILocation(line: 217, column: 18, scope: !1991, inlinedAt: !1992)
!1997 = !DILocation(line: 567, column: 30, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !116, line: 567, column: 21)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !116, line: 551, column: 9)
!2000 = distinct !DILexicalBlock(scope: !1985, file: !116, line: 548, column: 9)
!2001 = !DILocation(line: 1946, column: 15, scope: !2002, inlinedAt: !1997)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !93, line: 1945, column: 5)
!2003 = distinct !DISubprogram(name: "branch<std::sys::pal::unix::thread::Thread, std::io::error::Error>", linkageName: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h8252c5d0fdbabe2bE", scope: !1090, file: !93, line: 1945, type: !43, scopeLine: 1945, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!2004 = !DILocation(line: 1946, column: 9, scope: !2002, inlinedAt: !1997)
!2005 = !DILocation(line: 1947, column: 16, scope: !2002, inlinedAt: !1997)
!2006 = !DILocation(line: 568, column: 21, scope: !1999)
!2007 = !DILocation(line: 569, column: 21, scope: !1999)
!2008 = !DILocation(line: 553, column: 12, scope: !1999)
!2009 = !DILocation(line: 553, column: 9, scope: !1999)
!2010 = !DILocation(line: 1948, column: 17, scope: !2002, inlinedAt: !1997)
!2011 = !DILocation(line: 1959, column: 23, scope: !2012, inlinedAt: !2015)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !93, line: 1959, column: 13)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !93, line: 1957, column: 5)
!2014 = distinct !DISubprogram(name: "from_residual<std::thread::JoinInner<()>, std::io::error::Error, std::io::error::Error>", linkageName: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hab94d72c6a998104E", scope: !1107, file: !93, line: 1957, type: !43, scopeLine: 1957, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!2015 = !DILocation(line: 567, column: 30, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !116, line: 567, column: 64)
!2017 = distinct !DILexicalBlock(scope: !1998, file: !116, line: 567, column: 64)
!2018 = !DILocation(line: 571, column: 6, scope: !1884)
!2019 = !DILocation(line: 460, column: 5, scope: !1884)
!2020 = !DILocation(line: 571, column: 5, scope: !1957)
!2021 = distinct !DISubprogram(name: "drop_in_place<std::thread::{impl#0}::spawn_unchecked_::{closure_env#1}<CVE_2020_26235::main::{closure_env#0}, ()>>", linkageName: "_ZN4core3ptr156drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$CVE_2020_26235..main..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h82aff6e68105d0fdE", scope: !49, file: !48, line: 507, type: !43, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!2022 = !DILocation(line: 507, column: 1, scope: !2021)
!2023 = distinct !DISubprogram(name: "call_once<std::thread::{impl#0}::spawn_unchecked_::{closure_env#1}<CVE_2020_26235::main::{closure_env#0}, ()>, ()>", linkageName: "_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hfa7a3cc30f613067E", scope: !54, file: !53, line: 250, type: !43, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!2024 = !DILocation(line: 250, column: 5, scope: !2023)
!2025 = distinct !DISubprogram(name: "{closure#1}<CVE_2020_26235::main::{closure_env#0}, ()>", linkageName: "_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17h147e04594c638b70E", scope: !1151, file: !116, line: 515, type: !43, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!2026 = !DILocation(line: 516, column: 33, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2025, file: !116, line: 516, column: 54)
!2028 = !DILocation(line: 0, scope: !2025)
!2029 = !DILocation(line: 542, column: 9, scope: !2025)
!2030 = !DILocation(line: 516, column: 20, scope: !2027)
!2031 = !DILocation(line: 517, column: 17, scope: !2027)
!2032 = !DILocation(line: 520, column: 43, scope: !2025)
!2033 = !DILocation(line: 520, column: 13, scope: !2025)
!2034 = !DILocation(line: 520, column: 58, scope: !2025)
!2035 = !DILocation(line: 527, column: 39, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !116, line: 527, column: 30)
!2037 = distinct !DILexicalBlock(scope: !2025, file: !116, line: 523, column: 13)
!2038 = !DILocation(line: 527, column: 64, scope: !2037)
!2039 = !DILocation(line: 527, column: 13, scope: !2037)
!2040 = !DILocation(line: 142, column: 14, scope: !2041, inlinedAt: !2044)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !283, line: 142, column: 5)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !283, line: 141, column: 1)
!2043 = distinct !DISubprogram(name: "catch_unwind<core::panic::unwind_safe::AssertUnwindSafe<std::thread::{impl#0}::spawn_unchecked_::{closure#1}::{closure_env#0}<CVE_2020_26235::main::{closure_env#0}, ()>>, ()>", linkageName: "_ZN3std5panic12catch_unwind17h549d2782bd10a90aE", scope: !286, file: !283, line: 141, type: !43, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!2044 = !DILocation(line: 528, column: 30, scope: !2037)
!2045 = !DILocation(line: 535, column: 51, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !116, line: 535, column: 13)
!2047 = distinct !DILexicalBlock(scope: !2037, file: !116, line: 528, column: 13)
!2048 = !DILocation(line: 399, column: 20, scope: !2049, inlinedAt: !2052)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !166, line: 399, column: 9)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !166, line: 395, column: 5)
!2051 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<std::thread::Packet<()>>>", linkageName: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h2b8a518320d994d1E", scope: !169, file: !166, line: 395, type: !43, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!2052 = !DILocation(line: 1748, column: 27, scope: !2053, inlinedAt: !2056)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !160, line: 1748, column: 9)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !160, line: 1742, column: 5)
!2055 = distinct !DISubprogram(name: "inner<std::thread::Packet<()>, alloc::alloc::Global>", linkageName: "_ZN5alloc4sync16Arc$LT$T$C$A$GT$5inner17h532228e6b1f83e20E", scope: !175, file: !160, line: 1742, type: !43, scopeLine: 1742, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!2056 = !DILocation(line: 2058, column: 15, scope: !2057, inlinedAt: !2059)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !160, line: 2057, column: 5)
!2058 = distinct !DISubprogram(name: "deref<std::thread::Packet<()>, alloc::alloc::Global>", linkageName: "_ZN73_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8c449dfb6de9e575E", scope: !1233, file: !160, line: 2057, type: !43, scopeLine: 2057, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!2059 = !DILocation(line: 535, column: 23, scope: !2046)
!2060 = !DILocation(line: 2116, column: 9, scope: !2061, inlinedAt: !2063)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !1032, line: 2112, column: 5)
!2062 = distinct !DISubprogram(name: "get<core::option::Option<core::result::Result<(), alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>", linkageName: "_ZN4core4cell19UnsafeCell$LT$T$GT$3get17h4c2d70657cb2e928E", scope: !1034, file: !1032, line: 2112, type: !43, scopeLine: 2112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!2063 = !DILocation(line: 535, column: 43, scope: !2046)
!2064 = !DILocation(line: 535, column: 22, scope: !2046)
!2065 = !DILocation(line: 539, column: 18, scope: !2047)
!2066 = !DILocation(line: 992, column: 24, scope: !2067, inlinedAt: !2069)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !212, line: 992, column: 1)
!2068 = distinct !DISubprogram(name: "drop<alloc::sync::Arc<std::thread::Packet<()>, alloc::alloc::Global>>", linkageName: "_ZN4core3mem4drop17hc0d7ef674acea663E", scope: !214, file: !212, line: 992, type: !43, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!2069 = !DILocation(line: 539, column: 13, scope: !2047)
!2070 = !DILocation(line: 542, column: 10, scope: !2025)
!2071 = !DILocation(line: 515, column: 20, scope: !2025)
!2072 = distinct !DISubprogram(name: "try<(), core::panic::unwind_safe::AssertUnwindSafe<std::thread::{impl#0}::spawn_unchecked_::{closure#1}::{closure_env#0}<CVE_2020_26235::main::{closure_env#0}, ()>>>", linkageName: "_ZN3std9panicking3try17h7ab4e93257365d22E", scope: !388, file: !387, line: 474, type: !43, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!2073 = !DILocation(line: 518, column: 19, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !387, line: 517, column: 5)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !387, line: 507, column: 5)
!2076 = distinct !DILexicalBlock(scope: !2072, file: !387, line: 505, column: 5)
!2077 = !DILocation(line: 518, column: 16, scope: !2074)
!2078 = !DILocation(line: 521, column: 42, scope: !2074)
!2079 = !DILocation(line: 584, column: 2, scope: !2072)
!2080 = distinct !DISubprogram(name: "do_call<core::panic::unwind_safe::AssertUnwindSafe<std::thread::{impl#0}::spawn_unchecked_::{closure#1}::{closure_env#0}<CVE_2020_26235::main::{closure_env#0}, ()>>, ()>", linkageName: "_ZN3std9panicking3try7do_call17h6b944bbd59d22d42E", scope: !797, file: !387, line: 548, type: !43, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!2081 = !DILocation(line: 554, column: 40, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !387, line: 553, column: 13)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !387, line: 552, column: 13)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !387, line: 551, column: 13)
!2085 = distinct !DILexicalBlock(scope: !2080, file: !387, line: 550, column: 9)
!2086 = !DILocation(line: 556, column: 6, scope: !2080)
!2087 = distinct !DISubprogram(name: "do_catch<core::panic::unwind_safe::AssertUnwindSafe<std::thread::{impl#0}::spawn_unchecked_::{closure#1}::{closure_env#0}<CVE_2020_26235::main::{closure_env#0}, ()>>, ()>", linkageName: "_ZN3std9panicking3try8do_catch17haef4d649ad8ab040E", scope: !797, file: !387, line: 571, type: !43, scopeLine: 571, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!2088 = !DILocation(line: 580, column: 23, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !387, line: 579, column: 13)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !387, line: 578, column: 13)
!2091 = distinct !DILexicalBlock(scope: !2087, file: !387, line: 577, column: 9)
!2092 = !DILocation(line: 571, column: 5, scope: !2087)
!2093 = !DILocation(line: 581, column: 13, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2089, file: !387, line: 580, column: 13)
!2095 = !DILocation(line: 583, column: 6, scope: !2087)
!2096 = distinct !DISubprogram(name: "call_once<(), std::thread::{impl#0}::spawn_unchecked_::{closure#1}::{closure_env#0}<CVE_2020_26235::main::{closure_env#0}, ()>>", linkageName: "_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h414827d17fa90cf3E", scope: !829, file: !828, line: 271, type: !43, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!2097 = !DILocation(line: 272, column: 9, scope: !2096)
!2098 = !DILocation(line: 273, column: 6, scope: !2096)
!2099 = distinct !DISubprogram(name: "{closure#0}<CVE_2020_26235::main::{closure_env#0}, ()>", linkageName: "_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hc592a3a30b32cb86E", scope: !1534, file: !116, line: 528, type: !43, scopeLine: 528, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!2100 = !DILocation(line: 529, column: 17, scope: !2099)
!2101 = !DILocation(line: 530, column: 14, scope: !2099)
!2102 = distinct !DISubprogram(name: "__rust_begin_short_backtrace<CVE_2020_26235::main::{closure_env#0}, ()>", linkageName: "_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hce9d03d17988b0d2E", scope: !66, file: !65, line: 151, type: !43, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!2103 = !DILocation(line: 155, column: 18, scope: !2102)
!2104 = !DILocation(line: 334, column: 5, scope: !2105, inlinedAt: !2107)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !71, line: 333, column: 1)
!2106 = distinct !DISubprogram(name: "black_box<()>", linkageName: "_ZN4core4hint9black_box17hdbdb40d8ee40d1d4E", scope: !73, file: !71, line: 333, type: !43, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!2107 = !DILocation(line: 158, column: 5, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2102, file: !65, line: 155, column: 5)
!2109 = !DILocation(line: 161, column: 2, scope: !2102)
!2110 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_ZN14CVE_2020_262354main28_$u7b$$u7b$closure$u7d$$u7d$17h96d9432bcfd061e0E", scope: !1546, file: !83, line: 12, type: !43, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!2111 = !DILocation(line: 14, column: 26, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2110, file: !83, line: 13, column: 9)
!2113 = !DILocation(line: 15, column: 21, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2112, file: !83, line: 14, column: 13)
!2115 = !DILocation(line: 17, column: 6, scope: !2110)
!2116 = distinct !DISubprogram(name: "from_ptr", linkageName: "_ZN4core3ffi5c_str4CStr8from_ptr17hb2d8f0b8dd7ec914E", scope: !2118, file: !2117, line: 262, type: !43, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!2117 = !DIFile(filename: "/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/ffi/c_str.rs", directory: "", checksumkind: CSK_MD5, checksum: "e3aac0915fb7776bfd7efb2c17c28326")
!2118 = !DINamespace(name: "CStr", scope: !2119)
!2119 = !DINamespace(name: "c_str", scope: !2120)
!2120 = !DINamespace(name: "ffi", scope: !50)
!2121 = !DILocation(line: 717, column: 18, scope: !2122, inlinedAt: !2126)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !2117, line: 717, column: 9)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !2117, line: 710, column: 5)
!2124 = distinct !DISubprogram(name: "strlen_rt", linkageName: "_ZN4core3ffi5c_str12const_strlen9strlen_rt17hecca95e43a3f2fa2E", scope: !2125, file: !2117, line: 710, type: !43, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!2125 = !DINamespace(name: "const_strlen", scope: !2119)
!2126 = !DILocation(line: 721, column: 14, scope: !2127, inlinedAt: !2130)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !2117, line: 721, column: 5)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !2117, line: 697, column: 1)
!2129 = distinct !DISubprogram(name: "const_strlen", linkageName: "_ZN4core3ffi5c_str12const_strlen17h80366a248e0f281dE", scope: !2119, file: !2117, line: 697, type: !43, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !33)
!2130 = !DILocation(line: 265, column: 28, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2116, file: !2117, line: 265, column: 19)
!2132 = !DILocation(line: 273, column: 88, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !2117, line: 273, column: 9)
!2134 = distinct !DILexicalBlock(scope: !2116, file: !2117, line: 265, column: 9)
!2135 = !DILocation(line: 274, column: 6, scope: !2116)
