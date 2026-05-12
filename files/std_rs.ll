; ModuleID = 'files/std_rs.ll'
source_filename = "std_rs.8bfcdf9408d6821f-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::result::Result<usize, std::io::error::Error>" = type { i64, [1 x i64] }
%"core::result::Result<usize, std::io::error::Error>::Ok" = type { [1 x i64], i64 }
%"core::result::Result<usize, std::io::error::Error>::Err" = type { [1 x i64], ptr }
%"std::io::Write::write_fmt::Adapter<'_, std::sys::pal::unix::stdio::Stderr>" = type { ptr, ptr }
%"std::io::error::ErrorData<&std::io::error::Custom>" = type { i8, [15 x i8] }
%"std::io::error::ErrorData<&std::io::error::Custom>::Os" = type { [1 x i32], i32 }
%"std::io::error::ErrorData<&std::io::error::Custom>::SimpleMessage" = type { [1 x i64], ptr }
%"std::io::error::ErrorData<&std::io::error::Custom>::Custom" = type { [1 x i64], ptr }
%"std::io::error::ErrorData<&std::io::error::Custom>::Simple" = type { [1 x i8], i8 }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>" = type { i8, [15 x i8] }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Os" = type { [1 x i32], i32 }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::SimpleMessage" = type { [1 x i64], ptr }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom" = type { [1 x i64], ptr }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Simple" = type { [1 x i8], i8 }
%"std::io::error::SimpleMessage" = type { { ptr, i64 }, i8, [7 x i8] }
%"std::io::error::Custom" = type { %"alloc::boxed::Box<dyn core::error::Error + core::marker::Send + core::marker::Sync>", i8, [7 x i8] }
%"alloc::boxed::Box<dyn core::error::Error + core::marker::Send + core::marker::Sync>" = type { %"core::ptr::unique::Unique<dyn core::error::Error + core::marker::Send + core::marker::Sync>", %"alloc::alloc::Global" }
%"core::ptr::unique::Unique<dyn core::error::Error + core::marker::Send + core::marker::Sync>" = type { %"core::ptr::non_null::NonNull<dyn core::error::Error + core::marker::Send + core::marker::Sync>", %"core::marker::PhantomData<dyn core::error::Error + core::marker::Send + core::marker::Sync>" }
%"core::ptr::non_null::NonNull<dyn core::error::Error + core::marker::Send + core::marker::Sync>" = type { { ptr, ptr } }
%"core::marker::PhantomData<dyn core::error::Error + core::marker::Send + core::marker::Sync>" = type {}
%"alloc::alloc::Global" = type {}
%"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>" = type { i64, [2 x i64] }
%"std::thread::JoinInner<'_, ()>" = type { ptr, ptr, i64 }
%"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>" = type { %"core::sync::atomic::AtomicUsize", %"core::sync::atomic::AtomicUsize", %"std::thread::Packet<'_, ()>" }
%"core::sync::atomic::AtomicUsize" = type { i64 }
%"std::thread::Packet<'_, ()>" = type { ptr, %"core::cell::UnsafeCell<core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>>", %"core::marker::PhantomData<core::option::Option<&std::thread::scoped::ScopeData>>" }
%"core::cell::UnsafeCell<core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>>" = type { %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>" }
%"core::marker::PhantomData<core::option::Option<&std::thread::scoped::ScopeData>>" = type {}
%"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>::Some" = type { [1 x i64], %"core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>" }
%"core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>" = type { ptr, [1 x i64] }
%"std::thread::JoinHandle<()>" = type { %"std::thread::JoinInner<'_, ()>" }
%"core::option::Option<alloc::string::String>" = type { i64, [2 x i64] }
%"std::thread::Builder" = type { %"core::option::Option<usize>", %"core::option::Option<alloc::string::String>" }
%"core::option::Option<usize>" = type { i64, [1 x i64] }
%"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>" = type { ptr, [2 x i64] }
%"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>" = type { ptr, [2 x i64] }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, std::io::error::Error>, std::thread::JoinInner<'_, ()>>" = type { ptr, [2 x i64] }
%"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>::Err" = type { [1 x i64], ptr }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, std::io::error::Error>, std::thread::JoinInner<'_, ()>>::Break" = type { [1 x i64], ptr }
%"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>::Err" = type { [1 x i64], ptr }
%"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>" = type { i64, [3 x i64] }
%"alloc::string::String" = type { %"alloc::vec::Vec<u8>" }
%"alloc::vec::Vec<u8>" = type { %"alloc::raw_vec::RawVec<u8>", i64 }
%"alloc::raw_vec::RawVec<u8>" = type { i64, ptr, %"alloc::alloc::Global" }
%"core::result::Result<std::sys::pal::unix::thread::Thread, std::io::error::Error>" = type { i64, [1 x i64] }
%"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}" = type { ptr, ptr, ptr, ptr }
%"alloc::sync::ArcInner<std::thread::scoped::ScopeData>" = type { %"core::sync::atomic::AtomicUsize", %"core::sync::atomic::AtomicUsize", %"std::thread::scoped::ScopeData" }
%"std::thread::scoped::ScopeData" = type { ptr, %"core::sync::atomic::AtomicUsize", %"core::sync::atomic::AtomicBool", [7 x i8] }
%"core::sync::atomic::AtomicBool" = type { i8 }
%"core::result::Result<std::sys::pal::unix::thread::Thread, std::io::error::Error>::Ok" = type { [1 x i64], i64 }
%"core::result::Result<std::sys::pal::unix::thread::Thread, std::io::error::Error>::Err" = type { [1 x i64], ptr }
%"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}" = type { ptr, ptr, ptr, ptr }
%"core::option::Option<core::ops::range::Range<usize>>" = type { i64, [2 x i64] }
%"std::panicking::try::Data<core::panic::unwind_safe::AssertUnwindSafe<{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}::{closure#0}}>, ()>" = type { [2 x i64] }
%"std::panicking::try::Data<core::panic::unwind_safe::AssertUnwindSafe<{closure@<std::thread::Packet<'_, ()> as core::ops::drop::Drop>::drop::{closure#0}}>, ()>" = type { [2 x i64] }
%"std::panicking::try::Data<core::panic::unwind_safe::AssertUnwindSafe<{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}::{closure#0}}>, ()>" = type { [2 x i64] }
%"core::fmt::builders::DebugList<'_, '_>" = type { %"core::fmt::builders::DebugInner<'_, '_>" }
%"core::fmt::builders::DebugInner<'_, '_>" = type { ptr, i8, i8, [6 x i8] }
%"core::fmt::Formatter<'_>" = type { %"core::option::Option<usize>", %"core::option::Option<usize>", { ptr, ptr }, i32, i32, i8, [7 x i8] }
%"core::slice::iter::Iter<'_, u8>" = type { ptr, ptr, %"core::marker::PhantomData<&u8>" }
%"core::marker::PhantomData<&u8>" = type {}
%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, %"core::option::Option<&[core::fmt::rt::Placeholder]>" }
%"core::option::Option<&[core::fmt::rt::Placeholder]>" = type { ptr, [1 x i64] }
%"std::thread::Inner" = type { i64, %"core::option::Option<alloc::ffi::c_str::CString>", %"std::sys_common::thread_parking::futex::Parker", [1 x i32] }
%"core::option::Option<alloc::ffi::c_str::CString>" = type { ptr, [1 x i64] }
%"std::sys_common::thread_parking::futex::Parker" = type { %"core::sync::atomic::AtomicU32" }
%"core::sync::atomic::AtomicU32" = type { i32 }
%"std::sync::mutex::Mutex<alloc::vec::Vec<u8>>" = type { %"std::sys::pal::unix::locks::futex_mutex::Mutex", %"std::sync::poison::Flag", [3 x i8], %"core::cell::UnsafeCell<alloc::vec::Vec<u8>>" }
%"std::sys::pal::unix::locks::futex_mutex::Mutex" = type { %"core::sync::atomic::AtomicU32" }
%"std::sync::poison::Flag" = type { %"core::sync::atomic::AtomicBool" }
%"core::cell::UnsafeCell<alloc::vec::Vec<u8>>" = type { %"alloc::vec::Vec<u8>" }
%"alloc::ffi::c_str::NulError" = type { %"alloc::vec::Vec<u8>", i64 }
%"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>::Ok" = type { [1 x i64], %"alloc::ffi::c_str::CString" }
%"alloc::ffi::c_str::CString" = type { %"alloc::boxed::Box<[u8]>" }
%"alloc::boxed::Box<[u8]>" = type { %"core::ptr::unique::Unique<[u8]>", %"alloc::alloc::Global" }
%"core::ptr::unique::Unique<[u8]>" = type { %"core::ptr::non_null::NonNull<[u8]>", %"core::marker::PhantomData<[u8]>" }
%"core::ptr::non_null::NonNull<[u8]>" = type { { ptr, i64 } }
%"core::marker::PhantomData<[u8]>" = type {}
%"alloc::sync::ArcInner<i32>" = type { %"core::sync::atomic::AtomicUsize", %"core::sync::atomic::AtomicUsize", i32, [1 x i32] }
%"alloc::sync::Weak<i32, &alloc::alloc::Global>" = type { ptr, ptr }
%"alloc::sync::Weak<std::thread::Packet<'_, ()>, &alloc::alloc::Global>" = type { ptr, ptr }
%"alloc::sync::Weak<std::thread::scoped::ScopeData, &alloc::alloc::Global>" = type { ptr, ptr }
%"alloc::sync::Weak<std::sync::mutex::Mutex<alloc::vec::Vec<u8>>, &alloc::alloc::Global>" = type { ptr, ptr }
%"alloc::sync::ArcInner<std::sync::mutex::Mutex<alloc::vec::Vec<u8>>>" = type { %"core::sync::atomic::AtomicUsize", %"core::sync::atomic::AtomicUsize", %"std::sync::mutex::Mutex<alloc::vec::Vec<u8>>" }
%"alloc::sync::Weak<std::thread::Inner, &alloc::alloc::Global>" = type { ptr, ptr }
%"alloc::sync::ArcInner<std::thread::Inner>" = type { %"core::sync::atomic::AtomicUsize", %"core::sync::atomic::AtomicUsize", %"std::thread::Inner" }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>" = type { [1 x i64], i64, [1 x i64] }
%"core::alloc::layout::Layout" = type { i64, i64 }
%"core::fmt::rt::Argument<'_>" = type { ptr, ptr }
%"alloc::boxed::Box<dyn core::any::Any + core::marker::Send>" = type { %"core::ptr::unique::Unique<dyn core::any::Any + core::marker::Send>", %"alloc::alloc::Global" }
%"core::ptr::unique::Unique<dyn core::any::Any + core::marker::Send>" = type { %"core::ptr::non_null::NonNull<dyn core::any::Any + core::marker::Send>", %"core::marker::PhantomData<dyn core::any::Any + core::marker::Send>" }
%"core::ptr::non_null::NonNull<dyn core::any::Any + core::marker::Send>" = type { { ptr, ptr } }
%"core::marker::PhantomData<dyn core::any::Any + core::marker::Send>" = type {}
%"core::fmt::rt::Placeholder" = type { %"core::fmt::rt::Count", %"core::fmt::rt::Count", i64, i32, i32, i8, [7 x i8] }
%"core::fmt::rt::Count" = type { i64, [1 x i64] }

@alloc_8d68fcbc011419193bd208f22e2789d1 = private unnamed_addr constant <{ [28 x i8] }> <{ [28 x i8] c"failed to write whole buffer" }>, align 1
@alloc_626cc8bfd6c94d404aa777557e31db63 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @alloc_8d68fcbc011419193bd208f22e2789d1, [9 x i8] c"\1C\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@alloc_9057b6bf1b3910500dd83346f5505e1b = private unnamed_addr constant <{ [73 x i8] }> <{ [73 x i8] c"/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/std/src/io/mod.rs" }>, align 1
@alloc_ad59c95d882f83cd0956f19d31e44c98 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_9057b6bf1b3910500dd83346f5505e1b, [16 x i8] c"I\00\00\00\00\00\00\00\B1\06\00\00$\00\00\00" }>, align 8
@vtable.0 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr97drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..sys..pal..unix..stdio..Stderr$GT$$GT$17he284c5d95baded8aE", [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h616885267e0406efE", ptr @_ZN4core3fmt5Write10write_char17haece77ece7164350E, ptr @_ZN4core3fmt5Write9write_fmt17hb8dd255043e35a0dE }>, align 8
@alloc_118e5dd62e18907a47aec3e2be501119 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"formatter error" }>, align 1
@alloc_5d9af7a776dc0d9eecd628aaf786bef9 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @alloc_118e5dd62e18907a47aec3e2be501119, [9 x i8] c"\0F\00\00\00\00\00\00\00(", [7 x i8] undef }>, align 8
@vtable.1 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17he64ae37f094d2577E", [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hdb5d1a81f27fa1bdE", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h7fa128403f6a9962E", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h7fa128403f6a9962E" }>, align 8
@alloc_a04f436dabfd66769fa4ad7bd3b47d85 = private unnamed_addr constant <{ [77 x i8] }> <{ [77 x i8] c"/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/std/src/thread/mod.rs" }>, align 1
@alloc_df98b5df7eeb714409f256abec08df6f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_a04f436dabfd66769fa4ad7bd3b47d85, [16 x i8] c"M\00\00\00\00\00\00\00\ED\05\00\00(\00\00\00" }>, align 8
@alloc_248e7424ac947085569c564717f94fa4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_a04f436dabfd66769fa4ad7bd3b47d85, [16 x i8] c"M\00\00\00\00\00\00\00\ED\05\00\00I\00\00\00" }>, align 8
@alloc_e3605bf48dd8479a638909176cc37fce = private unnamed_addr constant <{ [22 x i8] }> <{ [22 x i8] c"failed to spawn thread" }>, align 1
@alloc_cfbb55ba8bd892c2ed60a2c3f28c3541 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_a04f436dabfd66769fa4ad7bd3b47d85, [16 x i8] c"M\00\00\00\00\00\00\00\AC\02\00\00\1D\00\00\00" }>, align 8
@alloc_498705839b3ae85466bce6e7ebfe4996 = private unnamed_addr constant <{ [47 x i8] }> <{ [47 x i8] c"thread name may not contain interior null bytes" }>, align 1
@alloc_3c7ed5a01079e282fcc9eb5544b30333 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_a04f436dabfd66769fa4ad7bd3b47d85, [16 x i8] c"M\00\00\00\00\00\00\00\DC\01\00\00 \00\00\00" }>, align 8
@vtable.2 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr148drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h9a15adcd150c8f51E", [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h47d034f28e90fdc3E" }>, align 8
@vtable.3 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr148drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17ha03b63e1e465940cE", [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h0bf3243cbfc3701cE" }>, align 8
@vtable.4 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr27drop_in_place$LT$$RF$u8$GT$17h6cd7d665a9d04546E", [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h41685aa6829f33f8E" }>, align 8
@alloc_91c7fa63c3cfeaa3c795652d5cf060e4 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc_af99043bc04c419363a7f04d23183506 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_91c7fa63c3cfeaa3c795652d5cf060e4, [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc_513570631223a12912d85da2bec3b15a = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc_4e392ee20eb14981b7228e69488c1dfe = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/fmt/mod.rs" }>, align 1
@alloc_429c82a8a757ba4eb6ada2ea4793308e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_4e392ee20eb14981b7228e69488c1dfe, [16 x i8] c"K\00\00\00\00\00\00\00M\01\00\00\0D\00\00\00" }>, align 8
@alloc_559f2ae733243bf212b88f542e1f898f = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/char/methods.rs" }>, align 1
@alloc_41a0379ed06a3b1c22d2313ff030dc3d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_559f2ae733243bf212b88f542e1f898f, [16 x i8] c"P\00\00\00\00\00\00\00\05\07\00\00\0D\00\00\00" }>, align 8
@alloc_b9a6dd3adc2673cdd0ef4b9d96fd7520 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/slice/memchr.rs" }>, align 1
@alloc_65452916cca6d97cc375fac7cb56cd3a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_b9a6dd3adc2673cdd0ef4b9d96fd7520, [16 x i8] c"P\00\00\00\00\00\00\00+\00\00\00\0C\00\00\00" }>, align 8
@vtable.5 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr48drop_in_place$LT$alloc..ffi..c_str..NulError$GT$17h9e8886b3dfeaaf35E", [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN64_$LT$alloc..ffi..c_str..NulError$u20$as$u20$core..fmt..Debug$GT$3fmt17h4b6eb45657ae5800E" }>, align 8
@vtable.6 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h7d1d75c373ff4d89E", [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hb0183faaec54836bE" }>, align 8
@alloc_00ae4b301f7fab8ac9617c03fcbd7274 = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c"called `Result::unwrap()` on an `Err` value" }>, align 1
@vtable.7 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17hbd95e1deb97397bdE", [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h6f9a4f8ab6087cc8E" }>, align 8
@__rust_no_alloc_shim_is_unstable = external global i8
@alloc_49c0eff15ce41ce22a2d8c8b146a94ef = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"NulError" }>, align 1
@vtable.8 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr26drop_in_place$LT$usize$GT$17hfb66c53a5a521ee8E", [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h7367d291647d0261E" }>, align 8
@vtable.9 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr50drop_in_place$LT$$RF$alloc..vec..Vec$LT$u8$GT$$GT$17hfcc93603a5391f48E", [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h607224b099d83a83E" }>, align 8
@alloc_1fc69e9d6fe5818ece4ae99dcad03b64 = private unnamed_addr constant <{ [78 x i8] }> <{ [78 x i8] c"/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/alloc/src/ffi/c_str.rs" }>, align 1
@alloc_5c9d34f18b8b9cda7f74f6cd144f9475 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1fc69e9d6fe5818ece4ae99dcad03b64, [16 x i8] c"N\00\00\00\00\00\00\00\0C\01\00\00+\00\00\00" }>, align 8
@alloc_3b99cf3889855522042186bfbc89cd01 = private unnamed_addr constant <{ [52 x i8] }> <{ [52 x i8] c"fatal runtime error: thread result panicked on drop\0A" }>, align 1
@alloc_2ca7775364e940040d1ca01e1c1e4d62 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_3b99cf3889855522042186bfbc89cd01, [8 x i8] c"4\00\00\00\00\00\00\00" }>, align 8
@alloc_1b0b6e2ee384b95b8e7eefa09af5967a = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"files/std_rs.rs" }>, align 1
@alloc_dbc2010e2d83a7828e5295f2cd5ed949 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1b0b6e2ee384b95b8e7eefa09af5967a, [16 x i8] c"\0F\00\00\00\00\00\00\00\0D\00\00\00\0E\00\00\00" }>, align 8
@alloc_ace8c3ae07bb6efc4b6899f999420c54 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1b0b6e2ee384b95b8e7eefa09af5967a, [16 x i8] c"\0F\00\00\00\00\00\00\00\13\00\00\00\0F\00\00\00" }>, align 8
@alloc_9c6916c9bb86567722faae8b09a66490 = private unnamed_addr constant <{ [27 x i8] }> <{ [27 x i8] c"[files/std_rs.rs:11:9] y = " }>, align 1
@alloc_49a1e817e911805af64bbc7efb390101 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc_bfbb86cc6d189835cbb292836a61ad04 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_9c6916c9bb86567722faae8b09a66490, [8 x i8] c"\1B\00\00\00\00\00\00\00", ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_f62552dbfd9ec9b3b5c22b0dda30b91d = private unnamed_addr constant <{ [27 x i8] }> <{ [27 x i8] c"[files/std_rs.rs:17:9] z = " }>, align 1
@alloc_3540addb1ff9d570f8b9e92348c7768f = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_f62552dbfd9ec9b3b5c22b0dda30b91d, [8 x i8] c"\1B\00\00\00\00\00\00\00", ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN104_$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h02da2f82e1afd6baE"(ptr align 8 %self) unnamed_addr #0 {
start:
  tail call fastcc void @"_ZN4core3ptr62drop_in_place$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$GT$17h1022437b15102989E"(ptr align 8 %self)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN104_$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h14eb6e8c357ce55fE"(ptr align 8 %self) unnamed_addr #0 {
start:
  tail call fastcc void @"_ZN4core3ptr62drop_in_place$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$GT$17h1e2d20d11bf7e77cE"(ptr align 8 %self)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h8483439eb291afceE"(i64 %self.0, i64 %self.1, ptr align 1 %slice.0, i64 %slice.1, ptr nocapture readnone align 8 %0) unnamed_addr #1 {
start:
  %_3 = icmp ugt i64 %self.0, %self.1
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_7 = icmp ugt i64 %self.1, 4
  br i1 %_7, label %bb3, label %bb4

bb1:                                              ; preds = %start
  tail call void @_ZN4core5slice5index22slice_index_order_fail17h1fd59e78f9534eb8E(i64 %self.0, i64 %self.1, ptr nonnull align 8 @alloc_41a0379ed06a3b1c22d2313ff030dc3d) #30
  unreachable

bb4:                                              ; preds = %bb2
  %new_len = sub nuw i64 %self.1, %self.0
  %data = getelementptr inbounds i8, ptr %slice.0, i64 %self.0
  %1 = insertvalue { ptr, i64 } poison, ptr %data, 0
  %2 = insertvalue { ptr, i64 } %1, i64 %new_len, 1
  ret { ptr, i64 } %2

bb3:                                              ; preds = %bb2
  tail call void @_ZN4core5slice5index24slice_end_index_len_fail17h23a8c1ae2d2af720E(i64 %self.1, i64 4, ptr nonnull align 8 @alloc_41a0379ed06a3b1c22d2313ff030dc3d) #30
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h0a311a45c3597ef2E"(ptr align 8 %self) unnamed_addr #1 {
start:
  tail call fastcc void @_ZN4core3ops8function6FnOnce9call_once17hb4e8940fe9154733E(ptr align 8 %self)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h68751e9ae14616e5E"(ptr %self) unnamed_addr #1 {
start:
  tail call fastcc void @"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h36633d4df7a099c3E"(ptr %self)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17hf40c20b92256f06dE"(ptr %self) unnamed_addr #1 {
start:
  tail call fastcc void @"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hfbb69110c86435cfE"(ptr %self)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h21f420b989e87ceeE(ptr nocapture readonly %f) unnamed_addr #2 {
start:
  tail call fastcc void @_ZN4core3ops8function6FnOnce9call_once17ha152b1e98a996738E(ptr %f)
  tail call void asm sideeffect "", "~{memory}"() #31, !srcloc !4
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h5fc8190fc031b3f4E(ptr %f) unnamed_addr #2 {
start:
  tail call fastcc void @"_ZN6std_rs4main28_$u7b$$u7b$closure$u7d$$u7d$17h06082d96af712f96E"(ptr %f)
  tail call void asm sideeffect "", "~{memory}"() #31, !srcloc !4
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17he2b1bc2e68677099E(ptr %f) unnamed_addr #2 {
start:
  tail call fastcc void @"_ZN6std_rs4main28_$u7b$$u7b$closure$u7d$$u7d$17he13a5ec719c5485fE"(ptr %f)
  tail call void asm sideeffect "", "~{memory}"() #31, !srcloc !4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc ptr @_ZN3std2io5Write9write_all17hc8981c373f82d5b3E(ptr align 1 %self, ptr align 1 %0, i64 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_4 = alloca %"core::result::Result<usize, std::io::error::Error>", align 8
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %bb13, label %bb3

bb3:                                              ; preds = %start, %bb15
  %self.110 = phi i64 [ %self.1, %bb15 ], [ %1, %start ]
  %self.01 = phi ptr [ %_5.07, %bb15 ], [ %0, %start ]
  call void @"_ZN69_$LT$std..sys..pal..unix..stdio..Stderr$u20$as$u20$std..io..Write$GT$5write17h2f522eae24bf9405E"(ptr nonnull sret(%"core::result::Result<usize, std::io::error::Error>") align 8 %_4, ptr align 1 %self, ptr nonnull align 1 %self.01, i64 %self.110)
  %_6 = load i64, ptr %_4, align 8, !range !5, !noundef !6
  %3 = icmp eq i64 %_6, 0
  br i1 %3, label %bb5, label %bb8

bb13:                                             ; preds = %bb11, %bb5, %start, %bb15
  %_0.0 = phi ptr [ null, %bb15 ], [ null, %start ], [ %e4, %bb11 ], [ @alloc_626cc8bfd6c94d404aa777557e31db63, %bb5 ]
  ret ptr %_0.0

bb5:                                              ; preds = %bb3
  %4 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Ok", ptr %_4, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !noundef !6
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %bb13, label %bb7

bb8:                                              ; preds = %bb3
  %7 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Err", ptr %_4, i64 0, i32 1
  %_13 = invoke fastcc zeroext i1 @_ZN3std2io5error5Error14is_interrupted17h1770f77dc1a41363E(ptr nonnull align 8 %7)
          to label %bb9 unwind label %cleanup.loopexit

bb7:                                              ; preds = %bb5
  %_27 = icmp ugt i64 %5, %self.110
  br i1 %_27, label %bb20, label %bb21

bb21:                                             ; preds = %bb7
  %new_len = sub nuw i64 %self.110, %5
  %data = getelementptr inbounds i8, ptr %self.01, i64 %5
  br label %bb17

bb20:                                             ; preds = %bb7
  invoke void @_ZN4core5slice5index26slice_start_index_len_fail17hb6e6adbe9bcaa20aE(i64 %5, i64 %self.110, ptr nonnull align 8 @alloc_ad59c95d882f83cd0956f19d31e44c98) #30
          to label %unreachable unwind label %cleanup.loopexit.split-lp

bb17:                                             ; preds = %bb9.bb17_crit_edge, %bb21
  %self.1 = phi i64 [ %self.110, %bb9.bb17_crit_edge ], [ %new_len, %bb21 ]
  %_17 = phi i64 [ %_17.pre, %bb9.bb17_crit_edge ], [ 0, %bb21 ]
  %_5.07 = phi ptr [ %self.01, %bb9.bb17_crit_edge ], [ %data, %bb21 ]
  %.not6 = icmp eq i64 %_17, 0
  br i1 %.not6, label %bb15, label %bb16

bb19:                                             ; preds = %cleanup.loopexit, %cleanup.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
  %_18 = load i64, ptr %_4, align 8, !range !5, !noundef !6
  %.not = icmp eq i64 %_18, 0
  br i1 %.not, label %bb14, label %bb18

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
  br i1 %_13, label %bb9.bb17_crit_edge, label %bb11

bb9.bb17_crit_edge:                               ; preds = %bb9
  %_17.pre = load i64, ptr %_4, align 8, !range !5
  br label %bb17

bb11:                                             ; preds = %bb9
  %e4 = load ptr, ptr %7, align 8, !nonnull !6, !noundef !6
  br label %bb13

bb16:                                             ; preds = %bb17
  %8 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Err", ptr %_4, i64 0, i32 1
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h7d1d75c373ff4d89E"(ptr nonnull align 8 %8)
  br label %bb15

bb15:                                             ; preds = %bb16, %bb17
  %9 = icmp eq i64 %self.1, 0
  br i1 %9, label %bb13, label %bb3

bb18:                                             ; preds = %bb19
  %10 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Err", ptr %_4, i64 0, i32 1
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h7d1d75c373ff4d89E"(ptr nonnull align 8 %10) #32
          to label %bb14 unwind label %terminate

bb14:                                             ; preds = %bb18, %bb19
  resume { ptr, i32 } %lpad.phi

terminate:                                        ; preds = %bb18
  %11 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc ptr @_ZN3std2io5Write9write_fmt17h0b706e90561dee7aE(ptr align 1 %self, ptr align 8 %fmt) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %output = alloca %"std::io::Write::write_fmt::Adapter<'_, std::sys::pal::unix::stdio::Stderr>", align 8
  store ptr %self, ptr %output, align 8
  %0 = getelementptr inbounds i8, ptr %output, i64 8
  store ptr null, ptr %0, align 8
  %1 = invoke zeroext i1 @_ZN4core3fmt5write17ha63b5e044fedf034E(ptr nonnull align 1 %output, ptr nonnull align 8 @vtable.0, ptr align 8 %fmt)
          to label %bb1 unwind label %bb7

bb7:                                              ; preds = %start
  %2 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr97drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..sys..pal..unix..stdio..Stderr$GT$$GT$17he284c5d95baded8aE"(ptr nonnull align 8 %output) #32
          to label %bb8 unwind label %terminate

bb1:                                              ; preds = %start
  br i1 %1, label %bb2, label %bb10

bb2:                                              ; preds = %bb1
  %3 = load ptr, ptr %0, align 8, !noundef !6
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb10, label %bb9

bb9:                                              ; preds = %bb2, %bb10
  %_0.03 = phi ptr [ %_0.04, %bb10 ], [ %3, %bb2 ]
  ret ptr %_0.03

bb10:                                             ; preds = %bb1, %bb2
  %_0.04 = phi ptr [ @alloc_5d9af7a776dc0d9eecd628aaf786bef9, %bb2 ], [ null, %bb1 ]
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h9aa1d68d5586ba81E"(ptr nonnull align 8 %0)
  br label %bb9

terminate:                                        ; preds = %bb7
  %4 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #28
  unreachable

bb8:                                              ; preds = %bb7
  resume { ptr, i32 } %2
}

; Function Attrs: inlinehint mustprogress nofree nosync nonlazybind willreturn memory(argmem: write, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_ZN3std2io5error14repr_bitpacked11decode_repr17h46f54ffe6340d171E(ptr nocapture writeonly sret(%"std::io::error::ErrorData<&std::io::error::Custom>") align 8 %_0, ptr %ptr) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %0 = ptrtoint ptr %ptr to i64
  %_5 = and i64 %0, 3
  switch i64 %_5, label %start.unreachabledefault [
    i64 2, label %bb2
    i64 3, label %bb3
    i64 0, label %bb5
    i64 1, label %bb6
  ]

start.unreachabledefault:                         ; preds = %start
  unreachable

bb2:                                              ; preds = %start
  %1 = lshr i64 %0, 32
  %code = trunc i64 %1 to i32
  %2 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::Os", ptr %_0, i64 0, i32 1
  store i32 %code, ptr %2, align 4
  store i8 0, ptr %_0, align 8
  br label %bb9

bb3:                                              ; preds = %start
  %_12 = lshr i64 %0, 32
  %kind_bits = trunc i64 %_12 to i32
  %3 = call fastcc i8 @_ZN3std2io5error14repr_bitpacked14kind_from_prim17hba169c3f279ce0e8E(i32 %kind_bits), !range !7
  br label %bb4

bb5:                                              ; preds = %start
  %4 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::SimpleMessage", ptr %_0, i64 0, i32 1
  store ptr %ptr, ptr %4, align 8
  store i8 2, ptr %_0, align 8
  br label %bb9

bb6:                                              ; preds = %start
  %5 = getelementptr i8, ptr %ptr, i64 -1
  br label %bb8

bb8:                                              ; preds = %bb6
  %6 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::Custom", ptr %_0, i64 0, i32 1
  store ptr %5, ptr %6, align 8
  store i8 3, ptr %_0, align 8
  br label %bb9

bb4:                                              ; preds = %bb3
  %7 = icmp ne i8 %3, 41
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::Simple", ptr %_0, i64 0, i32 1
  store i8 %3, ptr %8, align 1
  store i8 1, ptr %_0, align 8
  br label %bb9

bb9:                                              ; preds = %bb2, %bb4, %bb5, %bb8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree nosync nonlazybind willreturn memory(argmem: write, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_ZN3std2io5error14repr_bitpacked11decode_repr17hec7db7554076d0ffE(ptr nocapture writeonly sret(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>") align 8 %_0, ptr %ptr) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %0 = ptrtoint ptr %ptr to i64
  %_5 = and i64 %0, 3
  switch i64 %_5, label %start.unreachabledefault [
    i64 2, label %bb2
    i64 3, label %bb3
    i64 0, label %bb5
    i64 1, label %bb6
  ]

start.unreachabledefault:                         ; preds = %start
  unreachable

bb2:                                              ; preds = %start
  %1 = lshr i64 %0, 32
  %code = trunc i64 %1 to i32
  %2 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Os", ptr %_0, i64 0, i32 1
  store i32 %code, ptr %2, align 4
  store i8 0, ptr %_0, align 8
  br label %bb9

bb3:                                              ; preds = %start
  %_12 = lshr i64 %0, 32
  %kind_bits = trunc i64 %_12 to i32
  %3 = call fastcc i8 @_ZN3std2io5error14repr_bitpacked14kind_from_prim17hba169c3f279ce0e8E(i32 %kind_bits), !range !7
  br label %bb4

bb5:                                              ; preds = %start
  %4 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::SimpleMessage", ptr %_0, i64 0, i32 1
  store ptr %ptr, ptr %4, align 8
  store i8 2, ptr %_0, align 8
  br label %bb9

bb6:                                              ; preds = %start
  %5 = getelementptr i8, ptr %ptr, i64 -1
  %_21 = call fastcc align 8 ptr @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hadea45dc41d1697cE"(ptr %5)
  br label %bb8

bb8:                                              ; preds = %bb6
  %6 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", ptr %_0, i64 0, i32 1
  store ptr %5, ptr %6, align 8
  store i8 3, ptr %_0, align 8
  br label %bb9

bb4:                                              ; preds = %bb3
  %7 = icmp ne i8 %3, 41
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Simple", ptr %_0, i64 0, i32 1
  store i8 %3, ptr %8, align 1
  store i8 1, ptr %_0, align 8
  br label %bb9

bb9:                                              ; preds = %bb2, %bb4, %bb5, %bb8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc i8 @_ZN3std2io5error14repr_bitpacked14kind_from_prim17hba169c3f279ce0e8E(i32 %0) unnamed_addr #5 {
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
  ]

bb83.fold.split:                                  ; preds = %start
  br label %bb83

bb83.fold.split1:                                 ; preds = %start
  br label %bb83

bb83.fold.split2:                                 ; preds = %start
  br label %bb83

bb83.fold.split3:                                 ; preds = %start
  br label %bb83

bb83.fold.split4:                                 ; preds = %start
  br label %bb83

bb83.fold.split5:                                 ; preds = %start
  br label %bb83

bb83.fold.split6:                                 ; preds = %start
  br label %bb83

bb83.fold.split7:                                 ; preds = %start
  br label %bb83

bb83.fold.split8:                                 ; preds = %start
  br label %bb83

bb83.fold.split9:                                 ; preds = %start
  br label %bb83

bb83.fold.split10:                                ; preds = %start
  br label %bb83

bb83.fold.split11:                                ; preds = %start
  br label %bb83

bb83.fold.split12:                                ; preds = %start
  br label %bb83

bb83.fold.split13:                                ; preds = %start
  br label %bb83

bb83.fold.split14:                                ; preds = %start
  br label %bb83

bb83.fold.split15:                                ; preds = %start
  br label %bb83

bb83.fold.split16:                                ; preds = %start
  br label %bb83

bb83.fold.split17:                                ; preds = %start
  br label %bb83

bb83.fold.split18:                                ; preds = %start
  br label %bb83

bb83.fold.split19:                                ; preds = %start
  br label %bb83

bb83.fold.split20:                                ; preds = %start
  br label %bb83

bb83.fold.split21:                                ; preds = %start
  br label %bb83

bb83.fold.split22:                                ; preds = %start
  br label %bb83

bb83.fold.split23:                                ; preds = %start
  br label %bb83

bb83.fold.split24:                                ; preds = %start
  br label %bb83

bb83.fold.split25:                                ; preds = %start
  br label %bb83

bb83.fold.split26:                                ; preds = %start
  br label %bb83

bb83.fold.split27:                                ; preds = %start
  br label %bb83

bb83.fold.split28:                                ; preds = %start
  br label %bb83

bb83.fold.split29:                                ; preds = %start
  br label %bb83

bb83.fold.split30:                                ; preds = %start
  br label %bb83

bb83.fold.split31:                                ; preds = %start
  br label %bb83

bb83.fold.split32:                                ; preds = %start
  br label %bb83

bb83.fold.split33:                                ; preds = %start
  br label %bb83

bb83.fold.split34:                                ; preds = %start
  br label %bb83

bb83.fold.split35:                                ; preds = %start
  br label %bb83

bb83.fold.split36:                                ; preds = %start
  br label %bb83

bb83.fold.split37:                                ; preds = %start
  br label %bb83

bb83.fold.split38:                                ; preds = %start
  br label %bb83

bb83.fold.split39:                                ; preds = %start
  br label %bb83

bb83:                                             ; preds = %start, %bb83.fold.split39, %bb83.fold.split38, %bb83.fold.split37, %bb83.fold.split36, %bb83.fold.split35, %bb83.fold.split34, %bb83.fold.split33, %bb83.fold.split32, %bb83.fold.split31, %bb83.fold.split30, %bb83.fold.split29, %bb83.fold.split28, %bb83.fold.split27, %bb83.fold.split26, %bb83.fold.split25, %bb83.fold.split24, %bb83.fold.split23, %bb83.fold.split22, %bb83.fold.split21, %bb83.fold.split20, %bb83.fold.split19, %bb83.fold.split18, %bb83.fold.split17, %bb83.fold.split16, %bb83.fold.split15, %bb83.fold.split14, %bb83.fold.split13, %bb83.fold.split12, %bb83.fold.split11, %bb83.fold.split10, %bb83.fold.split9, %bb83.fold.split8, %bb83.fold.split7, %bb83.fold.split6, %bb83.fold.split5, %bb83.fold.split4, %bb83.fold.split3, %bb83.fold.split2, %bb83.fold.split1, %bb83.fold.split, %bb82
  %_0.0 = phi i8 [ 41, %bb82 ], [ 0, %start ], [ 1, %bb83.fold.split ], [ 2, %bb83.fold.split1 ], [ 3, %bb83.fold.split2 ], [ 4, %bb83.fold.split3 ], [ 5, %bb83.fold.split4 ], [ 6, %bb83.fold.split5 ], [ 7, %bb83.fold.split6 ], [ 8, %bb83.fold.split7 ], [ 9, %bb83.fold.split8 ], [ 10, %bb83.fold.split9 ], [ 11, %bb83.fold.split10 ], [ 12, %bb83.fold.split11 ], [ 13, %bb83.fold.split12 ], [ 14, %bb83.fold.split13 ], [ 15, %bb83.fold.split14 ], [ 16, %bb83.fold.split15 ], [ 17, %bb83.fold.split16 ], [ 18, %bb83.fold.split17 ], [ 19, %bb83.fold.split18 ], [ 20, %bb83.fold.split19 ], [ 21, %bb83.fold.split20 ], [ 22, %bb83.fold.split21 ], [ 23, %bb83.fold.split22 ], [ 24, %bb83.fold.split23 ], [ 25, %bb83.fold.split24 ], [ 26, %bb83.fold.split25 ], [ 27, %bb83.fold.split26 ], [ 28, %bb83.fold.split27 ], [ 29, %bb83.fold.split28 ], [ 30, %bb83.fold.split29 ], [ 31, %bb83.fold.split30 ], [ 32, %bb83.fold.split31 ], [ 33, %bb83.fold.split32 ], [ 34, %bb83.fold.split33 ], [ 35, %bb83.fold.split34 ], [ 39, %bb83.fold.split35 ], [ 37, %bb83.fold.split36 ], [ 36, %bb83.fold.split37 ], [ 38, %bb83.fold.split38 ], [ 40, %bb83.fold.split39 ]
  ret i8 %_0.0

bb82:                                             ; preds = %start
  br label %bb83
}

; Function Attrs: inlinehint mustprogress nofree nosync nonlazybind willreturn uwtable
define internal fastcc zeroext i1 @_ZN3std2io5error5Error14is_interrupted17h1770f77dc1a41363E(ptr nocapture readonly align 8 %self) unnamed_addr #6 {
start:
  %_2 = alloca %"std::io::error::ErrorData<&std::io::error::Custom>", align 8
  %_12 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  call fastcc void @_ZN3std2io5error14repr_bitpacked11decode_repr17h46f54ffe6340d171E(ptr nonnull sret(%"std::io::error::ErrorData<&std::io::error::Custom>") align 8 %_2, ptr nonnull %_12)
  %0 = load i8, ptr %_2, align 8, !range !8, !noundef !6
  %_4 = zext i8 %0 to i64
  switch i64 %_4, label %bb7 [
    i64 0, label %bb2
    i64 1, label %bb4
    i64 2, label %bb1
    i64 3, label %bb3
  ]

bb7:                                              ; preds = %start
  unreachable

bb2:                                              ; preds = %start
  %1 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::Os", ptr %_2, i64 0, i32 1
  %code = load i32, ptr %1, align 4, !noundef !6
  %2 = icmp eq i32 %code, 4
  br label %bb5

bb4:                                              ; preds = %start
  %3 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::Simple", ptr %_2, i64 0, i32 1
  %4 = load i8, ptr %3, align 1, !range !9, !noundef !6
  %5 = icmp eq i8 %4, 35
  br label %bb5

bb1:                                              ; preds = %start
  %6 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::SimpleMessage", ptr %_2, i64 0, i32 1
  %m = load ptr, ptr %6, align 8, !nonnull !6, !align !10, !noundef !6
  %7 = getelementptr inbounds %"std::io::error::SimpleMessage", ptr %m, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !range !9, !noundef !6
  %9 = icmp eq i8 %8, 35
  br label %bb5

bb3:                                              ; preds = %start
  %10 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::Custom", ptr %_2, i64 0, i32 1
  %c = load ptr, ptr %10, align 8, !nonnull !6, !align !10, !noundef !6
  %11 = getelementptr inbounds %"std::io::error::Custom", ptr %c, i64 0, i32 1
  %12 = load i8, ptr %11, align 8, !range !9, !noundef !6
  %13 = icmp eq i8 %12, 35
  br label %bb5

bb5:                                              ; preds = %bb3, %bb1, %bb4, %bb2
  %_0.0.in = phi i1 [ %13, %bb3 ], [ %9, %bb1 ], [ %5, %bb4 ], [ %2, %bb2 ]
  ret i1 %_0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden i64 @_ZN3std2rt10lang_start17hf0e5005b6eeaa845E(ptr %main, i64 %argc, ptr %argv, i8 %sigpipe) unnamed_addr #3 {
start:
  %_8 = alloca ptr, align 8
  store ptr %main, ptr %_8, align 8
  %0 = call i64 @_ZN3std2rt19lang_start_internal17hd1132dfff4140512E(ptr nonnull align 1 %_8, ptr nonnull align 8 @vtable.1, i64 %argc, ptr %argv, i8 %sigpipe)
  ret i64 %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h7fa128403f6a9962E"(ptr nocapture readonly align 8 %_1) unnamed_addr #1 {
start:
  %_4 = load ptr, ptr %_1, align 8, !nonnull !6, !noundef !6
  tail call fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h21f420b989e87ceeE(ptr nonnull %_4)
  ret i32 0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @"_ZN3std6thread18JoinInner$LT$T$GT$4join17hb112370f7b8b0233E"(ptr align 8 %self) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %src = alloca %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>", align 8
  %result = alloca %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>", align 8
  %0 = getelementptr inbounds %"std::thread::JoinInner<'_, ()>", ptr %self, i64 0, i32 2
  %_3 = load i64, ptr %0, align 8, !noundef !6
  invoke void @_ZN3std3sys3pal4unix6thread6Thread4join17h895d97bd495144ffE(i64 %_3)
          to label %bb1 unwind label %bb7

bb7:                                              ; preds = %start, %bb12, %bb15
  %1 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hfe663bec07996c9bE"(ptr nonnull align 8 %self) #32
          to label %bb6 unwind label %terminate

bb1:                                              ; preds = %start
  %this = getelementptr inbounds %"std::thread::JoinInner<'_, ()>", ptr %self, i64 0, i32 1
  %_10 = call fastcc zeroext i1 @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9is_unique17h3fab591f54f57a44E"(ptr nonnull align 8 %this)
  br label %bb8

bb8:                                              ; preds = %bb1
  br i1 %_10, label %bb14, label %bb12

bb12:                                             ; preds = %bb8
  invoke void @_ZN4core6option13unwrap_failed17h8a484d2e9090c178E(ptr nonnull align 8 @alloc_df98b5df7eeb714409f256abec08df6f) #30
          to label %unreachable unwind label %bb7

bb14:                                             ; preds = %bb8
  %self2 = load ptr, ptr %this, align 8, !nonnull !6, !noundef !6
  store i64 0, ptr %src, align 8
  %2 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %self2, i64 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %result, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %src, i64 24, i1 false)
  %_20 = load i64, ptr %result, align 8, !range !5, !noundef !6
  %3 = icmp eq i64 %_20, 0
  br i1 %3, label %bb15, label %bb16

unreachable:                                      ; preds = %bb15, %bb12
  unreachable

bb15:                                             ; preds = %bb14
  invoke void @_ZN4core6option13unwrap_failed17h8a484d2e9090c178E(ptr nonnull align 8 @alloc_248e7424ac947085569c564717f94fa4) #30
          to label %unreachable unwind label %bb7

bb16:                                             ; preds = %bb14
  %4 = getelementptr inbounds %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>::Some", ptr %result, i64 0, i32 1
  %val.0 = load ptr, ptr %4, align 8, !align !11, !noundef !6
  %5 = getelementptr inbounds %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>::Some", ptr %result, i64 0, i32 1, i32 1
  %val.1 = load ptr, ptr %5, align 8
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hfe663bec07996c9bE"(ptr nonnull align 8 %self)
          to label %bb5 unwind label %bb4

bb4:                                              ; preds = %bb16
  %6 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hdd1e9cb9f54fbb86E"(ptr nonnull align 8 %this) #32
          to label %bb2 unwind label %terminate

bb5:                                              ; preds = %bb16
  tail call fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hdd1e9cb9f54fbb86E"(ptr nonnull align 8 %this)
  %7 = insertvalue { ptr, ptr } poison, ptr %val.0, 0
  %8 = insertvalue { ptr, ptr } %7, ptr %val.1, 1
  ret { ptr, ptr } %8

terminate:                                        ; preds = %bb6, %bb4, %bb7
  %9 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  tail call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #28
  unreachable

bb2:                                              ; preds = %bb6, %bb4
  %.pn = phi { ptr, i32 } [ %1, %bb6 ], [ %6, %bb4 ]
  resume { ptr, i32 } %.pn

bb6:                                              ; preds = %bb7
  %10 = getelementptr inbounds %"std::thread::JoinInner<'_, ()>", ptr %self, i64 0, i32 1
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hdd1e9cb9f54fbb86E"(ptr nonnull align 8 %10) #32
          to label %bb2 unwind label %terminate
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @"_ZN3std6thread19JoinHandle$LT$T$GT$4join17hb506c82f2aeba70cE"(ptr nocapture readonly align 8 %self) unnamed_addr #3 {
start:
  %_2 = alloca %"std::thread::JoinInner<'_, ()>", align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_2, ptr noundef nonnull align 8 dereferenceable(24) %self, i64 24, i1 false)
  %0 = call fastcc { ptr, ptr } @"_ZN3std6thread18JoinInner$LT$T$GT$4join17hb112370f7b8b0233E"(ptr nonnull align 8 %_2)
  ret { ptr, ptr } %0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN3std6thread5spawn17h59ed9669f5235feeE(ptr nocapture writeonly sret(%"std::thread::JoinHandle<()>") align 8 %_0, ptr %f) unnamed_addr #3 {
start:
  %_5 = alloca %"core::option::Option<alloc::string::String>", align 8
  %self = alloca %"std::thread::Builder", align 8
  %_2 = alloca %"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>", align 8
  store i64 -9223372036854775808, ptr %_5, align 8
  %0 = getelementptr inbounds %"std::thread::Builder", ptr %self, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %_5, i64 24, i1 false)
  store i64 0, ptr %self, align 8
  call fastcc void @_ZN3std6thread7Builder15spawn_unchecked17hfbeecaa17d4c619fE(ptr nonnull sret(%"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>") align 8 %_2, ptr nonnull align 8 %self, ptr %f)
  call fastcc void @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h8db424f7ac276905E"(ptr sret(%"std::thread::JoinHandle<()>") align 8 %_0, ptr nonnull align 8 %_2, ptr nonnull align 1 @alloc_e3605bf48dd8479a638909176cc37fce, i64 22, ptr nonnull align 8 @alloc_cfbb55ba8bd892c2ed60a2c3f28c3541)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN3std6thread5spawn17hbd81c1df7aff50d1E(ptr nocapture writeonly sret(%"std::thread::JoinHandle<()>") align 8 %_0, ptr %f) unnamed_addr #3 {
start:
  %_5 = alloca %"core::option::Option<alloc::string::String>", align 8
  %self = alloca %"std::thread::Builder", align 8
  %_2 = alloca %"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>", align 8
  store i64 -9223372036854775808, ptr %_5, align 8
  %0 = getelementptr inbounds %"std::thread::Builder", ptr %self, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %_5, i64 24, i1 false)
  store i64 0, ptr %self, align 8
  call fastcc void @_ZN3std6thread7Builder15spawn_unchecked17h4b7e703370d9ed91E(ptr nonnull sret(%"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>") align 8 %_2, ptr nonnull align 8 %self, ptr %f)
  call fastcc void @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h8db424f7ac276905E"(ptr sret(%"std::thread::JoinHandle<()>") align 8 %_0, ptr nonnull align 8 %_2, ptr nonnull align 1 @alloc_e3605bf48dd8479a638909176cc37fce, i64 22, ptr nonnull align 8 @alloc_cfbb55ba8bd892c2ed60a2c3f28c3541)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN3std6thread7Builder15spawn_unchecked17h4b7e703370d9ed91E(ptr nocapture writeonly sret(%"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>") align 8 %_0, ptr nocapture readonly align 8 %self, ptr %f) unnamed_addr #3 {
start:
  %v = alloca %"std::thread::JoinInner<'_, ()>", align 8
  %val = alloca %"std::thread::JoinInner<'_, ()>", align 8
  %self1 = alloca %"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>", align 8
  %_4 = alloca %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, std::io::error::Error>, std::thread::JoinInner<'_, ()>>", align 8
  %_3 = alloca %"std::thread::JoinHandle<()>", align 8
  call fastcc void @_ZN3std6thread7Builder16spawn_unchecked_17h019f696881696a30E(ptr nonnull sret(%"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>") align 8 %self1, ptr align 8 %self, ptr %f, ptr null)
  %0 = load ptr, ptr %self1, align 8, !noundef !6
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb5.thread, label %bb5

bb5.thread:                                       ; preds = %start
  %1 = getelementptr inbounds %"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>::Err", ptr %self1, i64 0, i32 1
  %e = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %2 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, std::io::error::Error>, std::thread::JoinInner<'_, ()>>::Break", ptr %_4, i64 0, i32 1
  store ptr %e, ptr %2, align 8
  store ptr null, ptr %_4, align 8
  br label %bb3

bb5:                                              ; preds = %start
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %v, ptr noundef nonnull align 8 dereferenceable(24) %self1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_4, ptr noundef nonnull align 8 dereferenceable(24) %v, i64 24, i1 false)
  %.pr = load ptr, ptr %_4, align 8
  %.not1 = icmp eq ptr %.pr, null
  br i1 %.not1, label %bb5.bb3_crit_edge, label %bb2

bb5.bb3_crit_edge:                                ; preds = %bb5
  %.phi.trans.insert = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, std::io::error::Error>, std::thread::JoinInner<'_, ()>>::Break", ptr %_4, i64 0, i32 1
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb3

bb2:                                              ; preds = %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %val, ptr noundef nonnull align 8 dereferenceable(24) %_4, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_3, ptr noundef nonnull align 8 dereferenceable(24) %val, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %_3, i64 24, i1 false)
  br label %bb4

bb3:                                              ; preds = %bb5.bb3_crit_edge, %bb5.thread
  %3 = phi ptr [ %.pre, %bb5.bb3_crit_edge ], [ %e, %bb5.thread ]
  %4 = getelementptr inbounds %"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>::Err", ptr %_0, i64 0, i32 1
  store ptr %3, ptr %4, align 8
  store ptr null, ptr %_0, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN3std6thread7Builder15spawn_unchecked17hfbeecaa17d4c619fE(ptr nocapture writeonly sret(%"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>") align 8 %_0, ptr nocapture readonly align 8 %self, ptr %f) unnamed_addr #3 {
start:
  %v = alloca %"std::thread::JoinInner<'_, ()>", align 8
  %val = alloca %"std::thread::JoinInner<'_, ()>", align 8
  %self1 = alloca %"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>", align 8
  %_4 = alloca %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, std::io::error::Error>, std::thread::JoinInner<'_, ()>>", align 8
  %_3 = alloca %"std::thread::JoinHandle<()>", align 8
  call fastcc void @_ZN3std6thread7Builder16spawn_unchecked_17h0614afa9c4685266E(ptr nonnull sret(%"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>") align 8 %self1, ptr align 8 %self, ptr %f, ptr null)
  %0 = load ptr, ptr %self1, align 8, !noundef !6
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb5.thread, label %bb5

bb5.thread:                                       ; preds = %start
  %1 = getelementptr inbounds %"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>::Err", ptr %self1, i64 0, i32 1
  %e = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %2 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, std::io::error::Error>, std::thread::JoinInner<'_, ()>>::Break", ptr %_4, i64 0, i32 1
  store ptr %e, ptr %2, align 8
  store ptr null, ptr %_4, align 8
  br label %bb3

bb5:                                              ; preds = %start
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %v, ptr noundef nonnull align 8 dereferenceable(24) %self1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_4, ptr noundef nonnull align 8 dereferenceable(24) %v, i64 24, i1 false)
  %.pr = load ptr, ptr %_4, align 8
  %.not1 = icmp eq ptr %.pr, null
  br i1 %.not1, label %bb5.bb3_crit_edge, label %bb2

bb5.bb3_crit_edge:                                ; preds = %bb5
  %.phi.trans.insert = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, std::io::error::Error>, std::thread::JoinInner<'_, ()>>::Break", ptr %_4, i64 0, i32 1
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb3

bb2:                                              ; preds = %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %val, ptr noundef nonnull align 8 dereferenceable(24) %_4, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_3, ptr noundef nonnull align 8 dereferenceable(24) %val, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %_3, i64 24, i1 false)
  br label %bb4

bb3:                                              ; preds = %bb5.bb3_crit_edge, %bb5.thread
  %3 = phi ptr [ %.pre, %bb5.bb3_crit_edge ], [ %e, %bb5.thread ]
  %4 = getelementptr inbounds %"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>::Err", ptr %_0, i64 0, i32 1
  store ptr %3, ptr %4, align 8
  store ptr null, ptr %_0, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN3std6thread7Builder16spawn_unchecked_17h019f696881696a30E(ptr nocapture writeonly sret(%"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>") align 8 %_0, ptr nocapture readonly align 8 %self, ptr %0, ptr nocapture readnone %1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_64 = alloca %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", align 8
  %_57 = alloca %"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>", align 8
  %x = alloca %"alloc::string::String", align 8
  %self5 = alloca %"core::result::Result<std::sys::pal::unix::thread::Thread, std::io::error::Error>", align 8
  %_36 = alloca %"std::thread::JoinInner<'_, ()>", align 8
  %_33 = alloca %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", align 8
  %main = alloca %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", align 8
  %_20 = alloca ptr, align 8
  %output_capture = alloca ptr, align 8
  %their_packet = alloca ptr, align 8
  %value = alloca %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>", align 8
  %_15 = alloca %"core::cell::UnsafeCell<core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>>", align 8
  %data = alloca %"std::thread::Packet<'_, ()>", align 8
  %my_packet = alloca ptr, align 8
  %their_thread = alloca ptr, align 8
  %self2 = alloca %"core::option::Option<alloc::string::String>", align 8
  %my_thread = alloca ptr, align 8
  %name = alloca %"core::option::Option<alloc::string::String>", align 8
  %scope_data = alloca ptr, align 8
  %f = alloca ptr, align 8
  store ptr %0, ptr %f, align 8
  store ptr null, ptr %scope_data, align 8
  %2 = getelementptr inbounds %"std::thread::Builder", ptr %self, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %name, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %3 = load i64, ptr %self, align 8, !range !5, !noundef !6
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %bb34, label %bb35

bb34:                                             ; preds = %start
  %5 = invoke fastcc i64 @_ZN4core3ops8function6FnOnce9call_once17h5d96f95940eb1a48E()
          to label %bb36 unwind label %bb30

bb35:                                             ; preds = %start
  %6 = getelementptr inbounds i8, ptr %self, i64 8
  %7 = load i64, ptr %6, align 8
  br label %bb36

bb31.thread9:                                     ; preds = %bb39, %bb41, %bb38
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %9 = extractvalue { ptr, i32 } %lpad.thr_comm, 1
  br label %bb32

bb36:                                             ; preds = %bb34, %bb35
  %stack_size1.0 = phi i64 [ %7, %bb35 ], [ %5, %bb34 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %self2, ptr noundef nonnull align 8 dereferenceable(24) %name, i64 24, i1 false)
  %10 = load i64, ptr %self2, align 8, !range !12, !noundef !6
  %11 = icmp eq i64 %10, -9223372036854775808
  br i1 %11, label %bb37, label %bb38

bb37:                                             ; preds = %bb36
  br label %bb39

bb38:                                             ; preds = %bb36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %x, ptr noundef nonnull align 8 dereferenceable(24) %self2, i64 24, i1 false)
  invoke fastcc void @"_ZN66_$LT$T$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17hb3276aa492b9c3d0E"(ptr nonnull sret(%"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>") align 8 %_57, ptr nonnull align 8 %x)
          to label %bb41 unwind label %bb31.thread9

bb39:                                             ; preds = %bb40, %bb37
  %12 = phi i64 [ %_56.1, %bb40 ], [ undef, %bb37 ]
  %13 = phi ptr [ %_56.0, %bb40 ], [ null, %bb37 ]
  %14 = invoke ptr @_ZN3std6thread6Thread3new17h9286f061390b10b6E(ptr align 1 %13, i64 %12)
          to label %bb1 unwind label %bb31.thread9

bb41:                                             ; preds = %bb38
  %15 = invoke fastcc { ptr, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h1e9ac7a125448c28E"(ptr nonnull align 8 %_57, ptr nonnull align 1 @alloc_498705839b3ae85466bce6e7ebfe4996, i64 47, ptr nonnull align 8 @alloc_3c7ed5a01079e282fcc9eb5544b30333)
          to label %bb40 unwind label %bb31.thread9

bb40:                                             ; preds = %bb41
  %_56.0 = extractvalue { ptr, i64 } %15, 0
  %_56.1 = extractvalue { ptr, i64 } %15, 1
  br label %bb39

bb1:                                              ; preds = %bb39
  store ptr %14, ptr %my_thread, align 8
  %_61 = call fastcc ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h342d283d0f450142E"(ptr nonnull align 8 %my_thread)
  br label %bb42

bb18:                                             ; preds = %bb28, %bb29
  %16 = phi i32 [ %56, %bb28 ], [ %24, %bb29 ]
  %17 = phi ptr [ %57, %bb28 ], [ %23, %bb29 ]
  %_51.1 = phi i8 [ %_48.014, %bb28 ], [ %_48.1, %bb29 ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hfe663bec07996c9bE"(ptr nonnull align 8 %my_thread) #32
          to label %bb19 unwind label %terminate

bb42:                                             ; preds = %bb1
  store ptr %_61, ptr %their_thread, align 8
  store i64 0, ptr %value, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_15, ptr noundef nonnull align 8 dereferenceable(24) %value, i64 24, i1 false)
  store ptr null, ptr %data, align 8
  %18 = getelementptr inbounds %"std::thread::Packet<'_, ()>", ptr %data, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %_15, i64 24, i1 false)
  store i64 1, ptr %_64, align 8
  %19 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %_64, i64 0, i32 1
  store i64 1, ptr %19, align 8
  %20 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %_64, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %data, i64 32, i1 false)
  %_4.i = invoke fastcc ptr @_ZN5alloc5alloc15exchange_malloc17haa910fab8791b365E(i64 48, i64 8)
          to label %bb43 unwind label %cleanup.i

cleanup.i:                                        ; preds = %bb42
  %21 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr85drop_in_place$LT$alloc..sync..ArcInner$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h4a7a9fc5db3d1201E"(ptr nonnull align 8 %_64) #32
          to label %bb29.thread unwind label %terminate.i

terminate.i:                                      ; preds = %cleanup.i
  %22 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #28
  unreachable

bb29:                                             ; preds = %bb17
  %23 = extractvalue { ptr, i32 } %.pn.pn, 0
  %24 = extractvalue { ptr, i32 } %.pn.pn, 1
  br i1 %.not2, label %bb18, label %bb28

bb29.thread:                                      ; preds = %cleanup.i
  %25 = extractvalue { ptr, i32 } %21, 1
  %26 = extractvalue { ptr, i32 } %21, 0
  br label %bb28

bb43:                                             ; preds = %bb42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %_4.i, ptr noundef nonnull align 8 dereferenceable(48) %_64, i64 48, i1 false)
  store ptr %_4.i, ptr %my_packet, align 8
  %27 = call fastcc ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hafd08192e2c1c1f0E"(ptr nonnull align 8 %my_packet)
  br label %bb2

bb17:                                             ; preds = %bb22, %bb23.thread, %bb23, %bb26
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb26 ], [ %40, %bb23 ], [ %38, %bb23.thread ], [ %54, %bb22 ]
  %.not2 = phi i1 [ false, %bb26 ], [ true, %bb23 ], [ true, %bb23.thread ], [ true, %bb22 ]
  %_48.1 = phi i8 [ 1, %bb26 ], [ 0, %bb23 ], [ 0, %bb23.thread ], [ 0, %bb22 ]
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hdd1e9cb9f54fbb86E"(ptr nonnull align 8 %my_packet) #32
          to label %bb29 unwind label %terminate

bb2:                                              ; preds = %bb43
  store ptr %27, ptr %their_packet, align 8
  %28 = invoke ptr @_ZN3std2io5stdio18set_output_capture17h47fa7577e7da3004E(ptr null)
          to label %bb3 unwind label %bb27.thread

bb27:                                             ; preds = %bb24
  br label %bb26

bb27.thread:                                      ; preds = %bb2
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %bb26

bb3:                                              ; preds = %bb2
  store ptr %28, ptr %output_capture, align 8
  %30 = icmp eq ptr %28, null
  br i1 %30, label %bb44, label %bb46

bb46:                                             ; preds = %bb3
  %_76 = call fastcc ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f6839b186f32485E"(ptr nonnull align 8 %output_capture)
  br label %bb44

bb44:                                             ; preds = %bb46, %bb3
  %_21.0 = phi ptr [ null, %bb3 ], [ %_76, %bb46 ]
  %31 = invoke ptr @_ZN3std2io5stdio18set_output_capture17h47fa7577e7da3004E(ptr %_21.0)
          to label %bb4 unwind label %bb24

bb4:                                              ; preds = %bb44
  store ptr %31, ptr %_20, align 8
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17hb0b9a9dea83cab12E"(ptr nonnull align 8 %_20)
          to label %bb5 unwind label %bb24

bb5:                                              ; preds = %bb4
  store ptr %_61, ptr %main, align 8
  %32 = load ptr, ptr %output_capture, align 8, !noundef !6
  %33 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", ptr %main, i64 0, i32 2
  store ptr %32, ptr %33, align 8
  %34 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", ptr %main, i64 0, i32 3
  store ptr %0, ptr %34, align 8
  %35 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", ptr %main, i64 0, i32 1
  store ptr %27, ptr %35, align 8
  %self15 = load ptr, ptr %my_packet, align 8, !nonnull !6, !noundef !6
  %36 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %self15, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !noundef !6
  %.not5 = icmp eq ptr %37, null
  br i1 %.not5, label %bb8, label %bb6

bb6:                                              ; preds = %bb5
  %_30 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::scoped::ScopeData>", ptr %37, i64 0, i32 2
  invoke void @_ZN3std6thread6scoped9ScopeData29increment_num_running_threads17hb8778178a2b2dcd2E(ptr nonnull align 8 %_30)
          to label %bb8 unwind label %bb22

bb8:                                              ; preds = %bb6, %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %_33, ptr noundef nonnull align 8 dereferenceable(32) %main, i64 32, i1 false)
  %_4.i27 = invoke fastcc ptr @_ZN5alloc5alloc15exchange_malloc17haa910fab8791b365E(i64 32, i64 8)
          to label %bb9 unwind label %cleanup.i28

cleanup.i28:                                      ; preds = %bb8
  %38 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr148drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h9a15adcd150c8f51E"(ptr nonnull align 8 %_33) #32
          to label %bb23.thread unwind label %terminate.i29

terminate.i29:                                    ; preds = %cleanup.i28
  %39 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #28
  unreachable

bb23.thread:                                      ; preds = %cleanup.i28
  br label %bb17

bb23:                                             ; preds = %bb9
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %bb17

bb9:                                              ; preds = %bb8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %_4.i27, ptr noundef nonnull align 8 dereferenceable(32) %_33, i64 32, i1 false)
  invoke void @_ZN3std3sys3pal4unix6thread6Thread3new17h25822420d6359794E(ptr nonnull sret(%"core::result::Result<std::sys::pal::unix::thread::Thread, std::io::error::Error>") align 8 %self5, i64 %stack_size1.0, ptr nonnull align 1 %_4.i27, ptr nonnull align 8 @vtable.2)
          to label %bb10 unwind label %bb23

bb10:                                             ; preds = %bb9
  %_109 = load i64, ptr %self5, align 8, !range !5, !noundef !6
  %41 = icmp eq i64 %_109, 0
  br i1 %41, label %bb11, label %bb12

bb11:                                             ; preds = %bb10
  %42 = getelementptr inbounds %"core::result::Result<std::sys::pal::unix::thread::Thread, std::io::error::Error>::Ok", ptr %self5, i64 0, i32 1
  %v = load i64, ptr %42, align 8, !noundef !6
  %_43 = load ptr, ptr %my_thread, align 8, !nonnull !6, !noundef !6
  %_44 = load ptr, ptr %my_packet, align 8, !nonnull !6, !noundef !6
  %43 = getelementptr inbounds %"std::thread::JoinInner<'_, ()>", ptr %_36, i64 0, i32 2
  store i64 %v, ptr %43, align 8
  store ptr %_43, ptr %_36, align 8
  %44 = getelementptr inbounds %"std::thread::JoinInner<'_, ()>", ptr %_36, i64 0, i32 1
  store ptr %_44, ptr %44, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %_36, i64 24, i1 false)
  br label %bb15

bb12:                                             ; preds = %bb10
  %45 = getelementptr inbounds %"core::result::Result<std::sys::pal::unix::thread::Thread, std::io::error::Error>::Err", ptr %self5, i64 0, i32 1
  %e = load ptr, ptr %45, align 8, !nonnull !6, !noundef !6
  %46 = getelementptr inbounds %"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>::Err", ptr %_0, i64 0, i32 1
  store ptr %e, ptr %46, align 8
  store ptr null, ptr %_0, align 8
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hdd1e9cb9f54fbb86E"(ptr nonnull align 8 %my_packet)
          to label %bb13 unwind label %bb16

bb15:                                             ; preds = %bb13, %bb11
  ret void

bb16:                                             ; preds = %bb12
  %47 = landingpad { ptr, i32 }
          cleanup
  %48 = extractvalue { ptr, i32 } %47, 0
  %49 = extractvalue { ptr, i32 } %47, 1
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hfe663bec07996c9bE"(ptr nonnull align 8 %my_thread) #32
          to label %bb21 unwind label %terminate

bb13:                                             ; preds = %bb12
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hfe663bec07996c9bE"(ptr nonnull align 8 %my_thread)
          to label %bb15 unwind label %cleanup26

bb19:                                             ; preds = %bb18
  br label %bb20

cleanup26:                                        ; preds = %bb13
  %50 = landingpad { ptr, i32 }
          cleanup
  %51 = extractvalue { ptr, i32 } %50, 0
  %52 = extractvalue { ptr, i32 } %50, 1
  br label %bb21

terminate:                                        ; preds = %bb32, %bb30, %bb28, %bb26, %bb24, %bb22, %bb16, %bb17, %bb18
  %53 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #28
  unreachable

bb22:                                             ; preds = %bb6
  %54 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr148drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h9a15adcd150c8f51E"(ptr nonnull align 8 %main) #32
          to label %bb17 unwind label %terminate

bb24:                                             ; preds = %bb4, %bb44
  %55 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17hb0b9a9dea83cab12E"(ptr nonnull align 8 %output_capture) #32
          to label %bb27 unwind label %terminate

bb26:                                             ; preds = %bb27, %bb27.thread
  %.pn = phi { ptr, i32 } [ %55, %bb27 ], [ %29, %bb27.thread ]
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hdd1e9cb9f54fbb86E"(ptr nonnull align 8 %their_packet) #32
          to label %bb17 unwind label %terminate

bb28:                                             ; preds = %bb29.thread, %bb29
  %56 = phi i32 [ %25, %bb29.thread ], [ %24, %bb29 ]
  %57 = phi ptr [ %26, %bb29.thread ], [ %23, %bb29 ]
  %_48.014 = phi i8 [ 1, %bb29.thread ], [ %_48.1, %bb29 ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hfe663bec07996c9bE"(ptr nonnull align 8 %their_thread) #32
          to label %bb18 unwind label %terminate

bb30:                                             ; preds = %bb34
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %58 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %59 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 1
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17he9731f028b4d5240E"(ptr nonnull align 8 %name) #32
          to label %bb32 unwind label %terminate

bb20:                                             ; preds = %bb19, %bb32
  %60 = phi i32 [ %63, %bb32 ], [ %16, %bb19 ]
  %61 = phi ptr [ %64, %bb32 ], [ %17, %bb19 ]
  %_51.628 = phi i8 [ 1, %bb32 ], [ %_51.1, %bb19 ]
  %62 = and i8 %_51.628, 1
  %.not1 = icmp eq i8 %62, 0
  br i1 %.not1, label %bb21, label %bb33

bb32:                                             ; preds = %bb31.thread9, %bb30
  %63 = phi i32 [ %59, %bb30 ], [ %9, %bb31.thread9 ]
  %64 = phi ptr [ %58, %bb30 ], [ %8, %bb31.thread9 ]
  invoke fastcc void @"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h34ae5684014898a2E"(ptr nonnull align 8 %scope_data) #32
          to label %bb20 unwind label %terminate

bb21:                                             ; preds = %bb33, %cleanup26, %bb16, %bb20
  %65 = phi i32 [ %52, %cleanup26 ], [ %49, %bb16 ], [ %60, %bb33 ], [ %60, %bb20 ]
  %66 = phi ptr [ %51, %cleanup26 ], [ %48, %bb16 ], [ %61, %bb33 ], [ %61, %bb20 ]
  %67 = insertvalue { ptr, i32 } poison, ptr %66, 0
  %68 = insertvalue { ptr, i32 } %67, i32 %65, 1
  resume { ptr, i32 } %68

bb33:                                             ; preds = %bb20
  call fastcc void @"_ZN4core3ptr62drop_in_place$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$GT$17h1e2d20d11bf7e77cE"(ptr nonnull align 8 %f) #32
  br label %bb21
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN3std6thread7Builder16spawn_unchecked_17h0614afa9c4685266E(ptr nocapture writeonly sret(%"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>") align 8 %_0, ptr nocapture readonly align 8 %self, ptr %0, ptr nocapture readnone %1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_64 = alloca %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", align 8
  %_57 = alloca %"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>", align 8
  %x = alloca %"alloc::string::String", align 8
  %self5 = alloca %"core::result::Result<std::sys::pal::unix::thread::Thread, std::io::error::Error>", align 8
  %_36 = alloca %"std::thread::JoinInner<'_, ()>", align 8
  %_33 = alloca %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", align 8
  %main = alloca %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", align 8
  %_20 = alloca ptr, align 8
  %output_capture = alloca ptr, align 8
  %their_packet = alloca ptr, align 8
  %value = alloca %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>", align 8
  %_15 = alloca %"core::cell::UnsafeCell<core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>>", align 8
  %data = alloca %"std::thread::Packet<'_, ()>", align 8
  %my_packet = alloca ptr, align 8
  %their_thread = alloca ptr, align 8
  %self2 = alloca %"core::option::Option<alloc::string::String>", align 8
  %my_thread = alloca ptr, align 8
  %name = alloca %"core::option::Option<alloc::string::String>", align 8
  %scope_data = alloca ptr, align 8
  %f = alloca ptr, align 8
  store ptr %0, ptr %f, align 8
  store ptr null, ptr %scope_data, align 8
  %2 = getelementptr inbounds %"std::thread::Builder", ptr %self, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %name, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %3 = load i64, ptr %self, align 8, !range !5, !noundef !6
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %bb34, label %bb35

bb34:                                             ; preds = %start
  %5 = invoke fastcc i64 @_ZN4core3ops8function6FnOnce9call_once17h5d96f95940eb1a48E()
          to label %bb36 unwind label %bb30

bb35:                                             ; preds = %start
  %6 = getelementptr inbounds i8, ptr %self, i64 8
  %7 = load i64, ptr %6, align 8
  br label %bb36

bb31.thread9:                                     ; preds = %bb39, %bb41, %bb38
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %9 = extractvalue { ptr, i32 } %lpad.thr_comm, 1
  br label %bb32

bb36:                                             ; preds = %bb34, %bb35
  %stack_size1.0 = phi i64 [ %7, %bb35 ], [ %5, %bb34 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %self2, ptr noundef nonnull align 8 dereferenceable(24) %name, i64 24, i1 false)
  %10 = load i64, ptr %self2, align 8, !range !12, !noundef !6
  %11 = icmp eq i64 %10, -9223372036854775808
  br i1 %11, label %bb37, label %bb38

bb37:                                             ; preds = %bb36
  br label %bb39

bb38:                                             ; preds = %bb36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %x, ptr noundef nonnull align 8 dereferenceable(24) %self2, i64 24, i1 false)
  invoke fastcc void @"_ZN66_$LT$T$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17hb3276aa492b9c3d0E"(ptr nonnull sret(%"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>") align 8 %_57, ptr nonnull align 8 %x)
          to label %bb41 unwind label %bb31.thread9

bb39:                                             ; preds = %bb40, %bb37
  %12 = phi i64 [ %_56.1, %bb40 ], [ undef, %bb37 ]
  %13 = phi ptr [ %_56.0, %bb40 ], [ null, %bb37 ]
  %14 = invoke ptr @_ZN3std6thread6Thread3new17h9286f061390b10b6E(ptr align 1 %13, i64 %12)
          to label %bb1 unwind label %bb31.thread9

bb41:                                             ; preds = %bb38
  %15 = invoke fastcc { ptr, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h1e9ac7a125448c28E"(ptr nonnull align 8 %_57, ptr nonnull align 1 @alloc_498705839b3ae85466bce6e7ebfe4996, i64 47, ptr nonnull align 8 @alloc_3c7ed5a01079e282fcc9eb5544b30333)
          to label %bb40 unwind label %bb31.thread9

bb40:                                             ; preds = %bb41
  %_56.0 = extractvalue { ptr, i64 } %15, 0
  %_56.1 = extractvalue { ptr, i64 } %15, 1
  br label %bb39

bb1:                                              ; preds = %bb39
  store ptr %14, ptr %my_thread, align 8
  %_61 = call fastcc ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h342d283d0f450142E"(ptr nonnull align 8 %my_thread)
  br label %bb42

bb18:                                             ; preds = %bb28, %bb29
  %16 = phi i32 [ %56, %bb28 ], [ %24, %bb29 ]
  %17 = phi ptr [ %57, %bb28 ], [ %23, %bb29 ]
  %_51.1 = phi i8 [ %_48.014, %bb28 ], [ %_48.1, %bb29 ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hfe663bec07996c9bE"(ptr nonnull align 8 %my_thread) #32
          to label %bb19 unwind label %terminate

bb42:                                             ; preds = %bb1
  store ptr %_61, ptr %their_thread, align 8
  store i64 0, ptr %value, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_15, ptr noundef nonnull align 8 dereferenceable(24) %value, i64 24, i1 false)
  store ptr null, ptr %data, align 8
  %18 = getelementptr inbounds %"std::thread::Packet<'_, ()>", ptr %data, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %_15, i64 24, i1 false)
  store i64 1, ptr %_64, align 8
  %19 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %_64, i64 0, i32 1
  store i64 1, ptr %19, align 8
  %20 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %_64, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %data, i64 32, i1 false)
  %_4.i27 = invoke fastcc ptr @_ZN5alloc5alloc15exchange_malloc17haa910fab8791b365E(i64 48, i64 8)
          to label %bb43 unwind label %cleanup.i28

cleanup.i28:                                      ; preds = %bb42
  %21 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr85drop_in_place$LT$alloc..sync..ArcInner$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h4a7a9fc5db3d1201E"(ptr nonnull align 8 %_64) #32
          to label %bb29.thread unwind label %terminate.i29

terminate.i29:                                    ; preds = %cleanup.i28
  %22 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #28
  unreachable

bb29:                                             ; preds = %bb17
  %23 = extractvalue { ptr, i32 } %.pn.pn, 0
  %24 = extractvalue { ptr, i32 } %.pn.pn, 1
  br i1 %.not2, label %bb18, label %bb28

bb29.thread:                                      ; preds = %cleanup.i28
  %25 = extractvalue { ptr, i32 } %21, 1
  %26 = extractvalue { ptr, i32 } %21, 0
  br label %bb28

bb43:                                             ; preds = %bb42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %_4.i27, ptr noundef nonnull align 8 dereferenceable(48) %_64, i64 48, i1 false)
  store ptr %_4.i27, ptr %my_packet, align 8
  %27 = call fastcc ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hafd08192e2c1c1f0E"(ptr nonnull align 8 %my_packet)
  br label %bb2

bb17:                                             ; preds = %bb22, %bb23.thread, %bb23, %bb26
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb26 ], [ %40, %bb23 ], [ %38, %bb23.thread ], [ %54, %bb22 ]
  %.not2 = phi i1 [ false, %bb26 ], [ true, %bb23 ], [ true, %bb23.thread ], [ true, %bb22 ]
  %_48.1 = phi i8 [ 1, %bb26 ], [ 0, %bb23 ], [ 0, %bb23.thread ], [ 0, %bb22 ]
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hdd1e9cb9f54fbb86E"(ptr nonnull align 8 %my_packet) #32
          to label %bb29 unwind label %terminate

bb2:                                              ; preds = %bb43
  store ptr %27, ptr %their_packet, align 8
  %28 = invoke ptr @_ZN3std2io5stdio18set_output_capture17h47fa7577e7da3004E(ptr null)
          to label %bb3 unwind label %bb27.thread

bb27:                                             ; preds = %bb24
  br label %bb26

bb27.thread:                                      ; preds = %bb2
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %bb26

bb3:                                              ; preds = %bb2
  store ptr %28, ptr %output_capture, align 8
  %30 = icmp eq ptr %28, null
  br i1 %30, label %bb44, label %bb46

bb46:                                             ; preds = %bb3
  %_76 = call fastcc ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f6839b186f32485E"(ptr nonnull align 8 %output_capture)
  br label %bb44

bb44:                                             ; preds = %bb46, %bb3
  %_21.0 = phi ptr [ null, %bb3 ], [ %_76, %bb46 ]
  %31 = invoke ptr @_ZN3std2io5stdio18set_output_capture17h47fa7577e7da3004E(ptr %_21.0)
          to label %bb4 unwind label %bb24

bb4:                                              ; preds = %bb44
  store ptr %31, ptr %_20, align 8
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17hb0b9a9dea83cab12E"(ptr nonnull align 8 %_20)
          to label %bb5 unwind label %bb24

bb5:                                              ; preds = %bb4
  store ptr %_61, ptr %main, align 8
  %32 = load ptr, ptr %output_capture, align 8, !noundef !6
  %33 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", ptr %main, i64 0, i32 2
  store ptr %32, ptr %33, align 8
  %34 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", ptr %main, i64 0, i32 3
  store ptr %0, ptr %34, align 8
  %35 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", ptr %main, i64 0, i32 1
  store ptr %27, ptr %35, align 8
  %self15 = load ptr, ptr %my_packet, align 8, !nonnull !6, !noundef !6
  %36 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %self15, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !noundef !6
  %.not5 = icmp eq ptr %37, null
  br i1 %.not5, label %bb8, label %bb6

bb6:                                              ; preds = %bb5
  %_30 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::scoped::ScopeData>", ptr %37, i64 0, i32 2
  invoke void @_ZN3std6thread6scoped9ScopeData29increment_num_running_threads17hb8778178a2b2dcd2E(ptr nonnull align 8 %_30)
          to label %bb8 unwind label %bb22

bb8:                                              ; preds = %bb6, %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %_33, ptr noundef nonnull align 8 dereferenceable(32) %main, i64 32, i1 false)
  %_4.i = invoke fastcc ptr @_ZN5alloc5alloc15exchange_malloc17haa910fab8791b365E(i64 32, i64 8)
          to label %bb9 unwind label %cleanup.i

cleanup.i:                                        ; preds = %bb8
  %38 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr148drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17ha03b63e1e465940cE"(ptr nonnull align 8 %_33) #32
          to label %bb23.thread unwind label %terminate.i

terminate.i:                                      ; preds = %cleanup.i
  %39 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #28
  unreachable

bb23.thread:                                      ; preds = %cleanup.i
  br label %bb17

bb23:                                             ; preds = %bb9
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %bb17

bb9:                                              ; preds = %bb8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %_4.i, ptr noundef nonnull align 8 dereferenceable(32) %_33, i64 32, i1 false)
  invoke void @_ZN3std3sys3pal4unix6thread6Thread3new17h25822420d6359794E(ptr nonnull sret(%"core::result::Result<std::sys::pal::unix::thread::Thread, std::io::error::Error>") align 8 %self5, i64 %stack_size1.0, ptr nonnull align 1 %_4.i, ptr nonnull align 8 @vtable.3)
          to label %bb10 unwind label %bb23

bb10:                                             ; preds = %bb9
  %_109 = load i64, ptr %self5, align 8, !range !5, !noundef !6
  %41 = icmp eq i64 %_109, 0
  br i1 %41, label %bb11, label %bb12

bb11:                                             ; preds = %bb10
  %42 = getelementptr inbounds %"core::result::Result<std::sys::pal::unix::thread::Thread, std::io::error::Error>::Ok", ptr %self5, i64 0, i32 1
  %v = load i64, ptr %42, align 8, !noundef !6
  %_43 = load ptr, ptr %my_thread, align 8, !nonnull !6, !noundef !6
  %_44 = load ptr, ptr %my_packet, align 8, !nonnull !6, !noundef !6
  %43 = getelementptr inbounds %"std::thread::JoinInner<'_, ()>", ptr %_36, i64 0, i32 2
  store i64 %v, ptr %43, align 8
  store ptr %_43, ptr %_36, align 8
  %44 = getelementptr inbounds %"std::thread::JoinInner<'_, ()>", ptr %_36, i64 0, i32 1
  store ptr %_44, ptr %44, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %_36, i64 24, i1 false)
  br label %bb15

bb12:                                             ; preds = %bb10
  %45 = getelementptr inbounds %"core::result::Result<std::sys::pal::unix::thread::Thread, std::io::error::Error>::Err", ptr %self5, i64 0, i32 1
  %e = load ptr, ptr %45, align 8, !nonnull !6, !noundef !6
  %46 = getelementptr inbounds %"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>::Err", ptr %_0, i64 0, i32 1
  store ptr %e, ptr %46, align 8
  store ptr null, ptr %_0, align 8
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hdd1e9cb9f54fbb86E"(ptr nonnull align 8 %my_packet)
          to label %bb13 unwind label %bb16

bb15:                                             ; preds = %bb13, %bb11
  ret void

bb16:                                             ; preds = %bb12
  %47 = landingpad { ptr, i32 }
          cleanup
  %48 = extractvalue { ptr, i32 } %47, 0
  %49 = extractvalue { ptr, i32 } %47, 1
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hfe663bec07996c9bE"(ptr nonnull align 8 %my_thread) #32
          to label %bb21 unwind label %terminate

bb13:                                             ; preds = %bb12
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hfe663bec07996c9bE"(ptr nonnull align 8 %my_thread)
          to label %bb15 unwind label %cleanup26

bb19:                                             ; preds = %bb18
  br label %bb20

cleanup26:                                        ; preds = %bb13
  %50 = landingpad { ptr, i32 }
          cleanup
  %51 = extractvalue { ptr, i32 } %50, 0
  %52 = extractvalue { ptr, i32 } %50, 1
  br label %bb21

terminate:                                        ; preds = %bb32, %bb30, %bb28, %bb26, %bb24, %bb22, %bb16, %bb17, %bb18
  %53 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #28
  unreachable

bb22:                                             ; preds = %bb6
  %54 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr148drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17ha03b63e1e465940cE"(ptr nonnull align 8 %main) #32
          to label %bb17 unwind label %terminate

bb24:                                             ; preds = %bb4, %bb44
  %55 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17hb0b9a9dea83cab12E"(ptr nonnull align 8 %output_capture) #32
          to label %bb27 unwind label %terminate

bb26:                                             ; preds = %bb27, %bb27.thread
  %.pn = phi { ptr, i32 } [ %55, %bb27 ], [ %29, %bb27.thread ]
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hdd1e9cb9f54fbb86E"(ptr nonnull align 8 %their_packet) #32
          to label %bb17 unwind label %terminate

bb28:                                             ; preds = %bb29.thread, %bb29
  %56 = phi i32 [ %25, %bb29.thread ], [ %24, %bb29 ]
  %57 = phi ptr [ %26, %bb29.thread ], [ %23, %bb29 ]
  %_48.014 = phi i8 [ 1, %bb29.thread ], [ %_48.1, %bb29 ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hfe663bec07996c9bE"(ptr nonnull align 8 %their_thread) #32
          to label %bb18 unwind label %terminate

bb30:                                             ; preds = %bb34
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %58 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %59 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 1
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17he9731f028b4d5240E"(ptr nonnull align 8 %name) #32
          to label %bb32 unwind label %terminate

bb20:                                             ; preds = %bb19, %bb32
  %60 = phi i32 [ %63, %bb32 ], [ %16, %bb19 ]
  %61 = phi ptr [ %64, %bb32 ], [ %17, %bb19 ]
  %_51.628 = phi i8 [ 1, %bb32 ], [ %_51.1, %bb19 ]
  %62 = and i8 %_51.628, 1
  %.not1 = icmp eq i8 %62, 0
  br i1 %.not1, label %bb21, label %bb33

bb32:                                             ; preds = %bb31.thread9, %bb30
  %63 = phi i32 [ %59, %bb30 ], [ %9, %bb31.thread9 ]
  %64 = phi ptr [ %58, %bb30 ], [ %8, %bb31.thread9 ]
  invoke fastcc void @"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h34ae5684014898a2E"(ptr nonnull align 8 %scope_data) #32
          to label %bb20 unwind label %terminate

bb21:                                             ; preds = %bb33, %cleanup26, %bb16, %bb20
  %65 = phi i32 [ %52, %cleanup26 ], [ %49, %bb16 ], [ %60, %bb33 ], [ %60, %bb20 ]
  %66 = phi ptr [ %51, %cleanup26 ], [ %48, %bb16 ], [ %61, %bb33 ], [ %61, %bb20 ]
  %67 = insertvalue { ptr, i32 } poison, ptr %66, 0
  %68 = insertvalue { ptr, i32 } %67, i32 %65, 1
  resume { ptr, i32 } %68

bb33:                                             ; preds = %bb20
  call fastcc void @"_ZN4core3ptr62drop_in_place$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$GT$17h1022437b15102989E"(ptr nonnull align 8 %f) #32
  br label %bb21
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17ha4b7ec2d304bd290E"(ptr align 8 %_1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_x = alloca ptr, align 8
  %_17 = alloca %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>", align 8
  %_12 = alloca %"core::option::Option<core::ops::range::Range<usize>>", align 8
  %f = alloca ptr, align 8
  %_7 = alloca ptr, align 8
  %0 = invoke { ptr, i64 } @_ZN3std6thread6Thread5cname17he8eff7cc14160c1eE(ptr align 8 %_1)
          to label %bb1 unwind label %bb20.thread

bb20:                                             ; preds = %bb11
  %1 = extractvalue { ptr, i32 } %lpad.thr_comm, 1
  %2 = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  br i1 %.not, label %bb13, label %bb19

bb20.thread:                                      ; preds = %start, %bb2, %bb3, %bb4
  %_26.1 = phi i1 [ false, %bb4 ], [ false, %bb3 ], [ true, %bb2 ], [ true, %start ]
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  br label %bb19

bb1:                                              ; preds = %start
  %6 = extractvalue { ptr, i64 } %0, 0
  %.not2 = icmp eq ptr %6, null
  br i1 %.not2, label %bb3, label %bb2

bb2:                                              ; preds = %bb1
  %7 = extractvalue { ptr, i64 } %0, 1
  invoke void @_ZN3std3sys3pal4unix6thread6Thread8set_name17h76dc80adfde750b1E(ptr nonnull align 1 %6, i64 %7)
          to label %bb3 unwind label %bb20.thread

bb3:                                              ; preds = %bb2, %bb1
  %8 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", ptr %_1, i64 0, i32 2
  %_8 = load ptr, ptr %8, align 8, !noundef !6
  %9 = invoke ptr @_ZN3std2io5stdio18set_output_capture17h47fa7577e7da3004E(ptr %_8)
          to label %bb4 unwind label %bb20.thread

bb4:                                              ; preds = %bb3
  store ptr %9, ptr %_7, align 8
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17hb0b9a9dea83cab12E"(ptr nonnull align 8 %_7)
          to label %bb5 unwind label %bb20.thread

bb5:                                              ; preds = %bb4
  %10 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", ptr %_1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !nonnull !6, !noundef !6
  store ptr %11, ptr %f, align 8
  invoke void @_ZN3std3sys3pal4unix6thread5guard7current17ha2bb65882033f000E(ptr nonnull sret(%"core::option::Option<core::ops::range::Range<usize>>") align 8 %_12)
          to label %bb6 unwind label %bb11

bb12:                                             ; preds = %bb7, %bb8
  %_23.2.ph = phi i8 [ 1, %bb7 ], [ 0, %bb8 ]
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %12 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %13 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 1
  br label %bb13

bb6:                                              ; preds = %bb5
  %_13 = load ptr, ptr %_1, align 8, !nonnull !6, !noundef !6
  invoke void @_ZN3std10sys_common11thread_info3set17h2c664b76c70cf208E(ptr nonnull align 8 %_12, ptr nonnull %_13)
          to label %bb7 unwind label %bb11

bb7:                                              ; preds = %bb6
  %14 = invoke fastcc { ptr, ptr } @_ZN3std9panicking3try17h1180b512d3c6df28E(ptr nonnull %11)
          to label %bb22 unwind label %bb12

bb22:                                             ; preds = %bb7
  %try_result.0 = extractvalue { ptr, ptr } %14, 0
  %try_result.1 = extractvalue { ptr, ptr } %14, 1
  %15 = getelementptr inbounds %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>::Some", ptr %_17, i64 0, i32 1
  store ptr %try_result.0, ptr %15, align 8
  %16 = getelementptr inbounds %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>::Some", ptr %_17, i64 0, i32 1, i32 1
  store ptr %try_result.1, ptr %16, align 8
  store i64 1, ptr %_17, align 8
  %17 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", ptr %_1, i64 0, i32 1
  %self5 = load ptr, ptr %17, align 8, !nonnull !6, !noundef !6
  %_40 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %self5, i64 0, i32 2, i32 1
  invoke fastcc void @"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hc6d8376cb0915d32E"(ptr nonnull align 8 %_40)
          to label %bb8 unwind label %bb13.thread

bb13.thread:                                      ; preds = %bb22
  %18 = landingpad { ptr, i32 }
          cleanup
  %19 = extractvalue { ptr, i32 } %18, 0
  %20 = extractvalue { ptr, i32 } %18, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_40, ptr noundef nonnull align 8 dereferenceable(24) %_17, i64 24, i1 false)
  br label %bb14

bb8:                                              ; preds = %bb22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_40, ptr noundef nonnull align 8 dereferenceable(24) %_17, i64 24, i1 false)
  %21 = load ptr, ptr %17, align 8, !nonnull !6, !noundef !6
  store ptr %21, ptr %_x, align 8
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hdd1e9cb9f54fbb86E"(ptr nonnull align 8 %_x)
          to label %bb23 unwind label %bb12

bb23:                                             ; preds = %bb8
  ret void

bb11:                                             ; preds = %bb6, %bb5
  %.not = phi i1 [ false, %bb5 ], [ true, %bb6 ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr62drop_in_place$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$GT$17h1e2d20d11bf7e77cE"(ptr nonnull align 8 %f) #32
  br label %bb20

terminate:                                        ; preds = %bb14, %bb18, %bb19
  %22 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #28
  unreachable

bb17:                                             ; preds = %bb19
  br i1 %_26.012, label %bb18, label %bb15

bb19:                                             ; preds = %bb20.thread, %bb20
  %23 = phi i32 [ %5, %bb20.thread ], [ %1, %bb20 ]
  %24 = phi ptr [ %4, %bb20.thread ], [ %2, %bb20 ]
  %_26.012 = phi i1 [ %_26.1, %bb20.thread ], [ false, %bb20 ]
  %_25.010 = phi i1 [ true, %bb20.thread ], [ false, %bb20 ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hfe663bec07996c9bE"(ptr align 8 %_1) #32
          to label %bb17 unwind label %terminate

bb15:                                             ; preds = %bb18, %bb17
  br i1 %_25.010, label %bb16, label %bb13

bb18:                                             ; preds = %bb17
  %25 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", ptr %_1, i64 0, i32 2
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17hb0b9a9dea83cab12E"(ptr nonnull align 8 %25) #32
          to label %bb15 unwind label %terminate

bb13:                                             ; preds = %bb16, %bb12, %bb20, %bb15
  %26 = phi i32 [ %23, %bb16 ], [ %23, %bb15 ], [ %1, %bb20 ], [ %13, %bb12 ]
  %27 = phi ptr [ %24, %bb16 ], [ %24, %bb15 ], [ %2, %bb20 ], [ %12, %bb12 ]
  %_23.092831 = phi i8 [ 1, %bb16 ], [ 1, %bb15 ], [ 1, %bb20 ], [ %_23.2.ph, %bb12 ]
  %28 = and i8 %_23.092831, 1
  %.not1 = icmp eq i8 %28, 0
  br i1 %.not1, label %bb10, label %bb14

bb16:                                             ; preds = %bb15
  %29 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", ptr %_1, i64 0, i32 3
  call fastcc void @"_ZN4core3ptr123drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h2a47c24c5a2cb5f6E"(ptr nonnull align 8 %29) #32
  br label %bb13

bb10:                                             ; preds = %bb14, %bb13
  %30 = phi i32 [ %34, %bb14 ], [ %26, %bb13 ]
  %31 = phi ptr [ %35, %bb14 ], [ %27, %bb13 ]
  %32 = insertvalue { ptr, i32 } poison, ptr %31, 0
  %33 = insertvalue { ptr, i32 } %32, i32 %30, 1
  resume { ptr, i32 } %33

bb14:                                             ; preds = %bb13.thread, %bb13
  %34 = phi i32 [ %20, %bb13.thread ], [ %26, %bb13 ]
  %35 = phi ptr [ %19, %bb13.thread ], [ %27, %bb13 ]
  %36 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", ptr %_1, i64 0, i32 1
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hdd1e9cb9f54fbb86E"(ptr nonnull align 8 %36) #32
          to label %bb10 unwind label %terminate
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17hcac0d9034fc41565E"(ptr align 8 %_1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_x = alloca ptr, align 8
  %_17 = alloca %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>", align 8
  %_12 = alloca %"core::option::Option<core::ops::range::Range<usize>>", align 8
  %f = alloca ptr, align 8
  %_7 = alloca ptr, align 8
  %0 = invoke { ptr, i64 } @_ZN3std6thread6Thread5cname17he8eff7cc14160c1eE(ptr align 8 %_1)
          to label %bb1 unwind label %bb20.thread

bb20:                                             ; preds = %bb11
  %1 = extractvalue { ptr, i32 } %lpad.thr_comm, 1
  %2 = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  br i1 %.not, label %bb13, label %bb19

bb20.thread:                                      ; preds = %start, %bb2, %bb3, %bb4
  %_26.1 = phi i1 [ false, %bb4 ], [ false, %bb3 ], [ true, %bb2 ], [ true, %start ]
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  br label %bb19

bb1:                                              ; preds = %start
  %6 = extractvalue { ptr, i64 } %0, 0
  %.not2 = icmp eq ptr %6, null
  br i1 %.not2, label %bb3, label %bb2

bb2:                                              ; preds = %bb1
  %7 = extractvalue { ptr, i64 } %0, 1
  invoke void @_ZN3std3sys3pal4unix6thread6Thread8set_name17h76dc80adfde750b1E(ptr nonnull align 1 %6, i64 %7)
          to label %bb3 unwind label %bb20.thread

bb3:                                              ; preds = %bb2, %bb1
  %8 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", ptr %_1, i64 0, i32 2
  %_8 = load ptr, ptr %8, align 8, !noundef !6
  %9 = invoke ptr @_ZN3std2io5stdio18set_output_capture17h47fa7577e7da3004E(ptr %_8)
          to label %bb4 unwind label %bb20.thread

bb4:                                              ; preds = %bb3
  store ptr %9, ptr %_7, align 8
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17hb0b9a9dea83cab12E"(ptr nonnull align 8 %_7)
          to label %bb5 unwind label %bb20.thread

bb5:                                              ; preds = %bb4
  %10 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", ptr %_1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !nonnull !6, !noundef !6
  store ptr %11, ptr %f, align 8
  invoke void @_ZN3std3sys3pal4unix6thread5guard7current17ha2bb65882033f000E(ptr nonnull sret(%"core::option::Option<core::ops::range::Range<usize>>") align 8 %_12)
          to label %bb6 unwind label %bb11

bb12:                                             ; preds = %bb7, %bb8
  %_23.2.ph = phi i8 [ 1, %bb7 ], [ 0, %bb8 ]
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %12 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %13 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 1
  br label %bb13

bb6:                                              ; preds = %bb5
  %_13 = load ptr, ptr %_1, align 8, !nonnull !6, !noundef !6
  invoke void @_ZN3std10sys_common11thread_info3set17h2c664b76c70cf208E(ptr nonnull align 8 %_12, ptr nonnull %_13)
          to label %bb7 unwind label %bb11

bb7:                                              ; preds = %bb6
  %14 = invoke fastcc { ptr, ptr } @_ZN3std9panicking3try17hb338a3e1f402b5c3E(ptr nonnull %11)
          to label %bb22 unwind label %bb12

bb22:                                             ; preds = %bb7
  %try_result.0 = extractvalue { ptr, ptr } %14, 0
  %try_result.1 = extractvalue { ptr, ptr } %14, 1
  %15 = getelementptr inbounds %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>::Some", ptr %_17, i64 0, i32 1
  store ptr %try_result.0, ptr %15, align 8
  %16 = getelementptr inbounds %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>::Some", ptr %_17, i64 0, i32 1, i32 1
  store ptr %try_result.1, ptr %16, align 8
  store i64 1, ptr %_17, align 8
  %17 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", ptr %_1, i64 0, i32 1
  %self5 = load ptr, ptr %17, align 8, !nonnull !6, !noundef !6
  %_40 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %self5, i64 0, i32 2, i32 1
  invoke fastcc void @"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hc6d8376cb0915d32E"(ptr nonnull align 8 %_40)
          to label %bb8 unwind label %bb13.thread

bb13.thread:                                      ; preds = %bb22
  %18 = landingpad { ptr, i32 }
          cleanup
  %19 = extractvalue { ptr, i32 } %18, 0
  %20 = extractvalue { ptr, i32 } %18, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_40, ptr noundef nonnull align 8 dereferenceable(24) %_17, i64 24, i1 false)
  br label %bb14

bb8:                                              ; preds = %bb22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_40, ptr noundef nonnull align 8 dereferenceable(24) %_17, i64 24, i1 false)
  %21 = load ptr, ptr %17, align 8, !nonnull !6, !noundef !6
  store ptr %21, ptr %_x, align 8
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hdd1e9cb9f54fbb86E"(ptr nonnull align 8 %_x)
          to label %bb23 unwind label %bb12

bb23:                                             ; preds = %bb8
  ret void

bb11:                                             ; preds = %bb6, %bb5
  %.not = phi i1 [ false, %bb5 ], [ true, %bb6 ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr62drop_in_place$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$GT$17h1022437b15102989E"(ptr nonnull align 8 %f) #32
  br label %bb20

terminate:                                        ; preds = %bb14, %bb18, %bb19
  %22 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #28
  unreachable

bb17:                                             ; preds = %bb19
  br i1 %_26.012, label %bb18, label %bb15

bb19:                                             ; preds = %bb20.thread, %bb20
  %23 = phi i32 [ %5, %bb20.thread ], [ %1, %bb20 ]
  %24 = phi ptr [ %4, %bb20.thread ], [ %2, %bb20 ]
  %_26.012 = phi i1 [ %_26.1, %bb20.thread ], [ false, %bb20 ]
  %_25.010 = phi i1 [ true, %bb20.thread ], [ false, %bb20 ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hfe663bec07996c9bE"(ptr align 8 %_1) #32
          to label %bb17 unwind label %terminate

bb15:                                             ; preds = %bb18, %bb17
  br i1 %_25.010, label %bb16, label %bb13

bb18:                                             ; preds = %bb17
  %25 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", ptr %_1, i64 0, i32 2
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17hb0b9a9dea83cab12E"(ptr nonnull align 8 %25) #32
          to label %bb15 unwind label %terminate

bb13:                                             ; preds = %bb16, %bb12, %bb20, %bb15
  %26 = phi i32 [ %23, %bb16 ], [ %23, %bb15 ], [ %1, %bb20 ], [ %13, %bb12 ]
  %27 = phi ptr [ %24, %bb16 ], [ %24, %bb15 ], [ %2, %bb20 ], [ %12, %bb12 ]
  %_23.092831 = phi i8 [ 1, %bb16 ], [ 1, %bb15 ], [ 1, %bb20 ], [ %_23.2.ph, %bb12 ]
  %28 = and i8 %_23.092831, 1
  %.not1 = icmp eq i8 %28, 0
  br i1 %.not1, label %bb10, label %bb14

bb16:                                             ; preds = %bb15
  %29 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", ptr %_1, i64 0, i32 3
  call fastcc void @"_ZN4core3ptr123drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h64c80effd66a67aeE"(ptr nonnull align 8 %29) #32
  br label %bb13

bb10:                                             ; preds = %bb14, %bb13
  %30 = phi i32 [ %34, %bb14 ], [ %26, %bb13 ]
  %31 = phi ptr [ %35, %bb14 ], [ %27, %bb13 ]
  %32 = insertvalue { ptr, i32 } poison, ptr %31, 0
  %33 = insertvalue { ptr, i32 } %32, i32 %30, 1
  resume { ptr, i32 } %33

bb14:                                             ; preds = %bb13.thread, %bb13
  %34 = phi i32 [ %20, %bb13.thread ], [ %26, %bb13 ]
  %35 = phi ptr [ %19, %bb13.thread ], [ %27, %bb13 ]
  %36 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", ptr %_1, i64 0, i32 1
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hdd1e9cb9f54fbb86E"(ptr nonnull align 8 %36) #32
          to label %bb10 unwind label %terminate
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h36633d4df7a099c3E"(ptr %_1) unnamed_addr #1 {
start:
  tail call fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h5fc8190fc031b3f4E(ptr %_1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hfbb69110c86435cfE"(ptr %_1) unnamed_addr #1 {
start:
  tail call fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17he2b1bc2e68677099E(ptr %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_ZN3std9panicking3try17h1180b512d3c6df28E(ptr %f) unnamed_addr #3 {
start:
  %data = alloca %"std::panicking::try::Data<core::panic::unwind_safe::AssertUnwindSafe<{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}::{closure#0}}>, ()>", align 8
  %0 = icmp ne ptr %f, null
  tail call void @llvm.assume(i1 %0)
  store ptr %f, ptr %data, align 8
  %1 = call fastcc i32 @__rust_try(ptr nonnull @_ZN3std9panicking3try7do_call17h7f1e88548aac6577E, ptr nonnull %data, ptr nonnull @_ZN3std9panicking3try8do_catch17hd9cdc6439e142313E), !range !13
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %bb2, label %bb3

bb2:                                              ; preds = %start
  br label %bb4

bb3:                                              ; preds = %start
  %slot.0 = load ptr, ptr %data, align 8, !nonnull !6, !align !11, !noundef !6
  %3 = getelementptr inbounds i8, ptr %data, i64 8
  %slot.1 = load ptr, ptr %3, align 8, !nonnull !6, !align !10, !noundef !6
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  %4 = phi ptr [ %slot.1, %bb3 ], [ undef, %bb2 ]
  %5 = phi ptr [ %slot.0, %bb3 ], [ null, %bb2 ]
  %6 = insertvalue { ptr, ptr } poison, ptr %5, 0
  %7 = insertvalue { ptr, ptr } %6, ptr %4, 1
  ret { ptr, ptr } %7
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_ZN3std9panicking3try17h2e729e5efe975db1E(ptr align 8 %f) unnamed_addr #3 {
start:
  %data = alloca %"std::panicking::try::Data<core::panic::unwind_safe::AssertUnwindSafe<{closure@<std::thread::Packet<'_, ()> as core::ops::drop::Drop>::drop::{closure#0}}>, ()>", align 8
  %0 = icmp ne ptr %f, null
  tail call void @llvm.assume(i1 %0)
  store ptr %f, ptr %data, align 8
  %1 = call fastcc i32 @__rust_try(ptr nonnull @_ZN3std9panicking3try7do_call17hc4d0324b6b2e9fecE, ptr nonnull %data, ptr nonnull @_ZN3std9panicking3try8do_catch17hc34136e473709636E), !range !13
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %bb2, label %bb3

bb2:                                              ; preds = %start
  br label %bb4

bb3:                                              ; preds = %start
  %slot.0 = load ptr, ptr %data, align 8, !nonnull !6, !align !11, !noundef !6
  %3 = getelementptr inbounds i8, ptr %data, i64 8
  %slot.1 = load ptr, ptr %3, align 8, !nonnull !6, !align !10, !noundef !6
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  %4 = phi ptr [ %slot.1, %bb3 ], [ undef, %bb2 ]
  %5 = phi ptr [ %slot.0, %bb3 ], [ null, %bb2 ]
  %6 = insertvalue { ptr, ptr } poison, ptr %5, 0
  %7 = insertvalue { ptr, ptr } %6, ptr %4, 1
  ret { ptr, ptr } %7
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_ZN3std9panicking3try17hb338a3e1f402b5c3E(ptr %f) unnamed_addr #3 {
start:
  %data = alloca %"std::panicking::try::Data<core::panic::unwind_safe::AssertUnwindSafe<{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}::{closure#0}}>, ()>", align 8
  %0 = icmp ne ptr %f, null
  tail call void @llvm.assume(i1 %0)
  store ptr %f, ptr %data, align 8
  %1 = call fastcc i32 @__rust_try(ptr nonnull @_ZN3std9panicking3try7do_call17h884d2486ad7a52f8E, ptr nonnull %data, ptr nonnull @_ZN3std9panicking3try8do_catch17h3b6757f55ce8cd1aE), !range !13
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %bb2, label %bb3

bb2:                                              ; preds = %start
  br label %bb4

bb3:                                              ; preds = %start
  %slot.0 = load ptr, ptr %data, align 8, !nonnull !6, !align !11, !noundef !6
  %3 = getelementptr inbounds i8, ptr %data, i64 8
  %slot.1 = load ptr, ptr %3, align 8, !nonnull !6, !align !10, !noundef !6
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  %4 = phi ptr [ %slot.1, %bb3 ], [ undef, %bb2 ]
  %5 = phi ptr [ %slot.0, %bb3 ], [ null, %bb2 ]
  %6 = insertvalue { ptr, ptr } poison, ptr %5, 0
  %7 = insertvalue { ptr, ptr } %6, ptr %4, 1
  ret { ptr, ptr } %7
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN3std9panicking3try7do_call17h7f1e88548aac6577E(ptr nocapture readonly %data) unnamed_addr #1 {
start:
  %f = load ptr, ptr %data, align 8, !nonnull !6, !noundef !6
  tail call fastcc void @"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17hf40c20b92256f06dE"(ptr nonnull %f)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN3std9panicking3try7do_call17h884d2486ad7a52f8E(ptr nocapture readonly %data) unnamed_addr #1 {
start:
  %f = load ptr, ptr %data, align 8, !nonnull !6, !noundef !6
  tail call fastcc void @"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h68751e9ae14616e5E"(ptr nonnull %f)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN3std9panicking3try7do_call17hc4d0324b6b2e9fecE(ptr nocapture readonly %data) unnamed_addr #1 {
start:
  %f = load ptr, ptr %data, align 8, !nonnull !6, !align !10, !noundef !6
  tail call fastcc void @"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h0a311a45c3597ef2E"(ptr nonnull align 8 %f)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_ZN3std9panicking3try8do_catch17h3b6757f55ce8cd1aE(ptr nocapture writeonly %data, ptr %payload) unnamed_addr #7 personality ptr @rust_eh_personality {
start:
  %0 = invoke { ptr, ptr } @_ZN3std9panicking3try7cleanup17h6d4e570bbe25440aE(ptr %payload)
          to label %bb1 unwind label %terminate

terminate:                                        ; preds = %start
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  tail call void @_ZN4core9panicking19panic_cannot_unwind17hfa9f734a74de1f5aE() #28
  unreachable

bb1:                                              ; preds = %start
  %obj.0 = extractvalue { ptr, ptr } %0, 0
  %obj.1 = extractvalue { ptr, ptr } %0, 1
  store ptr %obj.0, ptr %data, align 8
  %2 = getelementptr inbounds i8, ptr %data, i64 8
  store ptr %obj.1, ptr %2, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_ZN3std9panicking3try8do_catch17hc34136e473709636E(ptr nocapture writeonly %data, ptr %payload) unnamed_addr #7 personality ptr @rust_eh_personality {
start:
  %0 = invoke { ptr, ptr } @_ZN3std9panicking3try7cleanup17h6d4e570bbe25440aE(ptr %payload)
          to label %bb1 unwind label %terminate

terminate:                                        ; preds = %start
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  tail call void @_ZN4core9panicking19panic_cannot_unwind17hfa9f734a74de1f5aE() #28
  unreachable

bb1:                                              ; preds = %start
  %obj.0 = extractvalue { ptr, ptr } %0, 0
  %obj.1 = extractvalue { ptr, ptr } %0, 1
  store ptr %obj.0, ptr %data, align 8
  %2 = getelementptr inbounds i8, ptr %data, i64 8
  store ptr %obj.1, ptr %2, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_ZN3std9panicking3try8do_catch17hd9cdc6439e142313E(ptr nocapture writeonly %data, ptr %payload) unnamed_addr #7 personality ptr @rust_eh_personality {
start:
  %0 = invoke { ptr, ptr } @_ZN3std9panicking3try7cleanup17h6d4e570bbe25440aE(ptr %payload)
          to label %bb1 unwind label %terminate

terminate:                                        ; preds = %start
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  tail call void @_ZN4core9panicking19panic_cannot_unwind17hfa9f734a74de1f5aE() #28
  unreachable

bb1:                                              ; preds = %start
  %obj.0 = extractvalue { ptr, ptr } %0, 0
  %obj.1 = extractvalue { ptr, ptr } %0, 1
  store ptr %obj.0, ptr %data, align 8
  %2 = getelementptr inbounds i8, ptr %data, i64 8
  store ptr %obj.1, ptr %2, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h22c52efaacbaa520E"(ptr nocapture readonly align 8 %self, ptr align 8 %f) unnamed_addr #3 {
start:
  %_3 = load ptr, ptr %self, align 8, !nonnull !6, !align !10, !noundef !6
  %_0 = tail call fastcc zeroext i1 @"_ZN66_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h55a3f328046c2aa2E"(ptr nonnull align 8 %_3, ptr align 8 %f)
  ret i1 %_0
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h41685aa6829f33f8E"(ptr nocapture readonly align 8 %self, ptr align 8 %f) unnamed_addr #3 {
start:
  %_3 = load ptr, ptr %self, align 8, !nonnull !6, !align !11, !noundef !6
  %_0 = tail call fastcc zeroext i1 @"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17h64d915fbb64bb224E"(ptr nonnull align 1 %_3, ptr align 8 %f)
  ret i1 %_0
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h607224b099d83a83E"(ptr nocapture readonly align 8 %self, ptr align 8 %f) unnamed_addr #3 {
start:
  %_3 = load ptr, ptr %self, align 8, !nonnull !6, !align !10, !noundef !6
  %_0 = tail call fastcc zeroext i1 @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4f2cee7706fd2bf2E"(ptr nonnull align 8 %_3, ptr align 8 %f)
  ret i1 %_0
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @"_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h8d6ce8045515862aE"(ptr nocapture readonly align 8 %self, ptr %ptr, i64 %layout.0, i64 %layout.1) unnamed_addr #7 {
start:
  %_4 = load ptr, ptr %self, align 8, !nonnull !6, !align !11, !noundef !6
  tail call fastcc void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h7c478c2d7e6163acE"(ptr nonnull align 1 %_4, ptr %ptr, i64 %layout.0, i64 %layout.1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h8dd2312df886f187E"(ptr align 1 %self.0, i64 %self.1, ptr align 8 %f) unnamed_addr #3 {
bb6:
  %_5 = alloca %"core::fmt::builders::DebugList<'_, '_>", align 8
  call void @_ZN4core3fmt9Formatter10debug_list17h149015fd7be1ba26E(ptr nonnull sret(%"core::fmt::builders::DebugList<'_, '_>") align 8 %_5, ptr align 8 %f)
  %0 = getelementptr inbounds i8, ptr %self.0, i64 %self.1
  %1 = icmp ne ptr %self.0, null
  call void @llvm.assume(i1 %1)
  %_3 = call fastcc align 8 ptr @_ZN4core3fmt8builders9DebugList7entries17h5ba5105ff2dffedcE(ptr nonnull align 8 %_5, ptr nonnull %self.0, ptr nonnull %0)
  %_0 = call zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h607b22500ce6076aE(ptr nonnull align 8 %_5)
  ret i1 %_0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc zeroext i1 @"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17h64d915fbb64bb224E"(ptr align 1 %self, ptr align 8 %f) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds %"core::fmt::Formatter<'_>", ptr %f, i64 0, i32 4
  %_4 = load i32, ptr %0, align 4, !noundef !6
  %_3 = and i32 %_4, 16
  %1 = icmp eq i32 %_3, 0
  br i1 %1, label %bb2, label %bb1

bb2:                                              ; preds = %start
  %_5 = and i32 %_4, 32
  %2 = icmp eq i32 %_5, 0
  br i1 %2, label %bb4, label %bb3

bb1:                                              ; preds = %start
  %3 = tail call zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h5491a99e5df195d5E"(ptr align 1 %self, ptr nonnull align 8 %f)
  br label %bb6

bb4:                                              ; preds = %bb2
  %4 = tail call zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h99ee99222d3e115aE"(ptr align 1 %self, ptr nonnull align 8 %f)
  br label %bb6

bb3:                                              ; preds = %bb2
  %5 = tail call zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17h685b2bbffb06450aE"(ptr align 1 %self, ptr nonnull align 8 %f)
  br label %bb6

bb6:                                              ; preds = %bb4, %bb3, %bb1
  %_0.1 = phi i1 [ %3, %bb1 ], [ %4, %bb4 ], [ %5, %bb3 ]
  ret i1 %_0.1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17ha5cc9d4ed772767aE"(ptr align 4 %self, ptr align 8 %f) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds %"core::fmt::Formatter<'_>", ptr %f, i64 0, i32 4
  %_4 = load i32, ptr %0, align 4, !noundef !6
  %_3 = and i32 %_4, 16
  %1 = icmp eq i32 %_3, 0
  br i1 %1, label %bb2, label %bb1

bb2:                                              ; preds = %start
  %_5 = and i32 %_4, 32
  %2 = icmp eq i32 %_5, 0
  br i1 %2, label %bb4, label %bb3

bb1:                                              ; preds = %start
  %3 = tail call zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17hfca61b89a4190dddE"(ptr align 4 %self, ptr nonnull align 8 %f)
  br label %bb6

bb4:                                              ; preds = %bb2
  %4 = tail call zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h20d84ce7745c9c25E"(ptr align 4 %self, ptr nonnull align 8 %f)
  br label %bb6

bb3:                                              ; preds = %bb2
  %5 = tail call zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17hba5fa73134c1d9d5E"(ptr align 4 %self, ptr nonnull align 8 %f)
  br label %bb6

bb6:                                              ; preds = %bb4, %bb3, %bb1
  %_0.1 = phi i1 [ %3, %bb1 ], [ %4, %bb4 ], [ %5, %bb3 ]
  ret i1 %_0.1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h7367d291647d0261E"(ptr align 8 %self, ptr align 8 %f) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds %"core::fmt::Formatter<'_>", ptr %f, i64 0, i32 4
  %_4 = load i32, ptr %0, align 4, !noundef !6
  %_3 = and i32 %_4, 16
  %1 = icmp eq i32 %_3, 0
  br i1 %1, label %bb2, label %bb1

bb2:                                              ; preds = %start
  %_5 = and i32 %_4, 32
  %2 = icmp eq i32 %_5, 0
  br i1 %2, label %bb4, label %bb3

bb1:                                              ; preds = %start
  %3 = tail call zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h644fa137a4214e55E"(ptr align 8 %self, ptr nonnull align 8 %f)
  br label %bb6

bb4:                                              ; preds = %bb2
  %4 = tail call zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h16e2d8a35fcc5a92E"(ptr align 8 %self, ptr nonnull align 8 %f)
  br label %bb6

bb3:                                              ; preds = %bb2
  %5 = tail call zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17hf2e8a08e617b8e39E"(ptr align 8 %self, ptr nonnull align 8 %f)
  br label %bb6

bb6:                                              ; preds = %bb4, %bb3, %bb1
  %_0.1 = phi i1 [ %3, %bb1 ], [ %4, %bb4 ], [ %5, %bb3 ]
  ret i1 %_0.1
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @_ZN4core3fmt5Write10write_char17haece77ece7164350E(ptr nocapture align 8 %self, i32 %c) unnamed_addr #3 {
start:
  %_6 = alloca [4 x i8], align 4
  store i32 0, ptr %_6, align 4
  %0 = call fastcc { ptr, i64 } @_ZN4core4char7methods15encode_utf8_raw17hf4cecd0930e5c83aE(i32 %c, ptr nonnull align 1 %_6, i64 4)
  %v.0 = extractvalue { ptr, i64 } %0, 0
  %v.1 = extractvalue { ptr, i64 } %0, 1
  %_0 = call zeroext i1 @"_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h616885267e0406efE"(ptr align 8 %self, ptr align 1 %v.0, i64 %v.1)
  ret i1 %_0
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @_ZN4core3fmt5Write9write_fmt17hb8dd255043e35a0dE(ptr align 8 %self, ptr align 8 %args) unnamed_addr #3 {
start:
  %_0 = tail call fastcc zeroext i1 @"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h0f721f9c2f458448E"(ptr align 8 %self, ptr align 8 %args)
  ret i1 %_0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc align 8 ptr @_ZN4core3fmt8builders9DebugList7entries17h5ba5105ff2dffedcE(ptr returned align 8 %self, ptr %entries.0, ptr %entries.1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %entry = alloca ptr, align 8
  %iter = alloca %"core::slice::iter::Iter<'_, u8>", align 8
  %0 = tail call fastcc { ptr, ptr } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h29de9e60b804b94fE"(ptr %entries.0, ptr %entries.1)
  %_3.0 = extractvalue { ptr, ptr } %0, 0
  %_3.1 = extractvalue { ptr, ptr } %0, 1
  store ptr %_3.0, ptr %iter, align 8
  %1 = getelementptr inbounds i8, ptr %iter, i64 8
  store ptr %_3.1, ptr %1, align 8
  br label %bb2

bb2:                                              ; preds = %bb4, %start
  %2 = call fastcc align 1 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56ca6c3c8e673456E"(ptr nonnull align 8 %iter)
  br label %bb3

bb11:                                             ; preds = %bb10
  resume { ptr, i32 } %4

bb3:                                              ; preds = %bb2
  %3 = icmp eq ptr %2, null
  br i1 %3, label %bb6, label %bb4

bb6:                                              ; preds = %bb3
  ret ptr %self

bb4:                                              ; preds = %bb3
  store ptr %2, ptr %entry, align 8
  %_9 = invoke align 8 ptr @_ZN4core3fmt8builders9DebugList5entry17h5d20dd743daa8c38E(ptr align 8 %self, ptr nonnull align 1 %entry, ptr nonnull align 8 @vtable.4)
          to label %bb2 unwind label %bb10

bb10:                                             ; preds = %bb4
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb11
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal fastcc void @_ZN4core3fmt9Arguments16new_v1_formatted17h7aa3691dee6b70c6E(ptr nocapture writeonly sret(%"core::fmt::Arguments<'_>") align 8 %_0, ptr align 8 %pieces.0, i64 %pieces.1, ptr align 8 %args.0, i64 %args.1, ptr align 8 %fmt.0, i64 %fmt.1) unnamed_addr #8 {
start:
  store ptr %pieces.0, ptr %_0, align 8
  %0 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 2, ptr %0, align 8
  %1 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_0, i64 0, i32 2
  store ptr %fmt.0, ptr %1, align 8
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_0, i64 0, i32 2, i32 1
  store i64 1, ptr %2, align 8
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_0, i64 0, i32 1
  store ptr %args.0, ptr %3, align 8
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_0, i64 0, i32 1, i32 1
  store i64 1, ptr %4, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core3fmt9Arguments6new_v117h6d95806376f8cb89E(ptr nocapture writeonly sret(%"core::fmt::Arguments<'_>") align 8 %_0, ptr align 8 %pieces.0, i64 %pieces.1, ptr align 8 %args.0, i64 %args.1) unnamed_addr #1 {
start:
  %_9 = alloca %"core::fmt::Arguments<'_>", align 8
  %_3 = icmp ult i64 %pieces.1, %args.1
  %_7 = add nuw nsw i64 %args.1, 1
  %_6 = icmp ult i64 %_7, %pieces.1
  %or.cond = select i1 %_3, i1 true, i1 %_6
  br i1 %or.cond, label %bb6, label %bb3

bb3:                                              ; preds = %start
  store ptr %pieces.0, ptr %_0, align 8
  %0 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %pieces.1, ptr %0, align 8
  %1 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_0, i64 0, i32 2
  store ptr null, ptr %1, align 8
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_0, i64 0, i32 1
  store ptr %args.0, ptr %2, align 8
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_0, i64 0, i32 1, i32 1
  store i64 %args.1, ptr %3, align 8
  ret void

bb6:                                              ; preds = %start
  store ptr @alloc_af99043bc04c419363a7f04d23183506, ptr %_9, align 8
  %4 = getelementptr inbounds i8, ptr %_9, i64 8
  store i64 1, ptr %4, align 8
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_9, i64 0, i32 2
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_9, i64 0, i32 1
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %6, align 8
  %7 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_9, i64 0, i32 1, i32 1
  store i64 0, ptr %7, align 8
  call void @_ZN4core9panicking9panic_fmt17ha3d303d496008cd4E(ptr nonnull align 8 %_9, ptr nonnull align 8 @alloc_429c82a8a757ba4eb6ada2ea4793308e) #30
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h0bf3243cbfc3701cE"(ptr %_1) unnamed_addr #1 {
start:
  tail call fastcc void @"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17hcac0d9034fc41565E"(ptr align 8 %_1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h47d034f28e90fdc3E"(ptr %_1) unnamed_addr #1 {
start:
  tail call fastcc void @"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17ha4b7ec2d304bd290E"(ptr align 8 %_1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hdb5d1a81f27fa1bdE"(ptr nocapture readonly %_1) unnamed_addr #1 {
start:
  %0 = load ptr, ptr %_1, align 8, !nonnull !6, !noundef !6
  %_0 = tail call fastcc i32 @_ZN4core3ops8function6FnOnce9call_once17he9af646701908836E(ptr nonnull %0), !range !14
  ret i32 %_0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc i64 @_ZN4core3ops8function6FnOnce9call_once17h5d96f95940eb1a48E() unnamed_addr #1 {
start:
  %_0 = tail call i64 @_ZN3std10sys_common6thread9min_stack17h4877004752fad623E()
  ret i64 %_0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core3ops8function6FnOnce9call_once17ha152b1e98a996738E(ptr nocapture readonly %_1) unnamed_addr #1 {
start:
  tail call void %_1()
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core3ops8function6FnOnce9call_once17hb4e8940fe9154733E(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_1 = alloca ptr, align 8
  store ptr %0, ptr %_1, align 8
  invoke fastcc void @"_ZN70_$LT$std..thread..Packet$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h88057998d931430cE"(ptr nonnull align 8 %_1)
          to label %bb1 unwind label %bb3

bb3:                                              ; preds = %start
  %1 = landingpad { ptr, i32 }
          cleanup
  resume { ptr, i32 } %1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc i32 @_ZN4core3ops8function6FnOnce9call_once17he9af646701908836E(ptr %0) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_1 = alloca ptr, align 8
  store ptr %0, ptr %_1, align 8
  %_0 = invoke i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h7fa128403f6a9962E"(ptr nonnull align 8 %_1)
          to label %bb1 unwind label %bb3, !range !14

bb3:                                              ; preds = %start
  %1 = landingpad { ptr, i32 }
          cleanup
  resume { ptr, i32 } %1

bb1:                                              ; preds = %start
  ret i32 %_0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr101drop_in_place$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$17heb00ceacde916619E"(ptr align 8 %_1) unnamed_addr #3 {
start:
  tail call fastcc void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h30c76118a26b338aE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17h6c0fd03ae9cb2524E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 {
start:
  %0 = load i8, ptr %_1, align 8, !range !8, !noundef !6
  %_2 = zext i8 %0 to i64
  switch i64 %_2, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb1
    i64 2, label %bb1
  ]

bb2:                                              ; preds = %start
  %1 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", ptr %_1, i64 0, i32 1
  tail call fastcc void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hb5dc6e76ce0923dbE"(ptr nonnull align 8 %1)
  br label %bb1

bb1:                                              ; preds = %bb2, %start, %start, %start
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr103drop_in_place$LT$alloc..sync..Weak$LT$std..thread..scoped..ScopeData$C$$RF$alloc..alloc..Global$GT$$GT$17ha285c91d6c4611b4E"(ptr nocapture readonly align 8 %_1) unnamed_addr #0 {
start:
  tail call fastcc void @"_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha1201885555766bcE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h34ae5684014898a2E"(ptr align 8 %_1) unnamed_addr #3 {
start:
  %0 = load ptr, ptr %_1, align 8, !noundef !6
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  tail call fastcc void @"_ZN4core3ptr75drop_in_place$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$17h1051556b691f08bdE"(ptr nonnull align 8 %_1)
  br label %bb1
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr108drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$$LP$$RP$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17he123a7eabf47f862E"(ptr nocapture readonly align 8 %_1) unnamed_addr #0 {
start:
  tail call fastcc void @"_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha07c092f71fc2ebeE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$17h4599f0e61a8f1175E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_6.0 = load ptr, ptr %_1, align 8, !noundef !6
  %0 = getelementptr inbounds i8, ptr %_1, i64 8
  %_6.1 = load ptr, ptr %0, align 8, !nonnull !6, !align !10, !noundef !6
  %1 = load ptr, ptr %_6.1, align 8, !invariant.load !6, !nonnull !6
  invoke void %1(ptr align 1 %_6.0)
          to label %bb3 unwind label %bb4

bb4:                                              ; preds = %start
  %2 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he35e4951fc4d56c2E"(ptr nonnull align 8 %_1) #32
  br label %bb1

bb3:                                              ; preds = %start
  tail call fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he35e4951fc4d56c2E"(ptr nonnull align 8 %_1)
  ret void

bb1:                                              ; preds = %bb4
  resume { ptr, i32 } %2
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr123drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h2a47c24c5a2cb5f6E"(ptr align 8 %_1) unnamed_addr #0 {
start:
  tail call fastcc void @"_ZN104_$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h14eb6e8c357ce55fE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr123drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h64c80effd66a67aeE"(ptr align 8 %_1) unnamed_addr #0 {
start:
  tail call fastcc void @"_ZN104_$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h02da2f82e1afd6baE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr129drop_in_place$LT$alloc..sync..Weak$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h37250d1cd3654365E"(ptr nocapture readonly align 8 %_1) unnamed_addr #0 {
start:
  tail call fastcc void @"_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha481c71cf98ea80dE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17hb0b9a9dea83cab12E"(ptr align 8 %_1) unnamed_addr #3 {
start:
  %0 = load ptr, ptr %_1, align 8, !noundef !6
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  tail call fastcc void @"_ZN4core3ptr101drop_in_place$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$17heb00ceacde916619E"(ptr nonnull align 8 %_1)
  br label %bb1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h65e6886abc00f331E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 {
start:
  %0 = load ptr, ptr %_1, align 8, !noundef !6
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  tail call void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17hbd95e1deb97397bdE"(ptr nonnull align 8 %_1)
  br label %bb1
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr148drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h9a15adcd150c8f51E"(ptr align 8 %_1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hfe663bec07996c9bE"(ptr align 8 %_1)
          to label %bb8 unwind label %bb5

bb5:                                              ; preds = %start
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", ptr %_1, i64 0, i32 2
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17hb0b9a9dea83cab12E"(ptr nonnull align 8 %1) #32
          to label %bb4 unwind label %terminate

bb8:                                              ; preds = %start
  %2 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", ptr %_1, i64 0, i32 2
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17hb0b9a9dea83cab12E"(ptr nonnull align 8 %2)
          to label %bb7 unwind label %cleanup1

bb4:                                              ; preds = %cleanup1, %bb5
  %.pn = phi { ptr, i32 } [ %4, %cleanup1 ], [ %0, %bb5 ]
  %3 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", ptr %_1, i64 0, i32 3
  call fastcc void @"_ZN4core3ptr123drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h2a47c24c5a2cb5f6E"(ptr nonnull align 8 %3) #32
  br label %bb3

cleanup1:                                         ; preds = %bb8
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb4

bb7:                                              ; preds = %bb8
  %5 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", ptr %_1, i64 0, i32 3
  call fastcc void @"_ZN4core3ptr123drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h2a47c24c5a2cb5f6E"(ptr nonnull align 8 %5)
  br label %bb6

bb3:                                              ; preds = %bb4
  %6 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", ptr %_1, i64 0, i32 1
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hdd1e9cb9f54fbb86E"(ptr nonnull align 8 %6) #32
          to label %bb1 unwind label %terminate

bb6:                                              ; preds = %bb7
  %7 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", ptr %_1, i64 0, i32 1
  tail call fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hdd1e9cb9f54fbb86E"(ptr nonnull align 8 %7)
  ret void

terminate:                                        ; preds = %bb3, %bb5
  %8 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  tail call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #28
  unreachable

bb1:                                              ; preds = %bb3
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr148drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17ha03b63e1e465940cE"(ptr align 8 %_1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hfe663bec07996c9bE"(ptr align 8 %_1)
          to label %bb8 unwind label %bb5

bb5:                                              ; preds = %start
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", ptr %_1, i64 0, i32 2
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17hb0b9a9dea83cab12E"(ptr nonnull align 8 %1) #32
          to label %bb4 unwind label %terminate

bb8:                                              ; preds = %start
  %2 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", ptr %_1, i64 0, i32 2
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17hb0b9a9dea83cab12E"(ptr nonnull align 8 %2)
          to label %bb7 unwind label %cleanup1

bb4:                                              ; preds = %cleanup1, %bb5
  %.pn = phi { ptr, i32 } [ %4, %cleanup1 ], [ %0, %bb5 ]
  %3 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", ptr %_1, i64 0, i32 3
  call fastcc void @"_ZN4core3ptr123drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h64c80effd66a67aeE"(ptr nonnull align 8 %3) #32
  br label %bb3

cleanup1:                                         ; preds = %bb8
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb4

bb7:                                              ; preds = %bb8
  %5 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", ptr %_1, i64 0, i32 3
  call fastcc void @"_ZN4core3ptr123drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h64c80effd66a67aeE"(ptr nonnull align 8 %5)
  br label %bb6

bb3:                                              ; preds = %bb4
  %6 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", ptr %_1, i64 0, i32 1
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hdd1e9cb9f54fbb86E"(ptr nonnull align 8 %6) #32
          to label %bb1 unwind label %terminate

bb6:                                              ; preds = %bb7
  %7 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", ptr %_1, i64 0, i32 1
  tail call fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hdd1e9cb9f54fbb86E"(ptr nonnull align 8 %7)
  ret void

terminate:                                        ; preds = %bb3, %bb5
  %8 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  tail call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #28
  unreachable

bb1:                                              ; preds = %bb3
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hc6d8376cb0915d32E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 {
start:
  %_2 = load i64, ptr %_1, align 8, !range !5, !noundef !6
  %0 = icmp eq i64 %_2, 0
  br i1 %0, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  %1 = getelementptr inbounds %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>::Some", ptr %_1, i64 0, i32 1
  tail call fastcc void @"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h65e6886abc00f331E"(ptr nonnull align 8 %1)
  br label %bb1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr188drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$$GT$17hed197b31cfad7610E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 {
start:
  tail call fastcc void @"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hc6d8376cb0915d32E"(ptr align 8 %_1)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @"_ZN4core3ptr26drop_in_place$LT$usize$GT$17hfb66c53a5a521ee8E"(ptr nocapture readnone align 8 %_1) unnamed_addr #5 {
start:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @"_ZN4core3ptr27drop_in_place$LT$$RF$u8$GT$17h6cd7d665a9d04546E"(ptr nocapture readnone align 8 %_1) unnamed_addr #5 {
start:
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr39drop_in_place$LT$std..thread..Inner$GT$17hed6807f3af19e972E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 {
start:
  %0 = getelementptr inbounds %"std::thread::Inner", ptr %_1, i64 0, i32 1
  tail call fastcc void @"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17h3aa54ca79e952464E"(ptr nonnull align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hfe663bec07996c9bE"(ptr align 8 %_1) unnamed_addr #3 {
start:
  tail call fastcc void @"_ZN4core3ptr85drop_in_place$LT$core..pin..Pin$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$$GT$17h8b60135d25248713E"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2ec68369b105f4feE"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 {
start:
  tail call fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h5abab8083f94f39aE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h7d1d75c373ff4d89E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 {
start:
  tail call fastcc void @"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h773f12d2ed4c78f8E"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17h41e640860dfa8d1cE"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 {
start:
  tail call fastcc void @"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$17h4599f0e61a8f1175E"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h5abab8083f94f39aE"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  br label %bb4

bb4:                                              ; preds = %start
  tail call fastcc void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hcd73054ee8a7c839E"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17hd930ed50f616ea2dE"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  call fastcc void @"_ZN68_$LT$alloc..ffi..c_str..CString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0b9bc1f84a3eb08aE"(ptr align 8 %_1)
  br label %bb4

bb4:                                              ; preds = %start
  tail call fastcc void @"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17hfb263dde9c25ad57E"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr48drop_in_place$LT$alloc..ffi..c_str..NulError$GT$17h9e8886b3dfeaaf35E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 {
start:
  tail call fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h5abab8083f94f39aE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr48drop_in_place$LT$alloc..sync..Arc$LT$i32$GT$$GT$17h1f25d607f7e62a6aE"(ptr align 8 %_1) unnamed_addr #0 {
start:
  tail call fastcc void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc4ebf5a3e7bee33dE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @"_ZN4core3ptr50drop_in_place$LT$$RF$alloc..vec..Vec$LT$u8$GT$$GT$17hfcc93603a5391f48E"(ptr nocapture readnone align 8 %_1) unnamed_addr #5 {
start:
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr51drop_in_place$LT$std..thread..scoped..ScopeData$GT$17h4f50f4a07c4b36eeE"(ptr align 8 %_1) unnamed_addr #3 {
start:
  tail call fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hfe663bec07996c9bE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hcd73054ee8a7c839E"(ptr nocapture readonly align 8 %_1) unnamed_addr #0 {
start:
  tail call fastcc void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcf56acc0e9adfdf3E"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr56drop_in_place$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$17h52f8764e96c5cc5aE"(ptr align 8 %_1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  invoke fastcc void @"_ZN70_$LT$std..thread..Packet$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0545363ab4f56b6bE"(ptr align 8 %_1)
          to label %bb6 unwind label %bb4

bb4:                                              ; preds = %start
  %0 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h34ae5684014898a2E"(ptr align 8 %_1) #32
          to label %bb3 unwind label %terminate

bb6:                                              ; preds = %start
  invoke fastcc void @"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h34ae5684014898a2E"(ptr align 8 %_1)
          to label %bb5 unwind label %cleanup1

bb3:                                              ; preds = %cleanup1, %bb4
  %.pn = phi { ptr, i32 } [ %2, %cleanup1 ], [ %0, %bb4 ]
  %1 = getelementptr inbounds %"std::thread::Packet<'_, ()>", ptr %_1, i64 0, i32 1
  invoke fastcc void @"_ZN4core3ptr188drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$$GT$17hed197b31cfad7610E"(ptr nonnull align 8 %1) #32
          to label %bb1 unwind label %terminate

cleanup1:                                         ; preds = %bb6
  %2 = landingpad { ptr, i32 }
          cleanup
  br label %bb3

bb5:                                              ; preds = %bb6
  %3 = getelementptr inbounds %"std::thread::Packet<'_, ()>", ptr %_1, i64 0, i32 1
  tail call fastcc void @"_ZN4core3ptr188drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$$GT$17hed197b31cfad7610E"(ptr nonnull align 8 %3)
  ret void

terminate:                                        ; preds = %bb3, %bb4
  %4 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  tail call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #28
  unreachable

bb1:                                              ; preds = %bb3
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h773f12d2ed4c78f8E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 {
start:
  tail call fastcc void @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8c79df5a06fe4d53E"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17hfb263dde9c25ad57E"(ptr nocapture readonly align 8 %_1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb3:
  tail call fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h240b2e9c5227bac4E"(ptr nonnull align 8 %_1)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr62drop_in_place$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$GT$17h1022437b15102989E"(ptr align 8 %_1) unnamed_addr #0 {
start:
  tail call fastcc void @"_ZN4core3ptr48drop_in_place$LT$alloc..sync..Arc$LT$i32$GT$$GT$17h1f25d607f7e62a6aE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr62drop_in_place$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$GT$17h1e2d20d11bf7e77cE"(ptr align 8 %_1) unnamed_addr #0 {
start:
  tail call fastcc void @"_ZN4core3ptr48drop_in_place$LT$alloc..sync..Arc$LT$i32$GT$$GT$17h1f25d607f7e62a6aE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$17h0910c7b11e772e39E"(ptr align 8 %_1) unnamed_addr #3 {
start:
  tail call fastcc void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb59dce9416a274b7E"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hb5dc6e76ce0923dbE"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_6 = load ptr, ptr %_1, align 8, !noundef !6
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17h41e640860dfa8d1cE"(ptr align 8 %_6)
          to label %bb3 unwind label %bb4

bb4:                                              ; preds = %start
  %0 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5fc5d18f1043749bE"(ptr nonnull align 8 %_1) #32
  br label %bb1

bb3:                                              ; preds = %start
  tail call fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5fc5d18f1043749bE"(ptr nonnull align 8 %_1)
  ret void

bb1:                                              ; preds = %bb4
  resume { ptr, i32 } %0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17he9731f028b4d5240E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 {
start:
  %0 = load i64, ptr %_1, align 8, !range !12, !noundef !6
  %1 = icmp eq i64 %0, -9223372036854775808
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  tail call fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2ec68369b105f4feE"(ptr nonnull align 8 %_1)
  br label %bb1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr75drop_in_place$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$17h1051556b691f08bdE"(ptr align 8 %_1) unnamed_addr #3 {
start:
  tail call fastcc void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h264139602938d12aE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17h3aa54ca79e952464E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 {
start:
  %0 = load ptr, ptr %_1, align 8, !noundef !6
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  tail call fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17hd930ed50f616ea2dE"(ptr nonnull align 8 %_1)
  br label %bb1
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Weak$LT$i32$C$$RF$alloc..alloc..Global$GT$$GT$17h658e1b749d031549E"(ptr nocapture readonly align 8 %_1) unnamed_addr #0 {
start:
  tail call fastcc void @"_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfa4b1f6f07816d15E"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr76drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h3518a23b2de82dc8E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 {
start:
  tail call fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h5abab8083f94f39aE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr77drop_in_place$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h13613f48335f66ecE"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 {
start:
  %0 = getelementptr inbounds %"std::sync::mutex::Mutex<alloc::vec::Vec<u8>>", ptr %_1, i64 0, i32 3
  tail call fastcc void @"_ZN4core3ptr76drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h3518a23b2de82dc8E"(ptr nonnull align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hdd1e9cb9f54fbb86E"(ptr align 8 %_1) unnamed_addr #3 {
start:
  tail call fastcc void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hea83621e3685ce0dE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h9aa1d68d5586ba81E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 {
start:
  %0 = load ptr, ptr %_1, align 8, !noundef !6
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  tail call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h7d1d75c373ff4d89E"(ptr nonnull align 8 %_1)
  br label %bb1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr85drop_in_place$LT$alloc..sync..ArcInner$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h4a7a9fc5db3d1201E"(ptr align 8 %_1) unnamed_addr #3 {
start:
  %0 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %_1, i64 0, i32 2
  tail call fastcc void @"_ZN4core3ptr56drop_in_place$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$17h52f8764e96c5cc5aE"(ptr nonnull align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr85drop_in_place$LT$core..pin..Pin$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$$GT$17h8b60135d25248713E"(ptr align 8 %_1) unnamed_addr #3 {
start:
  tail call fastcc void @"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$17h0910c7b11e772e39E"(ptr align 8 %_1)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17he64ae37f094d2577E"(ptr nocapture readnone align 8 %_1) unnamed_addr #5 {
start:
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17hbd95e1deb97397bdE"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_6.0 = load ptr, ptr %_1, align 8, !noundef !6
  %0 = getelementptr inbounds i8, ptr %_1, i64 8
  %_6.1 = load ptr, ptr %0, align 8, !nonnull !6, !align !10, !noundef !6
  %1 = load ptr, ptr %_6.1, align 8, !invariant.load !6, !nonnull !6
  invoke void %1(ptr align 1 %_6.0)
          to label %bb3 unwind label %bb4

bb4:                                              ; preds = %start
  %2 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbde74da799a67ac8E"(ptr nonnull align 8 %_1) #32
  br label %bb1

bb3:                                              ; preds = %start
  tail call fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbde74da799a67ac8E"(ptr nonnull align 8 %_1)
  ret void

bb1:                                              ; preds = %bb4
  resume { ptr, i32 } %2
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Inner$C$$RF$alloc..alloc..Global$GT$$GT$17hfda44d03b7d1baadE"(ptr nocapture readonly align 8 %_1) unnamed_addr #0 {
start:
  tail call fastcc void @"_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9301fd578ebcdf1eE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr97drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..sys..pal..unix..stdio..Stderr$GT$$GT$17he284c5d95baded8aE"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 {
start:
  %0 = getelementptr inbounds i8, ptr %_1, i64 8
  tail call fastcc void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h9aa1d68d5586ba81E"(ptr nonnull align 8 %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_ZN4core4char7methods15encode_utf8_raw17hf4cecd0930e5c83aE(i32 %0, ptr align 1 %dst.0, i64 %dst.1) unnamed_addr #1 {
start:
  %_72 = icmp ult i32 %0, 128
  br i1 %_72, label %bb6, label %bb13

bb13:                                             ; preds = %start
  %_73 = icmp ult i32 %0, 2048
  br i1 %_73, label %bb7, label %bb15

bb15:                                             ; preds = %bb13
  %_74 = icmp ult i32 %0, 65536
  br i1 %_74, label %bb8, label %bb9

bb6:                                              ; preds = %start
  %1 = trunc i32 %0 to i8
  store i8 %1, ptr %dst.0, align 1
  br label %bb11

bb11:                                             ; preds = %bb9, %bb8, %bb7, %bb6
  %index = phi i64 [ 4, %bb9 ], [ 3, %bb8 ], [ 2, %bb7 ], [ 1, %bb6 ]
  %2 = tail call fastcc { ptr, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h8483439eb291afceE"(i64 0, i64 %index, ptr nonnull align 1 %dst.0, i64 4, ptr nonnull align 8 @alloc_41a0379ed06a3b1c22d2313ff030dc3d)
  ret { ptr, i64 } %2

bb7:                                              ; preds = %bb13
  %_20 = lshr i32 %0, 6
  %3 = trunc i32 %_20 to i8
  %_18 = and i8 %3, 31
  %4 = or i8 %_18, -64
  store i8 %4, ptr %dst.0, align 1
  %5 = trunc i32 %0 to i8
  %_22 = and i8 %5, 63
  %6 = getelementptr inbounds [0 x i8], ptr %dst.0, i64 0, i64 1
  %7 = or i8 %_22, -128
  store i8 %7, ptr %6, align 1
  br label %bb11

bb8:                                              ; preds = %bb15
  %_30 = lshr i32 %0, 12
  %8 = trunc i32 %_30 to i8
  %_28 = and i8 %8, 15
  %9 = or i8 %_28, -32
  store i8 %9, ptr %dst.0, align 1
  %_34 = lshr i32 %0, 6
  %10 = trunc i32 %_34 to i8
  %_32 = and i8 %10, 63
  %11 = getelementptr inbounds [0 x i8], ptr %dst.0, i64 0, i64 1
  %12 = or i8 %_32, -128
  store i8 %12, ptr %11, align 1
  %13 = trunc i32 %0 to i8
  %_36 = and i8 %13, 63
  %14 = getelementptr inbounds [0 x i8], ptr %dst.0, i64 0, i64 2
  %15 = or i8 %_36, -128
  store i8 %15, ptr %14, align 1
  br label %bb11

bb9:                                              ; preds = %bb15
  %_45 = lshr i32 %0, 18
  %16 = trunc i32 %_45 to i8
  %_43 = and i8 %16, 7
  %17 = or i8 %_43, -16
  store i8 %17, ptr %dst.0, align 1
  %_49 = lshr i32 %0, 12
  %18 = trunc i32 %_49 to i8
  %_47 = and i8 %18, 63
  %19 = getelementptr inbounds [0 x i8], ptr %dst.0, i64 0, i64 1
  %20 = or i8 %_47, -128
  store i8 %20, ptr %19, align 1
  %_53 = lshr i32 %0, 6
  %21 = trunc i32 %_53 to i8
  %_51 = and i8 %21, 63
  %22 = getelementptr inbounds [0 x i8], ptr %dst.0, i64 0, i64 2
  %23 = or i8 %_51, -128
  store i8 %23, ptr %22, align 1
  %24 = trunc i32 %0 to i8
  %_55 = and i8 %24, 63
  %25 = getelementptr inbounds [0 x i8], ptr %dst.0, i64 0, i64 3
  %26 = or i8 %_55, -128
  store i8 %26, ptr %25, align 1
  br label %bb11
}

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc i64 @_ZN4core4sync6atomic11atomic_load17ha5501a2b7c0523d0E(ptr nocapture readonly %dst, i8 %0) unnamed_addr #9 {
bb3:
  %1 = load atomic i64, ptr %dst acquire, align 8
  ret i64 %1
}

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4core4sync6atomic12atomic_store17h560824ef49a803dbE(ptr nocapture writeonly %dst, i64 %val, i8 %0) unnamed_addr #9 {
bb3:
  store atomic i64 1, ptr %dst release, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc { i64, i64 } @_ZN4core4sync6atomic23atomic_compare_exchange17h42cbeb16fa4167feE(ptr nocapture %dst, i64 %old, i64 %new, i8 %0, i8 %1) unnamed_addr #9 {
bb12:
  %2 = cmpxchg ptr %dst, i64 1, i64 -1 acquire monotonic, align 8
  %3 = extractvalue { i64, i1 } %2, 1
  br i1 %3, label %bb26, label %bb27

bb27:                                             ; preds = %bb12
  br label %bb28

bb26:                                             ; preds = %bb12
  br label %bb28

bb28:                                             ; preds = %bb26, %bb27
  %storemerge = phi i64 [ 1, %bb27 ], [ 0, %bb26 ]
  %4 = extractvalue { i64, i1 } %2, 0
  %5 = insertvalue { i64, i64 } poison, i64 %storemerge, 0
  %6 = insertvalue { i64, i64 } %5, i64 %4, 1
  ret { i64, i64 } %6
}

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind nonlazybind willreturn uwtable
define internal fastcc void @_ZN4core4sync6atomic5fence17h08d320ea5a0611d9E(i8 %0) unnamed_addr #10 {
bb2:
  fence acquire
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, i64 } @_ZN4core5slice6memchr12memchr_naive17h3eb527b5bf27d00dE(i8 %x, ptr nocapture readonly align 1 %text.0, i64 %text.1) unnamed_addr #1 {
start:
  %_43.not = icmp eq i64 %text.1, 0
  br i1 %_43.not, label %bb7, label %bb2

bb2:                                              ; preds = %start, %bb5
  %i.04 = phi i64 [ %4, %bb5 ], [ 0, %start ]
  %0 = tail call i1 @llvm.expect.i1(i1 true, i1 true)
  br i1 %0, label %bb3, label %panic

bb7:                                              ; preds = %start, %bb5, %bb4
  %1 = phi i64 [ %i.04, %bb4 ], [ undef, %bb5 ], [ undef, %start ]
  %storemerge = phi i64 [ 1, %bb4 ], [ 0, %bb5 ], [ 0, %start ]
  %2 = insertvalue { i64, i64 } poison, i64 %storemerge, 0
  %3 = insertvalue { i64, i64 } %2, i64 %1, 1
  ret { i64, i64 } %3

bb3:                                              ; preds = %bb2
  %scevgep = getelementptr i8, ptr %text.0, i64 %i.04
  %_8 = load i8, ptr %scevgep, align 1, !noundef !6
  %_7 = icmp eq i8 %_8, 0
  br i1 %_7, label %bb4, label %bb5

panic:                                            ; preds = %bb2
  tail call void @_ZN4core9panicking18panic_bounds_check17hcaba71f5f538ebe0E(i64 %i.04, i64 %text.1, ptr nonnull align 8 @alloc_65452916cca6d97cc375fac7cb56cd3a) #30
  unreachable

bb5:                                              ; preds = %bb3
  %4 = add nuw i64 %i.04, 1
  %exitcond.not = icmp eq i64 %4, %text.1
  br i1 %exitcond.not, label %bb7, label %bb2

bb4:                                              ; preds = %bb3
  br label %bb7
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h1e9ac7a125448c28E"(ptr nocapture readonly align 8 %self, ptr nocapture readnone align 1 %msg.0, i64 %msg.1, ptr nocapture readnone align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %e = alloca %"alloc::ffi::c_str::NulError", align 8
  %1 = load i64, ptr %self, align 8, !range !12, !noundef !6
  %2 = icmp eq i64 %1, -9223372036854775808
  br i1 %2, label %bb3, label %bb1

bb3:                                              ; preds = %start
  %3 = getelementptr inbounds %"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>::Ok", ptr %self, i64 0, i32 1
  %t.0 = load ptr, ptr %3, align 8, !nonnull !6, !align !11, !noundef !6
  %4 = getelementptr inbounds %"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>::Ok", ptr %self, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %t.1 = load i64, ptr %4, align 8, !noundef !6
  %5 = insertvalue { ptr, i64 } poison, ptr %t.0, 0
  %6 = insertvalue { ptr, i64 } %5, i64 %t.1, 1
  ret { ptr, i64 } %6

bb1:                                              ; preds = %start
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %e, ptr noundef nonnull align 8 dereferenceable(32) %self, i64 32, i1 false)
  invoke void @_ZN4core6result13unwrap_failed17h566b4fa76abf40a2E(ptr nonnull align 1 @alloc_498705839b3ae85466bce6e7ebfe4996, i64 47, ptr nonnull align 1 %e, ptr nonnull align 8 @vtable.5, ptr nonnull align 8 @alloc_3c7ed5a01079e282fcc9eb5544b30333) #30
          to label %unreachable unwind label %bb4

bb4:                                              ; preds = %bb1
  %7 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr48drop_in_place$LT$alloc..ffi..c_str..NulError$GT$17h9e8886b3dfeaaf35E"(ptr nonnull align 8 %e) #32
          to label %bb5 unwind label %terminate

unreachable:                                      ; preds = %bb1
  unreachable

terminate:                                        ; preds = %bb4
  %8 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #28
  unreachable

bb5:                                              ; preds = %bb4
  resume { ptr, i32 } %7
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h8db424f7ac276905E"(ptr nocapture writeonly sret(%"std::thread::JoinHandle<()>") align 8 %t, ptr nocapture readonly align 8 %self, ptr nocapture readnone align 1 %msg.0, i64 %msg.1, ptr nocapture readnone align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %e = alloca ptr, align 8
  %1 = load ptr, ptr %self, align 8, !noundef !6
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb1, label %bb3

bb3:                                              ; preds = %start
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %t, ptr noundef nonnull align 8 dereferenceable(24) %self, i64 24, i1 false)
  ret void

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds %"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>::Err", ptr %self, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !nonnull !6, !noundef !6
  store ptr %3, ptr %e, align 8
  invoke void @_ZN4core6result13unwrap_failed17h566b4fa76abf40a2E(ptr nonnull align 1 @alloc_e3605bf48dd8479a638909176cc37fce, i64 22, ptr nonnull align 1 %e, ptr nonnull align 8 @vtable.6, ptr nonnull align 8 @alloc_cfbb55ba8bd892c2ed60a2c3f28c3541) #30
          to label %unreachable unwind label %bb4

bb4:                                              ; preds = %bb1
  %4 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h7d1d75c373ff4d89E"(ptr nonnull align 8 %e) #32
          to label %bb5 unwind label %terminate

unreachable:                                      ; preds = %bb1
  unreachable

terminate:                                        ; preds = %bb4
  %5 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #28
  unreachable

bb5:                                              ; preds = %bb4
  resume { ptr, i32 } %4
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h80faadc8214103a8E"(ptr nocapture writeonly sret(%"alloc::vec::Vec<u8>") align 8 %_0, ptr nocapture readonly align 8 %self, ptr nocapture readnone align 8 %0) unnamed_addr #11 {
start:
  tail call fastcc void @"_ZN5alloc6string104_$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..vec..Vec$LT$u8$GT$$GT$4from17h5ec94280c1173debE"(ptr sret(%"alloc::vec::Vec<u8>") align 8 %_0, ptr align 8 %self)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc ptr @"_ZN5alloc4sync12Arc$LT$T$GT$3new17hf647ebde2c4d448fE"(i32 %data) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_3 = alloca %"alloc::sync::ArcInner<i32>", align 8
  store i64 1, ptr %_3, align 8
  %0 = getelementptr inbounds %"alloc::sync::ArcInner<i32>", ptr %_3, i64 0, i32 1
  store i64 1, ptr %0, align 8
  %1 = getelementptr inbounds %"alloc::sync::ArcInner<i32>", ptr %_3, i64 0, i32 2
  store i32 5, ptr %1, align 8
  %_4.i = tail call fastcc ptr @_ZN5alloc5alloc15exchange_malloc17haa910fab8791b365E(i64 24, i64 8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_4.i, ptr noundef nonnull align 8 dereferenceable(24) %_3, i64 24, i1 false)
  %2 = icmp ne ptr %_4.i, null
  tail call void @llvm.assume(i1 %2)
  ret ptr %_4.i
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h26a4abe707d1e497E"(ptr align 8 %self) unnamed_addr #12 {
start:
  %_x = alloca %"alloc::sync::Weak<i32, &alloc::alloc::Global>", align 8
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_6 = getelementptr i8, ptr %self, i64 8
  store ptr %self1, ptr %_x, align 8
  %0 = getelementptr inbounds i8, ptr %_x, i64 8
  store ptr %_6, ptr %0, align 8
  call fastcc void @"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Weak$LT$i32$C$$RF$alloc..alloc..Global$GT$$GT$17h658e1b749d031549E"(ptr nonnull align 8 %_x)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9bac8cf5dd80d21eE"(ptr align 8 %self) unnamed_addr #2 {
start:
  %_x = alloca %"alloc::sync::Weak<std::thread::Packet<'_, ()>, &alloc::alloc::Global>", align 8
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_3 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %self1, i64 0, i32 2
  tail call fastcc void @"_ZN4core3ptr56drop_in_place$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$17h52f8764e96c5cc5aE"(ptr nonnull align 8 %_3)
  %_5 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_6 = getelementptr i8, ptr %self, i64 8
  store ptr %_5, ptr %_x, align 8
  %0 = getelementptr inbounds i8, ptr %_x, i64 8
  store ptr %_6, ptr %0, align 8
  call fastcc void @"_ZN4core3ptr108drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$$LP$$RP$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17he123a7eabf47f862E"(ptr nonnull align 8 %_x)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17ha154c7f20024fd4bE"(ptr align 8 %self) unnamed_addr #2 {
start:
  %_x = alloca %"alloc::sync::Weak<std::thread::scoped::ScopeData, &alloc::alloc::Global>", align 8
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_3 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::scoped::ScopeData>", ptr %self1, i64 0, i32 2
  tail call fastcc void @"_ZN4core3ptr51drop_in_place$LT$std..thread..scoped..ScopeData$GT$17h4f50f4a07c4b36eeE"(ptr nonnull align 8 %_3)
  %_5 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_6 = getelementptr i8, ptr %self, i64 8
  store ptr %_5, ptr %_x, align 8
  %0 = getelementptr inbounds i8, ptr %_x, i64 8
  store ptr %_6, ptr %0, align 8
  call fastcc void @"_ZN4core3ptr103drop_in_place$LT$alloc..sync..Weak$LT$std..thread..scoped..ScopeData$C$$RF$alloc..alloc..Global$GT$$GT$17ha285c91d6c4611b4E"(ptr nonnull align 8 %_x)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hbf4ce392199f93abE"(ptr align 8 %self) unnamed_addr #2 {
start:
  %_x = alloca %"alloc::sync::Weak<std::sync::mutex::Mutex<alloc::vec::Vec<u8>>, &alloc::alloc::Global>", align 8
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_3 = getelementptr inbounds %"alloc::sync::ArcInner<std::sync::mutex::Mutex<alloc::vec::Vec<u8>>>", ptr %self1, i64 0, i32 2
  tail call fastcc void @"_ZN4core3ptr77drop_in_place$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h13613f48335f66ecE"(ptr nonnull align 8 %_3)
  %_5 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_6 = getelementptr i8, ptr %self, i64 8
  store ptr %_5, ptr %_x, align 8
  %0 = getelementptr inbounds i8, ptr %_x, i64 8
  store ptr %_6, ptr %0, align 8
  call fastcc void @"_ZN4core3ptr129drop_in_place$LT$alloc..sync..Weak$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h37250d1cd3654365E"(ptr nonnull align 8 %_x)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf1ce1a5eeee47730E"(ptr align 8 %self) unnamed_addr #2 {
start:
  %_x = alloca %"alloc::sync::Weak<std::thread::Inner, &alloc::alloc::Global>", align 8
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_3 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Inner>", ptr %self1, i64 0, i32 2
  tail call fastcc void @"_ZN4core3ptr39drop_in_place$LT$std..thread..Inner$GT$17hed6807f3af19e972E"(ptr nonnull align 8 %_3)
  %_5 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_6 = getelementptr i8, ptr %self, i64 8
  store ptr %_5, ptr %_x, align 8
  %0 = getelementptr inbounds i8, ptr %_x, i64 8
  store ptr %_6, ptr %0, align 8
  call fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Inner$C$$RF$alloc..alloc..Global$GT$$GT$17hfda44d03b7d1baadE"(ptr nonnull align 8 %_x)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i1 @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9is_unique17h3fab591f54f57a44E"(ptr nocapture readonly align 8 %self) unnamed_addr #13 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_17 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %self1, i64 0, i32 1
  %0 = tail call fastcc { i64, i64 } @_ZN4core4sync6atomic23atomic_compare_exchange17h42cbeb16fa4167feE(ptr nonnull %_17, i64 1, i64 -1, i8 2, i8 0)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %bb1, label %bb3

bb1:                                              ; preds = %start
  %self4 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_6 = tail call fastcc i64 @_ZN4core4sync6atomic11atomic_load17ha5501a2b7c0523d0E(ptr nonnull %self4, i8 2)
  %unique = icmp eq i64 %_6, 1
  %_38 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %self4, i64 0, i32 1
  tail call fastcc void @_ZN4core4sync6atomic12atomic_store17h560824ef49a803dbE(ptr nonnull %_38, i64 1, i8 1)
  br label %bb3

bb3:                                              ; preds = %start, %bb1
  %_0.0 = phi i1 [ %unique, %bb1 ], [ false, %start ]
  ret i1 %_0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc ptr @_ZN5alloc5alloc15exchange_malloc17haa910fab8791b365E(i64 %size, i64 %align) unnamed_addr #1 {
start:
  %0 = tail call fastcc { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h5421ee6b4d5622f3E(ptr nonnull align 1 @alloc_513570631223a12912d85da2bec3b15a, i64 8, i64 %size, i1 zeroext false)
  %1 = extractvalue { ptr, i64 } %0, 0
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb1, label %bb2

bb2:                                              ; preds = %start
  ret ptr %1

bb1:                                              ; preds = %start
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h085c72f91e671903E(i64 8, i64 %size) #30
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h5421ee6b4d5622f3E(ptr nocapture readnone align 1 %self, i64 %0, i64 %1, i1 zeroext %zeroed) unnamed_addr #7 {
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
  %8 = tail call ptr @__rust_alloc(i64 %1, i64 %0) #31
  %9 = icmp eq ptr %8, null
  br i1 %9, label %bb7, label %bb6

bb6:                                              ; preds = %bb5
  br label %bb8

bb7:                                              ; preds = %bb5
  br label %bb8
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZN5alloc6string104_$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..vec..Vec$LT$u8$GT$$GT$4from17h5ec94280c1173debE"(ptr nocapture writeonly sret(%"alloc::vec::Vec<u8>") align 8 %_0, ptr nocapture readonly align 8 %string) unnamed_addr #14 {
start:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %string, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h13a5242172c983a4E"(ptr nocapture writeonly sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") align 8 %_0, ptr nocapture readonly align 8 %self) unnamed_addr #14 {
bb1:
  %_9 = alloca { ptr, %"core::alloc::layout::Layout" }, align 8
  %_3 = load i64, ptr %self, align 8, !noundef !6
  %0 = icmp eq i64 %_3, 0
  br i1 %0, label %bb2, label %bb3

bb2:                                              ; preds = %bb1
  %1 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", ptr %_0, i64 0, i32 1
  store i64 0, ptr %1, align 8
  br label %bb4

bb3:                                              ; preds = %bb1
  %2 = getelementptr inbounds i8, ptr %self, i64 8
  %self3 = load ptr, ptr %2, align 8, !nonnull !6, !noundef !6
  store ptr %self3, ptr %_9, align 8
  %3 = getelementptr inbounds { ptr, %"core::alloc::layout::Layout" }, ptr %_9, i64 0, i32 1
  store i64 1, ptr %3, align 8
  %4 = getelementptr inbounds { ptr, %"core::alloc::layout::Layout" }, ptr %_9, i64 0, i32 1, i32 1
  store i64 %_3, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %_9, i64 24, i1 false)
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc { ptr, ptr } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h29de9e60b804b94fE"(ptr %self.0, ptr %self.1) unnamed_addr #5 {
start:
  %0 = insertvalue { ptr, ptr } poison, ptr %self.0, 0
  %1 = insertvalue { ptr, ptr } %0, ptr %self.1, 1
  ret { ptr, ptr } %1
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h7c478c2d7e6163acE"(ptr nocapture readnone align 1 %self, ptr %ptr, i64 %0, i64 %1) unnamed_addr #7 {
start:
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %bb3, label %bb1

bb1:                                              ; preds = %start
  tail call void @__rust_dealloc(ptr %ptr, i64 %1, i64 %0) #31
  br label %bb3

bb3:                                              ; preds = %start, %bb1
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN64_$LT$alloc..ffi..c_str..NulError$u20$as$u20$core..fmt..Debug$GT$3fmt17h4b6eb45657ae5800E"(ptr align 8 %self, ptr align 8 %f) unnamed_addr #1 {
start:
  %_8 = alloca ptr, align 8
  %_5 = getelementptr inbounds %"alloc::ffi::c_str::NulError", ptr %self, i64 0, i32 1
  store ptr %self, ptr %_8, align 8
  %_0 = call zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hb946ec1de769060bE(ptr align 8 %f, ptr nonnull align 1 @alloc_49c0eff15ce41ce22a2d8c8b146a94ef, i64 8, ptr nonnull align 1 %_5, ptr nonnull align 8 @vtable.8, ptr nonnull align 1 %_8, ptr nonnull align 8 @vtable.9)
  ret i1 %_0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc zeroext i1 @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4f2cee7706fd2bf2E"(ptr nocapture readonly align 8 %self, ptr align 8 %f) unnamed_addr #3 {
start:
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %self1 = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %1 = getelementptr inbounds %"alloc::vec::Vec<u8>", ptr %self, i64 0, i32 1
  %len = load i64, ptr %1, align 8, !noundef !6
  %_0 = tail call fastcc zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h8dd2312df886f187E"(ptr nonnull align 1 %self1, i64 %len, ptr align 8 %f)
  ret i1 %_0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN66_$LT$T$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17hb3276aa492b9c3d0E"(ptr nocapture writeonly sret(%"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>") align 8 %_0, ptr nocapture readonly align 8 %self) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_11 = alloca %"alloc::vec::Vec<u8>", align 8
  %_9 = alloca %"alloc::vec::Vec<u8>", align 8
  %_8 = alloca %"alloc::ffi::c_str::NulError", align 8
  %bytes = alloca %"alloc::vec::Vec<u8>", align 8
  call fastcc void @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h80faadc8214103a8E"(ptr nonnull sret(%"alloc::vec::Vec<u8>") align 8 %bytes, ptr align 8 %self, ptr nonnull align 8 @alloc_5c9d34f18b8b9cda7f74f6cd144f9475)
  %0 = getelementptr inbounds i8, ptr %bytes, i64 8
  %self1 = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %1 = getelementptr inbounds %"alloc::vec::Vec<u8>", ptr %bytes, i64 0, i32 1
  %len = load i64, ptr %1, align 8, !noundef !6
  %_23 = icmp ult i64 %len, 16
  br i1 %_23, label %bb10, label %bb12

bb12:                                             ; preds = %start
  %2 = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h8f0bf65eb3f4aa75E(i8 0, ptr nonnull align 1 %self1, i64 %len)
          to label %bb14 unwind label %bb7

bb10:                                             ; preds = %start
  %3 = invoke fastcc { i64, i64 } @_ZN4core5slice6memchr12memchr_naive17h3eb527b5bf27d00dE(i8 0, ptr nonnull align 1 %self1, i64 %len)
          to label %bb11 unwind label %bb7

bb8:                                              ; preds = %bb2
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb6

bb14:                                             ; preds = %bb12
  br label %bb9

bb9:                                              ; preds = %bb11, %bb14
  %.pn = phi { i64, i64 } [ %3, %bb11 ], [ %2, %bb14 ]
  %_6 = extractvalue { i64, i64 } %.pn, 0
  %4 = icmp eq i64 %_6, 0
  br i1 %4, label %bb2, label %bb3

bb11:                                             ; preds = %bb10
  br label %bb9

bb2:                                              ; preds = %bb9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_11, ptr noundef nonnull align 8 dereferenceable(24) %bytes, i64 24, i1 false)
  %5 = invoke { ptr, i64 } @_ZN5alloc3ffi5c_str7CString19_from_vec_unchecked17haed2596d76a1241bE(ptr nonnull align 8 %_11)
          to label %bb4 unwind label %bb8

bb3:                                              ; preds = %bb9
  %i = extractvalue { i64, i64 } %.pn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_9, ptr noundef nonnull align 8 dereferenceable(24) %bytes, i64 24, i1 false)
  %6 = getelementptr inbounds %"alloc::ffi::c_str::NulError", ptr %_8, i64 0, i32 1
  store i64 %i, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_8, ptr noundef nonnull align 8 dereferenceable(24) %_9, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %_0, ptr noundef nonnull align 8 dereferenceable(32) %_8, i64 32, i1 false)
  br label %bb5

bb4:                                              ; preds = %bb2
  %_10.0 = extractvalue { ptr, i64 } %5, 0
  %_10.1 = extractvalue { ptr, i64 } %5, 1
  %7 = getelementptr inbounds %"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>::Ok", ptr %_0, i64 0, i32 1
  store ptr %_10.0, ptr %7, align 8
  %8 = getelementptr inbounds %"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>::Ok", ptr %_0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  store i64 %_10.1, ptr %8, align 8
  store i64 -9223372036854775808, ptr %_0, align 8
  br label %bb5

bb5:                                              ; preds = %bb4, %bb3
  ret void

bb6:                                              ; preds = %bb8, %bb7
  %lpad.thr_comm.pn = phi { ptr, i32 } [ %lpad.thr_comm, %bb7 ], [ %lpad.thr_comm.split-lp, %bb8 ]
  resume { ptr, i32 } %lpad.thr_comm.pn

bb7:                                              ; preds = %bb10, %bb12
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h5abab8083f94f39aE"(ptr nonnull align 8 %bytes) #32
          to label %bb6 unwind label %terminate

terminate:                                        ; preds = %bb7
  %9 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc zeroext i1 @"_ZN66_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h55a3f328046c2aa2E"(ptr nocapture readonly align 8 %self, ptr align 8 %f) unnamed_addr #3 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_3 = getelementptr inbounds %"alloc::sync::ArcInner<i32>", ptr %self1, i64 0, i32 2
  %_0 = tail call fastcc zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17ha5cc9d4ed772767aE"(ptr nonnull align 4 %_3, ptr align 8 %f)
  ret i1 %_0
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h6f9a4f8ab6087cc8E"(ptr nocapture readonly align 8 %self, ptr align 8 %f) unnamed_addr #3 {
start:
  %_4.0 = load ptr, ptr %self, align 8, !nonnull !6, !align !11, !noundef !6
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %_4.1 = load ptr, ptr %0, align 8, !nonnull !6, !align !10, !noundef !6
  %_0 = tail call zeroext i1 @"_ZN82_$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$u20$as$u20$core..fmt..Debug$GT$3fmt17h18d947fb575c25c8E"(ptr nonnull align 1 %_4.0, ptr nonnull align 8 %_4.1, ptr align 8 %f)
  ret i1 %_0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @"_ZN68_$LT$alloc..ffi..c_str..CString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0b9bc1f84a3eb08aE"(ptr nocapture readonly align 8 %self) unnamed_addr #15 {
start:
  %_2.0 = load ptr, ptr %self, align 8, !nonnull !6, !align !11, !noundef !6
  store i8 0, ptr %_2.0, align 1
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc nonnull ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f6839b186f32485E"(ptr nocapture readonly align 8 %self) unnamed_addr #7 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %0 = atomicrmw add ptr %self1, i64 1 monotonic, align 8
  %_4 = icmp slt i64 %0, 0
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %ptr = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  ret ptr %ptr

bb1:                                              ; preds = %start
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc nonnull ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h342d283d0f450142E"(ptr nocapture readonly align 8 %self) unnamed_addr #7 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %0 = atomicrmw add ptr %self1, i64 1 monotonic, align 8
  %_4 = icmp slt i64 %0, 0
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %ptr = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  ret ptr %ptr

bb1:                                              ; preds = %start
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc nonnull ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hafd08192e2c1c1f0E"(ptr nocapture readonly align 8 %self) unnamed_addr #7 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %0 = atomicrmw add ptr %self1, i64 1 monotonic, align 8
  %_4 = icmp slt i64 %0, 0
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %ptr = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  ret ptr %ptr

bb1:                                              ; preds = %start
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc nonnull ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd39f3d09b838959eE"(ptr nocapture readonly align 8 %self) unnamed_addr #7 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %0 = atomicrmw add ptr %self1, i64 1 monotonic, align 8
  %_4 = icmp slt i64 %0, 0
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %ptr = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  ret ptr %ptr

bb1:                                              ; preds = %start
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN70_$LT$std..thread..Packet$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0545363ab4f56b6bE"(ptr align 8 %self) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_18 = alloca [0 x %"core::fmt::rt::Argument<'_>"], align 8
  %_14 = alloca %"core::fmt::Arguments<'_>", align 8
  %_12 = alloca ptr, align 8
  %_6 = alloca %"core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>", align 8
  %0 = getelementptr inbounds %"std::thread::Packet<'_, ()>", ptr %self, i64 0, i32 1
  %_5 = load i64, ptr %0, align 8, !range !5, !noundef !6
  %.not = icmp eq i64 %_5, 0
  br i1 %.not, label %bb3, label %bb2

bb2:                                              ; preds = %start
  %1 = getelementptr inbounds %"std::thread::Packet<'_, ()>", ptr %self, i64 0, i32 1, i32 0, i32 1
  %2 = load ptr, ptr %1, align 8, !noundef !6
  %3 = icmp ne ptr %2, null
  br label %bb3

bb3:                                              ; preds = %start, %bb2
  %unhandled_panic.0 = phi i1 [ %3, %bb2 ], [ false, %start ]
  %4 = tail call fastcc { ptr, ptr } @_ZN3std9panicking3try17h2e729e5efe975db1E(ptr nonnull align 8 %0)
  %5 = extractvalue { ptr, ptr } %4, 0
  %6 = extractvalue { ptr, ptr } %4, 1
  store ptr %5, ptr %_6, align 8
  %7 = getelementptr inbounds i8, ptr %_6, i64 8
  store ptr %6, ptr %7, align 8
  %.not1 = icmp eq ptr %5, null
  br i1 %.not1, label %bb8, label %bb4

bb4:                                              ; preds = %bb3
  invoke fastcc void @_ZN4core3fmt9Arguments6new_v117h6d95806376f8cb89E(ptr nonnull sret(%"core::fmt::Arguments<'_>") align 8 %_14, ptr nonnull align 8 @alloc_2ca7775364e940040d1ca01e1c1e4d62, i64 1, ptr nonnull align 8 %_18, i64 0)
          to label %bb5 unwind label %bb13

bb8:                                              ; preds = %bb3
  call fastcc void @"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h65e6886abc00f331E"(ptr nonnull align 8 %_6)
  %8 = load ptr, ptr %self, align 8, !noundef !6
  %.not2 = icmp eq ptr %8, null
  br i1 %.not2, label %bb12, label %bb10

bb13:                                             ; preds = %bb4, %bb5, %bb6, %bb7
  %9 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h65e6886abc00f331E"(ptr nonnull align 8 %_6) #32
          to label %bb14 unwind label %terminate

bb5:                                              ; preds = %bb4
  %10 = invoke fastcc ptr @_ZN3std2io5Write9write_fmt17h0b706e90561dee7aE(ptr nonnull align 1 %_18, ptr nonnull align 8 %_14)
          to label %bb6 unwind label %bb13

bb6:                                              ; preds = %bb5
  store ptr %10, ptr %_12, align 8
  invoke fastcc void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h9aa1d68d5586ba81E"(ptr nonnull align 8 %_12)
          to label %bb7 unwind label %bb13

bb7:                                              ; preds = %bb6
  invoke void @_ZN3std3sys3pal4unix14abort_internal17h7fd6e40882d9056eE() #30
          to label %unreachable unwind label %bb13

unreachable:                                      ; preds = %bb7
  unreachable

terminate:                                        ; preds = %bb13
  %11 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #28
  unreachable

bb14:                                             ; preds = %bb13
  resume { ptr, i32 } %9

bb10:                                             ; preds = %bb8
  %_23 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::scoped::ScopeData>", ptr %8, i64 0, i32 2
  call void @_ZN3std6thread6scoped9ScopeData29decrement_num_running_threads17h407e400d408a22bfE(ptr nonnull align 8 %_23, i1 zeroext %unhandled_panic.0)
  br label %bb12

bb12:                                             ; preds = %bb10, %bb8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN70_$LT$std..thread..Packet$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h88057998d931430cE"(ptr nocapture readonly align 8 %_1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_2 = alloca %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>", align 8
  store i64 0, ptr %_2, align 8
  %self = load ptr, ptr %_1, align 8, !nonnull !6, !align !10, !noundef !6
  invoke fastcc void @"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hc6d8376cb0915d32E"(ptr nonnull align 8 %self)
          to label %bb1 unwind label %bb2

bb2:                                              ; preds = %start
  %0 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %self, ptr noundef nonnull align 8 dereferenceable(24) %_2, i64 24, i1 false)
  resume { ptr, i32 } %0

bb1:                                              ; preds = %start
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %self, ptr noundef nonnull align 8 dereferenceable(24) %_2, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h264139602938d12aE"(ptr align 8 %self) unnamed_addr #1 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %0 = atomicrmw sub ptr %self1, i64 1 release, align 8
  %1 = icmp eq i64 %0, 1
  br i1 %1, label %bb2, label %bb4

bb2:                                              ; preds = %start
  tail call fastcc void @_ZN4core4sync6atomic5fence17h08d320ea5a0611d9E(i8 2)
  tail call fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17ha154c7f20024fd4bE"(ptr nonnull align 8 %self)
  br label %bb4

bb4:                                              ; preds = %start, %bb2
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h30c76118a26b338aE"(ptr align 8 %self) unnamed_addr #1 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %0 = atomicrmw sub ptr %self1, i64 1 release, align 8
  %1 = icmp eq i64 %0, 1
  br i1 %1, label %bb2, label %bb4

bb2:                                              ; preds = %start
  tail call fastcc void @_ZN4core4sync6atomic5fence17h08d320ea5a0611d9E(i8 2)
  tail call fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hbf4ce392199f93abE"(ptr nonnull align 8 %self)
  br label %bb4

bb4:                                              ; preds = %start, %bb2
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb59dce9416a274b7E"(ptr align 8 %self) unnamed_addr #1 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %0 = atomicrmw sub ptr %self1, i64 1 release, align 8
  %1 = icmp eq i64 %0, 1
  br i1 %1, label %bb2, label %bb4

bb2:                                              ; preds = %start
  tail call fastcc void @_ZN4core4sync6atomic5fence17h08d320ea5a0611d9E(i8 2)
  tail call fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf1ce1a5eeee47730E"(ptr nonnull align 8 %self)
  br label %bb4

bb4:                                              ; preds = %start, %bb2
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc4ebf5a3e7bee33dE"(ptr align 8 %self) unnamed_addr #7 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %0 = atomicrmw sub ptr %self1, i64 1 release, align 8
  %1 = icmp eq i64 %0, 1
  br i1 %1, label %bb2, label %bb4

bb2:                                              ; preds = %start
  tail call fastcc void @_ZN4core4sync6atomic5fence17h08d320ea5a0611d9E(i8 2)
  tail call fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h26a4abe707d1e497E"(ptr nonnull align 8 %self)
  br label %bb4

bb4:                                              ; preds = %start, %bb2
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hea83621e3685ce0dE"(ptr align 8 %self) unnamed_addr #1 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %0 = atomicrmw sub ptr %self1, i64 1 release, align 8
  %1 = icmp eq i64 %0, 1
  br i1 %1, label %bb2, label %bb4

bb2:                                              ; preds = %start
  tail call fastcc void @_ZN4core4sync6atomic5fence17h08d320ea5a0611d9E(i8 2)
  tail call fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9bac8cf5dd80d21eE"(ptr nonnull align 8 %self)
  br label %bb4

bb4:                                              ; preds = %start, %bb2
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h240b2e9c5227bac4E"(ptr nocapture readonly align 8 %self) unnamed_addr #7 {
start:
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %ptr.1 = load i64, ptr %0, align 8, !noundef !6
  %1 = icmp eq i64 %ptr.1, 0
  br i1 %1, label %bb4, label %bb1

bb1:                                              ; preds = %start
  %ptr.0 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_8 = getelementptr inbounds i8, ptr %self, i64 16
  tail call fastcc void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h7c478c2d7e6163acE"(ptr nonnull align 1 %_8, ptr nonnull %ptr.0, i64 1, i64 %ptr.1)
  br label %bb4

bb4:                                              ; preds = %start, %bb1
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5fc5d18f1043749bE"(ptr nocapture readonly align 8 %self) unnamed_addr #7 {
bb4:
  %ptr = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_8 = getelementptr i8, ptr %self, i64 8
  tail call fastcc void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h7c478c2d7e6163acE"(ptr align 1 %_8, ptr nonnull %ptr, i64 8, i64 24)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbde74da799a67ac8E"(ptr nocapture readonly align 8 %self) unnamed_addr #7 {
start:
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %ptr.1 = load ptr, ptr %0, align 8, !nonnull !6, !align !10, !noundef !6
  %1 = getelementptr inbounds i64, ptr %ptr.1, i64 1
  %2 = load i64, ptr %1, align 8, !range !15, !invariant.load !6
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %bb4, label %bb1

bb1:                                              ; preds = %start
  %4 = getelementptr inbounds i64, ptr %ptr.1, i64 2
  %5 = load i64, ptr %4, align 8, !range !16, !invariant.load !6
  %ptr.0 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_8 = getelementptr inbounds i8, ptr %self, i64 16
  tail call fastcc void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h7c478c2d7e6163acE"(ptr nonnull align 1 %_8, ptr nonnull %ptr.0, i64 %5, i64 %2)
  br label %bb4

bb4:                                              ; preds = %start, %bb1
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he35e4951fc4d56c2E"(ptr nocapture readonly align 8 %self) unnamed_addr #7 {
start:
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %ptr.1 = load ptr, ptr %0, align 8, !nonnull !6, !align !10, !noundef !6
  %1 = getelementptr inbounds i64, ptr %ptr.1, i64 1
  %2 = load i64, ptr %1, align 8, !range !15, !invariant.load !6
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %bb4, label %bb1

bb1:                                              ; preds = %start
  %4 = getelementptr inbounds i64, ptr %ptr.1, i64 2
  %5 = load i64, ptr %4, align 8, !range !16, !invariant.load !6
  %ptr.0 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_8 = getelementptr inbounds i8, ptr %self, i64 16
  tail call fastcc void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h7c478c2d7e6163acE"(ptr nonnull align 1 %_8, ptr nonnull %ptr.0, i64 %5, i64 %2)
  br label %bb4

bb4:                                              ; preds = %start, %bb1
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9301fd578ebcdf1eE"(ptr nocapture readonly align 8 %self) unnamed_addr #0 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_15 = icmp eq ptr %self1, inttoptr (i64 -1 to ptr)
  br i1 %_15, label %bb2, label %bb1

bb1:                                              ; preds = %start
  %_19 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Inner>", ptr %self1, i64 0, i32 1
  %0 = atomicrmw sub ptr %_19, i64 1 release, align 8
  %1 = icmp eq i64 %0, 1
  br i1 %1, label %bb3, label %bb8

bb2:                                              ; preds = %start
  br label %bb8

bb3:                                              ; preds = %bb1
  tail call fastcc void @_ZN4core4sync6atomic5fence17h08d320ea5a0611d9E(i8 2)
  %_6 = getelementptr inbounds i8, ptr %self, i64 8
  %self3 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  tail call fastcc void @"_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h8d6ce8045515862aE"(ptr nonnull align 8 %_6, ptr nonnull %self3, i64 8, i64 48)
  br label %bb8

bb8:                                              ; preds = %bb3, %bb1, %bb2
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha07c092f71fc2ebeE"(ptr nocapture readonly align 8 %self) unnamed_addr #0 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_15 = icmp eq ptr %self1, inttoptr (i64 -1 to ptr)
  br i1 %_15, label %bb2, label %bb1

bb1:                                              ; preds = %start
  %_19 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %self1, i64 0, i32 1
  %0 = atomicrmw sub ptr %_19, i64 1 release, align 8
  %1 = icmp eq i64 %0, 1
  br i1 %1, label %bb3, label %bb8

bb2:                                              ; preds = %start
  br label %bb8

bb3:                                              ; preds = %bb1
  tail call fastcc void @_ZN4core4sync6atomic5fence17h08d320ea5a0611d9E(i8 2)
  %_6 = getelementptr inbounds i8, ptr %self, i64 8
  %self3 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  tail call fastcc void @"_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h8d6ce8045515862aE"(ptr nonnull align 8 %_6, ptr nonnull %self3, i64 8, i64 48)
  br label %bb8

bb8:                                              ; preds = %bb3, %bb1, %bb2
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha1201885555766bcE"(ptr nocapture readonly align 8 %self) unnamed_addr #0 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_15 = icmp eq ptr %self1, inttoptr (i64 -1 to ptr)
  br i1 %_15, label %bb2, label %bb1

bb1:                                              ; preds = %start
  %_19 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::scoped::ScopeData>", ptr %self1, i64 0, i32 1
  %0 = atomicrmw sub ptr %_19, i64 1 release, align 8
  %1 = icmp eq i64 %0, 1
  br i1 %1, label %bb3, label %bb8

bb2:                                              ; preds = %start
  br label %bb8

bb3:                                              ; preds = %bb1
  tail call fastcc void @_ZN4core4sync6atomic5fence17h08d320ea5a0611d9E(i8 2)
  %_6 = getelementptr inbounds i8, ptr %self, i64 8
  %self3 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  tail call fastcc void @"_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h8d6ce8045515862aE"(ptr nonnull align 8 %_6, ptr nonnull %self3, i64 8, i64 40)
  br label %bb8

bb8:                                              ; preds = %bb3, %bb1, %bb2
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha481c71cf98ea80dE"(ptr nocapture readonly align 8 %self) unnamed_addr #0 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_15 = icmp eq ptr %self1, inttoptr (i64 -1 to ptr)
  br i1 %_15, label %bb2, label %bb1

bb1:                                              ; preds = %start
  %_19 = getelementptr inbounds %"alloc::sync::ArcInner<std::sync::mutex::Mutex<alloc::vec::Vec<u8>>>", ptr %self1, i64 0, i32 1
  %0 = atomicrmw sub ptr %_19, i64 1 release, align 8
  %1 = icmp eq i64 %0, 1
  br i1 %1, label %bb3, label %bb8

bb2:                                              ; preds = %start
  br label %bb8

bb3:                                              ; preds = %bb1
  tail call fastcc void @_ZN4core4sync6atomic5fence17h08d320ea5a0611d9E(i8 2)
  %_6 = getelementptr inbounds i8, ptr %self, i64 8
  %self3 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  tail call fastcc void @"_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h8d6ce8045515862aE"(ptr nonnull align 8 %_6, ptr nonnull %self3, i64 8, i64 48)
  br label %bb8

bb8:                                              ; preds = %bb3, %bb1, %bb2
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfa4b1f6f07816d15E"(ptr nocapture readonly align 8 %self) unnamed_addr #0 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_15 = icmp eq ptr %self1, inttoptr (i64 -1 to ptr)
  br i1 %_15, label %bb2, label %bb1

bb1:                                              ; preds = %start
  %_19 = getelementptr inbounds %"alloc::sync::ArcInner<i32>", ptr %self1, i64 0, i32 1
  %0 = atomicrmw sub ptr %_19, i64 1 release, align 8
  %1 = icmp eq i64 %0, 1
  br i1 %1, label %bb3, label %bb8

bb2:                                              ; preds = %start
  br label %bb8

bb3:                                              ; preds = %bb1
  tail call fastcc void @_ZN4core4sync6atomic5fence17h08d320ea5a0611d9E(i8 2)
  %_6 = getelementptr inbounds i8, ptr %self, i64 8
  %self3 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  tail call fastcc void @"_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h8d6ce8045515862aE"(ptr nonnull align 8 %_6, ptr nonnull %self3, i64 8, i64 24)
  br label %bb8

bb8:                                              ; preds = %bb3, %bb1, %bb2
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc zeroext i1 @"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h0f721f9c2f458448E"(ptr align 8 %self, ptr align 8 %args) unnamed_addr #1 {
start:
  %_0 = tail call zeroext i1 @_ZN4core3fmt5write17ha63b5e044fedf034E(ptr align 1 %self, ptr nonnull align 8 @vtable.0, ptr align 8 %args)
  ret i1 %_0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcf56acc0e9adfdf3E"(ptr nocapture readonly align 8 %self) unnamed_addr #0 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  call fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h13a5242172c983a4E"(ptr nonnull sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") align 8 %_2, ptr align 8 %self)
  %0 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", ptr %_2, i64 0, i32 1
  %1 = load i64, ptr %0, align 8, !range !12, !noundef !6
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb4, label %bb2

bb2:                                              ; preds = %start
  %ptr = load ptr, ptr %_2, align 8, !nonnull !6, !noundef !6
  %2 = getelementptr inbounds { ptr, %"core::alloc::layout::Layout" }, ptr %_2, i64 0, i32 1, i32 1
  %layout.1 = load i64, ptr %2, align 8, !noundef !6
  %_7 = getelementptr inbounds i8, ptr %self, i64 16
  call fastcc void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h7c478c2d7e6163acE"(ptr nonnull align 1 %_7, ptr nonnull %ptr, i64 %1, i64 %layout.1)
  br label %bb4

bb4:                                              ; preds = %bb2, %start
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8c79df5a06fe4d53E"(ptr nocapture readonly align 8 %self) unnamed_addr #1 {
start:
  %_2 = alloca %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>", align 8
  %_3 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  call fastcc void @_ZN3std2io5error14repr_bitpacked11decode_repr17hec7db7554076d0ffE(ptr nonnull sret(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>") align 8 %_2, ptr nonnull %_3)
  call fastcc void @"_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17h6c0fd03ae9cb2524E"(ptr nonnull align 8 %_2)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind nonlazybind willreturn memory(inaccessiblemem: readwrite) uwtable
define internal fastcc align 8 ptr @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hadea45dc41d1697cE"(ptr readnone returned %p) unnamed_addr #16 {
start:
  %0 = icmp ne ptr %p, null
  tail call void @llvm.assume(i1 %0)
  ret ptr %p
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h616885267e0406efE"(ptr nocapture align 8 %self, ptr align 1 %s.0, i64 %s.1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_8 = load ptr, ptr %self, align 8, !nonnull !6, !align !11, !noundef !6
  %0 = tail call fastcc ptr @_ZN3std2io5Write9write_all17hc8981c373f82d5b3E(ptr nonnull align 1 %_8, ptr align 1 %s.0, i64 %s.1)
  %1 = icmp ne ptr %0, null
  br i1 %1, label %bb2, label %bb6

bb2:                                              ; preds = %start
  %2 = getelementptr inbounds i8, ptr %self, i64 8
  invoke fastcc void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h9aa1d68d5586ba81E"(ptr nonnull align 8 %2)
          to label %bb4 unwind label %bb5

bb6:                                              ; preds = %start, %bb4
  ret i1 %1

bb5:                                              ; preds = %bb2
  %3 = landingpad { ptr, i32 }
          cleanup
  store ptr %0, ptr %2, align 8
  resume { ptr, i32 } %3

bb4:                                              ; preds = %bb2
  store ptr %0, ptr %2, align 8
  br label %bb6
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc align 1 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56ca6c3c8e673456E"(ptr nocapture align 8 %self) unnamed_addr #17 {
bb3:
  %self2 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %self1 = getelementptr inbounds i8, ptr %self, i64 8
  %0 = load ptr, ptr %self1, align 8, !nonnull !6, !noundef !6
  %1 = icmp eq ptr %self2, %0
  br i1 %1, label %bb6, label %bb9

bb9:                                              ; preds = %bb3
  %_30 = getelementptr inbounds i8, ptr %self2, i64 1
  store ptr %_30, ptr %self, align 8
  br label %bb6

bb6:                                              ; preds = %bb3, %bb9
  %_0.0 = phi ptr [ %self2, %bb9 ], [ null, %bb3 ]
  ret ptr %_0.0
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN6std_rs4main17h724a8668b1a5c779E() unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %e.i3 = alloca %"alloc::boxed::Box<dyn core::any::Any + core::marker::Send>", align 8
  %e.i = alloca %"alloc::boxed::Box<dyn core::any::Any + core::marker::Send>", align 8
  %t2 = alloca %"std::thread::JoinHandle<()>", align 8
  %t = alloca %"std::thread::JoinHandle<()>", align 8
  %z = alloca ptr, align 8
  %y = alloca ptr, align 8
  %x = alloca ptr, align 8
  %0 = tail call fastcc ptr @"_ZN5alloc4sync12Arc$LT$T$GT$3new17hf647ebde2c4d448fE"(i32 5)
  store ptr %0, ptr %x, align 8
  %1 = call fastcc ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd39f3d09b838959eE"(ptr nonnull align 8 %x)
  br label %bb2

bb11:                                             ; preds = %bb13, %bb14, %bb14.thread
  %lpad.thr_comm.split-lp.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb14 ], [ %11, %bb14.thread ], [ %lpad.thr_comm.pn, %bb13 ]
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$alloc..sync..Arc$LT$i32$GT$$GT$17h1f25d607f7e62a6aE"(ptr nonnull align 8 %x) #32
  br label %bb12

bb2:                                              ; preds = %start
  store ptr %1, ptr %y, align 8
  %2 = call fastcc ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd39f3d09b838959eE"(ptr nonnull align 8 %x)
  br label %bb3

bb3:                                              ; preds = %bb2
  store ptr %2, ptr %z, align 8
  invoke fastcc void @_ZN3std6thread5spawn17h59ed9669f5235feeE(ptr nonnull sret(%"std::thread::JoinHandle<()>") align 8 %t, ptr nonnull %1)
          to label %bb4 unwind label %bb14.thread7

bb14.thread7:                                     ; preds = %bb4, %bb3
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb13

bb14:                                             ; preds = %bb6, %bb7
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb11

bb4:                                              ; preds = %bb3
  %3 = invoke fastcc { ptr, ptr } @"_ZN3std6thread19JoinHandle$LT$T$GT$4join17hb506c82f2aeba70cE"(ptr nonnull align 8 %t)
          to label %bb5 unwind label %bb14.thread7

bb5:                                              ; preds = %bb4
  %_9.0 = extractvalue { ptr, ptr } %3, 0
  %4 = icmp eq ptr %_9.0, null
  br i1 %4, label %bb6, label %bb1.i6

bb1.i6:                                           ; preds = %bb5
  %_9.1 = extractvalue { ptr, ptr } %3, 1
  store ptr %_9.0, ptr %e.i3, align 8
  %5 = getelementptr inbounds i8, ptr %e.i3, i64 8
  store ptr %_9.1, ptr %5, align 8
  invoke void @_ZN4core6result13unwrap_failed17h566b4fa76abf40a2E(ptr nonnull align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 43, ptr nonnull align 1 %e.i3, ptr nonnull align 8 @vtable.7, ptr nonnull align 8 @alloc_dbc2010e2d83a7828e5295f2cd5ed949) #30
          to label %unreachable.i10 unwind label %cleanup.i7

cleanup.i7:                                       ; preds = %bb1.i6
  %6 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17hbd95e1deb97397bdE"(ptr nonnull align 8 %e.i3) #32
          to label %bb14.thread4 unwind label %terminate.i8

unreachable.i10:                                  ; preds = %bb1.i6
  unreachable

terminate.i8:                                     ; preds = %cleanup.i7
  %7 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #28
  unreachable

bb14.thread4:                                     ; preds = %cleanup.i7
  br label %bb13

bb6:                                              ; preds = %bb5
  invoke fastcc void @_ZN3std6thread5spawn17hbd81c1df7aff50d1E(ptr nonnull sret(%"std::thread::JoinHandle<()>") align 8 %t2, ptr nonnull %2)
          to label %bb7 unwind label %bb14

bb7:                                              ; preds = %bb6
  %8 = invoke fastcc { ptr, ptr } @"_ZN3std6thread19JoinHandle$LT$T$GT$4join17hb506c82f2aeba70cE"(ptr nonnull align 8 %t2)
          to label %bb8 unwind label %bb14

bb8:                                              ; preds = %bb7
  %_13.0 = extractvalue { ptr, ptr } %8, 0
  %9 = icmp eq ptr %_13.0, null
  br i1 %9, label %bb9, label %bb1.i

bb1.i:                                            ; preds = %bb8
  %_13.1 = extractvalue { ptr, ptr } %8, 1
  store ptr %_13.0, ptr %e.i, align 8
  %10 = getelementptr inbounds i8, ptr %e.i, i64 8
  store ptr %_13.1, ptr %10, align 8
  invoke void @_ZN4core6result13unwrap_failed17h566b4fa76abf40a2E(ptr nonnull align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 43, ptr nonnull align 1 %e.i, ptr nonnull align 8 @vtable.7, ptr nonnull align 8 @alloc_ace8c3ae07bb6efc4b6899f999420c54) #30
          to label %unreachable.i unwind label %cleanup.i

cleanup.i:                                        ; preds = %bb1.i
  %11 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17hbd95e1deb97397bdE"(ptr nonnull align 8 %e.i) #32
          to label %bb14.thread unwind label %terminate.i

unreachable.i:                                    ; preds = %bb1.i
  unreachable

terminate.i:                                      ; preds = %cleanup.i
  %12 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() #28
  unreachable

bb14.thread:                                      ; preds = %cleanup.i
  br label %bb11

bb9:                                              ; preds = %bb8
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$alloc..sync..Arc$LT$i32$GT$$GT$17h1f25d607f7e62a6aE"(ptr nonnull align 8 %x)
  ret void

bb13:                                             ; preds = %bb14.thread7, %bb14.thread4
  %lpad.thr_comm.pn = phi { ptr, i32 } [ %lpad.thr_comm, %bb14.thread7 ], [ %6, %bb14.thread4 ]
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$alloc..sync..Arc$LT$i32$GT$$GT$17h1f25d607f7e62a6aE"(ptr nonnull align 8 %z) #32
  br label %bb11

bb12:                                             ; preds = %bb11
  resume { ptr, i32 } %lpad.thr_comm.split-lp.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN6std_rs4main28_$u7b$$u7b$closure$u7d$$u7d$17h06082d96af712f96E"(ptr %_1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb3:
  %_16 = alloca %"core::fmt::rt::Placeholder", align 8
  %_15 = alloca [1 x %"core::fmt::rt::Placeholder"], align 8
  %_12 = alloca ptr, align 8
  %_9 = alloca [1 x %"core::fmt::rt::Argument<'_>"], align 8
  %_5 = alloca %"core::fmt::Arguments<'_>", align 8
  %tmp = alloca ptr, align 8
  %_2 = alloca ptr, align 8
  store ptr %_1, ptr %tmp, align 8
  store ptr %tmp, ptr %_12, align 8
  store ptr %_12, ptr %_9, align 8
  %0 = getelementptr inbounds i8, ptr %_9, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h22c52efaacbaa520E", ptr %0, align 8
  %1 = getelementptr inbounds %"core::fmt::rt::Placeholder", ptr %_16, i64 0, i32 2
  store i64 0, ptr %1, align 8
  %2 = getelementptr inbounds %"core::fmt::rt::Placeholder", ptr %_16, i64 0, i32 3
  store i32 32, ptr %2, align 8
  %3 = getelementptr inbounds %"core::fmt::rt::Placeholder", ptr %_16, i64 0, i32 5
  store i8 3, ptr %3, align 8
  %4 = getelementptr inbounds %"core::fmt::rt::Placeholder", ptr %_16, i64 0, i32 4
  store i32 4, ptr %4, align 4
  store i64 2, ptr %_16, align 8
  %5 = getelementptr inbounds %"core::fmt::rt::Placeholder", ptr %_16, i64 0, i32 1
  store i64 2, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %_15, ptr noundef nonnull align 8 dereferenceable(56) %_16, i64 56, i1 false)
  call fastcc void @_ZN4core3fmt9Arguments16new_v1_formatted17h7aa3691dee6b70c6E(ptr nonnull sret(%"core::fmt::Arguments<'_>") align 8 %_5, ptr nonnull align 8 @alloc_bfbb86cc6d189835cbb292836a61ad04, i64 2, ptr nonnull align 8 %_9, i64 1, ptr nonnull align 8 %_15, i64 1)
  br label %bb4

bb7:                                              ; preds = %bb4
  %6 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$alloc..sync..Arc$LT$i32$GT$$GT$17h1f25d607f7e62a6aE"(ptr nonnull align 8 %tmp) #32
  br label %bb8

bb4:                                              ; preds = %bb3
  invoke void @_ZN3std2io5stdio7_eprint17h3355abb6aa65e8e1E(ptr nonnull align 8 %_5)
          to label %bb5 unwind label %bb7

bb5:                                              ; preds = %bb4
  %7 = load ptr, ptr %tmp, align 8, !nonnull !6, !noundef !6
  store ptr %7, ptr %_2, align 8
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$alloc..sync..Arc$LT$i32$GT$$GT$17h1f25d607f7e62a6aE"(ptr nonnull align 8 %_2)
  ret void

bb8:                                              ; preds = %bb7
  resume { ptr, i32 } %6
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN6std_rs4main28_$u7b$$u7b$closure$u7d$$u7d$17he13a5ec719c5485fE"(ptr %_1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb3:
  %_16 = alloca %"core::fmt::rt::Placeholder", align 8
  %_15 = alloca [1 x %"core::fmt::rt::Placeholder"], align 8
  %_12 = alloca ptr, align 8
  %_9 = alloca [1 x %"core::fmt::rt::Argument<'_>"], align 8
  %_5 = alloca %"core::fmt::Arguments<'_>", align 8
  %tmp = alloca ptr, align 8
  %_2 = alloca ptr, align 8
  store ptr %_1, ptr %tmp, align 8
  store ptr %tmp, ptr %_12, align 8
  store ptr %_12, ptr %_9, align 8
  %0 = getelementptr inbounds i8, ptr %_9, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h22c52efaacbaa520E", ptr %0, align 8
  %1 = getelementptr inbounds %"core::fmt::rt::Placeholder", ptr %_16, i64 0, i32 2
  store i64 0, ptr %1, align 8
  %2 = getelementptr inbounds %"core::fmt::rt::Placeholder", ptr %_16, i64 0, i32 3
  store i32 32, ptr %2, align 8
  %3 = getelementptr inbounds %"core::fmt::rt::Placeholder", ptr %_16, i64 0, i32 5
  store i8 3, ptr %3, align 8
  %4 = getelementptr inbounds %"core::fmt::rt::Placeholder", ptr %_16, i64 0, i32 4
  store i32 4, ptr %4, align 4
  store i64 2, ptr %_16, align 8
  %5 = getelementptr inbounds %"core::fmt::rt::Placeholder", ptr %_16, i64 0, i32 1
  store i64 2, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %_15, ptr noundef nonnull align 8 dereferenceable(56) %_16, i64 56, i1 false)
  call fastcc void @_ZN4core3fmt9Arguments16new_v1_formatted17h7aa3691dee6b70c6E(ptr nonnull sret(%"core::fmt::Arguments<'_>") align 8 %_5, ptr nonnull align 8 @alloc_3540addb1ff9d570f8b9e92348c7768f, i64 2, ptr nonnull align 8 %_9, i64 1, ptr nonnull align 8 %_15, i64 1)
  br label %bb4

bb7:                                              ; preds = %bb4
  %6 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$alloc..sync..Arc$LT$i32$GT$$GT$17h1f25d607f7e62a6aE"(ptr nonnull align 8 %tmp) #32
  br label %bb8

bb4:                                              ; preds = %bb3
  invoke void @_ZN3std2io5stdio7_eprint17h3355abb6aa65e8e1E(ptr nonnull align 8 %_5)
          to label %bb5 unwind label %bb7

bb5:                                              ; preds = %bb4
  %7 = load ptr, ptr %tmp, align 8, !nonnull !6, !noundef !6
  store ptr %7, ptr %_2, align 8
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$alloc..sync..Arc$LT$i32$GT$$GT$17h1f25d607f7e62a6aE"(ptr nonnull align 8 %_2)
  ret void

bb8:                                              ; preds = %bb7
  resume { ptr, i32 } %6
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index24slice_end_index_len_fail17h23a8c1ae2d2af720E(i64, i64, ptr align 8) unnamed_addr #18

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index22slice_index_order_fail17h1fd59e78f9534eb8E(i64, i64, ptr align 8) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN69_$LT$std..sys..pal..unix..stdio..Stderr$u20$as$u20$std..io..Write$GT$5write17h2f522eae24bf9405E"(ptr sret(%"core::result::Result<usize, std::io::error::Error>") align 8, ptr align 1, ptr align 1, i64) unnamed_addr #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index26slice_start_index_len_fail17hb6e6adbe9bcaa20aE(i64, i64, ptr align 8) unnamed_addr #18

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt5write17ha63b5e044fedf034E(ptr align 1, ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #21

; Function Attrs: nonlazybind uwtable
declare i64 @_ZN3std2rt19lang_start_internal17hd1132dfff4140512E(ptr align 1, ptr align 8, i64, ptr, i8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std3sys3pal4unix6thread6Thread4join17h895d97bd495144ffE(i64) unnamed_addr #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13unwrap_failed17h8a484d2e9090c178E(ptr align 8) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare ptr @_ZN3std6thread6Thread3new17h9286f061390b10b6E(ptr align 1, i64) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare ptr @_ZN3std2io5stdio18set_output_capture17h47fa7577e7da3004E(ptr) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std6thread6scoped9ScopeData29increment_num_running_threads17hb8778178a2b2dcd2E(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std3sys3pal4unix6thread6Thread3new17h25822420d6359794E(ptr sret(%"core::result::Result<std::sys::pal::unix::thread::Thread, std::io::error::Error>") align 8, i64, ptr align 1, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_ZN3std6thread6Thread5cname17he8eff7cc14160c1eE(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std3sys3pal4unix6thread6Thread8set_name17h76dc80adfde750b1E(ptr align 1, i64) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std3sys3pal4unix6thread5guard7current17ha2bb65882033f000E(ptr sret(%"core::option::Option<core::ops::range::Range<usize>>") align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std10sys_common11thread_info3set17h2c664b76c70cf208E(ptr align 8, ptr) unnamed_addr #3

; Function Attrs: nonlazybind
define internal fastcc i32 @__rust_try(ptr nocapture readonly %0, ptr %1, ptr nocapture readonly %2) unnamed_addr #22 personality ptr @rust_eh_personality {
entry-block:
  invoke void @_ZN3std9panicking3try7do_call17h884d2486ad7a52f8E(ptr %1)
          to label %common.ret unwind label %catch, !callees !17

common.ret:                                       ; preds = %entry-block, %catch
  %common.ret.op = phi i32 [ 1, %catch ], [ 0, %entry-block ]
  ret i32 %common.ret.op

catch:                                            ; preds = %entry-block
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  tail call void %2(ptr %1, ptr %4), !callees !18
  br label %common.ret
}

; Function Attrs: cold nonlazybind uwtable
declare { ptr, ptr } @_ZN3std9panicking3try7cleanup17h6d4e570bbe25440aE(ptr) unnamed_addr #23

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17hfa9f734a74de1f5aE() unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3fmt9Formatter10debug_list17h149015fd7be1ba26E(ptr sret(%"core::fmt::builders::DebugList<'_, '_>") align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h607b22500ce6076aE(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h99ee99222d3e115aE"(ptr align 1, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17h685b2bbffb06450aE"(ptr align 1, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h5491a99e5df195d5E"(ptr align 1, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h20d84ce7745c9c25E"(ptr align 4, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17hba5fa73134c1d9d5E"(ptr align 4, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17hfca61b89a4190dddE"(ptr align 4, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h16e2d8a35fcc5a92E"(ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17hf2e8a08e617b8e39E"(ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h644fa137a4214e55E"(ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_ZN4core3fmt8builders9DebugList5entry17h5d20dd743daa8c38E(ptr align 8, ptr align 1, ptr align 8) unnamed_addr #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17ha3d303d496008cd4E(ptr align 8, ptr align 8) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare i64 @_ZN3std10sys_common6thread9min_stack17h4877004752fad623E() unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #24

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17hcaba71f5f538ebe0E(i64, i64, ptr align 8) unnamed_addr #18

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17h566b4fa76abf40a2E(ptr align 1, i64, ptr align 1, ptr align 8, ptr align 8) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hb0183faaec54836bE"(ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h085c72f91e671903E(i64, i64) unnamed_addr #25

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias ptr @__rust_alloc(i64, i64 allocalign) unnamed_addr #26

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @__rust_dealloc(ptr allocptr, i64, i64) unnamed_addr #27

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hb946ec1de769060bE(ptr align 8, ptr align 1, i64, ptr align 1, ptr align 8, ptr align 1, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h8f0bf65eb3f4aa75E(i8, ptr align 1, i64) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_ZN5alloc3ffi5c_str7CString19_from_vec_unchecked17haed2596d76a1241bE(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN82_$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$u20$as$u20$core..fmt..Debug$GT$3fmt17h18d947fb575c25c8E"(ptr align 1, ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #28

; Function Attrs: noreturn nonlazybind uwtable
declare void @_ZN3std3sys3pal4unix14abort_internal17h7fd6e40882d9056eE() unnamed_addr #29

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std6thread6scoped9ScopeData29decrement_num_running_threads17h407e400d408a22bfE(ptr align 8, i1 zeroext) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio7_eprint17h3355abb6aa65e8e1E(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind
define i32 @main(i32 %0, ptr %1) unnamed_addr #22 {
top:
  %2 = sext i32 %0 to i64
  %3 = tail call i64 @_ZN3std2rt10lang_start17hf0e5005b6eeaa845E(ptr nonnull @_ZN6std_rs4main17h724a8668b1a5c779E, i64 %2, ptr %1, i8 0)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree nosync nonlazybind willreturn memory(argmem: write, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree nosync nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint mustprogress nofree norecurse nounwind nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { inlinehint mustprogress nofree nosync nounwind nonlazybind willreturn memory(inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #22 = { nonlazybind "target-cpu"="x86-64" }
attributes #23 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #25 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { cold noreturn nounwind }
attributes #29 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { noreturn }
attributes #31 = { nounwind }
attributes #32 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{!"rustc version 1.77.0-nightly (11f32b73e 2024-01-31)"}
!4 = !{i32 3912558}
!5 = !{i64 0, i64 2}
!6 = !{}
!7 = !{i8 0, i8 42}
!8 = !{i8 0, i8 4}
!9 = !{i8 0, i8 41}
!10 = !{i64 8}
!11 = !{i64 1}
!12 = !{i64 0, i64 -9223372036854775807}
!13 = !{i32 0, i32 2}
!14 = !{i32 0, i32 256}
!15 = !{i64 0, i64 -9223372036854775808}
!16 = !{i64 1, i64 0}
!17 = !{ptr @_ZN3std9panicking3try7do_call17h7f1e88548aac6577E, ptr @_ZN3std9panicking3try7do_call17h884d2486ad7a52f8E, ptr @_ZN3std9panicking3try7do_call17hc4d0324b6b2e9fecE}
!18 = !{ptr @_ZN3std9panicking3try8do_catch17h3b6757f55ce8cd1aE, ptr @_ZN3std9panicking3try8do_catch17hc34136e473709636E, ptr @_ZN3std9panicking3try8do_catch17hd9cdc6439e142313E}
