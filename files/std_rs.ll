; ModuleID = '../files/std_rs.ll'
source_filename = "std_rs.8bfcdf9408d6821f-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::sync::atomic::AtomicUsize" = type { i64 }
%"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>" = type { ptr, [2 x i64] }
%"std::thread::JoinInner<'_, ()>" = type { ptr, ptr, i64 }
%"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>" = type { ptr, [2 x i64] }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, std::io::error::Error>, std::thread::JoinInner<'_, ()>>" = type { ptr, [2 x i64] }
%"std::thread::JoinHandle<()>" = type { %"std::thread::JoinInner<'_, ()>" }
%"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>::Err" = type { [1 x i64], ptr }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, std::io::error::Error>, std::thread::JoinInner<'_, ()>>::Break" = type { [1 x i64], ptr }
%"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>::Err" = type { [1 x i64], ptr }
%"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>" = type { %"core::sync::atomic::AtomicUsize", %"core::sync::atomic::AtomicUsize", %"std::thread::Packet<'_, ()>" }
%"std::thread::Packet<'_, ()>" = type { ptr, %"core::cell::UnsafeCell<core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>>", %"core::marker::PhantomData<core::option::Option<&std::thread::scoped::ScopeData>>" }
%"core::cell::UnsafeCell<core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>>" = type { %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>" }
%"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>" = type { i64, [2 x i64] }
%"core::marker::PhantomData<core::option::Option<&std::thread::scoped::ScopeData>>" = type {}
%"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>" = type { i64, [3 x i64] }
%"alloc::string::String" = type { %"alloc::vec::Vec<u8>" }
%"alloc::vec::Vec<u8>" = type { %"alloc::raw_vec::RawVec<u8>", i64 }
%"alloc::raw_vec::RawVec<u8>" = type { i64, ptr, %"alloc::alloc::Global" }
%"alloc::alloc::Global" = type {}
%"core::result::Result<std::sys::pal::unix::thread::Thread, std::io::error::Error>" = type { i64, [1 x i64] }
%"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:11:33: 11:40}, ()>::{closure#1}}" = type { ptr, ptr, ptr, ptr }
%"core::option::Option<alloc::string::String>" = type { i64, [2 x i64] }
%"std::thread::Builder" = type { %"core::option::Option<usize>", %"core::option::Option<alloc::string::String>" }
%"core::option::Option<usize>" = type { i64, [1 x i64] }
%"alloc::sync::ArcInner<std::thread::scoped::ScopeData>" = type { %"core::sync::atomic::AtomicUsize", %"core::sync::atomic::AtomicUsize", %"std::thread::scoped::ScopeData" }
%"std::thread::scoped::ScopeData" = type { ptr, %"core::sync::atomic::AtomicUsize", %"core::sync::atomic::AtomicBool", [7 x i8] }
%"core::sync::atomic::AtomicBool" = type { i8 }
%"core::result::Result<std::sys::pal::unix::thread::Thread, std::io::error::Error>::Ok" = type { [1 x i64], i64 }
%"core::result::Result<std::sys::pal::unix::thread::Thread, std::io::error::Error>::Err" = type { [1 x i64], ptr }
%"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:16:33: 16:40}, ()>::{closure#1}}" = type { ptr, ptr, ptr, ptr }
%"core::slice::iter::Iter<'_, u8>" = type { ptr, ptr, %"core::marker::PhantomData<&u8>" }
%"core::marker::PhantomData<&u8>" = type {}
%"std::panicking::try::Data<core::panic::unwind_safe::AssertUnwindSafe<{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:11:33: 11:40}, ()>::{closure#1}::{closure#0}}>, ()>" = type { [2 x i64] }
%"std::panicking::try::Data<core::panic::unwind_safe::AssertUnwindSafe<{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:16:33: 16:40}, ()>::{closure#1}::{closure#0}}>, ()>" = type { [2 x i64] }
%"std::panicking::try::Data<core::panic::unwind_safe::AssertUnwindSafe<{closure@<std::thread::Packet<'_, ()> as core::ops::drop::Drop>::drop::{closure#0}}>, ()>" = type { [2 x i64] }
%"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>::Some" = type { [1 x i64], %"core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>" }
%"core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>" = type { ptr, [1 x i64] }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom" = type { [1 x i64], ptr }
%"std::sync::mutex::Mutex<alloc::vec::Vec<u8>>" = type { %"std::sys::pal::unix::locks::futex_mutex::Mutex", %"std::sync::poison::Flag", [3 x i8], %"core::cell::UnsafeCell<alloc::vec::Vec<u8>>" }
%"std::sys::pal::unix::locks::futex_mutex::Mutex" = type { %"core::sync::atomic::AtomicU32" }
%"core::sync::atomic::AtomicU32" = type { i32 }
%"std::sync::poison::Flag" = type { %"core::sync::atomic::AtomicBool" }
%"core::cell::UnsafeCell<alloc::vec::Vec<u8>>" = type { %"alloc::vec::Vec<u8>" }
%"std::thread::Inner" = type { i64, %"core::option::Option<alloc::ffi::c_str::CString>", %"std::sys_common::thread_parking::futex::Parker", [1 x i32] }
%"core::option::Option<alloc::ffi::c_str::CString>" = type { ptr, [1 x i64] }
%"std::sys_common::thread_parking::futex::Parker" = type { %"core::sync::atomic::AtomicU32" }
%"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>" = type { i64, [2 x i64] }
%"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>::Ok" = type { [1 x i64], %"std::sync::mutex::MutexGuard<'_, i32>" }
%"std::sync::mutex::MutexGuard<'_, i32>" = type { ptr, i8, [7 x i8] }
%"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>::Err" = type { [1 x i64], %"std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>" }
%"std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>" = type { %"std::sync::mutex::MutexGuard<'_, i32>" }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>" = type { i8, [15 x i8] }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Os" = type { [1 x i32], i32 }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::SimpleMessage" = type { [1 x i64], ptr }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Simple" = type { [1 x i8], i8 }
%"std::io::error::ErrorData<&std::io::error::Custom>" = type { i8, [15 x i8] }
%"std::io::error::ErrorData<&std::io::error::Custom>::Os" = type { [1 x i32], i32 }
%"std::io::error::ErrorData<&std::io::error::Custom>::SimpleMessage" = type { [1 x i64], ptr }
%"std::io::error::ErrorData<&std::io::error::Custom>::Custom" = type { [1 x i64], ptr }
%"std::io::error::ErrorData<&std::io::error::Custom>::Simple" = type { [1 x i8], i8 }
%"core::option::Option<core::ops::range::Range<usize>>" = type { i64, [2 x i64] }
%"alloc::ffi::c_str::NulError" = type { %"alloc::vec::Vec<u8>", i64 }
%"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>::Ok" = type { [1 x i64], %"alloc::ffi::c_str::CString" }
%"alloc::ffi::c_str::CString" = type { %"alloc::boxed::Box<[u8]>" }
%"alloc::boxed::Box<[u8]>" = type { %"core::ptr::unique::Unique<[u8]>", %"alloc::alloc::Global" }
%"core::ptr::unique::Unique<[u8]>" = type { %"core::ptr::non_null::NonNull<[u8]>", %"core::marker::PhantomData<[u8]>" }
%"core::ptr::non_null::NonNull<[u8]>" = type { { ptr, i64 } }
%"core::marker::PhantomData<[u8]>" = type {}
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>" = type { [1 x i64], i64, [1 x i64] }
%"core::alloc::layout::Layout" = type { i64, i64 }
%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, %"core::option::Option<&[core::fmt::rt::Placeholder]>" }
%"core::option::Option<&[core::fmt::rt::Placeholder]>" = type { ptr, [1 x i64] }
%"std::sync::mutex::Mutex<i32>" = type { %"std::sys::pal::unix::locks::futex_mutex::Mutex", %"std::sync::poison::Flag", [3 x i8], i32 }
%"std::io::error::SimpleMessage" = type { { ptr, i64 }, i8, [7 x i8] }
%"std::io::error::Custom" = type { %"alloc::boxed::Box<dyn core::error::Error + core::marker::Send + core::marker::Sync>", i8, [7 x i8] }
%"alloc::boxed::Box<dyn core::error::Error + core::marker::Send + core::marker::Sync>" = type { %"core::ptr::unique::Unique<dyn core::error::Error + core::marker::Send + core::marker::Sync>", %"alloc::alloc::Global" }
%"core::ptr::unique::Unique<dyn core::error::Error + core::marker::Send + core::marker::Sync>" = type { %"core::ptr::non_null::NonNull<dyn core::error::Error + core::marker::Send + core::marker::Sync>", %"core::marker::PhantomData<dyn core::error::Error + core::marker::Send + core::marker::Sync>" }
%"core::ptr::non_null::NonNull<dyn core::error::Error + core::marker::Send + core::marker::Sync>" = type { { ptr, ptr } }
%"core::marker::PhantomData<dyn core::error::Error + core::marker::Send + core::marker::Sync>" = type {}
%"alloc::sync::ArcInner<std::sync::mutex::Mutex<i32>>" = type { %"core::sync::atomic::AtomicUsize", %"core::sync::atomic::AtomicUsize", %"std::sync::mutex::Mutex<i32>", [1 x i32] }
%"alloc::sync::Weak<std::thread::Packet<'_, ()>, &alloc::alloc::Global>" = type { ptr, ptr }
%"alloc::sync::Weak<std::sync::mutex::Mutex<alloc::vec::Vec<u8>>, &alloc::alloc::Global>" = type { ptr, ptr }
%"alloc::sync::ArcInner<std::sync::mutex::Mutex<alloc::vec::Vec<u8>>>" = type { %"core::sync::atomic::AtomicUsize", %"core::sync::atomic::AtomicUsize", %"std::sync::mutex::Mutex<alloc::vec::Vec<u8>>" }
%"alloc::sync::Weak<std::sync::mutex::Mutex<i32>, &alloc::alloc::Global>" = type { ptr, ptr }
%"alloc::sync::Weak<std::thread::Inner, &alloc::alloc::Global>" = type { ptr, ptr }
%"alloc::sync::ArcInner<std::thread::Inner>" = type { %"core::sync::atomic::AtomicUsize", %"core::sync::atomic::AtomicUsize", %"std::thread::Inner" }
%"alloc::sync::Weak<std::thread::scoped::ScopeData, &alloc::alloc::Global>" = type { ptr, ptr }
%"core::fmt::Formatter<'_>" = type { %"core::option::Option<usize>", %"core::option::Option<usize>", { ptr, ptr }, i32, i32, i8, [7 x i8] }
%"core::fmt::rt::Argument<'_>" = type { ptr, ptr }
%"core::fmt::builders::DebugStruct<'_, '_>" = type { ptr, i8, i8, [6 x i8] }
%"core::fmt::builders::DebugList<'_, '_>" = type { %"core::fmt::builders::DebugInner<'_, '_>" }
%"core::fmt::builders::DebugInner<'_, '_>" = type { ptr, i8, i8, [6 x i8] }
%"core::result::Result<usize, std::io::error::Error>" = type { i64, [1 x i64] }
%"core::result::Result<usize, std::io::error::Error>::Ok" = type { [1 x i64], i64 }
%"core::result::Result<usize, std::io::error::Error>::Err" = type { [1 x i64], ptr }
%"std::io::Write::write_fmt::Adapter<'_, std::sys::pal::unix::stdio::Stderr>" = type { ptr, ptr }

@alloc_498705839b3ae85466bce6e7ebfe4996 = private unnamed_addr constant <{ [47 x i8] }> <{ [47 x i8] c"thread name may not contain interior null bytes" }>, align 1
@alloc_a04f436dabfd66769fa4ad7bd3b47d85 = private unnamed_addr constant <{ [77 x i8] }> <{ [77 x i8] c"/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/std/src/thread/mod.rs" }>, align 1
@alloc_3c7ed5a01079e282fcc9eb5544b30333 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_a04f436dabfd66769fa4ad7bd3b47d85, [16 x i8] c"M\00\00\00\00\00\00\00\DC\01\00\00 \00\00\00" }>, align 8
@vtable.0 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeNCINvMNtCs1kSLwfZQ88S_3std6threadNtBM_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4main0uEs_0EB1M_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMNtCs1kSLwfZQ88S_3std6threadNtBa_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4main0uEs_0INtNtNtCsghWqkCs9mKo_4core3ops8function6FnOnceuE9call_once6vtableB1a_ }>, align 8
@vtable.1 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeNCINvMNtCs1kSLwfZQ88S_3std6threadNtBM_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4mains_0uEs_0EB1M_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMNtCs1kSLwfZQ88S_3std6threadNtBa_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4mains_0uEs_0INtNtNtCsghWqkCs9mKo_4core3ops8function6FnOnceuE9call_once6vtableB1a_ }>, align 8
@vtable.2 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeRhECsc19p934y1mR_6std_rs, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsN_NtCsghWqkCs9mKo_4core3fmtRhNtB5_5Debug3fmtCsc19p934y1mR_6std_rs }>, align 8
@vtable.3 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeNCINvNtCs1kSLwfZQ88S_3std2rt10lang_startuE0ECsc19p934y1mR_6std_rs, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvNtCs1kSLwfZQ88S_3std2rt10lang_startuE0INtNtNtCsghWqkCs9mKo_4core3ops8function6FnOnceuE9call_once6vtableCsc19p934y1mR_6std_rs, ptr @_RNCINvNtCs1kSLwfZQ88S_3std2rt10lang_startuE0Csc19p934y1mR_6std_rs, ptr @_RNCINvNtCs1kSLwfZQ88S_3std2rt10lang_startuE0Csc19p934y1mR_6std_rs }>, align 8
@alloc_e3605bf48dd8479a638909176cc37fce = private unnamed_addr constant <{ [22 x i8] }> <{ [22 x i8] c"failed to spawn thread" }>, align 1
@alloc_cfbb55ba8bd892c2ed60a2c3f28c3541 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_a04f436dabfd66769fa4ad7bd3b47d85, [16 x i8] c"M\00\00\00\00\00\00\00\AC\02\00\00\1D\00\00\00" }>, align 8
@alloc_513570631223a12912d85da2bec3b15a = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc_91c7fa63c3cfeaa3c795652d5cf060e4 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc_af99043bc04c419363a7f04d23183506 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_91c7fa63c3cfeaa3c795652d5cf060e4, [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc_4e392ee20eb14981b7228e69488c1dfe = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/fmt/mod.rs" }>, align 1
@__rust_no_alloc_shim_is_unstable = external global i8
@vtable.4 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeNtNtNtCs1kSLwfZQ88S_3std2io5error5ErrorECsc19p934y1mR_6std_rs, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hb0183faaec54836bE" }>, align 8
@alloc_00ae4b301f7fab8ac9617c03fcbd7274 = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c"called `Result::unwrap()` on an `Err` value" }>, align 1
@vtable.5 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtNtCs1kSLwfZQ88S_3std4sync6poison11PoisonErrorINtNtBL_5mutex10MutexGuardlEEECsc19p934y1mR_6std_rs, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCs1kSLwfZQ88S_3std4sync6poisonINtB4_11PoisonErrorINtNtB6_5mutex10MutexGuardlEENtNtCsghWqkCs9mKo_4core3fmt5Debug3fmtCsc19p934y1mR_6std_rs }>, align 8
@vtable.6 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeNtNtNtCs9lD8hpqNLQ1_5alloc3ffi5c_str8NulErrorECsc19p934y1mR_6std_rs, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsK_NtNtCs9lD8hpqNLQ1_5alloc3ffi5c_strNtB5_8NulErrorNtNtCsghWqkCs9mKo_4core3fmt5Debug3fmtCsc19p934y1mR_6std_rs }>, align 8
@alloc_429c82a8a757ba4eb6ada2ea4793308e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_4e392ee20eb14981b7228e69488c1dfe, [16 x i8] c"K\00\00\00\00\00\00\00M\01\00\00\0D\00\00\00" }>, align 8
@_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h97ef83b1126fc127E = external global %"core::sync::atomic::AtomicUsize"
@alloc_559f2ae733243bf212b88f542e1f898f = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/char/methods.rs" }>, align 1
@alloc_41a0379ed06a3b1c22d2313ff030dc3d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_559f2ae733243bf212b88f542e1f898f, [16 x i8] c"P\00\00\00\00\00\00\00\05\07\00\00\0D\00\00\00" }>, align 8
@alloc_b9a6dd3adc2673cdd0ef4b9d96fd7520 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/core/src/slice/memchr.rs" }>, align 1
@alloc_65452916cca6d97cc375fac7cb56cd3a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_b9a6dd3adc2673cdd0ef4b9d96fd7520, [16 x i8] c"P\00\00\00\00\00\00\00+\00\00\00\0C\00\00\00" }>, align 8
@alloc_1fc69e9d6fe5818ece4ae99dcad03b64 = private unnamed_addr constant <{ [78 x i8] }> <{ [78 x i8] c"/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/alloc/src/ffi/c_str.rs" }>, align 1
@alloc_5c9d34f18b8b9cda7f74f6cd144f9475 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1fc69e9d6fe5818ece4ae99dcad03b64, [16 x i8] c"N\00\00\00\00\00\00\00\0C\01\00\00+\00\00\00" }>, align 8
@alloc_3b99cf3889855522042186bfbc89cd01 = private unnamed_addr constant <{ [52 x i8] }> <{ [52 x i8] c"fatal runtime error: thread result panicked on drop\0A" }>, align 1
@alloc_2ca7775364e940040d1ca01e1c1e4d62 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_3b99cf3889855522042186bfbc89cd01, [8 x i8] c"4\00\00\00\00\00\00\00" }>, align 8
@alloc_49c0eff15ce41ce22a2d8c8b146a94ef = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"NulError" }>, align 1
@vtable.7 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placejECsc19p934y1mR_6std_rs, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1p_NtNtCsghWqkCs9mKo_4core3fmt3numjNtB8_5Debug3fmtCsc19p934y1mR_6std_rs }>, align 8
@vtable.8 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeRINtNtCs9lD8hpqNLQ1_5alloc3vec3VechEECsc19p934y1mR_6std_rs, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsN_NtCsghWqkCs9mKo_4core3fmtRINtNtCs9lD8hpqNLQ1_5alloc3vec3VechENtB5_5Debug3fmtCsc19p934y1mR_6std_rs }>, align 8
@alloc_8e2410b80645266732854088d21653bc = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c"PoisonError" }>, align 1
@vtable.9 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNvNtNtCs1kSLwfZQ88S_3std2io5Write9write_fmt7AdapterNtNtNtNtNtBP_3sys3pal4unix5stdio6StderrEECsc19p934y1mR_6std_rs, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvNtNtCs1kSLwfZQ88S_3std2io5Write9write_fmtINtB2_7AdapterNtNtNtNtNtB8_3sys3pal4unix5stdio6StderrENtNtCsghWqkCs9mKo_4core3fmt5Write9write_strCsc19p934y1mR_6std_rs, ptr @_RNvYINtNvNtNtCs1kSLwfZQ88S_3std2io5Write9write_fmt7AdapterNtNtNtNtNtBb_3sys3pal4unix5stdio6StderrENtNtCsghWqkCs9mKo_4core3fmt5Write10write_charCsc19p934y1mR_6std_rs, ptr @_RNvYINtNvNtNtCs1kSLwfZQ88S_3std2io5Write9write_fmt7AdapterNtNtNtNtNtBb_3sys3pal4unix5stdio6StderrENtNtCsghWqkCs9mKo_4core3fmt5Write9write_fmtCsc19p934y1mR_6std_rs }>, align 8
@alloc_8d68fcbc011419193bd208f22e2789d1 = private unnamed_addr constant <{ [28 x i8] }> <{ [28 x i8] c"failed to write whole buffer" }>, align 1
@alloc_626cc8bfd6c94d404aa777557e31db63 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @alloc_8d68fcbc011419193bd208f22e2789d1, [9 x i8] c"\1C\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@alloc_9057b6bf1b3910500dd83346f5505e1b = private unnamed_addr constant <{ [73 x i8] }> <{ [73 x i8] c"/rustc/11f32b73e0dc9287e305b5b9980d24aecdc8c17f/library/std/src/io/mod.rs" }>, align 1
@alloc_ad59c95d882f83cd0956f19d31e44c98 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_9057b6bf1b3910500dd83346f5505e1b, [16 x i8] c"I\00\00\00\00\00\00\00\B1\06\00\00$\00\00\00" }>, align 8
@alloc_118e5dd62e18907a47aec3e2be501119 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"formatter error" }>, align 1
@alloc_5d9af7a776dc0d9eecd628aaf786bef9 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @alloc_118e5dd62e18907a47aec3e2be501119, [9 x i8] c"\0F\00\00\00\00\00\00\00(", [7 x i8] undef }>, align 8
@alloc_3446f34a9bb4973344a5030a43a34a3f = private unnamed_addr constant <{ [18 x i8] }> <{ [18 x i8] c"../files/std_rs.rs" }>, align 1
@alloc_cf4841192a075b187537d87234b8e041 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_3446f34a9bb4973344a5030a43a34a3f, [16 x i8] c"\12\00\00\00\00\00\00\00\0C\00\00\00\22\00\00\00" }>, align 8
@alloc_2b1a7445a35dd192b91c6eb2a3e4a532 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_3446f34a9bb4973344a5030a43a34a3f, [16 x i8] c"\12\00\00\00\00\00\00\00\11\00\00\00\22\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNtCs1kSLwfZQ88S_3std6threadNtB3_7Builder15spawn_uncheckedNCNvCsc19p934y1mR_6std_rs4main0uEB12_(ptr nocapture writeonly sret(%"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>") align 8 %_0, ptr nocapture readonly align 8 %self, ptr %f) unnamed_addr #0 {
start:
  %v = alloca %"std::thread::JoinInner<'_, ()>", align 8
  %val = alloca %"std::thread::JoinInner<'_, ()>", align 8
  %self1 = alloca %"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>", align 8
  %_4 = alloca %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, std::io::error::Error>, std::thread::JoinInner<'_, ()>>", align 8
  %_3 = alloca %"std::thread::JoinHandle<()>", align 8
  call fastcc void @_RINvMNtCs1kSLwfZQ88S_3std6threadNtB3_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4main0uEB13_(ptr nonnull sret(%"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>") align 8 %self1, ptr align 8 %self, ptr %f, ptr null)
  %0 = load ptr, ptr %self1, align 8, !noundef !4
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb5.thread, label %bb5

bb5.thread:                                       ; preds = %start
  %1 = getelementptr inbounds %"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>::Err", ptr %self1, i64 0, i32 1
  %e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
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
define internal fastcc void @_RINvMNtCs1kSLwfZQ88S_3std6threadNtB3_7Builder15spawn_uncheckedNCNvCsc19p934y1mR_6std_rs4mains_0uEB12_(ptr nocapture writeonly sret(%"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>") align 8 %_0, ptr nocapture readonly align 8 %self, ptr %f) unnamed_addr #0 {
start:
  %v = alloca %"std::thread::JoinInner<'_, ()>", align 8
  %val = alloca %"std::thread::JoinInner<'_, ()>", align 8
  %self1 = alloca %"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>", align 8
  %_4 = alloca %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, std::io::error::Error>, std::thread::JoinInner<'_, ()>>", align 8
  %_3 = alloca %"std::thread::JoinHandle<()>", align 8
  call fastcc void @_RINvMNtCs1kSLwfZQ88S_3std6threadNtB3_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4mains_0uEB13_(ptr nonnull sret(%"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>") align 8 %self1, ptr align 8 %self, ptr %f, ptr null)
  %0 = load ptr, ptr %self1, align 8, !noundef !4
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb5.thread, label %bb5

bb5.thread:                                       ; preds = %start
  %1 = getelementptr inbounds %"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>::Err", ptr %self1, i64 0, i32 1
  %e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
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
define internal fastcc void @_RINvMNtCs1kSLwfZQ88S_3std6threadNtB3_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4main0uEB13_(ptr nocapture writeonly sret(%"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>") align 8 %_0, ptr nocapture readonly align 8 %self, ptr %0, ptr nocapture readnone %1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_64 = alloca %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", align 8
  %_57 = alloca %"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>", align 8
  %x = alloca %"alloc::string::String", align 8
  %self5 = alloca %"core::result::Result<std::sys::pal::unix::thread::Thread, std::io::error::Error>", align 8
  %_36 = alloca %"std::thread::JoinInner<'_, ()>", align 8
  %_33 = alloca %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:11:33: 11:40}, ()>::{closure#1}}", align 8
  %main = alloca %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:11:33: 11:40}, ()>::{closure#1}}", align 8
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
  %3 = load i64, ptr %self, align 8, !range !5, !noundef !4
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %bb34, label %bb35

bb34:                                             ; preds = %start
  %5 = invoke fastcc i64 @_RNvYNvNtNtCs1kSLwfZQ88S_3std10sys_common6thread9min_stackINtNtNtCsghWqkCs9mKo_4core3ops8function6FnOnceuE9call_onceCsc19p934y1mR_6std_rs()
          to label %bb36 unwind label %bb30

bb35:                                             ; preds = %start
  %6 = getelementptr inbounds i8, ptr %self, i64 8
  %7 = load i64, ptr %6, align 8
  br label %bb36

bb31.thread9:                                     ; preds = %bb41, %bb39, %bb38
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %9 = extractvalue { ptr, i32 } %lpad.thr_comm, 1
  br label %bb32

bb36:                                             ; preds = %bb35, %bb34
  %stack_size1.0 = phi i64 [ %7, %bb35 ], [ %5, %bb34 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %self2, ptr noundef nonnull align 8 dereferenceable(24) %name, i64 24, i1 false)
  %10 = load i64, ptr %self2, align 8, !range !6, !noundef !4
  %11 = icmp eq i64 %10, -9223372036854775808
  br i1 %11, label %bb37, label %bb38

bb37:                                             ; preds = %bb36
  br label %bb39

bb38:                                             ; preds = %bb36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %x, ptr noundef nonnull align 8 dereferenceable(24) %self2, i64 24, i1 false)
  invoke fastcc void @_RNvXNvMs_NtNtCs9lD8hpqNLQ1_5alloc3ffi5c_strNtB7_7CString3newNtNtBb_6string6StringNtB2_11SpecNewImpl13spec_new_implCsc19p934y1mR_6std_rs(ptr nonnull sret(%"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>") align 8 %_57, ptr nonnull align 8 %x)
          to label %bb41 unwind label %bb31.thread9

bb39:                                             ; preds = %bb40, %bb37
  %12 = phi i64 [ %_56.1, %bb40 ], [ undef, %bb37 ]
  %13 = phi ptr [ %_56.0, %bb40 ], [ null, %bb37 ]
  %14 = invoke ptr @_ZN3std6thread6Thread3new17h9286f061390b10b6E(ptr align 1 %13, i64 %12)
          to label %bb1 unwind label %bb31.thread9

bb41:                                             ; preds = %bb38
  %15 = invoke fastcc { ptr, i64 } @_RNvMNtCsghWqkCs9mKo_4core6resultINtB2_6ResultNtNtNtCs9lD8hpqNLQ1_5alloc3ffi5c_str7CStringNtBJ_8NulErrorE6expectCsc19p934y1mR_6std_rs(ptr nonnull align 8 %_57, ptr nonnull align 1 @alloc_498705839b3ae85466bce6e7ebfe4996, i64 47, ptr nonnull align 8 @alloc_3c7ed5a01079e282fcc9eb5544b30333)
          to label %bb40 unwind label %bb31.thread9

bb40:                                             ; preds = %bb41
  %_56.0 = extractvalue { ptr, i64 } %15, 0
  %_56.1 = extractvalue { ptr, i64 } %15, 1
  br label %bb39

bb1:                                              ; preds = %bb39
  store ptr %14, ptr %my_thread, align 8
  %_61 = call fastcc ptr @_RNvXsq_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcNtNtCs1kSLwfZQ88S_3std6thread5InnerENtNtCsghWqkCs9mKo_4core5clone5Clone5cloneCsc19p934y1mR_6std_rs(ptr nonnull align 8 %my_thread)
  br label %bb42

bb18:                                             ; preds = %bb28, %bb29
  %16 = phi i32 [ %53, %bb28 ], [ %23, %bb29 ]
  %17 = phi ptr [ %54, %bb28 ], [ %22, %bb29 ]
  %_51.1 = phi i8 [ %_48.014, %bb28 ], [ %_48.1, %bb29 ]
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcNtNtCs1kSLwfZQ88S_3std6thread5InnerENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %my_thread) #34
  br label %bb19

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
  %_4.i = invoke fastcc ptr @_RNvNtCs9lD8hpqNLQ1_5alloc5alloc15exchange_mallocCsc19p934y1mR_6std_rs(i64 48, i64 8)
          to label %bb43 unwind label %cleanup.i

cleanup.i:                                        ; preds = %bb42
  %21 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtCs9lD8hpqNLQ1_5alloc4sync8ArcInnerINtNtCs1kSLwfZQ88S_3std6thread6PacketuEEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %_64) #34
  br label %bb29.thread

bb29:                                             ; preds = %bb17
  %22 = extractvalue { ptr, i32 } %.pn.pn, 0
  %23 = extractvalue { ptr, i32 } %.pn.pn, 1
  br i1 %.not2, label %bb18, label %bb28

bb29.thread:                                      ; preds = %cleanup.i
  %24 = extractvalue { ptr, i32 } %21, 1
  %25 = extractvalue { ptr, i32 } %21, 0
  br label %bb28

bb43:                                             ; preds = %bb42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %_4.i, ptr noundef nonnull align 8 dereferenceable(48) %_64, i64 48, i1 false)
  store ptr %_4.i, ptr %my_packet, align 8
  %26 = call fastcc ptr @_RNvXsq_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtCs1kSLwfZQ88S_3std6thread6PacketuEENtNtCsghWqkCs9mKo_4core5clone5Clone5cloneCsc19p934y1mR_6std_rs(ptr nonnull align 8 %my_packet)
  br label %bb2

bb17:                                             ; preds = %bb22, %bb26, %bb23, %bb23.thread
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb26 ], [ %38, %bb23 ], [ %37, %bb23.thread ], [ %51, %bb22 ]
  %.not2 = phi i1 [ false, %bb26 ], [ true, %bb23 ], [ true, %bb23.thread ], [ true, %bb22 ]
  %_48.1 = phi i8 [ 1, %bb26 ], [ 0, %bb23 ], [ 0, %bb23.thread ], [ 0, %bb22 ]
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtCs1kSLwfZQ88S_3std6thread6PacketuEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %my_packet) #34
  br label %bb29

bb2:                                              ; preds = %bb43
  store ptr %26, ptr %their_packet, align 8
  %27 = invoke ptr @_ZN3std2io5stdio18set_output_capture17h47fa7577e7da3004E(ptr null)
          to label %bb3 unwind label %bb27.thread

bb27:                                             ; preds = %bb24
  br label %bb26

bb27.thread:                                      ; preds = %bb2
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %bb26

bb3:                                              ; preds = %bb2
  store ptr %27, ptr %output_capture, align 8
  %29 = icmp eq ptr %27, null
  br i1 %29, label %bb44, label %bb46

bb46:                                             ; preds = %bb3
  %_76 = call fastcc ptr @_RNvXsq_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexINtNtB7_3vec3VechEEENtNtCsghWqkCs9mKo_4core5clone5Clone5cloneCsc19p934y1mR_6std_rs(ptr nonnull align 8 %output_capture)
  br label %bb44

bb44:                                             ; preds = %bb46, %bb3
  %_21.0 = phi ptr [ null, %bb3 ], [ %_76, %bb46 ]
  %30 = invoke ptr @_ZN3std2io5stdio18set_output_capture17h47fa7577e7da3004E(ptr %_21.0)
          to label %bb4 unwind label %bb24

bb4:                                              ; preds = %bb44
  store ptr %30, ptr %_20, align 8
  invoke fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs9lD8hpqNLQ1_5alloc4sync3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexINtNtB17_3vec3VechEEEEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %_20)
          to label %bb5 unwind label %bb24

bb5:                                              ; preds = %bb4
  store ptr %_61, ptr %main, align 8
  %31 = load ptr, ptr %output_capture, align 8, !noundef !4
  %32 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:11:33: 11:40}, ()>::{closure#1}}", ptr %main, i64 0, i32 2
  store ptr %31, ptr %32, align 8
  %33 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:11:33: 11:40}, ()>::{closure#1}}", ptr %main, i64 0, i32 3
  store ptr %0, ptr %33, align 8
  %34 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:11:33: 11:40}, ()>::{closure#1}}", ptr %main, i64 0, i32 1
  store ptr %26, ptr %34, align 8
  %self15 = load ptr, ptr %my_packet, align 8, !nonnull !4, !noundef !4
  %35 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %self15, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !noundef !4
  %.not5 = icmp eq ptr %36, null
  br i1 %.not5, label %bb8, label %bb6

bb6:                                              ; preds = %bb5
  %_30 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::scoped::ScopeData>", ptr %36, i64 0, i32 2
  invoke void @_ZN3std6thread6scoped9ScopeData29increment_num_running_threads17hb8778178a2b2dcd2E(ptr nonnull align 8 %_30)
          to label %bb8 unwind label %bb22

bb8:                                              ; preds = %bb6, %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %_33, ptr noundef nonnull align 8 dereferenceable(32) %main, i64 32, i1 false)
  %_4.i27 = invoke fastcc ptr @_RNvNtCs9lD8hpqNLQ1_5alloc5alloc15exchange_mallocCsc19p934y1mR_6std_rs(i64 32, i64 8)
          to label %bb9 unwind label %cleanup.i28

cleanup.i28:                                      ; preds = %bb8
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeNCINvMNtCs1kSLwfZQ88S_3std6threadNtBM_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4main0uEs_0EB1M_(ptr nonnull align 8 %_33) #34
  br label %bb23.thread

bb23.thread:                                      ; preds = %cleanup.i28
  br label %bb17

bb23:                                             ; preds = %bb9
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %bb17

bb9:                                              ; preds = %bb8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %_4.i27, ptr noundef nonnull align 8 dereferenceable(32) %_33, i64 32, i1 false)
  invoke void @_ZN3std3sys3pal4unix6thread6Thread3new17h25822420d6359794E(ptr nonnull sret(%"core::result::Result<std::sys::pal::unix::thread::Thread, std::io::error::Error>") align 8 %self5, i64 %stack_size1.0, ptr nonnull align 1 %_4.i27, ptr nonnull align 8 @vtable.0)
          to label %bb10 unwind label %bb23

bb10:                                             ; preds = %bb9
  %_109 = load i64, ptr %self5, align 8, !range !5, !noundef !4
  %39 = icmp eq i64 %_109, 0
  br i1 %39, label %bb11, label %bb12

bb11:                                             ; preds = %bb10
  %40 = getelementptr inbounds %"core::result::Result<std::sys::pal::unix::thread::Thread, std::io::error::Error>::Ok", ptr %self5, i64 0, i32 1
  %v = load i64, ptr %40, align 8, !noundef !4
  %_43 = load ptr, ptr %my_thread, align 8, !nonnull !4, !noundef !4
  %_44 = load ptr, ptr %my_packet, align 8, !nonnull !4, !noundef !4
  %41 = getelementptr inbounds %"std::thread::JoinInner<'_, ()>", ptr %_36, i64 0, i32 2
  store i64 %v, ptr %41, align 8
  store ptr %_43, ptr %_36, align 8
  %42 = getelementptr inbounds %"std::thread::JoinInner<'_, ()>", ptr %_36, i64 0, i32 1
  store ptr %_44, ptr %42, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %_36, i64 24, i1 false)
  br label %bb15

bb12:                                             ; preds = %bb10
  %43 = getelementptr inbounds %"core::result::Result<std::sys::pal::unix::thread::Thread, std::io::error::Error>::Err", ptr %self5, i64 0, i32 1
  %e = load ptr, ptr %43, align 8, !nonnull !4, !noundef !4
  %44 = getelementptr inbounds %"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>::Err", ptr %_0, i64 0, i32 1
  store ptr %e, ptr %44, align 8
  store ptr null, ptr %_0, align 8
  invoke fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtCs9lD8hpqNLQ1_5alloc4sync3ArcINtNtCs1kSLwfZQ88S_3std6thread6PacketuEEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %my_packet)
          to label %bb13 unwind label %bb16

bb15:                                             ; preds = %bb13, %bb11
  ret void

bb16:                                             ; preds = %bb12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = extractvalue { ptr, i32 } %45, 0
  %47 = extractvalue { ptr, i32 } %45, 1
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcNtNtCs1kSLwfZQ88S_3std6thread5InnerENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %my_thread) #34
  br label %bb21

bb13:                                             ; preds = %bb12
  invoke fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeNtNtCs1kSLwfZQ88S_3std6thread6ThreadECsc19p934y1mR_6std_rs(ptr nonnull align 8 %my_thread)
          to label %bb15 unwind label %cleanup26

bb19:                                             ; preds = %bb18
  br label %bb20

cleanup26:                                        ; preds = %bb13
  %48 = landingpad { ptr, i32 }
          cleanup
  %49 = extractvalue { ptr, i32 } %48, 0
  %50 = extractvalue { ptr, i32 } %48, 1
  br label %bb21

bb22:                                             ; preds = %bb6
  %51 = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeNCINvMNtCs1kSLwfZQ88S_3std6threadNtBM_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4main0uEs_0EB1M_(ptr nonnull align 8 %main) #34
  br label %bb17

bb24:                                             ; preds = %bb4, %bb44
  %52 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs9lD8hpqNLQ1_5alloc4sync3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexINtNtB17_3vec3VechEEEEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %output_capture) #34
  br label %bb27

bb26:                                             ; preds = %bb27.thread, %bb27
  %.pn = phi { ptr, i32 } [ %52, %bb27 ], [ %28, %bb27.thread ]
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtCs1kSLwfZQ88S_3std6thread6PacketuEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %their_packet) #34
  br label %bb17

bb28:                                             ; preds = %bb29.thread, %bb29
  %53 = phi i32 [ %24, %bb29.thread ], [ %23, %bb29 ]
  %54 = phi ptr [ %25, %bb29.thread ], [ %22, %bb29 ]
  %_48.014 = phi i8 [ 1, %bb29.thread ], [ %_48.1, %bb29 ]
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcNtNtCs1kSLwfZQ88S_3std6thread5InnerENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %their_thread) #34
  br label %bb18

bb30:                                             ; preds = %bb34
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %55 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %56 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 1
  call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9lD8hpqNLQ1_5alloc6string6StringEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %name) #34
  br label %bb32

bb20:                                             ; preds = %bb32, %bb19
  %57 = phi i32 [ %60, %bb32 ], [ %16, %bb19 ]
  %58 = phi ptr [ %61, %bb32 ], [ %17, %bb19 ]
  %_51.628 = phi i8 [ 1, %bb32 ], [ %_51.1, %bb19 ]
  %59 = and i8 %_51.628, 1
  %.not1 = icmp eq i8 %59, 0
  br i1 %.not1, label %bb21, label %bb33

bb32:                                             ; preds = %bb30, %bb31.thread9
  %60 = phi i32 [ %56, %bb30 ], [ %9, %bb31.thread9 ]
  %61 = phi ptr [ %55, %bb30 ], [ %8, %bb31.thread9 ]
  call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs9lD8hpqNLQ1_5alloc4sync3ArcNtNtNtCs1kSLwfZQ88S_3std6thread6scoped9ScopeDataEEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %scope_data) #34
  br label %bb20

bb21:                                             ; preds = %bb16, %bb33, %bb20, %cleanup26
  %62 = phi i32 [ %50, %cleanup26 ], [ %47, %bb16 ], [ %57, %bb33 ], [ %57, %bb20 ]
  %63 = phi ptr [ %49, %cleanup26 ], [ %46, %bb16 ], [ %58, %bb33 ], [ %58, %bb20 ]
  %64 = insertvalue { ptr, i32 } poison, ptr %63, 0
  %65 = insertvalue { ptr, i32 } %64, i32 %62, 1
  resume { ptr, i32 } %65

bb33:                                             ; preds = %bb20
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexlEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %f) #34
  br label %bb21
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNtCs1kSLwfZQ88S_3std6threadNtB3_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4mains_0uEB13_(ptr nocapture writeonly sret(%"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>") align 8 %_0, ptr nocapture readonly align 8 %self, ptr %0, ptr nocapture readnone %1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_64 = alloca %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", align 8
  %_57 = alloca %"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>", align 8
  %x = alloca %"alloc::string::String", align 8
  %self5 = alloca %"core::result::Result<std::sys::pal::unix::thread::Thread, std::io::error::Error>", align 8
  %_36 = alloca %"std::thread::JoinInner<'_, ()>", align 8
  %_33 = alloca %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:16:33: 16:40}, ()>::{closure#1}}", align 8
  %main = alloca %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:16:33: 16:40}, ()>::{closure#1}}", align 8
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
  %3 = load i64, ptr %self, align 8, !range !5, !noundef !4
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %bb34, label %bb35

bb34:                                             ; preds = %start
  %5 = invoke fastcc i64 @_RNvYNvNtNtCs1kSLwfZQ88S_3std10sys_common6thread9min_stackINtNtNtCsghWqkCs9mKo_4core3ops8function6FnOnceuE9call_onceCsc19p934y1mR_6std_rs()
          to label %bb36 unwind label %bb30

bb35:                                             ; preds = %start
  %6 = getelementptr inbounds i8, ptr %self, i64 8
  %7 = load i64, ptr %6, align 8
  br label %bb36

bb31.thread9:                                     ; preds = %bb41, %bb39, %bb38
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %9 = extractvalue { ptr, i32 } %lpad.thr_comm, 1
  br label %bb32

bb36:                                             ; preds = %bb35, %bb34
  %stack_size1.0 = phi i64 [ %7, %bb35 ], [ %5, %bb34 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %self2, ptr noundef nonnull align 8 dereferenceable(24) %name, i64 24, i1 false)
  %10 = load i64, ptr %self2, align 8, !range !6, !noundef !4
  %11 = icmp eq i64 %10, -9223372036854775808
  br i1 %11, label %bb37, label %bb38

bb37:                                             ; preds = %bb36
  br label %bb39

bb38:                                             ; preds = %bb36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %x, ptr noundef nonnull align 8 dereferenceable(24) %self2, i64 24, i1 false)
  invoke fastcc void @_RNvXNvMs_NtNtCs9lD8hpqNLQ1_5alloc3ffi5c_strNtB7_7CString3newNtNtBb_6string6StringNtB2_11SpecNewImpl13spec_new_implCsc19p934y1mR_6std_rs(ptr nonnull sret(%"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>") align 8 %_57, ptr nonnull align 8 %x)
          to label %bb41 unwind label %bb31.thread9

bb39:                                             ; preds = %bb40, %bb37
  %12 = phi i64 [ %_56.1, %bb40 ], [ undef, %bb37 ]
  %13 = phi ptr [ %_56.0, %bb40 ], [ null, %bb37 ]
  %14 = invoke ptr @_ZN3std6thread6Thread3new17h9286f061390b10b6E(ptr align 1 %13, i64 %12)
          to label %bb1 unwind label %bb31.thread9

bb41:                                             ; preds = %bb38
  %15 = invoke fastcc { ptr, i64 } @_RNvMNtCsghWqkCs9mKo_4core6resultINtB2_6ResultNtNtNtCs9lD8hpqNLQ1_5alloc3ffi5c_str7CStringNtBJ_8NulErrorE6expectCsc19p934y1mR_6std_rs(ptr nonnull align 8 %_57, ptr nonnull align 1 @alloc_498705839b3ae85466bce6e7ebfe4996, i64 47, ptr nonnull align 8 @alloc_3c7ed5a01079e282fcc9eb5544b30333)
          to label %bb40 unwind label %bb31.thread9

bb40:                                             ; preds = %bb41
  %_56.0 = extractvalue { ptr, i64 } %15, 0
  %_56.1 = extractvalue { ptr, i64 } %15, 1
  br label %bb39

bb1:                                              ; preds = %bb39
  store ptr %14, ptr %my_thread, align 8
  %_61 = call fastcc ptr @_RNvXsq_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcNtNtCs1kSLwfZQ88S_3std6thread5InnerENtNtCsghWqkCs9mKo_4core5clone5Clone5cloneCsc19p934y1mR_6std_rs(ptr nonnull align 8 %my_thread)
  br label %bb42

bb18:                                             ; preds = %bb28, %bb29
  %16 = phi i32 [ %53, %bb28 ], [ %23, %bb29 ]
  %17 = phi ptr [ %54, %bb28 ], [ %22, %bb29 ]
  %_51.1 = phi i8 [ %_48.014, %bb28 ], [ %_48.1, %bb29 ]
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcNtNtCs1kSLwfZQ88S_3std6thread5InnerENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %my_thread) #34
  br label %bb19

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
  %_4.i = invoke fastcc ptr @_RNvNtCs9lD8hpqNLQ1_5alloc5alloc15exchange_mallocCsc19p934y1mR_6std_rs(i64 48, i64 8)
          to label %bb43 unwind label %cleanup.i

cleanup.i:                                        ; preds = %bb42
  %21 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtCs9lD8hpqNLQ1_5alloc4sync8ArcInnerINtNtCs1kSLwfZQ88S_3std6thread6PacketuEEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %_64) #34
  br label %bb29.thread

bb29:                                             ; preds = %bb17
  %22 = extractvalue { ptr, i32 } %.pn.pn, 0
  %23 = extractvalue { ptr, i32 } %.pn.pn, 1
  br i1 %.not2, label %bb18, label %bb28

bb29.thread:                                      ; preds = %cleanup.i
  %24 = extractvalue { ptr, i32 } %21, 1
  %25 = extractvalue { ptr, i32 } %21, 0
  br label %bb28

bb43:                                             ; preds = %bb42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %_4.i, ptr noundef nonnull align 8 dereferenceable(48) %_64, i64 48, i1 false)
  store ptr %_4.i, ptr %my_packet, align 8
  %26 = call fastcc ptr @_RNvXsq_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtCs1kSLwfZQ88S_3std6thread6PacketuEENtNtCsghWqkCs9mKo_4core5clone5Clone5cloneCsc19p934y1mR_6std_rs(ptr nonnull align 8 %my_packet)
  br label %bb2

bb17:                                             ; preds = %bb22, %bb26, %bb23, %bb23.thread
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb26 ], [ %38, %bb23 ], [ %37, %bb23.thread ], [ %51, %bb22 ]
  %.not2 = phi i1 [ false, %bb26 ], [ true, %bb23 ], [ true, %bb23.thread ], [ true, %bb22 ]
  %_48.1 = phi i8 [ 1, %bb26 ], [ 0, %bb23 ], [ 0, %bb23.thread ], [ 0, %bb22 ]
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtCs1kSLwfZQ88S_3std6thread6PacketuEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %my_packet) #34
  br label %bb29

bb2:                                              ; preds = %bb43
  store ptr %26, ptr %their_packet, align 8
  %27 = invoke ptr @_ZN3std2io5stdio18set_output_capture17h47fa7577e7da3004E(ptr null)
          to label %bb3 unwind label %bb27.thread

bb27:                                             ; preds = %bb24
  br label %bb26

bb27.thread:                                      ; preds = %bb2
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %bb26

bb3:                                              ; preds = %bb2
  store ptr %27, ptr %output_capture, align 8
  %29 = icmp eq ptr %27, null
  br i1 %29, label %bb44, label %bb46

bb46:                                             ; preds = %bb3
  %_76 = call fastcc ptr @_RNvXsq_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexINtNtB7_3vec3VechEEENtNtCsghWqkCs9mKo_4core5clone5Clone5cloneCsc19p934y1mR_6std_rs(ptr nonnull align 8 %output_capture)
  br label %bb44

bb44:                                             ; preds = %bb46, %bb3
  %_21.0 = phi ptr [ null, %bb3 ], [ %_76, %bb46 ]
  %30 = invoke ptr @_ZN3std2io5stdio18set_output_capture17h47fa7577e7da3004E(ptr %_21.0)
          to label %bb4 unwind label %bb24

bb4:                                              ; preds = %bb44
  store ptr %30, ptr %_20, align 8
  invoke fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs9lD8hpqNLQ1_5alloc4sync3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexINtNtB17_3vec3VechEEEEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %_20)
          to label %bb5 unwind label %bb24

bb5:                                              ; preds = %bb4
  store ptr %_61, ptr %main, align 8
  %31 = load ptr, ptr %output_capture, align 8, !noundef !4
  %32 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:16:33: 16:40}, ()>::{closure#1}}", ptr %main, i64 0, i32 2
  store ptr %31, ptr %32, align 8
  %33 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:16:33: 16:40}, ()>::{closure#1}}", ptr %main, i64 0, i32 3
  store ptr %0, ptr %33, align 8
  %34 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:16:33: 16:40}, ()>::{closure#1}}", ptr %main, i64 0, i32 1
  store ptr %26, ptr %34, align 8
  %self15 = load ptr, ptr %my_packet, align 8, !nonnull !4, !noundef !4
  %35 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %self15, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !noundef !4
  %.not5 = icmp eq ptr %36, null
  br i1 %.not5, label %bb8, label %bb6

bb6:                                              ; preds = %bb5
  %_30 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::scoped::ScopeData>", ptr %36, i64 0, i32 2
  invoke void @_ZN3std6thread6scoped9ScopeData29increment_num_running_threads17hb8778178a2b2dcd2E(ptr nonnull align 8 %_30)
          to label %bb8 unwind label %bb22

bb8:                                              ; preds = %bb6, %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %_33, ptr noundef nonnull align 8 dereferenceable(32) %main, i64 32, i1 false)
  %_4.i27 = invoke fastcc ptr @_RNvNtCs9lD8hpqNLQ1_5alloc5alloc15exchange_mallocCsc19p934y1mR_6std_rs(i64 32, i64 8)
          to label %bb9 unwind label %cleanup.i28

cleanup.i28:                                      ; preds = %bb8
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeNCINvMNtCs1kSLwfZQ88S_3std6threadNtBM_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4mains_0uEs_0EB1M_(ptr nonnull align 8 %_33) #34
  br label %bb23.thread

bb23.thread:                                      ; preds = %cleanup.i28
  br label %bb17

bb23:                                             ; preds = %bb9
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %bb17

bb9:                                              ; preds = %bb8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %_4.i27, ptr noundef nonnull align 8 dereferenceable(32) %_33, i64 32, i1 false)
  invoke void @_ZN3std3sys3pal4unix6thread6Thread3new17h25822420d6359794E(ptr nonnull sret(%"core::result::Result<std::sys::pal::unix::thread::Thread, std::io::error::Error>") align 8 %self5, i64 %stack_size1.0, ptr nonnull align 1 %_4.i27, ptr nonnull align 8 @vtable.1)
          to label %bb10 unwind label %bb23

bb10:                                             ; preds = %bb9
  %_109 = load i64, ptr %self5, align 8, !range !5, !noundef !4
  %39 = icmp eq i64 %_109, 0
  br i1 %39, label %bb11, label %bb12

bb11:                                             ; preds = %bb10
  %40 = getelementptr inbounds %"core::result::Result<std::sys::pal::unix::thread::Thread, std::io::error::Error>::Ok", ptr %self5, i64 0, i32 1
  %v = load i64, ptr %40, align 8, !noundef !4
  %_43 = load ptr, ptr %my_thread, align 8, !nonnull !4, !noundef !4
  %_44 = load ptr, ptr %my_packet, align 8, !nonnull !4, !noundef !4
  %41 = getelementptr inbounds %"std::thread::JoinInner<'_, ()>", ptr %_36, i64 0, i32 2
  store i64 %v, ptr %41, align 8
  store ptr %_43, ptr %_36, align 8
  %42 = getelementptr inbounds %"std::thread::JoinInner<'_, ()>", ptr %_36, i64 0, i32 1
  store ptr %_44, ptr %42, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %_36, i64 24, i1 false)
  br label %bb15

bb12:                                             ; preds = %bb10
  %43 = getelementptr inbounds %"core::result::Result<std::sys::pal::unix::thread::Thread, std::io::error::Error>::Err", ptr %self5, i64 0, i32 1
  %e = load ptr, ptr %43, align 8, !nonnull !4, !noundef !4
  %44 = getelementptr inbounds %"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>::Err", ptr %_0, i64 0, i32 1
  store ptr %e, ptr %44, align 8
  store ptr null, ptr %_0, align 8
  invoke fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtCs9lD8hpqNLQ1_5alloc4sync3ArcINtNtCs1kSLwfZQ88S_3std6thread6PacketuEEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %my_packet)
          to label %bb13 unwind label %bb16

bb15:                                             ; preds = %bb13, %bb11
  ret void

bb16:                                             ; preds = %bb12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = extractvalue { ptr, i32 } %45, 0
  %47 = extractvalue { ptr, i32 } %45, 1
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcNtNtCs1kSLwfZQ88S_3std6thread5InnerENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %my_thread) #34
  br label %bb21

bb13:                                             ; preds = %bb12
  invoke fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeNtNtCs1kSLwfZQ88S_3std6thread6ThreadECsc19p934y1mR_6std_rs(ptr nonnull align 8 %my_thread)
          to label %bb15 unwind label %cleanup26

bb19:                                             ; preds = %bb18
  br label %bb20

cleanup26:                                        ; preds = %bb13
  %48 = landingpad { ptr, i32 }
          cleanup
  %49 = extractvalue { ptr, i32 } %48, 0
  %50 = extractvalue { ptr, i32 } %48, 1
  br label %bb21

bb22:                                             ; preds = %bb6
  %51 = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeNCINvMNtCs1kSLwfZQ88S_3std6threadNtBM_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4mains_0uEs_0EB1M_(ptr nonnull align 8 %main) #34
  br label %bb17

bb24:                                             ; preds = %bb4, %bb44
  %52 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs9lD8hpqNLQ1_5alloc4sync3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexINtNtB17_3vec3VechEEEEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %output_capture) #34
  br label %bb27

bb26:                                             ; preds = %bb27.thread, %bb27
  %.pn = phi { ptr, i32 } [ %52, %bb27 ], [ %28, %bb27.thread ]
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtCs1kSLwfZQ88S_3std6thread6PacketuEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %their_packet) #34
  br label %bb17

bb28:                                             ; preds = %bb29.thread, %bb29
  %53 = phi i32 [ %24, %bb29.thread ], [ %23, %bb29 ]
  %54 = phi ptr [ %25, %bb29.thread ], [ %22, %bb29 ]
  %_48.014 = phi i8 [ 1, %bb29.thread ], [ %_48.1, %bb29 ]
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcNtNtCs1kSLwfZQ88S_3std6thread5InnerENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %their_thread) #34
  br label %bb18

bb30:                                             ; preds = %bb34
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %55 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %56 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 1
  call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9lD8hpqNLQ1_5alloc6string6StringEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %name) #34
  br label %bb32

bb20:                                             ; preds = %bb32, %bb19
  %57 = phi i32 [ %60, %bb32 ], [ %16, %bb19 ]
  %58 = phi ptr [ %61, %bb32 ], [ %17, %bb19 ]
  %_51.628 = phi i8 [ 1, %bb32 ], [ %_51.1, %bb19 ]
  %59 = and i8 %_51.628, 1
  %.not1 = icmp eq i8 %59, 0
  br i1 %.not1, label %bb21, label %bb33

bb32:                                             ; preds = %bb30, %bb31.thread9
  %60 = phi i32 [ %56, %bb30 ], [ %9, %bb31.thread9 ]
  %61 = phi ptr [ %55, %bb30 ], [ %8, %bb31.thread9 ]
  call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs9lD8hpqNLQ1_5alloc4sync3ArcNtNtNtCs1kSLwfZQ88S_3std6thread6scoped9ScopeDataEEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %scope_data) #34
  br label %bb20

bb21:                                             ; preds = %bb16, %bb33, %bb20, %cleanup26
  %62 = phi i32 [ %50, %cleanup26 ], [ %47, %bb16 ], [ %57, %bb33 ], [ %57, %bb20 ]
  %63 = phi ptr [ %49, %cleanup26 ], [ %46, %bb16 ], [ %58, %bb33 ], [ %58, %bb20 ]
  %64 = insertvalue { ptr, i32 } poison, ptr %63, 0
  %65 = insertvalue { ptr, i32 } %64, i32 %62, 1
  resume { ptr, i32 } %65

bb33:                                             ; preds = %bb20
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexlEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %f) #34
  br label %bb21
}

; Function Attrs: nonlazybind uwtable
define internal fastcc align 8 ptr @_RINvMs5_NtNtCsghWqkCs9mKo_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECsc19p934y1mR_6std_rs(ptr returned align 8 %self, ptr %entries.0, ptr %entries.1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %entry = alloca ptr, align 8
  %iter = alloca %"core::slice::iter::Iter<'_, u8>", align 8
  %0 = tail call fastcc { ptr, ptr } @_RNvXNtNtNtCsghWqkCs9mKo_4core4iter6traits7collectINtNtNtB8_5slice4iter4IterhENtB2_12IntoIterator9into_iterCsc19p934y1mR_6std_rs(ptr %entries.0, ptr %entries.1)
  %_3.0 = extractvalue { ptr, ptr } %0, 0
  %_3.1 = extractvalue { ptr, ptr } %0, 1
  store ptr %_3.0, ptr %iter, align 8
  %1 = getelementptr inbounds i8, ptr %iter, i64 8
  store ptr %_3.1, ptr %1, align 8
  br label %bb2

bb2:                                              ; preds = %bb4, %start
  %2 = call fastcc align 1 ptr @_RNvXs2T_NtNtCsghWqkCs9mKo_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc19p934y1mR_6std_rs(ptr nonnull align 8 %iter)
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
  %_9 = invoke align 8 ptr @_ZN4core3fmt8builders9DebugList5entry17h5d20dd743daa8c38E(ptr align 8 %self, ptr nonnull align 1 %entry, ptr nonnull align 8 @vtable.2)
          to label %bb2 unwind label %bb10

bb10:                                             ; preds = %bb4
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb11
}

; Function Attrs: nonlazybind uwtable
define hidden i64 @_RINvNtCs1kSLwfZQ88S_3std2rt10lang_startuECsc19p934y1mR_6std_rs(ptr %main, i64 %argc, ptr %argv, i8 %sigpipe) unnamed_addr #0 {
start:
  %_8 = alloca ptr, align 8
  store ptr %main, ptr %_8, align 8
  %0 = call i64 @_ZN3std2rt19lang_start_internal17hd1132dfff4140512E(ptr nonnull align 1 %_8, ptr nonnull align 8 @vtable.3, i64 %argc, ptr %argv, i8 %sigpipe)
  ret i64 %0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs1kSLwfZQ88S_3std6thread5spawnNCNvCsc19p934y1mR_6std_rs4main0uEBD_(ptr nocapture writeonly sret(%"std::thread::JoinHandle<()>") align 8 %_0, ptr %f) unnamed_addr #0 {
start:
  %_5 = alloca %"core::option::Option<alloc::string::String>", align 8
  %self = alloca %"std::thread::Builder", align 8
  %_2 = alloca %"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>", align 8
  store i64 -9223372036854775808, ptr %_5, align 8
  %0 = getelementptr inbounds %"std::thread::Builder", ptr %self, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %_5, i64 24, i1 false)
  store i64 0, ptr %self, align 8
  call fastcc void @_RINvMNtCs1kSLwfZQ88S_3std6threadNtB3_7Builder15spawn_uncheckedNCNvCsc19p934y1mR_6std_rs4main0uEB12_(ptr nonnull sret(%"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>") align 8 %_2, ptr nonnull align 8 %self, ptr %f)
  call fastcc void @_RNvMNtCsghWqkCs9mKo_4core6resultINtB2_6ResultINtNtCs1kSLwfZQ88S_3std6thread10JoinHandleuENtNtNtBM_2io5error5ErrorE6expectCsc19p934y1mR_6std_rs(ptr sret(%"std::thread::JoinHandle<()>") align 8 %_0, ptr nonnull align 8 %_2, ptr nonnull align 1 @alloc_e3605bf48dd8479a638909176cc37fce, i64 22, ptr nonnull align 8 @alloc_cfbb55ba8bd892c2ed60a2c3f28c3541)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs1kSLwfZQ88S_3std6thread5spawnNCNvCsc19p934y1mR_6std_rs4mains_0uEBD_(ptr nocapture writeonly sret(%"std::thread::JoinHandle<()>") align 8 %_0, ptr %f) unnamed_addr #0 {
start:
  %_5 = alloca %"core::option::Option<alloc::string::String>", align 8
  %self = alloca %"std::thread::Builder", align 8
  %_2 = alloca %"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>", align 8
  store i64 -9223372036854775808, ptr %_5, align 8
  %0 = getelementptr inbounds %"std::thread::Builder", ptr %self, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %_5, i64 24, i1 false)
  store i64 0, ptr %self, align 8
  call fastcc void @_RINvMNtCs1kSLwfZQ88S_3std6threadNtB3_7Builder15spawn_uncheckedNCNvCsc19p934y1mR_6std_rs4mains_0uEB12_(ptr nonnull sret(%"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>") align 8 %_2, ptr nonnull align 8 %self, ptr %f)
  call fastcc void @_RNvMNtCsghWqkCs9mKo_4core6resultINtB2_6ResultINtNtCs1kSLwfZQ88S_3std6thread10JoinHandleuENtNtNtBM_2io5error5ErrorE6expectCsc19p934y1mR_6std_rs(ptr sret(%"std::thread::JoinHandle<()>") align 8 %_0, ptr nonnull align 8 %_2, ptr nonnull align 1 @alloc_e3605bf48dd8479a638909176cc37fce, i64 22, ptr nonnull align 8 @alloc_cfbb55ba8bd892c2ed60a2c3f28c3541)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RINvNtCs1kSLwfZQ88S_3std9panicking3tryuINtNtNtCsghWqkCs9mKo_4core5panic11unwind_safe16AssertUnwindSafeNCNCINvMNtB4_6threadNtB1K_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4main0uEs_00EEB2w_(ptr %f) unnamed_addr #0 {
start:
  %data = alloca %"std::panicking::try::Data<core::panic::unwind_safe::AssertUnwindSafe<{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:11:33: 11:40}, ()>::{closure#1}::{closure#0}}>, ()>", align 8
  %0 = icmp ne ptr %f, null
  tail call void @llvm.assume(i1 %0)
  store ptr %f, ptr %data, align 8
  %1 = call fastcc i32 @__rust_try.3(ptr nonnull @_RINvNvNtCs1kSLwfZQ88S_3std9panicking3try7do_callINtNtNtCsghWqkCs9mKo_4core5panic11unwind_safe16AssertUnwindSafeNCNCINvMNtB6_6threadNtB1T_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4main0uEs_00EuEB2F_, ptr nonnull %data, ptr nonnull @_RINvNvNtCs1kSLwfZQ88S_3std9panicking3try8do_catchINtNtNtCsghWqkCs9mKo_4core5panic11unwind_safe16AssertUnwindSafeNCNCINvMNtB6_6threadNtB1U_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4main0uEs_00EuEB2G_), !range !7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %bb2, label %bb3

bb2:                                              ; preds = %start
  br label %bb4

bb3:                                              ; preds = %start
  %slot.0 = load ptr, ptr %data, align 8, !nonnull !4, !align !8, !noundef !4
  %3 = getelementptr inbounds i8, ptr %data, i64 8
  %slot.1 = load ptr, ptr %3, align 8, !nonnull !4, !align !9, !noundef !4
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  %4 = phi ptr [ %slot.1, %bb3 ], [ undef, %bb2 ]
  %5 = phi ptr [ %slot.0, %bb3 ], [ null, %bb2 ]
  %6 = insertvalue { ptr, ptr } poison, ptr %5, 0
  %7 = insertvalue { ptr, ptr } %6, ptr %4, 1
  ret { ptr, ptr } %7
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RINvNtCs1kSLwfZQ88S_3std9panicking3tryuINtNtNtCsghWqkCs9mKo_4core5panic11unwind_safe16AssertUnwindSafeNCNCINvMNtB4_6threadNtB1K_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4mains_0uEs_00EEB2w_(ptr %f) unnamed_addr #0 {
start:
  %data = alloca %"std::panicking::try::Data<core::panic::unwind_safe::AssertUnwindSafe<{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:16:33: 16:40}, ()>::{closure#1}::{closure#0}}>, ()>", align 8
  %0 = icmp ne ptr %f, null
  tail call void @llvm.assume(i1 %0)
  store ptr %f, ptr %data, align 8
  %1 = call fastcc i32 @__rust_try.2(ptr nonnull @_RINvNvNtCs1kSLwfZQ88S_3std9panicking3try7do_callINtNtNtCsghWqkCs9mKo_4core5panic11unwind_safe16AssertUnwindSafeNCNCINvMNtB6_6threadNtB1T_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4mains_0uEs_00EuEB2F_, ptr nonnull %data, ptr nonnull @_RINvNvNtCs1kSLwfZQ88S_3std9panicking3try8do_catchINtNtNtCsghWqkCs9mKo_4core5panic11unwind_safe16AssertUnwindSafeNCNCINvMNtB6_6threadNtB1U_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4mains_0uEs_00EuEB2G_), !range !7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %bb2, label %bb3

bb2:                                              ; preds = %start
  br label %bb4

bb3:                                              ; preds = %start
  %slot.0 = load ptr, ptr %data, align 8, !nonnull !4, !align !8, !noundef !4
  %3 = getelementptr inbounds i8, ptr %data, i64 8
  %slot.1 = load ptr, ptr %3, align 8, !nonnull !4, !align !9, !noundef !4
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  %4 = phi ptr [ %slot.1, %bb3 ], [ undef, %bb2 ]
  %5 = phi ptr [ %slot.0, %bb3 ], [ null, %bb2 ]
  %6 = insertvalue { ptr, ptr } poison, ptr %5, 0
  %7 = insertvalue { ptr, ptr } %6, ptr %4, 1
  ret { ptr, ptr } %7
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RINvNtCs1kSLwfZQ88S_3std9panicking3tryuINtNtNtCsghWqkCs9mKo_4core5panic11unwind_safe16AssertUnwindSafeNCNvXs5_NtB4_6threadINtB1K_6PacketuENtNtNtBI_3ops4drop4Drop4drop0EECsc19p934y1mR_6std_rs(ptr align 8 %f) unnamed_addr #0 {
start:
  %data = alloca %"std::panicking::try::Data<core::panic::unwind_safe::AssertUnwindSafe<{closure@<std::thread::Packet<'_, ()> as core::ops::drop::Drop>::drop::{closure#0}}>, ()>", align 8
  %0 = icmp ne ptr %f, null
  tail call void @llvm.assume(i1 %0)
  store ptr %f, ptr %data, align 8
  %1 = call fastcc i32 @__rust_try.1(ptr nonnull @_RINvNvNtCs1kSLwfZQ88S_3std9panicking3try7do_callINtNtNtCsghWqkCs9mKo_4core5panic11unwind_safe16AssertUnwindSafeNCNvXs5_NtB6_6threadINtB1T_6PacketuENtNtNtBR_3ops4drop4Drop4drop0EuECsc19p934y1mR_6std_rs, ptr nonnull %data, ptr nonnull @_RINvNvNtCs1kSLwfZQ88S_3std9panicking3try8do_catchINtNtNtCsghWqkCs9mKo_4core5panic11unwind_safe16AssertUnwindSafeNCNvXs5_NtB6_6threadINtB1U_6PacketuENtNtNtBS_3ops4drop4Drop4drop0EuECsc19p934y1mR_6std_rs), !range !7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %bb2, label %bb3

bb2:                                              ; preds = %start
  br label %bb4

bb3:                                              ; preds = %start
  %slot.0 = load ptr, ptr %data, align 8, !nonnull !4, !align !8, !noundef !4
  %3 = getelementptr inbounds i8, ptr %data, i64 8
  %slot.1 = load ptr, ptr %3, align 8, !nonnull !4, !align !9, !noundef !4
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  %4 = phi ptr [ %slot.1, %bb3 ], [ undef, %bb2 ]
  %5 = phi ptr [ %slot.0, %bb3 ], [ null, %bb2 ]
  %6 = insertvalue { ptr, ptr } poison, ptr %5, 0
  %7 = insertvalue { ptr, ptr } %6, ptr %4, 1
  ret { ptr, ptr } %7
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs9lD8hpqNLQ1_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %_1) unnamed_addr #0 {
start:
  %_2 = load i64, ptr %_1, align 8, !range !5, !noundef !4
  %0 = icmp eq i64 %_2, 0
  br i1 %0, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  %1 = getelementptr inbounds %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>::Some", ptr %_1, i64 0, i32 1
  tail call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs9lD8hpqNLQ1_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %1)
  br label %bb1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs9lD8hpqNLQ1_5alloc4sync3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexINtNtB17_3vec3VechEEEEECsc19p934y1mR_6std_rs(ptr align 8 %_1) unnamed_addr #0 {
start:
  %0 = load ptr, ptr %_1, align 8, !noundef !4
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  tail call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexINtNtB7_3vec3VechEEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %_1)
  br label %bb1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs9lD8hpqNLQ1_5alloc4sync3ArcNtNtNtCs1kSLwfZQ88S_3std6thread6scoped9ScopeDataEEECsc19p934y1mR_6std_rs(ptr align 8 %_1) unnamed_addr #0 {
start:
  %0 = load ptr, ptr %_1, align 8, !noundef !4
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  tail call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcNtNtNtCs1kSLwfZQ88S_3std6thread6scoped9ScopeDataENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %_1)
  br label %bb1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9lD8hpqNLQ1_5alloc6string6StringEECsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %_1) unnamed_addr #0 {
start:
  %0 = load i64, ptr %_1, align 8, !range !6, !noundef !4
  %1 = icmp eq i64 %0, -9223372036854775808
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  tail call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtCs9lD8hpqNLQ1_5alloc3vec3VechEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %_1)
  br label %bb1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9lD8hpqNLQ1_5alloc3ffi5c_str7CStringEECsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %_1) unnamed_addr #0 {
start:
  %0 = load ptr, ptr %_1, align 8, !noundef !4
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  tail call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeNtNtNtCs9lD8hpqNLQ1_5alloc3ffi5c_str7CStringECsc19p934y1mR_6std_rs(ptr nonnull align 8 %_1)
  br label %bb1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs9lD8hpqNLQ1_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %_1) unnamed_addr #0 {
start:
  %0 = load ptr, ptr %_1, align 8, !noundef !4
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  tail call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtCs9lD8hpqNLQ1_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsc19p934y1mR_6std_rs(ptr nonnull align 8 %_1)
  br label %bb1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs1kSLwfZQ88S_3std2io5error5ErrorEECsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %_1) unnamed_addr #0 {
start:
  %0 = load ptr, ptr %_1, align 8, !noundef !4
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  tail call void @_RNvXs1_NtNtNtCs1kSLwfZQ88S_3std2io5error14repr_bitpackedNtB5_4ReprNtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %_1)
  br label %bb1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtCs1kSLwfZQ88S_3std6thread10JoinHandleuEECsc19p934y1mR_6std_rs(ptr align 8 %_1) unnamed_addr #0 {
start:
  tail call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtCs1kSLwfZQ88S_3std6thread9JoinInneruEECsc19p934y1mR_6std_rs(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtCs1kSLwfZQ88S_3std6thread6PacketuEECsc19p934y1mR_6std_rs(ptr align 8 %_1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  invoke fastcc void @_RNvXs5_NtCs1kSLwfZQ88S_3std6threadINtB5_6PacketuENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr align 8 %_1)
          to label %bb6 unwind label %bb4

bb4:                                              ; preds = %start
  %0 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs9lD8hpqNLQ1_5alloc4sync3ArcNtNtNtCs1kSLwfZQ88S_3std6thread6scoped9ScopeDataEEECsc19p934y1mR_6std_rs(ptr align 8 %_1) #34
  br label %bb3

bb6:                                              ; preds = %start
  invoke fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs9lD8hpqNLQ1_5alloc4sync3ArcNtNtNtCs1kSLwfZQ88S_3std6thread6scoped9ScopeDataEEECsc19p934y1mR_6std_rs(ptr align 8 %_1)
          to label %bb5 unwind label %cleanup1

bb3:                                              ; preds = %bb4, %cleanup1
  %.pn = phi { ptr, i32 } [ %2, %cleanup1 ], [ %0, %bb4 ]
  %1 = getelementptr inbounds %"std::thread::Packet<'_, ()>", ptr %_1, i64 0, i32 1
  call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs9lD8hpqNLQ1_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %1) #34
  br label %bb1

cleanup1:                                         ; preds = %bb6
  %2 = landingpad { ptr, i32 }
          cleanup
  br label %bb3

bb5:                                              ; preds = %bb6
  %3 = getelementptr inbounds %"std::thread::Packet<'_, ()>", ptr %_1, i64 0, i32 1
  tail call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs9lD8hpqNLQ1_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %3)
  ret void

bb1:                                              ; preds = %bb3
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtCs1kSLwfZQ88S_3std6thread9JoinInneruEECsc19p934y1mR_6std_rs(ptr align 8 %_1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds %"std::thread::JoinInner<'_, ()>", ptr %_1, i64 0, i32 2
  invoke fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeNtNtNtNtNtCs1kSLwfZQ88S_3std3sys3pal4unix6thread6ThreadECsc19p934y1mR_6std_rs(ptr nonnull align 8 %0)
          to label %bb6 unwind label %bb4

bb4:                                              ; preds = %start
  %1 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcNtNtCs1kSLwfZQ88S_3std6thread5InnerENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr align 8 %_1) #34
  br label %bb3

bb6:                                              ; preds = %start
  invoke fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeNtNtCs1kSLwfZQ88S_3std6thread6ThreadECsc19p934y1mR_6std_rs(ptr align 8 %_1)
          to label %bb5 unwind label %cleanup1

bb3:                                              ; preds = %bb4, %cleanup1
  %.pn = phi { ptr, i32 } [ %3, %cleanup1 ], [ %1, %bb4 ]
  %2 = getelementptr inbounds %"std::thread::JoinInner<'_, ()>", ptr %_1, i64 0, i32 1
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtCs1kSLwfZQ88S_3std6thread6PacketuEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %2) #34
  br label %bb1

cleanup1:                                         ; preds = %bb6
  %3 = landingpad { ptr, i32 }
          cleanup
  br label %bb3

bb5:                                              ; preds = %bb6
  %4 = getelementptr inbounds %"std::thread::JoinInner<'_, ()>", ptr %_1, i64 0, i32 1
  tail call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtCs1kSLwfZQ88S_3std6thread6PacketuEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %4)
  ret void

bb1:                                              ; preds = %bb3
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtCs9lD8hpqNLQ1_5alloc3vec3VechEECsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %_1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  br label %bb4

bb4:                                              ; preds = %start
  tail call fastcc void @_RNvXs2_NtCs9lD8hpqNLQ1_5alloc7raw_vecINtB5_6RawVechENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtCs9lD8hpqNLQ1_5alloc4sync3ArcINtNtCs1kSLwfZQ88S_3std6thread6PacketuEEECsc19p934y1mR_6std_rs(ptr align 8 %_1) unnamed_addr #0 {
start:
  tail call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtCs1kSLwfZQ88S_3std6thread6PacketuEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtCs9lD8hpqNLQ1_5alloc4sync8ArcInnerINtNtCs1kSLwfZQ88S_3std6thread6PacketuEEECsc19p934y1mR_6std_rs(ptr align 8 %_1) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %_1, i64 0, i32 2
  tail call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtCs1kSLwfZQ88S_3std6thread6PacketuEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtCs9lD8hpqNLQ1_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %_1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_6.0 = load ptr, ptr %_1, align 8, !noundef !4
  %0 = getelementptr inbounds i8, ptr %_1, i64 8
  %_6.1 = load ptr, ptr %0, align 8, !nonnull !4, !align !9, !noundef !4
  %1 = load ptr, ptr %_6.1, align 8, !invariant.load !4, !nonnull !4
  invoke void %1(ptr align 1 %_6.0)
          to label %bb3 unwind label %bb4

bb4:                                              ; preds = %start
  %2 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RNvXs6_NtCs9lD8hpqNLQ1_5alloc5boxedINtB5_3BoxDNtNtCsghWqkCs9mKo_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %_1) #34
  br label %bb1

bb3:                                              ; preds = %start
  tail call fastcc void @_RNvXs6_NtCs9lD8hpqNLQ1_5alloc5boxedINtB5_3BoxDNtNtCsghWqkCs9mKo_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %_1)
  ret void

bb1:                                              ; preds = %bb4
  resume { ptr, i32 } %2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtCs9lD8hpqNLQ1_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1B_4SyncEL_EECsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %_1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_6.0 = load ptr, ptr %_1, align 8, !noundef !4
  %0 = getelementptr inbounds i8, ptr %_1, i64 8
  %_6.1 = load ptr, ptr %0, align 8, !nonnull !4, !align !9, !noundef !4
  %1 = load ptr, ptr %_6.1, align 8, !invariant.load !4, !nonnull !4
  invoke void %1(ptr align 1 %_6.0)
          to label %bb3 unwind label %bb4

bb4:                                              ; preds = %start
  %2 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RNvXs6_NtCs9lD8hpqNLQ1_5alloc5boxedINtB5_3BoxDNtNtCsghWqkCs9mKo_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %_1) #34
  br label %bb1

bb3:                                              ; preds = %start
  tail call fastcc void @_RNvXs6_NtCs9lD8hpqNLQ1_5alloc5boxedINtB5_3BoxDNtNtCsghWqkCs9mKo_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %_1)
  ret void

bb1:                                              ; preds = %bb4
  resume { ptr, i32 } %2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtCs9lD8hpqNLQ1_5alloc5boxed3BoxNtNtNtCs1kSLwfZQ88S_3std2io5error6CustomEECsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %_1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_6 = load ptr, ptr %_1, align 8, !noundef !4
  invoke fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeNtNtNtCs1kSLwfZQ88S_3std2io5error6CustomECsc19p934y1mR_6std_rs(ptr align 8 %_6)
          to label %bb3 unwind label %bb4

bb4:                                              ; preds = %start
  %0 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RNvXs6_NtCs9lD8hpqNLQ1_5alloc5boxedINtB5_3BoxNtNtNtCs1kSLwfZQ88S_3std2io5error6CustomENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %_1) #34
  br label %bb1

bb3:                                              ; preds = %start
  tail call fastcc void @_RNvXs6_NtCs9lD8hpqNLQ1_5alloc5boxedINtB5_3BoxNtNtNtCs1kSLwfZQ88S_3std2io5error6CustomENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %_1)
  ret void

bb1:                                              ; preds = %bb4
  resume { ptr, i32 } %0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtNtCs1kSLwfZQ88S_3std2io5error9ErrorDataINtNtCs9lD8hpqNLQ1_5alloc5boxed3BoxNtBJ_6CustomEEECsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %_1) unnamed_addr #0 {
start:
  %0 = load i8, ptr %_1, align 8, !range !10, !noundef !4
  %_2 = zext i8 %0 to i64
  switch i64 %_2, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb1
    i64 2, label %bb1
  ]

bb2:                                              ; preds = %start
  %1 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", ptr %_1, i64 0, i32 1
  tail call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtCs9lD8hpqNLQ1_5alloc5boxed3BoxNtNtNtCs1kSLwfZQ88S_3std2io5error6CustomEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %1)
  br label %bb1

bb1:                                              ; preds = %bb2, %start, %start, %start
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtNtCs1kSLwfZQ88S_3std4sync5mutex10MutexGuardlEECsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %_1) unnamed_addr #0 {
start:
  tail call fastcc void @_RNvXsa_NtNtCs1kSLwfZQ88S_3std4sync5mutexINtB5_10MutexGuardlENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexINtNtCs9lD8hpqNLQ1_5alloc3vec3VechEEECsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %_1) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %"std::sync::mutex::Mutex<alloc::vec::Vec<u8>>", ptr %_1, i64 0, i32 3
  tail call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtCs9lD8hpqNLQ1_5alloc3vec3VechEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtNtCs1kSLwfZQ88S_3std4sync6poison11PoisonErrorINtNtBL_5mutex10MutexGuardlEEECsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %_1) unnamed_addr #0 {
start:
  tail call fastcc void @_RNvXsa_NtNtCs1kSLwfZQ88S_3std4sync5mutexINtB5_10MutexGuardlENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNvNtNtCs1kSLwfZQ88S_3std2io5Write9write_fmt7AdapterNtNtNtNtNtBP_3sys3pal4unix5stdio6StderrEECsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %_1) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds i8, ptr %_1, i64 8
  tail call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs1kSLwfZQ88S_3std2io5error5ErrorEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeNCINvMNtCs1kSLwfZQ88S_3std6threadNtBM_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4main0uEs_0EB1M_(ptr align 8 %_1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  invoke fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeNtNtCs1kSLwfZQ88S_3std6thread6ThreadECsc19p934y1mR_6std_rs(ptr align 8 %_1)
          to label %bb8 unwind label %bb5

bb5:                                              ; preds = %start
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:11:33: 11:40}, ()>::{closure#1}}", ptr %_1, i64 0, i32 2
  call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs9lD8hpqNLQ1_5alloc4sync3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexINtNtB17_3vec3VechEEEEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %1) #34
  br label %bb4

bb8:                                              ; preds = %start
  %2 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:11:33: 11:40}, ()>::{closure#1}}", ptr %_1, i64 0, i32 2
  invoke fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs9lD8hpqNLQ1_5alloc4sync3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexINtNtB17_3vec3VechEEEEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %2)
          to label %bb7 unwind label %cleanup1

bb4:                                              ; preds = %bb5, %cleanup1
  %.pn = phi { ptr, i32 } [ %4, %cleanup1 ], [ %0, %bb5 ]
  %3 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:11:33: 11:40}, ()>::{closure#1}}", ptr %_1, i64 0, i32 3
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexlEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %3) #34
  br label %bb3

cleanup1:                                         ; preds = %bb8
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb4

bb7:                                              ; preds = %bb8
  %5 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:11:33: 11:40}, ()>::{closure#1}}", ptr %_1, i64 0, i32 3
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexlEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %5)
  br label %bb6

bb3:                                              ; preds = %bb4
  %6 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:11:33: 11:40}, ()>::{closure#1}}", ptr %_1, i64 0, i32 1
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtCs1kSLwfZQ88S_3std6thread6PacketuEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %6) #34
  br label %bb1

bb6:                                              ; preds = %bb7
  %7 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:11:33: 11:40}, ()>::{closure#1}}", ptr %_1, i64 0, i32 1
  tail call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtCs1kSLwfZQ88S_3std6thread6PacketuEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %7)
  ret void

bb1:                                              ; preds = %bb3
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeNCINvMNtCs1kSLwfZQ88S_3std6threadNtBM_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4mains_0uEs_0EB1M_(ptr align 8 %_1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  invoke fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeNtNtCs1kSLwfZQ88S_3std6thread6ThreadECsc19p934y1mR_6std_rs(ptr align 8 %_1)
          to label %bb8 unwind label %bb5

bb5:                                              ; preds = %start
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:16:33: 16:40}, ()>::{closure#1}}", ptr %_1, i64 0, i32 2
  call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs9lD8hpqNLQ1_5alloc4sync3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexINtNtB17_3vec3VechEEEEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %1) #34
  br label %bb4

bb8:                                              ; preds = %start
  %2 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:16:33: 16:40}, ()>::{closure#1}}", ptr %_1, i64 0, i32 2
  invoke fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs9lD8hpqNLQ1_5alloc4sync3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexINtNtB17_3vec3VechEEEEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %2)
          to label %bb7 unwind label %cleanup1

bb4:                                              ; preds = %bb5, %cleanup1
  %.pn = phi { ptr, i32 } [ %4, %cleanup1 ], [ %0, %bb5 ]
  %3 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:16:33: 16:40}, ()>::{closure#1}}", ptr %_1, i64 0, i32 3
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexlEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %3) #34
  br label %bb3

cleanup1:                                         ; preds = %bb8
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb4

bb7:                                              ; preds = %bb8
  %5 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:16:33: 16:40}, ()>::{closure#1}}", ptr %_1, i64 0, i32 3
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexlEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %5)
  br label %bb6

bb3:                                              ; preds = %bb4
  %6 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:16:33: 16:40}, ()>::{closure#1}}", ptr %_1, i64 0, i32 1
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtCs1kSLwfZQ88S_3std6thread6PacketuEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %6) #34
  br label %bb1

bb6:                                              ; preds = %bb7
  %7 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:16:33: 16:40}, ()>::{closure#1}}", ptr %_1, i64 0, i32 1
  tail call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtCs1kSLwfZQ88S_3std6thread6PacketuEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %7)
  ret void

bb1:                                              ; preds = %bb3
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeNCINvNtCs1kSLwfZQ88S_3std2rt10lang_startuE0ECsc19p934y1mR_6std_rs(ptr nocapture readnone align 8 %_1) unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeNtNtCs1kSLwfZQ88S_3std6thread5InnerECsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %_1) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %"std::thread::Inner", ptr %_1, i64 0, i32 1
  tail call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9lD8hpqNLQ1_5alloc3ffi5c_str7CStringEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeNtNtCs1kSLwfZQ88S_3std6thread6ThreadECsc19p934y1mR_6std_rs(ptr align 8 %_1) unnamed_addr #0 {
start:
  tail call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcNtNtCs1kSLwfZQ88S_3std6thread5InnerENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeNtNtNtCs1kSLwfZQ88S_3std2io5error5ErrorECsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %_1) unnamed_addr #0 {
start:
  tail call fastcc void @_RNvXs1_NtNtNtCs1kSLwfZQ88S_3std2io5error14repr_bitpackedNtB5_4ReprNtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeNtNtNtCs1kSLwfZQ88S_3std2io5error6CustomECsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %_1) unnamed_addr #0 {
start:
  tail call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtCs9lD8hpqNLQ1_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1B_4SyncEL_EECsc19p934y1mR_6std_rs(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeNtNtNtCs9lD8hpqNLQ1_5alloc3ffi5c_str7CStringECsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %_1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  call fastcc void @_RNvXs0_NtNtCs9lD8hpqNLQ1_5alloc3ffi5c_strNtB5_7CStringNtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr align 8 %_1)
  br label %bb4

bb4:                                              ; preds = %start
  tail call fastcc void @_RNvXs6_NtCs9lD8hpqNLQ1_5alloc5boxedINtB5_3BoxShENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeNtNtNtCs9lD8hpqNLQ1_5alloc3ffi5c_str8NulErrorECsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %_1) unnamed_addr #0 {
start:
  tail call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtCs9lD8hpqNLQ1_5alloc3vec3VechEECsc19p934y1mR_6std_rs(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeNtNtNtNtNtCs1kSLwfZQ88S_3std3sys3pal4unix6thread6ThreadECsc19p934y1mR_6std_rs(ptr align 8 %_1) unnamed_addr #0 {
start:
  tail call void @"_ZN77_$LT$std..sys..pal..unix..thread..Thread$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2455a369488eb470E"(ptr align 8 %_1)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeRINtNtCs9lD8hpqNLQ1_5alloc3vec3VechEECsc19p934y1mR_6std_rs(ptr nocapture readnone align 8 %_1) unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeRhECsc19p934y1mR_6std_rs(ptr nocapture readnone align 8 %_1) unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placejECsc19p934y1mR_6std_rs(ptr nocapture readnone align 8 %_1) unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs1kSLwfZQ88S_3std10sys_common9backtrace28___rust_begin_short_backtraceFEuuECsc19p934y1mR_6std_rs(ptr nocapture readonly %f) unnamed_addr #2 {
start:
  tail call fastcc void @_RNvYFEuINtNtNtCsghWqkCs9mKo_4core3ops8function6FnOnceuE9call_onceCsc19p934y1mR_6std_rs(ptr %f)
  tail call void asm sideeffect "", "~{memory}"() #35, !srcloc !11
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs1kSLwfZQ88S_3std10sys_common9backtrace28___rust_begin_short_backtraceNCNvCsc19p934y1mR_6std_rs4main0uEB1j_(ptr %f) unnamed_addr #2 {
start:
  tail call fastcc void @_RNCNvCsc19p934y1mR_6std_rs4main0B3_(ptr %f)
  tail call void asm sideeffect "", "~{memory}"() #35, !srcloc !11
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs1kSLwfZQ88S_3std10sys_common9backtrace28___rust_begin_short_backtraceNCNvCsc19p934y1mR_6std_rs4mains_0uEB1j_(ptr %f) unnamed_addr #2 {
start:
  tail call fastcc void @_RNCNvCsc19p934y1mR_6std_rs4mains_0B3_(ptr %f)
  tail call void asm sideeffect "", "~{memory}"() #35, !srcloc !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal fastcc void @_RINvNtNtCs1kSLwfZQ88S_3std4sync6poison10map_resultNtB2_5GuardINtNtB4_5mutex10MutexGuardlENCNvMs7_B10_BX_3new0ECsc19p934y1mR_6std_rs(ptr nocapture writeonly sret(%"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>") align 8 %_0, i1 zeroext %0, i8 %1, ptr align 4 %f) unnamed_addr #3 {
start:
  br i1 %0, label %bb1, label %bb3

bb3:                                              ; preds = %start
  %2 = and i8 %1, 1
  %t = icmp ne i8 %2, 0
  %3 = tail call fastcc { ptr, i1 } @_RNCNvMs7_NtNtCs1kSLwfZQ88S_3std4sync5mutexINtB7_10MutexGuardlE3new0Csc19p934y1mR_6std_rs(ptr align 4 %f, i1 zeroext %t)
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
  %8 = tail call fastcc { ptr, i1 } @_RNCNvMs7_NtNtCs1kSLwfZQ88S_3std4sync5mutexINtB7_10MutexGuardlE3new0Csc19p934y1mR_6std_rs(ptr align 4 %f, i1 zeroext %guard)
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

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc i8 @_RINvNtNtCsghWqkCs9mKo_4core4sync6atomic11atomic_loadhECsc19p934y1mR_6std_rs(ptr nocapture readonly %dst, i8 %0) unnamed_addr #4 {
bb2:
  %1 = load atomic i8, ptr %dst monotonic, align 1
  ret i8 %1
}

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind nonlazybind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i64 @_RINvNtNtCsghWqkCs9mKo_4core4sync6atomic11atomic_loadjECsc19p934y1mR_6std_rs(ptr nocapture readnone %dst, i8 %0) unnamed_addr #5 {
bb2:
  %1 = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h97ef83b1126fc127E monotonic, align 8
  ret i64 %1
}

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtCsghWqkCs9mKo_4core4sync6atomic12atomic_storehECsc19p934y1mR_6std_rs(ptr nocapture writeonly %dst, i8 %val, i8 %0) unnamed_addr #4 {
bb2:
  store atomic i8 1, ptr %dst monotonic, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc { i32, i32 } @_RINvNtNtCsghWqkCs9mKo_4core4sync6atomic23atomic_compare_exchangemECsc19p934y1mR_6std_rs(ptr nocapture %dst, i32 %old, i32 %new, i8 %0, i8 %1) unnamed_addr #4 {
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

; Function Attrs: inlinehint mustprogress nofree nosync nonlazybind willreturn memory(argmem: write, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RINvNtNtNtCs1kSLwfZQ88S_3std2io5error14repr_bitpacked11decode_reprINtNtCs9lD8hpqNLQ1_5alloc5boxed3BoxNtB4_6CustomENCNvXs1_B2_NtB2_4ReprNtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4drop0ECsc19p934y1mR_6std_rs(ptr nocapture writeonly sret(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>") align 8 %_0, ptr %ptr) unnamed_addr #6 personality ptr @rust_eh_personality {
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
  %3 = call fastcc i8 @_RNvNtNtNtCs1kSLwfZQ88S_3std2io5error14repr_bitpacked14kind_from_primCsc19p934y1mR_6std_rs(i32 %kind_bits), !range !12
  br label %bb4

bb5:                                              ; preds = %start
  %4 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::SimpleMessage", ptr %_0, i64 0, i32 1
  store ptr %ptr, ptr %4, align 8
  store i8 2, ptr %_0, align 8
  br label %bb9

bb6:                                              ; preds = %start
  %5 = getelementptr i8, ptr %ptr, i64 -1
  %_21 = call fastcc align 8 ptr @_RNCNvXs1_NtNtNtCs1kSLwfZQ88S_3std2io5error14repr_bitpackedNtB7_4ReprNtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4drop0Csc19p934y1mR_6std_rs(ptr %5)
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

bb9:                                              ; preds = %bb4, %bb8, %bb5, %bb2
  ret void
}

; Function Attrs: inlinehint mustprogress nofree nosync nonlazybind willreturn memory(argmem: write, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RINvNtNtNtCs1kSLwfZQ88S_3std2io5error14repr_bitpacked11decode_reprRNtB4_6CustomNCNvMs0_B2_NtB2_4Repr4data0ECsc19p934y1mR_6std_rs(ptr nocapture writeonly sret(%"std::io::error::ErrorData<&std::io::error::Custom>") align 8 %_0, ptr %ptr) unnamed_addr #6 personality ptr @rust_eh_personality {
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
  %3 = call fastcc i8 @_RNvNtNtNtCs1kSLwfZQ88S_3std2io5error14repr_bitpacked14kind_from_primCsc19p934y1mR_6std_rs(i32 %kind_bits), !range !12
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

bb9:                                              ; preds = %bb4, %bb8, %bb5, %bb2
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RINvNvNtCs1kSLwfZQ88S_3std9panicking3try7do_callINtNtNtCsghWqkCs9mKo_4core5panic11unwind_safe16AssertUnwindSafeNCNCINvMNtB6_6threadNtB1T_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4main0uEs_00EuEB2F_(ptr nocapture readonly %data) unnamed_addr #7 {
start:
  %f = load ptr, ptr %data, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvNtNtCs1kSLwfZQ88S_3std10sys_common9backtrace28___rust_begin_short_backtraceNCNvCsc19p934y1mR_6std_rs4main0uEB1j_(ptr nonnull %f)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RINvNvNtCs1kSLwfZQ88S_3std9panicking3try7do_callINtNtNtCsghWqkCs9mKo_4core5panic11unwind_safe16AssertUnwindSafeNCNCINvMNtB6_6threadNtB1T_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4mains_0uEs_00EuEB2F_(ptr nocapture readonly %data) unnamed_addr #7 {
start:
  %f = load ptr, ptr %data, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvNtNtCs1kSLwfZQ88S_3std10sys_common9backtrace28___rust_begin_short_backtraceNCNvCsc19p934y1mR_6std_rs4mains_0uEB1j_(ptr nonnull %f)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RINvNvNtCs1kSLwfZQ88S_3std9panicking3try7do_callINtNtNtCsghWqkCs9mKo_4core5panic11unwind_safe16AssertUnwindSafeNCNvXs5_NtB6_6threadINtB1T_6PacketuENtNtNtBR_3ops4drop4Drop4drop0EuECsc19p934y1mR_6std_rs(ptr nocapture readonly %data) unnamed_addr #7 {
start:
  %f = load ptr, ptr %data, align 8, !nonnull !4, !align !9, !noundef !4
  tail call fastcc void @_RNvYNCNvXs5_NtCs1kSLwfZQ88S_3std6threadINtBa_6PacketuENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4drop0INtNtBU_8function6FnOnceuE9call_onceCsc19p934y1mR_6std_rs(ptr nonnull align 8 %f)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RINvNvNtCs1kSLwfZQ88S_3std9panicking3try8do_catchINtNtNtCsghWqkCs9mKo_4core5panic11unwind_safe16AssertUnwindSafeNCNCINvMNtB6_6threadNtB1U_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4main0uEs_00EuEB2G_(ptr nocapture writeonly %data, ptr %payload) unnamed_addr #8 personality ptr @rust_eh_personality {
start:
  %0 = call { ptr, ptr } @_ZN3std9panicking3try7cleanup17h6d4e570bbe25440aE(ptr %payload)
  br label %bb1

bb1:                                              ; preds = %start
  %obj.0 = extractvalue { ptr, ptr } %0, 0
  %obj.1 = extractvalue { ptr, ptr } %0, 1
  store ptr %obj.0, ptr %data, align 8
  %1 = getelementptr inbounds i8, ptr %data, i64 8
  store ptr %obj.1, ptr %1, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RINvNvNtCs1kSLwfZQ88S_3std9panicking3try8do_catchINtNtNtCsghWqkCs9mKo_4core5panic11unwind_safe16AssertUnwindSafeNCNCINvMNtB6_6threadNtB1U_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4mains_0uEs_00EuEB2G_(ptr nocapture writeonly %data, ptr %payload) unnamed_addr #8 personality ptr @rust_eh_personality {
start:
  %0 = call { ptr, ptr } @_ZN3std9panicking3try7cleanup17h6d4e570bbe25440aE(ptr %payload)
  br label %bb1

bb1:                                              ; preds = %start
  %obj.0 = extractvalue { ptr, ptr } %0, 0
  %obj.1 = extractvalue { ptr, ptr } %0, 1
  store ptr %obj.0, ptr %data, align 8
  %1 = getelementptr inbounds i8, ptr %data, i64 8
  store ptr %obj.1, ptr %1, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RINvNvNtCs1kSLwfZQ88S_3std9panicking3try8do_catchINtNtNtCsghWqkCs9mKo_4core5panic11unwind_safe16AssertUnwindSafeNCNvXs5_NtB6_6threadINtB1U_6PacketuENtNtNtBS_3ops4drop4Drop4drop0EuECsc19p934y1mR_6std_rs(ptr nocapture writeonly %data, ptr %payload) unnamed_addr #8 personality ptr @rust_eh_personality {
start:
  %0 = call { ptr, ptr } @_ZN3std9panicking3try7cleanup17h6d4e570bbe25440aE(ptr %payload)
  br label %bb1

bb1:                                              ; preds = %start
  %obj.0 = extractvalue { ptr, ptr } %0, 0
  %obj.1 = extractvalue { ptr, ptr } %0, 1
  store ptr %obj.0, ptr %data, align 8
  %1 = getelementptr inbounds i8, ptr %data, i64 8
  store ptr %obj.1, ptr %1, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMNtCs1kSLwfZQ88S_3std6threadNtB5_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4main0uEs_0B15_(ptr align 8 %_1) unnamed_addr #7 personality ptr @rust_eh_personality {
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

bb20.thread:                                      ; preds = %bb4, %bb3, %bb2, %start
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
  %8 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:11:33: 11:40}, ()>::{closure#1}}", ptr %_1, i64 0, i32 2
  %_8 = load ptr, ptr %8, align 8, !noundef !4
  %9 = invoke ptr @_ZN3std2io5stdio18set_output_capture17h47fa7577e7da3004E(ptr %_8)
          to label %bb4 unwind label %bb20.thread

bb4:                                              ; preds = %bb3
  store ptr %9, ptr %_7, align 8
  invoke fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs9lD8hpqNLQ1_5alloc4sync3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexINtNtB17_3vec3VechEEEEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %_7)
          to label %bb5 unwind label %bb20.thread

bb5:                                              ; preds = %bb4
  %10 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:11:33: 11:40}, ()>::{closure#1}}", ptr %_1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !nonnull !4, !noundef !4
  store ptr %11, ptr %f, align 8
  invoke void @_ZN3std3sys3pal4unix6thread5guard7current17ha2bb65882033f000E(ptr nonnull sret(%"core::option::Option<core::ops::range::Range<usize>>") align 8 %_12)
          to label %bb6 unwind label %bb11

bb12:                                             ; preds = %bb8, %bb7
  %_23.2.ph = phi i8 [ 1, %bb7 ], [ 0, %bb8 ]
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %12 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %13 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 1
  br label %bb13

bb6:                                              ; preds = %bb5
  %_13 = load ptr, ptr %_1, align 8, !nonnull !4, !noundef !4
  invoke void @_ZN3std10sys_common11thread_info3set17h2c664b76c70cf208E(ptr nonnull align 8 %_12, ptr nonnull %_13)
          to label %bb7 unwind label %bb11

bb7:                                              ; preds = %bb6
  %14 = invoke fastcc { ptr, ptr } @_RINvNtCs1kSLwfZQ88S_3std9panicking3tryuINtNtNtCsghWqkCs9mKo_4core5panic11unwind_safe16AssertUnwindSafeNCNCINvMNtB4_6threadNtB1K_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4main0uEs_00EEB2w_(ptr nonnull %11)
          to label %bb22 unwind label %bb12

bb22:                                             ; preds = %bb7
  %try_result.0 = extractvalue { ptr, ptr } %14, 0
  %try_result.1 = extractvalue { ptr, ptr } %14, 1
  %15 = getelementptr inbounds %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>::Some", ptr %_17, i64 0, i32 1
  store ptr %try_result.0, ptr %15, align 8
  %16 = getelementptr inbounds %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>::Some", ptr %_17, i64 0, i32 1, i32 1
  store ptr %try_result.1, ptr %16, align 8
  store i64 1, ptr %_17, align 8
  %17 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:11:33: 11:40}, ()>::{closure#1}}", ptr %_1, i64 0, i32 1
  %self5 = load ptr, ptr %17, align 8, !nonnull !4, !noundef !4
  %_40 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %self5, i64 0, i32 2, i32 1
  invoke fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs9lD8hpqNLQ1_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %_40)
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
  %21 = load ptr, ptr %17, align 8, !nonnull !4, !noundef !4
  store ptr %21, ptr %_x, align 8
  invoke fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtCs9lD8hpqNLQ1_5alloc4sync3ArcINtNtCs1kSLwfZQ88S_3std6thread6PacketuEEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %_x)
          to label %bb23 unwind label %bb12

bb23:                                             ; preds = %bb8
  ret void

bb11:                                             ; preds = %bb6, %bb5
  %.not = phi i1 [ false, %bb5 ], [ true, %bb6 ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexlEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %f) #34
  br label %bb20

bb17:                                             ; preds = %bb19
  br i1 %_26.012, label %bb18, label %bb15

bb19:                                             ; preds = %bb20.thread, %bb20
  %22 = phi i32 [ %5, %bb20.thread ], [ %1, %bb20 ]
  %23 = phi ptr [ %4, %bb20.thread ], [ %2, %bb20 ]
  %_26.012 = phi i1 [ %_26.1, %bb20.thread ], [ false, %bb20 ]
  %_25.010 = phi i1 [ true, %bb20.thread ], [ false, %bb20 ]
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcNtNtCs1kSLwfZQ88S_3std6thread5InnerENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr align 8 %_1) #34
  br label %bb17

bb15:                                             ; preds = %bb18, %bb17
  br i1 %_25.010, label %bb16, label %bb13

bb18:                                             ; preds = %bb17
  %24 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:11:33: 11:40}, ()>::{closure#1}}", ptr %_1, i64 0, i32 2
  call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs9lD8hpqNLQ1_5alloc4sync3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexINtNtB17_3vec3VechEEEEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %24) #34
  br label %bb15

bb13:                                             ; preds = %bb16, %bb15, %bb12, %bb20
  %25 = phi i32 [ %22, %bb16 ], [ %22, %bb15 ], [ %1, %bb20 ], [ %13, %bb12 ]
  %26 = phi ptr [ %23, %bb16 ], [ %23, %bb15 ], [ %2, %bb20 ], [ %12, %bb12 ]
  %_23.092831 = phi i8 [ 1, %bb16 ], [ 1, %bb15 ], [ 1, %bb20 ], [ %_23.2.ph, %bb12 ]
  %27 = and i8 %_23.092831, 1
  %.not1 = icmp eq i8 %27, 0
  br i1 %.not1, label %bb10, label %bb14

bb16:                                             ; preds = %bb15
  %28 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:11:33: 11:40}, ()>::{closure#1}}", ptr %_1, i64 0, i32 3
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexlEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %28) #34
  br label %bb13

bb10:                                             ; preds = %bb14, %bb13
  %29 = phi i32 [ %33, %bb14 ], [ %25, %bb13 ]
  %30 = phi ptr [ %34, %bb14 ], [ %26, %bb13 ]
  %31 = insertvalue { ptr, i32 } poison, ptr %30, 0
  %32 = insertvalue { ptr, i32 } %31, i32 %29, 1
  resume { ptr, i32 } %32

bb14:                                             ; preds = %bb13, %bb13.thread
  %33 = phi i32 [ %20, %bb13.thread ], [ %25, %bb13 ]
  %34 = phi ptr [ %19, %bb13.thread ], [ %26, %bb13 ]
  %35 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:11:33: 11:40}, ()>::{closure#1}}", ptr %_1, i64 0, i32 1
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtCs1kSLwfZQ88S_3std6thread6PacketuEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %35) #34
  br label %bb10
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMNtCs1kSLwfZQ88S_3std6threadNtB5_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4mains_0uEs_0B15_(ptr align 8 %_1) unnamed_addr #7 personality ptr @rust_eh_personality {
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

bb20.thread:                                      ; preds = %bb4, %bb3, %bb2, %start
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
  %8 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:16:33: 16:40}, ()>::{closure#1}}", ptr %_1, i64 0, i32 2
  %_8 = load ptr, ptr %8, align 8, !noundef !4
  %9 = invoke ptr @_ZN3std2io5stdio18set_output_capture17h47fa7577e7da3004E(ptr %_8)
          to label %bb4 unwind label %bb20.thread

bb4:                                              ; preds = %bb3
  store ptr %9, ptr %_7, align 8
  invoke fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs9lD8hpqNLQ1_5alloc4sync3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexINtNtB17_3vec3VechEEEEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %_7)
          to label %bb5 unwind label %bb20.thread

bb5:                                              ; preds = %bb4
  %10 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:16:33: 16:40}, ()>::{closure#1}}", ptr %_1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !nonnull !4, !noundef !4
  store ptr %11, ptr %f, align 8
  invoke void @_ZN3std3sys3pal4unix6thread5guard7current17ha2bb65882033f000E(ptr nonnull sret(%"core::option::Option<core::ops::range::Range<usize>>") align 8 %_12)
          to label %bb6 unwind label %bb11

bb12:                                             ; preds = %bb8, %bb7
  %_23.2.ph = phi i8 [ 1, %bb7 ], [ 0, %bb8 ]
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %12 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %13 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 1
  br label %bb13

bb6:                                              ; preds = %bb5
  %_13 = load ptr, ptr %_1, align 8, !nonnull !4, !noundef !4
  invoke void @_ZN3std10sys_common11thread_info3set17h2c664b76c70cf208E(ptr nonnull align 8 %_12, ptr nonnull %_13)
          to label %bb7 unwind label %bb11

bb7:                                              ; preds = %bb6
  %14 = invoke fastcc { ptr, ptr } @_RINvNtCs1kSLwfZQ88S_3std9panicking3tryuINtNtNtCsghWqkCs9mKo_4core5panic11unwind_safe16AssertUnwindSafeNCNCINvMNtB4_6threadNtB1K_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4mains_0uEs_00EEB2w_(ptr nonnull %11)
          to label %bb22 unwind label %bb12

bb22:                                             ; preds = %bb7
  %try_result.0 = extractvalue { ptr, ptr } %14, 0
  %try_result.1 = extractvalue { ptr, ptr } %14, 1
  %15 = getelementptr inbounds %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>::Some", ptr %_17, i64 0, i32 1
  store ptr %try_result.0, ptr %15, align 8
  %16 = getelementptr inbounds %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>::Some", ptr %_17, i64 0, i32 1, i32 1
  store ptr %try_result.1, ptr %16, align 8
  store i64 1, ptr %_17, align 8
  %17 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:16:33: 16:40}, ()>::{closure#1}}", ptr %_1, i64 0, i32 1
  %self5 = load ptr, ptr %17, align 8, !nonnull !4, !noundef !4
  %_40 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %self5, i64 0, i32 2, i32 1
  invoke fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs9lD8hpqNLQ1_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %_40)
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
  %21 = load ptr, ptr %17, align 8, !nonnull !4, !noundef !4
  store ptr %21, ptr %_x, align 8
  invoke fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtCs9lD8hpqNLQ1_5alloc4sync3ArcINtNtCs1kSLwfZQ88S_3std6thread6PacketuEEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %_x)
          to label %bb23 unwind label %bb12

bb23:                                             ; preds = %bb8
  ret void

bb11:                                             ; preds = %bb6, %bb5
  %.not = phi i1 [ false, %bb5 ], [ true, %bb6 ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexlEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %f) #34
  br label %bb20

bb17:                                             ; preds = %bb19
  br i1 %_26.012, label %bb18, label %bb15

bb19:                                             ; preds = %bb20.thread, %bb20
  %22 = phi i32 [ %5, %bb20.thread ], [ %1, %bb20 ]
  %23 = phi ptr [ %4, %bb20.thread ], [ %2, %bb20 ]
  %_26.012 = phi i1 [ %_26.1, %bb20.thread ], [ false, %bb20 ]
  %_25.010 = phi i1 [ true, %bb20.thread ], [ false, %bb20 ]
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcNtNtCs1kSLwfZQ88S_3std6thread5InnerENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr align 8 %_1) #34
  br label %bb17

bb15:                                             ; preds = %bb18, %bb17
  br i1 %_25.010, label %bb16, label %bb13

bb18:                                             ; preds = %bb17
  %24 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:16:33: 16:40}, ()>::{closure#1}}", ptr %_1, i64 0, i32 2
  call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs9lD8hpqNLQ1_5alloc4sync3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexINtNtB17_3vec3VechEEEEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %24) #34
  br label %bb15

bb13:                                             ; preds = %bb16, %bb15, %bb12, %bb20
  %25 = phi i32 [ %22, %bb16 ], [ %22, %bb15 ], [ %1, %bb20 ], [ %13, %bb12 ]
  %26 = phi ptr [ %23, %bb16 ], [ %23, %bb15 ], [ %2, %bb20 ], [ %12, %bb12 ]
  %_23.092831 = phi i8 [ 1, %bb16 ], [ 1, %bb15 ], [ 1, %bb20 ], [ %_23.2.ph, %bb12 ]
  %27 = and i8 %_23.092831, 1
  %.not1 = icmp eq i8 %27, 0
  br i1 %.not1, label %bb10, label %bb14

bb16:                                             ; preds = %bb15
  %28 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:16:33: 16:40}, ()>::{closure#1}}", ptr %_1, i64 0, i32 3
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexlEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %28) #34
  br label %bb13

bb10:                                             ; preds = %bb14, %bb13
  %29 = phi i32 [ %33, %bb14 ], [ %25, %bb13 ]
  %30 = phi ptr [ %34, %bb14 ], [ %26, %bb13 ]
  %31 = insertvalue { ptr, i32 } poison, ptr %30, 0
  %32 = insertvalue { ptr, i32 } %31, i32 %29, 1
  resume { ptr, i32 } %32

bb14:                                             ; preds = %bb13, %bb13.thread
  %33 = phi i32 [ %20, %bb13.thread ], [ %25, %bb13 ]
  %34 = phi ptr [ %19, %bb13.thread ], [ %26, %bb13 ]
  %35 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@../files/std_rs.rs:16:33: 16:40}, ()>::{closure#1}}", ptr %_1, i64 0, i32 1
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtCs1kSLwfZQ88S_3std6thread6PacketuEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %35) #34
  br label %bb10
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_RNCINvNtCs1kSLwfZQ88S_3std2rt10lang_startuE0Csc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %_1) unnamed_addr #7 {
start:
  %_4 = load ptr, ptr %_1, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvNtNtCs1kSLwfZQ88S_3std10sys_common9backtrace28___rust_begin_short_backtraceFEuuECsc19p934y1mR_6std_rs(ptr nonnull %_4)
  ret i32 0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc { ptr, i1 } @_RNCNvMs7_NtNtCs1kSLwfZQ88S_3std4sync5mutexINtB7_10MutexGuardlE3new0Csc19p934y1mR_6std_rs(ptr align 4 %_1, i1 zeroext %guard) unnamed_addr #1 {
start:
  %0 = insertvalue { ptr, i1 } poison, ptr %_1, 0
  %1 = insertvalue { ptr, i1 } %0, i1 %guard, 1
  ret { ptr, i1 } %1
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind nonlazybind willreturn memory(inaccessiblemem: readwrite) uwtable
define internal fastcc align 8 ptr @_RNCNvXs1_NtNtNtCs1kSLwfZQ88S_3std2io5error14repr_bitpackedNtB7_4ReprNtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4drop0Csc19p934y1mR_6std_rs(ptr readnone returned %p) unnamed_addr #9 {
start:
  %0 = icmp ne ptr %p, null
  tail call void @llvm.assume(i1 %0)
  ret ptr %p
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvXs5_NtCs1kSLwfZQ88S_3std6threadINtB7_6PacketuENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4drop0Csc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %_1) unnamed_addr #7 personality ptr @rust_eh_personality {
start:
  %_2 = alloca %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>", align 8
  store i64 0, ptr %_2, align 8
  %self = load ptr, ptr %_1, align 8, !nonnull !4, !align !9, !noundef !4
  invoke fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs9lD8hpqNLQ1_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %self)
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
define internal void @_RNSNvYNCINvMNtCs1kSLwfZQ88S_3std6threadNtBa_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4main0uEs_0INtNtNtCsghWqkCs9mKo_4core3ops8function6FnOnceuE9call_once6vtableB1a_(ptr %_1) unnamed_addr #7 {
start:
  tail call fastcc void @_RNCINvMNtCs1kSLwfZQ88S_3std6threadNtB5_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4main0uEs_0B15_(ptr align 8 %_1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMNtCs1kSLwfZQ88S_3std6threadNtBa_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4mains_0uEs_0INtNtNtCsghWqkCs9mKo_4core3ops8function6FnOnceuE9call_once6vtableB1a_(ptr %_1) unnamed_addr #7 {
start:
  tail call fastcc void @_RNCINvMNtCs1kSLwfZQ88S_3std6threadNtB5_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4mains_0uEs_0B15_(ptr align 8 %_1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_RNSNvYNCINvNtCs1kSLwfZQ88S_3std2rt10lang_startuE0INtNtNtCsghWqkCs9mKo_4core3ops8function6FnOnceuE9call_once6vtableCsc19p934y1mR_6std_rs(ptr nocapture readonly %_1) unnamed_addr #7 {
start:
  %0 = load ptr, ptr %_1, align 8, !nonnull !4, !noundef !4
  %_0 = tail call fastcc i32 @_RNvYNCINvNtCs1kSLwfZQ88S_3std2rt10lang_startuE0INtNtNtCsghWqkCs9mKo_4core3ops8function6FnOnceuE9call_onceCsc19p934y1mR_6std_rs(ptr nonnull %0), !range !13
  ret i32 %_0
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMNtCs9lD8hpqNLQ1_5alloc5allocNtB2_6Global10alloc_implCsc19p934y1mR_6std_rs(ptr nocapture readnone align 1 %self, i64 %0, i64 %1, i1 zeroext %zeroed) unnamed_addr #8 {
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
  %8 = tail call ptr @__rust_alloc(i64 %1, i64 %0) #35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %bb7, label %bb6

bb6:                                              ; preds = %bb5
  br label %bb8

bb7:                                              ; preds = %bb5
  br label %bb8
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtCsghWqkCs9mKo_4core6resultINtB2_6ResultINtNtCs1kSLwfZQ88S_3std6thread10JoinHandleuENtNtNtBM_2io5error5ErrorE6expectCsc19p934y1mR_6std_rs(ptr nocapture writeonly sret(%"std::thread::JoinHandle<()>") align 8 %t, ptr nocapture readonly align 8 %self, ptr nocapture readnone align 1 %msg.0, i64 %msg.1, ptr nocapture readnone align 8 %0) unnamed_addr #7 personality ptr @rust_eh_personality {
start:
  %e = alloca ptr, align 8
  %1 = load ptr, ptr %self, align 8, !noundef !4
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb1, label %bb3

bb3:                                              ; preds = %start
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %t, ptr noundef nonnull align 8 dereferenceable(24) %self, i64 24, i1 false)
  ret void

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds %"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>::Err", ptr %self, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4
  store ptr %3, ptr %e, align 8
  invoke void @_ZN4core6result13unwrap_failed17h566b4fa76abf40a2E(ptr nonnull align 1 @alloc_e3605bf48dd8479a638909176cc37fce, i64 22, ptr nonnull align 1 %e, ptr nonnull align 8 @vtable.4, ptr nonnull align 8 @alloc_cfbb55ba8bd892c2ed60a2c3f28c3541) #36
          to label %unreachable unwind label %bb4

bb4:                                              ; preds = %bb1
  %4 = landingpad { ptr, i32 }
          cleanup
  call void @_RNvXs1_NtNtNtCs1kSLwfZQ88S_3std2io5error14repr_bitpackedNtB5_4ReprNtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %e) #34
  br label %bb5

unreachable:                                      ; preds = %bb1
  unreachable

bb5:                                              ; preds = %bb4
  resume { ptr, i32 } %4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMNtCsghWqkCs9mKo_4core6resultINtB2_6ResultNtNtNtCs9lD8hpqNLQ1_5alloc3ffi5c_str7CStringNtBJ_8NulErrorE6expectCsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %self, ptr nocapture readnone align 1 %msg.0, i64 %msg.1, ptr nocapture readnone align 8 %0) unnamed_addr #7 personality ptr @rust_eh_personality {
start:
  %e = alloca %"alloc::ffi::c_str::NulError", align 8
  %1 = load i64, ptr %self, align 8, !range !6, !noundef !4
  %2 = icmp eq i64 %1, -9223372036854775808
  br i1 %2, label %bb3, label %bb1

bb3:                                              ; preds = %start
  %3 = getelementptr inbounds %"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>::Ok", ptr %self, i64 0, i32 1
  %t.0 = load ptr, ptr %3, align 8, !nonnull !4, !align !8, !noundef !4
  %4 = getelementptr inbounds %"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>::Ok", ptr %self, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %t.1 = load i64, ptr %4, align 8, !noundef !4
  %5 = insertvalue { ptr, i64 } poison, ptr %t.0, 0
  %6 = insertvalue { ptr, i64 } %5, i64 %t.1, 1
  ret { ptr, i64 } %6

bb1:                                              ; preds = %start
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %e, ptr noundef nonnull align 8 dereferenceable(32) %self, i64 32, i1 false)
  invoke void @_ZN4core6result13unwrap_failed17h566b4fa76abf40a2E(ptr nonnull align 1 @alloc_498705839b3ae85466bce6e7ebfe4996, i64 47, ptr nonnull align 1 %e, ptr nonnull align 8 @vtable.6, ptr nonnull align 8 @alloc_3c7ed5a01079e282fcc9eb5544b30333) #36
          to label %unreachable unwind label %bb4

bb4:                                              ; preds = %bb1
  %7 = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtCs9lD8hpqNLQ1_5alloc3vec3VechEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %e) #34
  br label %bb5

unreachable:                                      ; preds = %bb1
  unreachable

bb5:                                              ; preds = %bb4
  resume { ptr, i32 } %7
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs1kSLwfZQ88S_3std4sync6poisonNtB2_4Flag4doneCsc19p934y1mR_6std_rs(ptr nocapture writeonly align 1 %self, ptr nocapture readonly align 1 %guard) unnamed_addr #7 {
start:
  %0 = load i8, ptr %guard, align 1, !range !14, !noundef !4
  %_3.not = icmp eq i8 %0, 0
  br i1 %_3.not, label %bb1, label %bb3

bb1:                                              ; preds = %start
  %_6 = tail call fastcc zeroext i1 @_RNvNtNtCs1kSLwfZQ88S_3std9panicking11panic_count13count_is_zeroCsc19p934y1mR_6std_rs()
  br i1 %_6, label %bb3, label %bb2

bb3:                                              ; preds = %bb2, %bb1, %start
  ret void

bb2:                                              ; preds = %bb1
  tail call fastcc void @_RINvNtNtCsghWqkCs9mKo_4core4sync6atomic12atomic_storehECsc19p934y1mR_6std_rs(ptr %self, i8 1, i8 0)
  br label %bb3
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i1, i8 } @_RNvMNtNtCs1kSLwfZQ88S_3std4sync6poisonNtB2_4Flag5guardCsc19p934y1mR_6std_rs(ptr nocapture readonly align 1 %self) unnamed_addr #7 {
start:
  %_5 = tail call fastcc zeroext i1 @_RNvNtNtCs1kSLwfZQ88S_3std9panicking11panic_count13count_is_zeroCsc19p934y1mR_6std_rs()
  %_7 = tail call fastcc i8 @_RINvNtNtCsghWqkCs9mKo_4core4sync6atomic11atomic_loadhECsc19p934y1mR_6std_rs(ptr %self, i8 0)
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
define internal fastcc void @_RNvMNtNtNtNtNtCs1kSLwfZQ88S_3std3sys3pal4unix5locks11futex_mutexNtB2_5Mutex4lockCsc19p934y1mR_6std_rs(ptr align 4 %self) unnamed_addr #7 {
start:
  %0 = tail call fastcc { i32, i32 } @_RINvNtNtCsghWqkCs9mKo_4core4sync6atomic23atomic_compare_exchangemECsc19p934y1mR_6std_rs(ptr %self, i32 0, i32 1, i8 2, i8 0)
  %1 = extractvalue { i32, i32 } %0, 0
  %_11.not = icmp eq i32 %1, 0
  br i1 %_11.not, label %bb3, label %bb1

bb1:                                              ; preds = %start
  tail call void @_ZN3std3sys3pal4unix5locks11futex_mutex5Mutex14lock_contended17h4f7d6dac2a29401eE(ptr align 4 %self)
  br label %bb3

bb3:                                              ; preds = %bb1, %start
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RNvMs0_NtCs9lD8hpqNLQ1_5alloc7raw_vecINtB5_6RawVechE14current_memoryCsc19p934y1mR_6std_rs(ptr nocapture writeonly sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") align 8 %_0, ptr nocapture readonly align 8 %self) unnamed_addr #10 {
bb1:
  %_9 = alloca { ptr, %"core::alloc::layout::Layout" }, align 8
  %_3 = load i64, ptr %self, align 8, !noundef !4
  %0 = icmp eq i64 %_3, 0
  br i1 %0, label %bb2, label %bb3

bb2:                                              ; preds = %bb1
  %1 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", ptr %_0, i64 0, i32 1
  store i64 0, ptr %1, align 8
  br label %bb4

bb3:                                              ; preds = %bb1
  %2 = getelementptr inbounds i8, ptr %self, i64 8
  %self3 = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4
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

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsghWqkCs9mKo_4core3fmtNtB5_9Arguments6new_v1Csc19p934y1mR_6std_rs(ptr nocapture writeonly sret(%"core::fmt::Arguments<'_>") align 8 %_0, ptr align 8 %pieces.0, i64 %pieces.1, ptr align 8 %args.0, i64 %args.1) unnamed_addr #7 {
start:
  %_9 = alloca %"core::fmt::Arguments<'_>", align 8
  %_3 = icmp ult i64 %pieces.1, %args.1
  %_7 = add nuw nsw i64 %args.1, 1
  %_6 = icmp ult i64 %_7, %pieces.1
  %or.cond = select i1 %_3, i1 true, i1 %_6
  br label %bb3

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
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal fastcc void @_RNvMs2_NtNtCs1kSLwfZQ88S_3std4sync5mutexINtB5_5MutexlE3newCsc19p934y1mR_6std_rs(ptr nocapture writeonly sret(%"std::sync::mutex::Mutex<i32>") align 4 %_0, i32 %t) unnamed_addr #11 {
start:
  store i32 0, ptr %_0, align 4
  %0 = getelementptr inbounds %"std::sync::mutex::Mutex<i32>", ptr %_0, i64 0, i32 1
  store i8 0, ptr %0, align 4
  %1 = getelementptr inbounds %"std::sync::mutex::Mutex<i32>", ptr %_0, i64 0, i32 3
  store i32 1234, ptr %1, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtNtCs1kSLwfZQ88S_3std4sync5mutexINtB5_5MutexlE4lockCsc19p934y1mR_6std_rs(ptr nocapture writeonly sret(%"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>") align 8 %_0, ptr align 4 %self) unnamed_addr #0 {
start:
  tail call fastcc void @_RNvMNtNtNtNtNtCs1kSLwfZQ88S_3std3sys3pal4unix5locks11futex_mutexNtB2_5Mutex4lockCsc19p934y1mR_6std_rs(ptr align 4 %self)
  tail call fastcc void @_RNvMs7_NtNtCs1kSLwfZQ88S_3std4sync5mutexINtB5_10MutexGuardlE3newCsc19p934y1mR_6std_rs(ptr sret(%"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>") align 8 %_0, ptr align 4 %self)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree nosync nonlazybind willreturn uwtable
define internal fastcc zeroext i1 @_RNvMs4_NtNtCs1kSLwfZQ88S_3std2io5errorNtB5_5Error14is_interruptedCsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %self) unnamed_addr #12 {
start:
  %_2 = alloca %"std::io::error::ErrorData<&std::io::error::Custom>", align 8
  %_12 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  call fastcc void @_RINvNtNtNtCs1kSLwfZQ88S_3std2io5error14repr_bitpacked11decode_reprRNtB4_6CustomNCNvMs0_B2_NtB2_4Repr4data0ECsc19p934y1mR_6std_rs(ptr nonnull sret(%"std::io::error::ErrorData<&std::io::error::Custom>") align 8 %_2, ptr nonnull %_12)
  %0 = load i8, ptr %_2, align 8, !range !10, !noundef !4
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
  %code = load i32, ptr %1, align 4, !noundef !4
  %2 = icmp eq i32 %code, 4
  br label %bb5

bb4:                                              ; preds = %start
  %3 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::Simple", ptr %_2, i64 0, i32 1
  %4 = load i8, ptr %3, align 1, !range !15, !noundef !4
  %5 = icmp eq i8 %4, 35
  br label %bb5

bb1:                                              ; preds = %start
  %6 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::SimpleMessage", ptr %_2, i64 0, i32 1
  %m = load ptr, ptr %6, align 8, !nonnull !4, !align !9, !noundef !4
  %7 = getelementptr inbounds %"std::io::error::SimpleMessage", ptr %m, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !range !15, !noundef !4
  %9 = icmp eq i8 %8, 35
  br label %bb5

bb3:                                              ; preds = %start
  %10 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::Custom", ptr %_2, i64 0, i32 1
  %c = load ptr, ptr %10, align 8, !nonnull !4, !align !9, !noundef !4
  %11 = getelementptr inbounds %"std::io::error::Custom", ptr %c, i64 0, i32 1
  %12 = load i8, ptr %11, align 8, !range !15, !noundef !4
  %13 = icmp eq i8 %12, 35
  br label %bb5

bb5:                                              ; preds = %bb3, %bb1, %bb4, %bb2
  %_0.0.in = phi i1 [ %13, %bb3 ], [ %9, %bb1 ], [ %5, %bb4 ], [ %2, %bb2 ]
  ret i1 %_0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs7_NtNtCs1kSLwfZQ88S_3std4sync5mutexINtB5_10MutexGuardlE3newCsc19p934y1mR_6std_rs(ptr nocapture writeonly sret(%"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>") align 8 %_0, ptr align 4 %lock) unnamed_addr #0 {
start:
  %_3 = getelementptr inbounds %"std::sync::mutex::Mutex<i32>", ptr %lock, i64 0, i32 1
  %0 = tail call fastcc { i1, i8 } @_RNvMNtNtCs1kSLwfZQ88S_3std4sync6poisonNtB2_4Flag5guardCsc19p934y1mR_6std_rs(ptr nonnull align 1 %_3)
  %_2.0 = extractvalue { i1, i8 } %0, 0
  %_2.1 = extractvalue { i1, i8 } %0, 1
  %1 = icmp ne ptr %lock, null
  tail call void @llvm.assume(i1 %1)
  tail call fastcc void @_RINvNtNtCs1kSLwfZQ88S_3std4sync6poison10map_resultNtB2_5GuardINtNtB4_5mutex10MutexGuardlENCNvMs7_B10_BX_3new0ECsc19p934y1mR_6std_rs(ptr sret(%"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>") align 8 %_0, i1 zeroext %_2.0, i8 %_2.1, ptr nonnull align 4 %lock)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc ptr @_RNvMsc_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexlEE3newCsc19p934y1mR_6std_rs(ptr nocapture readonly align 4 %data) unnamed_addr #7 personality ptr @rust_eh_personality {
start:
  %_3 = alloca %"alloc::sync::ArcInner<std::sync::mutex::Mutex<i32>>", align 8
  store i64 1, ptr %_3, align 8
  %0 = getelementptr inbounds %"alloc::sync::ArcInner<std::sync::mutex::Mutex<i32>>", ptr %_3, i64 0, i32 1
  store i64 1, ptr %0, align 8
  %1 = getelementptr inbounds %"alloc::sync::ArcInner<std::sync::mutex::Mutex<i32>>", ptr %_3, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %data, i64 12, i1 false)
  %_4.i = tail call fastcc ptr @_RNvNtCs9lD8hpqNLQ1_5alloc5alloc15exchange_mallocCsc19p934y1mR_6std_rs(i64 32, i64 8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %_4.i, ptr noundef nonnull align 8 dereferenceable(32) %_3, i64 32, i1 false)
  %2 = icmp ne ptr %_4.i, null
  tail call void @llvm.assume(i1 %2)
  ret ptr %_4.i
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RNvMsj_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtCs1kSLwfZQ88S_3std6thread6PacketuEE9drop_slowCsc19p934y1mR_6std_rs(ptr align 8 %self) unnamed_addr #2 {
start:
  %_x = alloca %"alloc::sync::Weak<std::thread::Packet<'_, ()>, &alloc::alloc::Global>", align 8
  %self1 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  %_3 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %self1, i64 0, i32 2
  tail call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtCs1kSLwfZQ88S_3std6thread6PacketuEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %_3)
  %_5 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  %_6 = getelementptr i8, ptr %self, i64 8
  store ptr %_5, ptr %_x, align 8
  %0 = getelementptr inbounds i8, ptr %_x, i64 8
  store ptr %_6, ptr %0, align 8
  call fastcc void @_RNvXsE_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_4WeakINtNtCs1kSLwfZQ88S_3std6thread6PacketuERNtNtB7_5alloc6GlobalENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %_x)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RNvMsj_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexINtNtB7_3vec3VechEEE9drop_slowCsc19p934y1mR_6std_rs(ptr align 8 %self) unnamed_addr #2 {
start:
  %_x = alloca %"alloc::sync::Weak<std::sync::mutex::Mutex<alloc::vec::Vec<u8>>, &alloc::alloc::Global>", align 8
  %self1 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  %_3 = getelementptr inbounds %"alloc::sync::ArcInner<std::sync::mutex::Mutex<alloc::vec::Vec<u8>>>", ptr %self1, i64 0, i32 2
  tail call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexINtNtCs9lD8hpqNLQ1_5alloc3vec3VechEEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %_3)
  %_5 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  %_6 = getelementptr i8, ptr %self, i64 8
  store ptr %_5, ptr %_x, align 8
  %0 = getelementptr inbounds i8, ptr %_x, i64 8
  store ptr %_6, ptr %0, align 8
  call fastcc void @_RNvXsE_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_4WeakINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexINtNtB7_3vec3VechEERNtNtB7_5alloc6GlobalENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %_x)
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc void @_RNvMsj_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexlEE9drop_slowCsc19p934y1mR_6std_rs(ptr align 8 %self) unnamed_addr #13 {
start:
  %_x = alloca %"alloc::sync::Weak<std::sync::mutex::Mutex<i32>, &alloc::alloc::Global>", align 8
  %self1 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  %_6 = getelementptr i8, ptr %self, i64 8
  store ptr %self1, ptr %_x, align 8
  %0 = getelementptr inbounds i8, ptr %_x, i64 8
  store ptr %_6, ptr %0, align 8
  call fastcc void @_RNvXsE_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_4WeakINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexlERNtNtB7_5alloc6GlobalENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %_x)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RNvMsj_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcNtNtCs1kSLwfZQ88S_3std6thread5InnerE9drop_slowCsc19p934y1mR_6std_rs(ptr align 8 %self) unnamed_addr #2 {
start:
  %_x = alloca %"alloc::sync::Weak<std::thread::Inner, &alloc::alloc::Global>", align 8
  %self1 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  %_3 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Inner>", ptr %self1, i64 0, i32 2
  tail call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeNtNtCs1kSLwfZQ88S_3std6thread5InnerECsc19p934y1mR_6std_rs(ptr nonnull align 8 %_3)
  %_5 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  %_6 = getelementptr i8, ptr %self, i64 8
  store ptr %_5, ptr %_x, align 8
  %0 = getelementptr inbounds i8, ptr %_x, i64 8
  store ptr %_6, ptr %0, align 8
  call fastcc void @_RNvXsE_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_4WeakNtNtCs1kSLwfZQ88S_3std6thread5InnerRNtNtB7_5alloc6GlobalENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %_x)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RNvMsj_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcNtNtNtCs1kSLwfZQ88S_3std6thread6scoped9ScopeDataE9drop_slowCsc19p934y1mR_6std_rs(ptr align 8 %self) unnamed_addr #2 {
start:
  %_x = alloca %"alloc::sync::Weak<std::thread::scoped::ScopeData, &alloc::alloc::Global>", align 8
  %self1 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  %_3 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::scoped::ScopeData>", ptr %self1, i64 0, i32 2
  tail call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcNtNtCs1kSLwfZQ88S_3std6thread5InnerENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %_3)
  %_5 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  %_6 = getelementptr i8, ptr %self, i64 8
  store ptr %_5, ptr %_x, align 8
  %0 = getelementptr inbounds i8, ptr %_x, i64 8
  store ptr %_6, ptr %0, align 8
  call fastcc void @_RNvXsE_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_4WeakNtNtNtCs1kSLwfZQ88S_3std6thread6scoped9ScopeDataRNtNtB7_5alloc6GlobalENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %_x)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc ptr @_RNvNtCs9lD8hpqNLQ1_5alloc5alloc15exchange_mallocCsc19p934y1mR_6std_rs(i64 %size, i64 %align) unnamed_addr #7 {
start:
  %0 = tail call fastcc { ptr, i64 } @_RNvMNtCs9lD8hpqNLQ1_5alloc5allocNtB2_6Global10alloc_implCsc19p934y1mR_6std_rs(ptr nonnull align 1 @alloc_513570631223a12912d85da2bec3b15a, i64 8, i64 %size, i1 zeroext false)
  %1 = extractvalue { ptr, i64 } %0, 0
  %.not = icmp eq ptr %1, null
  br label %bb2

bb2:                                              ; preds = %start
  ret ptr %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc zeroext i1 @_RNvNtNtCs1kSLwfZQ88S_3std9panicking11panic_count13count_is_zeroCsc19p934y1mR_6std_rs() unnamed_addr #7 {
start:
  %_2 = tail call fastcc i64 @_RINvNtNtCsghWqkCs9mKo_4core4sync6atomic11atomic_loadjECsc19p934y1mR_6std_rs(ptr nonnull @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h97ef83b1126fc127E, i8 0)
  %_1 = and i64 %_2, 9223372036854775807
  %0 = icmp eq i64 %_1, 0
  br i1 %0, label %bb3, label %bb2

bb2:                                              ; preds = %start
  %1 = tail call zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h082ee561e24f3651E()
  br label %bb3

bb3:                                              ; preds = %bb2, %start
  %_0.0 = phi i1 [ %1, %bb2 ], [ true, %start ]
  ret i1 %_0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvNtNtCsghWqkCs9mKo_4core4char7methods15encode_utf8_rawCsc19p934y1mR_6std_rs(i32 %0, ptr align 1 %dst.0, i64 %dst.1) unnamed_addr #7 {
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
  %2 = tail call fastcc { ptr, i64 } @_RNvXs2_NtNtCsghWqkCs9mKo_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE9index_mutCsc19p934y1mR_6std_rs(i64 0, i64 %index, ptr nonnull align 1 %dst.0, i64 4, ptr nonnull align 8 @alloc_41a0379ed06a3b1c22d2313ff030dc3d)
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

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind nonlazybind willreturn uwtable
define internal fastcc void @_RNvNtNtCsghWqkCs9mKo_4core4sync6atomic5fenceCsc19p934y1mR_6std_rs(i8 %0) unnamed_addr #14 {
bb2:
  fence acquire
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvNtNtCsghWqkCs9mKo_4core5slice6memchr12memchr_naiveCsc19p934y1mR_6std_rs(i8 %x, ptr nocapture readonly align 1 %text.0, i64 %text.1) unnamed_addr #7 {
start:
  %_43.not = icmp eq i64 %text.1, 0
  br i1 %_43.not, label %bb7, label %bb2

bb2:                                              ; preds = %bb5, %start
  %i.04 = phi i64 [ %4, %bb5 ], [ 0, %start ]
  %0 = tail call i1 @llvm.expect.i1(i1 true, i1 true)
  br label %bb3

bb7:                                              ; preds = %bb4, %bb5, %start
  %1 = phi i64 [ %i.04, %bb4 ], [ undef, %bb5 ], [ undef, %start ]
  %storemerge = phi i64 [ 1, %bb4 ], [ 0, %bb5 ], [ 0, %start ]
  %2 = insertvalue { i64, i64 } poison, i64 %storemerge, 0
  %3 = insertvalue { i64, i64 } %2, i64 %1, 1
  ret { i64, i64 } %3

bb3:                                              ; preds = %bb2
  %scevgep = getelementptr i8, ptr %text.0, i64 %i.04
  %_8 = load i8, ptr %scevgep, align 1, !noundef !4
  %_7 = icmp eq i8 %_8, 0
  br i1 %_7, label %bb4, label %bb5

bb5:                                              ; preds = %bb3
  %4 = add nuw i64 %i.04, 1
  %exitcond.not = icmp eq i64 %4, %text.1
  br i1 %exitcond.not, label %bb7, label %bb2

bb4:                                              ; preds = %bb3
  br label %bb7
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc i8 @_RNvNtNtNtCs1kSLwfZQ88S_3std2io5error14repr_bitpacked14kind_from_primCsc19p934y1mR_6std_rs(i32 %0) unnamed_addr #1 {
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

bb83:                                             ; preds = %bb82, %bb83.fold.split39, %bb83.fold.split38, %bb83.fold.split37, %bb83.fold.split36, %bb83.fold.split35, %bb83.fold.split34, %bb83.fold.split33, %bb83.fold.split32, %bb83.fold.split31, %bb83.fold.split30, %bb83.fold.split29, %bb83.fold.split28, %bb83.fold.split27, %bb83.fold.split26, %bb83.fold.split25, %bb83.fold.split24, %bb83.fold.split23, %bb83.fold.split22, %bb83.fold.split21, %bb83.fold.split20, %bb83.fold.split19, %bb83.fold.split18, %bb83.fold.split17, %bb83.fold.split16, %bb83.fold.split15, %bb83.fold.split14, %bb83.fold.split13, %bb83.fold.split12, %bb83.fold.split11, %bb83.fold.split10, %bb83.fold.split9, %bb83.fold.split8, %bb83.fold.split7, %bb83.fold.split6, %bb83.fold.split5, %bb83.fold.split4, %bb83.fold.split3, %bb83.fold.split2, %bb83.fold.split1, %bb83.fold.split, %start
  %_0.0 = phi i8 [ 41, %bb82 ], [ 0, %start ], [ 1, %bb83.fold.split ], [ 2, %bb83.fold.split1 ], [ 3, %bb83.fold.split2 ], [ 4, %bb83.fold.split3 ], [ 5, %bb83.fold.split4 ], [ 6, %bb83.fold.split5 ], [ 7, %bb83.fold.split6 ], [ 8, %bb83.fold.split7 ], [ 9, %bb83.fold.split8 ], [ 10, %bb83.fold.split9 ], [ 11, %bb83.fold.split10 ], [ 12, %bb83.fold.split11 ], [ 13, %bb83.fold.split12 ], [ 14, %bb83.fold.split13 ], [ 15, %bb83.fold.split14 ], [ 16, %bb83.fold.split15 ], [ 17, %bb83.fold.split16 ], [ 18, %bb83.fold.split17 ], [ 19, %bb83.fold.split18 ], [ 20, %bb83.fold.split19 ], [ 21, %bb83.fold.split20 ], [ 22, %bb83.fold.split21 ], [ 23, %bb83.fold.split22 ], [ 24, %bb83.fold.split23 ], [ 25, %bb83.fold.split24 ], [ 26, %bb83.fold.split25 ], [ 27, %bb83.fold.split26 ], [ 28, %bb83.fold.split27 ], [ 29, %bb83.fold.split28 ], [ 30, %bb83.fold.split29 ], [ 31, %bb83.fold.split30 ], [ 32, %bb83.fold.split31 ], [ 33, %bb83.fold.split32 ], [ 34, %bb83.fold.split33 ], [ 35, %bb83.fold.split34 ], [ 39, %bb83.fold.split35 ], [ 37, %bb83.fold.split36 ], [ 36, %bb83.fold.split37 ], [ 38, %bb83.fold.split38 ], [ 40, %bb83.fold.split39 ]
  ret i8 %_0.0

bb82:                                             ; preds = %start
  br label %bb83
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc { ptr, ptr } @_RNvXNtNtNtCsghWqkCs9mKo_4core4iter6traits7collectINtNtNtB8_5slice4iter4IterhENtB2_12IntoIterator9into_iterCsc19p934y1mR_6std_rs(ptr %self.0, ptr %self.1) unnamed_addr #1 {
start:
  %0 = insertvalue { ptr, ptr } poison, ptr %self.0, 0
  %1 = insertvalue { ptr, ptr } %0, ptr %self.1, 1
  ret { ptr, ptr } %1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXNvMs_NtNtCs9lD8hpqNLQ1_5alloc3ffi5c_strNtB7_7CString3newNtNtBb_6string6StringNtB2_11SpecNewImpl13spec_new_implCsc19p934y1mR_6std_rs(ptr nocapture writeonly sret(%"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>") align 8 %_0, ptr nocapture readonly align 8 %self) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_11 = alloca %"alloc::vec::Vec<u8>", align 8
  %_9 = alloca %"alloc::vec::Vec<u8>", align 8
  %_8 = alloca %"alloc::ffi::c_str::NulError", align 8
  %bytes = alloca %"alloc::vec::Vec<u8>", align 8
  call fastcc void @_RNvXs1_NtCsghWqkCs9mKo_4core7convertNtNtCs9lD8hpqNLQ1_5alloc6string6StringINtB5_4IntoINtNtBC_3vec3VechEE4intoCsc19p934y1mR_6std_rs(ptr nonnull sret(%"alloc::vec::Vec<u8>") align 8 %bytes, ptr align 8 %self, ptr nonnull align 8 @alloc_5c9d34f18b8b9cda7f74f6cd144f9475)
  %0 = getelementptr inbounds i8, ptr %bytes, i64 8
  %self1 = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %1 = getelementptr inbounds %"alloc::vec::Vec<u8>", ptr %bytes, i64 0, i32 1
  %len = load i64, ptr %1, align 8, !noundef !4
  %_23 = icmp ult i64 %len, 16
  br i1 %_23, label %bb10, label %bb12

bb12:                                             ; preds = %start
  %2 = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h8f0bf65eb3f4aa75E(i8 0, ptr nonnull align 1 %self1, i64 %len)
          to label %bb14 unwind label %bb7

bb10:                                             ; preds = %start
  %3 = invoke fastcc { i64, i64 } @_RNvNtNtCsghWqkCs9mKo_4core5slice6memchr12memchr_naiveCsc19p934y1mR_6std_rs(i8 0, ptr nonnull align 1 %self1, i64 %len)
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

bb6:                                              ; preds = %bb7, %bb8
  %lpad.thr_comm.pn = phi { ptr, i32 } [ %lpad.thr_comm, %bb7 ], [ %lpad.thr_comm.split-lp, %bb8 ]
  resume { ptr, i32 } %lpad.thr_comm.pn

bb7:                                              ; preds = %bb10, %bb12
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtCs9lD8hpqNLQ1_5alloc3vec3VechEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %bytes) #34
  br label %bb6
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @_RNvXNvNtNtCs1kSLwfZQ88S_3std2io5Write9write_fmtINtB2_7AdapterNtNtNtNtNtB8_3sys3pal4unix5stdio6StderrENtNtCsghWqkCs9mKo_4core3fmt5Write9write_strCsc19p934y1mR_6std_rs(ptr nocapture align 8 %self, ptr align 1 %s.0, i64 %s.1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_8 = load ptr, ptr %self, align 8, !nonnull !4, !align !8, !noundef !4
  %0 = tail call fastcc ptr @_RNvYNtNtNtNtNtCs1kSLwfZQ88S_3std3sys3pal4unix5stdio6StderrNtNtBc_2io5Write9write_allCsc19p934y1mR_6std_rs(ptr nonnull align 1 %_8, ptr align 1 %s.0, i64 %s.1)
  %1 = icmp ne ptr %0, null
  br i1 %1, label %bb2, label %bb6

bb2:                                              ; preds = %start
  %2 = getelementptr inbounds i8, ptr %self, i64 8
  invoke fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs1kSLwfZQ88S_3std2io5error5ErrorEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %2)
          to label %bb4 unwind label %bb5

bb6:                                              ; preds = %bb4, %start
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

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtCsghWqkCs9mKo_4core5allocRNtNtCs9lD8hpqNLQ1_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %self, ptr %ptr, i64 %layout.0, i64 %layout.1) unnamed_addr #8 {
start:
  %_4 = load ptr, ptr %self, align 8, !nonnull !4, !align !8, !noundef !4
  tail call fastcc void @_RNvXs_NtCs9lD8hpqNLQ1_5alloc5allocNtB4_6GlobalNtNtCsghWqkCs9mKo_4core5alloc9Allocator10deallocateCsc19p934y1mR_6std_rs(ptr nonnull align 1 %_4, ptr %ptr, i64 %layout.0, i64 %layout.1)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @_RNvXs0_NtNtCs9lD8hpqNLQ1_5alloc3ffi5c_strNtB5_7CStringNtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %self) unnamed_addr #15 {
start:
  %_2.0 = load ptr, ptr %self, align 8, !nonnull !4, !align !8, !noundef !4
  store i8 0, ptr %_2.0, align 1
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RNvXs12_NtCs9lD8hpqNLQ1_5alloc6stringINtNtB8_3vec3VechEINtNtCsghWqkCs9mKo_4core7convert4FromNtB6_6StringE4fromCsc19p934y1mR_6std_rs(ptr nocapture writeonly sret(%"alloc::vec::Vec<u8>") align 8 %_0, ptr nocapture readonly align 8 %string) unnamed_addr #10 {
start:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %string, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RNvXs1_NtCsghWqkCs9mKo_4core7convertNtNtCs9lD8hpqNLQ1_5alloc6string6StringINtB5_4IntoINtNtBC_3vec3VechEE4intoCsc19p934y1mR_6std_rs(ptr nocapture writeonly sret(%"alloc::vec::Vec<u8>") align 8 %_0, ptr nocapture readonly align 8 %self, ptr nocapture readnone align 8 %0) unnamed_addr #16 {
start:
  tail call fastcc void @_RNvXs12_NtCs9lD8hpqNLQ1_5alloc6stringINtNtB8_3vec3VechEINtNtCsghWqkCs9mKo_4core7convert4FromNtB6_6StringE4fromCsc19p934y1mR_6std_rs(ptr sret(%"alloc::vec::Vec<u8>") align 8 %_0, ptr align 8 %self)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1_NtNtNtCs1kSLwfZQ88S_3std2io5error14repr_bitpackedNtB5_4ReprNtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %self) unnamed_addr #7 {
start:
  %_2 = alloca %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>", align 8
  %_3 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  call fastcc void @_RINvNtNtNtCs1kSLwfZQ88S_3std2io5error14repr_bitpacked11decode_reprINtNtCs9lD8hpqNLQ1_5alloc5boxed3BoxNtB4_6CustomENCNvXs1_B2_NtB2_4ReprNtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4drop0ECsc19p934y1mR_6std_rs(ptr nonnull sret(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>") align 8 %_2, ptr nonnull %_3)
  call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtNtCs1kSLwfZQ88S_3std2io5error9ErrorDataINtNtCs9lD8hpqNLQ1_5alloc5boxed3BoxNtBJ_6CustomEEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %_2)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc zeroext i1 @_RNvXs1k_NtNtCsghWqkCs9mKo_4core3fmt3numhNtB8_5Debug3fmtCsc19p934y1mR_6std_rs(ptr align 1 %self, ptr align 8 %f) unnamed_addr #7 {
start:
  %0 = getelementptr inbounds %"core::fmt::Formatter<'_>", ptr %f, i64 0, i32 4
  %_4 = load i32, ptr %0, align 4, !noundef !4
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

bb6:                                              ; preds = %bb3, %bb4, %bb1
  %_0.1 = phi i1 [ %3, %bb1 ], [ %4, %bb4 ], [ %5, %bb3 ]
  ret i1 %_0.1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @_RNvXs1p_NtNtCsghWqkCs9mKo_4core3fmt3numjNtB8_5Debug3fmtCsc19p934y1mR_6std_rs(ptr align 8 %self, ptr align 8 %f) unnamed_addr #7 {
start:
  %0 = getelementptr inbounds %"core::fmt::Formatter<'_>", ptr %f, i64 0, i32 4
  %_4 = load i32, ptr %0, align 4, !noundef !4
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

bb6:                                              ; preds = %bb3, %bb4, %bb1
  %_0.1 = phi i1 [ %3, %bb1 ], [ %4, %bb4 ], [ %5, %bb3 ]
  ret i1 %_0.1
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc align 1 ptr @_RNvXs2T_NtNtCsghWqkCs9mKo_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc19p934y1mR_6std_rs(ptr nocapture align 8 %self) unnamed_addr #17 {
bb3:
  %self2 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  %self1 = getelementptr inbounds i8, ptr %self, i64 8
  %0 = load ptr, ptr %self1, align 8, !nonnull !4, !noundef !4
  %1 = icmp eq ptr %self2, %0
  br i1 %1, label %bb6, label %bb9

bb9:                                              ; preds = %bb3
  %_30 = getelementptr inbounds i8, ptr %self2, i64 1
  store ptr %_30, ptr %self, align 8
  br label %bb6

bb6:                                              ; preds = %bb9, %bb3
  %_0.0 = phi ptr [ %self2, %bb9 ], [ null, %bb3 ]
  ret ptr %_0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs2_NtCs9lD8hpqNLQ1_5alloc7raw_vecINtB5_6RawVechENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %self) unnamed_addr #18 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  call fastcc void @_RNvMs0_NtCs9lD8hpqNLQ1_5alloc7raw_vecINtB5_6RawVechE14current_memoryCsc19p934y1mR_6std_rs(ptr nonnull sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") align 8 %_2, ptr align 8 %self)
  %0 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", ptr %_2, i64 0, i32 1
  %1 = load i64, ptr %0, align 8, !range !6, !noundef !4
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb4, label %bb2

bb2:                                              ; preds = %start
  %ptr = load ptr, ptr %_2, align 8, !nonnull !4, !noundef !4
  %2 = getelementptr inbounds { ptr, %"core::alloc::layout::Layout" }, ptr %_2, i64 0, i32 1, i32 1
  %layout.1 = load i64, ptr %2, align 8, !noundef !4
  %_7 = getelementptr inbounds i8, ptr %self, i64 16
  call fastcc void @_RNvXs_NtCs9lD8hpqNLQ1_5alloc5allocNtB4_6GlobalNtNtCsghWqkCs9mKo_4core5alloc9Allocator10deallocateCsc19p934y1mR_6std_rs(ptr nonnull align 1 %_7, ptr nonnull %ptr, i64 %1, i64 %layout.1)
  br label %bb4

bb4:                                              ; preds = %bb2, %start
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXs2_NtNtCsghWqkCs9mKo_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE9index_mutCsc19p934y1mR_6std_rs(i64 %self.0, i64 %self.1, ptr align 1 %slice.0, i64 %slice.1, ptr nocapture readnone align 8 %0) unnamed_addr #7 {
start:
  %_3 = icmp ugt i64 %self.0, %self.1
  br label %bb2

bb2:                                              ; preds = %start
  %_7 = icmp ugt i64 %self.1, 4
  br label %bb4

bb4:                                              ; preds = %bb2
  %new_len = sub nuw i64 %self.1, %self.0
  %data = getelementptr inbounds i8, ptr %slice.0, i64 %self.0
  %1 = insertvalue { ptr, i64 } poison, ptr %data, 0
  %2 = insertvalue { ptr, i64 } %1, i64 %new_len, 1
  ret { ptr, i64 } %2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs5_NtCs1kSLwfZQ88S_3std6threadINtB5_6PacketuENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr align 8 %self) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_18 = alloca [0 x %"core::fmt::rt::Argument<'_>"], align 8
  %_14 = alloca %"core::fmt::Arguments<'_>", align 8
  %_12 = alloca ptr, align 8
  %_6 = alloca %"core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>", align 8
  %0 = getelementptr inbounds %"std::thread::Packet<'_, ()>", ptr %self, i64 0, i32 1
  %_5 = load i64, ptr %0, align 8, !range !5, !noundef !4
  %.not = icmp eq i64 %_5, 0
  br i1 %.not, label %bb3, label %bb2

bb2:                                              ; preds = %start
  %1 = getelementptr inbounds %"std::thread::Packet<'_, ()>", ptr %self, i64 0, i32 1, i32 0, i32 1
  %2 = load ptr, ptr %1, align 8, !noundef !4
  %3 = icmp ne ptr %2, null
  br label %bb3

bb3:                                              ; preds = %bb2, %start
  %unhandled_panic.0 = phi i1 [ %3, %bb2 ], [ false, %start ]
  %4 = tail call fastcc { ptr, ptr } @_RINvNtCs1kSLwfZQ88S_3std9panicking3tryuINtNtNtCsghWqkCs9mKo_4core5panic11unwind_safe16AssertUnwindSafeNCNvXs5_NtB4_6threadINtB1K_6PacketuENtNtNtBI_3ops4drop4Drop4drop0EECsc19p934y1mR_6std_rs(ptr nonnull align 8 %0)
  %5 = extractvalue { ptr, ptr } %4, 0
  %6 = extractvalue { ptr, ptr } %4, 1
  store ptr %5, ptr %_6, align 8
  %7 = getelementptr inbounds i8, ptr %_6, i64 8
  store ptr %6, ptr %7, align 8
  %.not1 = icmp eq ptr %5, null
  br i1 %.not1, label %bb8, label %bb4

bb4:                                              ; preds = %bb3
  invoke fastcc void @_RNvMs0_NtCsghWqkCs9mKo_4core3fmtNtB5_9Arguments6new_v1Csc19p934y1mR_6std_rs(ptr nonnull sret(%"core::fmt::Arguments<'_>") align 8 %_14, ptr nonnull align 8 @alloc_2ca7775364e940040d1ca01e1c1e4d62, i64 1, ptr nonnull align 8 %_18, i64 0)
          to label %bb5 unwind label %bb13

bb8:                                              ; preds = %bb3
  call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs9lD8hpqNLQ1_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %_6)
  %8 = load ptr, ptr %self, align 8, !noundef !4
  %.not2 = icmp eq ptr %8, null
  br i1 %.not2, label %bb12, label %bb10

bb13:                                             ; preds = %bb7, %bb6, %bb5, %bb4
  %9 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs9lD8hpqNLQ1_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %_6) #34
  br label %bb14

bb5:                                              ; preds = %bb4
  %10 = invoke fastcc ptr @_RNvYNtNtNtNtNtCs1kSLwfZQ88S_3std3sys3pal4unix5stdio6StderrNtNtBc_2io5Write9write_fmtCsc19p934y1mR_6std_rs(ptr nonnull align 1 %_18, ptr nonnull align 8 %_14)
          to label %bb6 unwind label %bb13

bb6:                                              ; preds = %bb5
  store ptr %10, ptr %_12, align 8
  invoke fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs1kSLwfZQ88S_3std2io5error5ErrorEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %_12)
          to label %bb7 unwind label %bb13

bb7:                                              ; preds = %bb6
  invoke void @_ZN3std3sys3pal4unix14abort_internal17h7fd6e40882d9056eE() #36
          to label %unreachable unwind label %bb13

unreachable:                                      ; preds = %bb7
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

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs6_NtCs9lD8hpqNLQ1_5alloc5boxedINtB5_3BoxDNtNtCsghWqkCs9mKo_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %self) unnamed_addr #8 {
start:
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %ptr.1 = load ptr, ptr %0, align 8, !nonnull !4, !align !9, !noundef !4
  %1 = getelementptr inbounds i64, ptr %ptr.1, i64 1
  %2 = load i64, ptr %1, align 8, !range !16, !invariant.load !4
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %bb4, label %bb1

bb1:                                              ; preds = %start
  %4 = getelementptr inbounds i64, ptr %ptr.1, i64 2
  %5 = load i64, ptr %4, align 8, !range !17, !invariant.load !4
  %ptr.0 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  %_8 = getelementptr inbounds i8, ptr %self, i64 16
  tail call fastcc void @_RNvXs_NtCs9lD8hpqNLQ1_5alloc5allocNtB4_6GlobalNtNtCsghWqkCs9mKo_4core5alloc9Allocator10deallocateCsc19p934y1mR_6std_rs(ptr nonnull align 1 %_8, ptr nonnull %ptr.0, i64 %5, i64 %2)
  br label %bb4

bb4:                                              ; preds = %bb1, %start
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs6_NtCs9lD8hpqNLQ1_5alloc5boxedINtB5_3BoxDNtNtCsghWqkCs9mKo_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %self) unnamed_addr #8 {
start:
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %ptr.1 = load ptr, ptr %0, align 8, !nonnull !4, !align !9, !noundef !4
  %1 = getelementptr inbounds i64, ptr %ptr.1, i64 1
  %2 = load i64, ptr %1, align 8, !range !16, !invariant.load !4
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %bb4, label %bb1

bb1:                                              ; preds = %start
  %4 = getelementptr inbounds i64, ptr %ptr.1, i64 2
  %5 = load i64, ptr %4, align 8, !range !17, !invariant.load !4
  %ptr.0 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  %_8 = getelementptr inbounds i8, ptr %self, i64 16
  tail call fastcc void @_RNvXs_NtCs9lD8hpqNLQ1_5alloc5allocNtB4_6GlobalNtNtCsghWqkCs9mKo_4core5alloc9Allocator10deallocateCsc19p934y1mR_6std_rs(ptr nonnull align 1 %_8, ptr nonnull %ptr.0, i64 %5, i64 %2)
  br label %bb4

bb4:                                              ; preds = %bb1, %start
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs6_NtCs9lD8hpqNLQ1_5alloc5boxedINtB5_3BoxNtNtNtCs1kSLwfZQ88S_3std2io5error6CustomENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %self) unnamed_addr #8 {
bb4:
  %ptr = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  %_8 = getelementptr i8, ptr %self, i64 8
  tail call fastcc void @_RNvXs_NtCs9lD8hpqNLQ1_5alloc5allocNtB4_6GlobalNtNtCsghWqkCs9mKo_4core5alloc9Allocator10deallocateCsc19p934y1mR_6std_rs(ptr align 1 %_8, ptr nonnull %ptr, i64 8, i64 24)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs6_NtCs9lD8hpqNLQ1_5alloc5boxedINtB5_3BoxShENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %self) unnamed_addr #8 {
start:
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %ptr.1 = load i64, ptr %0, align 8, !noundef !4
  %1 = icmp eq i64 %ptr.1, 0
  br i1 %1, label %bb4, label %bb1

bb1:                                              ; preds = %start
  %ptr.0 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  %_8 = getelementptr inbounds i8, ptr %self, i64 16
  tail call fastcc void @_RNvXs_NtCs9lD8hpqNLQ1_5alloc5allocNtB4_6GlobalNtNtCsghWqkCs9mKo_4core5alloc9Allocator10deallocateCsc19p934y1mR_6std_rs(ptr nonnull align 1 %_8, ptr nonnull %ptr.0, i64 1, i64 %ptr.1)
  br label %bb4

bb4:                                              ; preds = %bb1, %start
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc nonnull align 4 ptr @_RNvXs9_NtNtCs1kSLwfZQ88S_3std4sync5mutexINtB5_10MutexGuardlENtNtNtCsghWqkCs9mKo_4core3ops5deref8DerefMut9deref_mutCsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %self) unnamed_addr #19 {
start:
  %_4 = load ptr, ptr %self, align 8, !nonnull !4, !align !18, !noundef !4
  %_6 = getelementptr inbounds %"std::sync::mutex::Mutex<i32>", ptr %_4, i64 0, i32 3
  ret ptr %_6
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXsE_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_4WeakINtNtCs1kSLwfZQ88S_3std6thread6PacketuERNtNtB7_5alloc6GlobalENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %self) unnamed_addr #18 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
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
  tail call fastcc void @_RNvNtNtCsghWqkCs9mKo_4core4sync6atomic5fenceCsc19p934y1mR_6std_rs(i8 2)
  %_6 = getelementptr inbounds i8, ptr %self, i64 8
  %self3 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RNvXs0_NtCsghWqkCs9mKo_4core5allocRNtNtCs9lD8hpqNLQ1_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCsc19p934y1mR_6std_rs(ptr nonnull align 8 %_6, ptr nonnull %self3, i64 8, i64 48)
  br label %bb8

bb8:                                              ; preds = %bb3, %bb2, %bb1
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXsE_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_4WeakINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexINtNtB7_3vec3VechEERNtNtB7_5alloc6GlobalENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %self) unnamed_addr #18 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
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
  tail call fastcc void @_RNvNtNtCsghWqkCs9mKo_4core4sync6atomic5fenceCsc19p934y1mR_6std_rs(i8 2)
  %_6 = getelementptr inbounds i8, ptr %self, i64 8
  %self3 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RNvXs0_NtCsghWqkCs9mKo_4core5allocRNtNtCs9lD8hpqNLQ1_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCsc19p934y1mR_6std_rs(ptr nonnull align 8 %_6, ptr nonnull %self3, i64 8, i64 48)
  br label %bb8

bb8:                                              ; preds = %bb3, %bb2, %bb1
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXsE_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_4WeakINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexlERNtNtB7_5alloc6GlobalENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %self) unnamed_addr #18 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  %_15 = icmp eq ptr %self1, inttoptr (i64 -1 to ptr)
  br i1 %_15, label %bb2, label %bb1

bb1:                                              ; preds = %start
  %_19 = getelementptr inbounds %"alloc::sync::ArcInner<std::sync::mutex::Mutex<i32>>", ptr %self1, i64 0, i32 1
  %0 = atomicrmw sub ptr %_19, i64 1 release, align 8
  %1 = icmp eq i64 %0, 1
  br i1 %1, label %bb3, label %bb8

bb2:                                              ; preds = %start
  br label %bb8

bb3:                                              ; preds = %bb1
  tail call fastcc void @_RNvNtNtCsghWqkCs9mKo_4core4sync6atomic5fenceCsc19p934y1mR_6std_rs(i8 2)
  %_6 = getelementptr inbounds i8, ptr %self, i64 8
  %self3 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RNvXs0_NtCsghWqkCs9mKo_4core5allocRNtNtCs9lD8hpqNLQ1_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCsc19p934y1mR_6std_rs(ptr nonnull align 8 %_6, ptr nonnull %self3, i64 8, i64 32)
  br label %bb8

bb8:                                              ; preds = %bb3, %bb2, %bb1
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXsE_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_4WeakNtNtCs1kSLwfZQ88S_3std6thread5InnerRNtNtB7_5alloc6GlobalENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %self) unnamed_addr #18 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
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
  tail call fastcc void @_RNvNtNtCsghWqkCs9mKo_4core4sync6atomic5fenceCsc19p934y1mR_6std_rs(i8 2)
  %_6 = getelementptr inbounds i8, ptr %self, i64 8
  %self3 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RNvXs0_NtCsghWqkCs9mKo_4core5allocRNtNtCs9lD8hpqNLQ1_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCsc19p934y1mR_6std_rs(ptr nonnull align 8 %_6, ptr nonnull %self3, i64 8, i64 48)
  br label %bb8

bb8:                                              ; preds = %bb3, %bb2, %bb1
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXsE_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_4WeakNtNtNtCs1kSLwfZQ88S_3std6thread6scoped9ScopeDataRNtNtB7_5alloc6GlobalENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %self) unnamed_addr #18 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
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
  tail call fastcc void @_RNvNtNtCsghWqkCs9mKo_4core4sync6atomic5fenceCsc19p934y1mR_6std_rs(i8 2)
  %_6 = getelementptr inbounds i8, ptr %self, i64 8
  %self3 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RNvXs0_NtCsghWqkCs9mKo_4core5allocRNtNtCs9lD8hpqNLQ1_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCsc19p934y1mR_6std_rs(ptr nonnull align 8 %_6, ptr nonnull %self3, i64 8, i64 40)
  br label %bb8

bb8:                                              ; preds = %bb3, %bb2, %bb1
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @_RNvXsK_NtNtCs9lD8hpqNLQ1_5alloc3ffi5c_strNtB5_8NulErrorNtNtCsghWqkCs9mKo_4core3fmt5Debug3fmtCsc19p934y1mR_6std_rs(ptr align 8 %self, ptr align 8 %f) unnamed_addr #7 {
start:
  %_8 = alloca ptr, align 8
  %_5 = getelementptr inbounds %"alloc::ffi::c_str::NulError", ptr %self, i64 0, i32 1
  store ptr %self, ptr %_8, align 8
  %_0 = call zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hb946ec1de769060bE(ptr align 8 %f, ptr nonnull align 1 @alloc_49c0eff15ce41ce22a2d8c8b146a94ef, i64 8, ptr nonnull align 1 %_5, ptr nonnull align 8 @vtable.7, ptr nonnull align 1 %_8, ptr nonnull align 8 @vtable.8)
  ret i1 %_0
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @_RNvXsN_NtCsghWqkCs9mKo_4core3fmtRINtNtCs9lD8hpqNLQ1_5alloc3vec3VechENtB5_5Debug3fmtCsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %self, ptr align 8 %f) unnamed_addr #0 {
start:
  %_3 = load ptr, ptr %self, align 8, !nonnull !4, !align !9, !noundef !4
  %_0 = tail call fastcc zeroext i1 @_RNvXso_NtCs9lD8hpqNLQ1_5alloc3vecINtB5_3VechENtNtCsghWqkCs9mKo_4core3fmt5Debug3fmtCsc19p934y1mR_6std_rs(ptr nonnull align 8 %_3, ptr align 8 %f)
  ret i1 %_0
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @_RNvXsN_NtCsghWqkCs9mKo_4core3fmtRhNtB5_5Debug3fmtCsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %self, ptr align 8 %f) unnamed_addr #0 {
start:
  %_3 = load ptr, ptr %self, align 8, !nonnull !4, !align !8, !noundef !4
  %_0 = tail call fastcc zeroext i1 @_RNvXs1k_NtNtCsghWqkCs9mKo_4core3fmt3numhNtB8_5Debug3fmtCsc19p934y1mR_6std_rs(ptr nonnull align 1 %_3, ptr align 8 %f)
  ret i1 %_0
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs_NtCs9lD8hpqNLQ1_5alloc5allocNtB4_6GlobalNtNtCsghWqkCs9mKo_4core5alloc9Allocator10deallocateCsc19p934y1mR_6std_rs(ptr nocapture readnone align 1 %self, ptr %ptr, i64 %0, i64 %1) unnamed_addr #8 {
start:
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %bb3, label %bb1

bb1:                                              ; preds = %start
  tail call void @__rust_dealloc(ptr %ptr, i64 %1, i64 %0) #35
  br label %bb3

bb3:                                              ; preds = %bb1, %start
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @_RNvXs_NtNtCs1kSLwfZQ88S_3std4sync6poisonINtB4_11PoisonErrorINtNtB6_5mutex10MutexGuardlEENtNtCsghWqkCs9mKo_4core3fmt5Debug3fmtCsc19p934y1mR_6std_rs(ptr nocapture readnone align 8 %self, ptr align 8 %f) unnamed_addr #0 {
start:
  %_4 = alloca %"core::fmt::builders::DebugStruct<'_, '_>", align 8
  call void @_ZN4core3fmt9Formatter12debug_struct17hdb73d511d1979dccE(ptr nonnull sret(%"core::fmt::builders::DebugStruct<'_, '_>") align 8 %_4, ptr align 8 %f, ptr nonnull align 1 @alloc_8e2410b80645266732854088d21653bc, i64 11)
  %_0 = call zeroext i1 @_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17hd65b50a24aa85c65E(ptr nonnull align 8 %_4)
  ret i1 %_0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc zeroext i1 @_RNvXs_NvNtNtCsghWqkCs9mKo_4core3fmt5Write9write_fmtQINtNvNtNtCs1kSLwfZQ88S_3std2io5Write9write_fmt7AdapterNtNtNtNtNtBX_3sys3pal4unix5stdio6StderrENtB4_12SpecWriteFmt14spec_write_fmtCsc19p934y1mR_6std_rs(ptr align 8 %self, ptr align 8 %args) unnamed_addr #7 {
start:
  %_0 = tail call zeroext i1 @_ZN4core3fmt5write17ha63b5e044fedf034E(ptr align 1 %self, ptr nonnull align 8 @vtable.9, ptr align 8 %args)
  ret i1 %_0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtNtCs1kSLwfZQ88S_3std4sync5mutexINtB5_10MutexGuardlENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %self) unnamed_addr #7 {
start:
  %_6 = load ptr, ptr %self, align 8, !nonnull !4, !align !18, !noundef !4
  %_3 = getelementptr inbounds %"std::sync::mutex::Mutex<i32>", ptr %_6, i64 0, i32 1
  %_4 = getelementptr inbounds i8, ptr %self, i64 8
  tail call fastcc void @_RNvMNtNtCs1kSLwfZQ88S_3std4sync6poisonNtB2_4Flag4doneCsc19p934y1mR_6std_rs(ptr nonnull align 1 %_3, ptr nonnull align 1 %_4)
  %_7 = load ptr, ptr %self, align 8, !nonnull !4, !align !18, !noundef !4
  %0 = atomicrmw xchg ptr %_7, i32 0 release, align 4
  %1 = icmp eq i32 %0, 2
  br i1 %1, label %bb3, label %bb2

bb3:                                              ; preds = %start
  tail call void @_ZN3std3sys3pal4unix5locks11futex_mutex5Mutex4wake17ha68d826fb94c0d3cE(ptr nonnull align 4 %_7)
  br label %bb2

bb2:                                              ; preds = %bb3, %start
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc zeroext i1 @_RNvXsm_NtCsghWqkCs9mKo_4core3fmtShNtB5_5Debug3fmtCsc19p934y1mR_6std_rs(ptr align 1 %self.0, i64 %self.1, ptr align 8 %f) unnamed_addr #0 {
bb6:
  %_5 = alloca %"core::fmt::builders::DebugList<'_, '_>", align 8
  call void @_ZN4core3fmt9Formatter10debug_list17h149015fd7be1ba26E(ptr nonnull sret(%"core::fmt::builders::DebugList<'_, '_>") align 8 %_5, ptr align 8 %f)
  %0 = getelementptr inbounds i8, ptr %self.0, i64 %self.1
  %1 = icmp ne ptr %self.0, null
  call void @llvm.assume(i1 %1)
  %_3 = call fastcc align 8 ptr @_RINvMs5_NtNtCsghWqkCs9mKo_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %_5, ptr nonnull %self.0, ptr nonnull %0)
  %_0 = call zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h607b22500ce6076aE(ptr nonnull align 8 %_5)
  ret i1 %_0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc zeroext i1 @_RNvXso_NtCs9lD8hpqNLQ1_5alloc3vecINtB5_3VechENtNtCsghWqkCs9mKo_4core3fmt5Debug3fmtCsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %self, ptr align 8 %f) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %self1 = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %1 = getelementptr inbounds %"alloc::vec::Vec<u8>", ptr %self, i64 0, i32 1
  %len = load i64, ptr %1, align 8, !noundef !4
  %_0 = tail call fastcc zeroext i1 @_RNvXsm_NtCsghWqkCs9mKo_4core3fmtShNtB5_5Debug3fmtCsc19p934y1mR_6std_rs(ptr nonnull align 1 %self1, i64 %len, ptr align 8 %f)
  ret i1 %_0
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc nonnull ptr @_RNvXsq_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtCs1kSLwfZQ88S_3std6thread6PacketuEENtNtCsghWqkCs9mKo_4core5clone5Clone5cloneCsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %self) unnamed_addr #8 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  %0 = atomicrmw add ptr %self1, i64 1 monotonic, align 8
  %_4 = icmp slt i64 %0, 0
  br label %bb2

bb2:                                              ; preds = %start
  %ptr = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  ret ptr %ptr
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc nonnull ptr @_RNvXsq_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexINtNtB7_3vec3VechEEENtNtCsghWqkCs9mKo_4core5clone5Clone5cloneCsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %self) unnamed_addr #8 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  %0 = atomicrmw add ptr %self1, i64 1 monotonic, align 8
  %_4 = icmp slt i64 %0, 0
  br label %bb2

bb2:                                              ; preds = %start
  %ptr = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  ret ptr %ptr
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc nonnull ptr @_RNvXsq_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexlEENtNtCsghWqkCs9mKo_4core5clone5Clone5cloneCsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %self) unnamed_addr #8 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  %0 = atomicrmw add ptr %self1, i64 1 monotonic, align 8
  %_4 = icmp slt i64 %0, 0
  br label %bb2

bb2:                                              ; preds = %start
  %ptr = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  ret ptr %ptr
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc nonnull ptr @_RNvXsq_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcNtNtCs1kSLwfZQ88S_3std6thread5InnerENtNtCsghWqkCs9mKo_4core5clone5Clone5cloneCsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %self) unnamed_addr #8 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  %0 = atomicrmw add ptr %self1, i64 1 monotonic, align 8
  %_4 = icmp slt i64 %0, 0
  br label %bb2

bb2:                                              ; preds = %start
  %ptr = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  ret ptr %ptr
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc nonnull align 4 ptr @_RNvXsr_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexlEENtNtNtCsghWqkCs9mKo_4core3ops5deref5Deref5derefCsc19p934y1mR_6std_rs(ptr nocapture readonly align 8 %self) unnamed_addr #20 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  %_0 = getelementptr inbounds %"alloc::sync::ArcInner<std::sync::mutex::Mutex<i32>>", ptr %self1, i64 0, i32 2
  ret ptr %_0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtCs1kSLwfZQ88S_3std6thread6PacketuEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr align 8 %self) unnamed_addr #7 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  %0 = atomicrmw sub ptr %self1, i64 1 release, align 8
  %1 = icmp eq i64 %0, 1
  br i1 %1, label %bb2, label %bb4

bb2:                                              ; preds = %start
  tail call fastcc void @_RNvNtNtCsghWqkCs9mKo_4core4sync6atomic5fenceCsc19p934y1mR_6std_rs(i8 2)
  tail call fastcc void @_RNvMsj_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtCs1kSLwfZQ88S_3std6thread6PacketuEE9drop_slowCsc19p934y1mR_6std_rs(ptr nonnull align 8 %self)
  br label %bb4

bb4:                                              ; preds = %bb2, %start
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexINtNtB7_3vec3VechEEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr align 8 %self) unnamed_addr #7 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  %0 = atomicrmw sub ptr %self1, i64 1 release, align 8
  %1 = icmp eq i64 %0, 1
  br i1 %1, label %bb2, label %bb4

bb2:                                              ; preds = %start
  tail call fastcc void @_RNvNtNtCsghWqkCs9mKo_4core4sync6atomic5fenceCsc19p934y1mR_6std_rs(i8 2)
  tail call fastcc void @_RNvMsj_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexINtNtB7_3vec3VechEEE9drop_slowCsc19p934y1mR_6std_rs(ptr nonnull align 8 %self)
  br label %bb4

bb4:                                              ; preds = %bb2, %start
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexlEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr align 8 %self) unnamed_addr #8 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  %0 = atomicrmw sub ptr %self1, i64 1 release, align 8
  %1 = icmp eq i64 %0, 1
  br i1 %1, label %bb2, label %bb4

bb2:                                              ; preds = %start
  tail call fastcc void @_RNvNtNtCsghWqkCs9mKo_4core4sync6atomic5fenceCsc19p934y1mR_6std_rs(i8 2)
  tail call fastcc void @_RNvMsj_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexlEE9drop_slowCsc19p934y1mR_6std_rs(ptr nonnull align 8 %self)
  br label %bb4

bb4:                                              ; preds = %bb2, %start
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcNtNtCs1kSLwfZQ88S_3std6thread5InnerENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr align 8 %self) unnamed_addr #7 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  %0 = atomicrmw sub ptr %self1, i64 1 release, align 8
  %1 = icmp eq i64 %0, 1
  br i1 %1, label %bb2, label %bb4

bb2:                                              ; preds = %start
  tail call fastcc void @_RNvNtNtCsghWqkCs9mKo_4core4sync6atomic5fenceCsc19p934y1mR_6std_rs(i8 2)
  tail call fastcc void @_RNvMsj_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcNtNtCs1kSLwfZQ88S_3std6thread5InnerE9drop_slowCsc19p934y1mR_6std_rs(ptr nonnull align 8 %self)
  br label %bb4

bb4:                                              ; preds = %bb2, %start
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcNtNtNtCs1kSLwfZQ88S_3std6thread6scoped9ScopeDataENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr align 8 %self) unnamed_addr #7 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  %0 = atomicrmw sub ptr %self1, i64 1 release, align 8
  %1 = icmp eq i64 %0, 1
  br i1 %1, label %bb2, label %bb4

bb2:                                              ; preds = %start
  tail call fastcc void @_RNvNtNtCsghWqkCs9mKo_4core4sync6atomic5fenceCsc19p934y1mR_6std_rs(i8 2)
  tail call fastcc void @_RNvMsj_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcNtNtNtCs1kSLwfZQ88S_3std6thread6scoped9ScopeDataE9drop_slowCsc19p934y1mR_6std_rs(ptr nonnull align 8 %self)
  br label %bb4

bb4:                                              ; preds = %bb2, %start
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvYFEuINtNtNtCsghWqkCs9mKo_4core3ops8function6FnOnceuE9call_onceCsc19p934y1mR_6std_rs(ptr nocapture readonly %_1) unnamed_addr #7 {
start:
  tail call void %_1()
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @_RNvYINtNvNtNtCs1kSLwfZQ88S_3std2io5Write9write_fmt7AdapterNtNtNtNtNtBb_3sys3pal4unix5stdio6StderrENtNtCsghWqkCs9mKo_4core3fmt5Write10write_charCsc19p934y1mR_6std_rs(ptr nocapture align 8 %self, i32 %c) unnamed_addr #0 {
start:
  %_6 = alloca [4 x i8], align 4
  store i32 0, ptr %_6, align 4
  %0 = call fastcc { ptr, i64 } @_RNvNtNtCsghWqkCs9mKo_4core4char7methods15encode_utf8_rawCsc19p934y1mR_6std_rs(i32 %c, ptr nonnull align 1 %_6, i64 4)
  %v.0 = extractvalue { ptr, i64 } %0, 0
  %v.1 = extractvalue { ptr, i64 } %0, 1
  %_0 = call zeroext i1 @_RNvXNvNtNtCs1kSLwfZQ88S_3std2io5Write9write_fmtINtB2_7AdapterNtNtNtNtNtB8_3sys3pal4unix5stdio6StderrENtNtCsghWqkCs9mKo_4core3fmt5Write9write_strCsc19p934y1mR_6std_rs(ptr align 8 %self, ptr align 1 %v.0, i64 %v.1)
  ret i1 %_0
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @_RNvYINtNvNtNtCs1kSLwfZQ88S_3std2io5Write9write_fmt7AdapterNtNtNtNtNtBb_3sys3pal4unix5stdio6StderrENtNtCsghWqkCs9mKo_4core3fmt5Write9write_fmtCsc19p934y1mR_6std_rs(ptr align 8 %self, ptr align 8 %args) unnamed_addr #0 {
start:
  %_0 = tail call fastcc zeroext i1 @_RNvXs_NvNtNtCsghWqkCs9mKo_4core3fmt5Write9write_fmtQINtNvNtNtCs1kSLwfZQ88S_3std2io5Write9write_fmt7AdapterNtNtNtNtNtBX_3sys3pal4unix5stdio6StderrENtB4_12SpecWriteFmt14spec_write_fmtCsc19p934y1mR_6std_rs(ptr align 8 %self, ptr align 8 %args)
  ret i1 %_0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc i32 @_RNvYNCINvNtCs1kSLwfZQ88S_3std2rt10lang_startuE0INtNtNtCsghWqkCs9mKo_4core3ops8function6FnOnceuE9call_onceCsc19p934y1mR_6std_rs(ptr %0) unnamed_addr #7 personality ptr @rust_eh_personality {
start:
  %_1 = alloca ptr, align 8
  store ptr %0, ptr %_1, align 8
  %_0 = invoke i32 @_RNCINvNtCs1kSLwfZQ88S_3std2rt10lang_startuE0Csc19p934y1mR_6std_rs(ptr nonnull align 8 %_1)
          to label %bb1 unwind label %bb3, !range !13

bb3:                                              ; preds = %start
  %1 = landingpad { ptr, i32 }
          cleanup
  resume { ptr, i32 } %1

bb1:                                              ; preds = %start
  ret i32 %_0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvYNCNvXs5_NtCs1kSLwfZQ88S_3std6threadINtBa_6PacketuENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4drop0INtNtBU_8function6FnOnceuE9call_onceCsc19p934y1mR_6std_rs(ptr align 8 %0) unnamed_addr #7 personality ptr @rust_eh_personality {
start:
  %_1 = alloca ptr, align 8
  store ptr %0, ptr %_1, align 8
  invoke fastcc void @_RNCNvXs5_NtCs1kSLwfZQ88S_3std6threadINtB7_6PacketuENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4drop0Csc19p934y1mR_6std_rs(ptr nonnull align 8 %_1)
          to label %bb1 unwind label %bb3

bb3:                                              ; preds = %start
  %1 = landingpad { ptr, i32 }
          cleanup
  resume { ptr, i32 } %1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc ptr @_RNvYNtNtNtNtNtCs1kSLwfZQ88S_3std3sys3pal4unix5stdio6StderrNtNtBc_2io5Write9write_allCsc19p934y1mR_6std_rs(ptr align 1 %self, ptr align 1 %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_4 = alloca %"core::result::Result<usize, std::io::error::Error>", align 8
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %bb13, label %bb3

bb3:                                              ; preds = %bb15, %start
  %self.110 = phi i64 [ %self.1, %bb15 ], [ %1, %start ]
  %self.01 = phi ptr [ %_5.07, %bb15 ], [ %0, %start ]
  call void @"_ZN69_$LT$std..sys..pal..unix..stdio..Stderr$u20$as$u20$std..io..Write$GT$5write17h2f522eae24bf9405E"(ptr nonnull sret(%"core::result::Result<usize, std::io::error::Error>") align 8 %_4, ptr align 1 %self, ptr nonnull align 1 %self.01, i64 %self.110)
  %_6 = load i64, ptr %_4, align 8, !range !5, !noundef !4
  %3 = icmp eq i64 %_6, 0
  br i1 %3, label %bb5, label %bb8

bb13:                                             ; preds = %bb15, %bb11, %bb5, %start
  %_0.0 = phi ptr [ null, %bb15 ], [ null, %start ], [ %e4, %bb11 ], [ @alloc_626cc8bfd6c94d404aa777557e31db63, %bb5 ]
  ret ptr %_0.0

bb5:                                              ; preds = %bb3
  %4 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Ok", ptr %_4, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !noundef !4
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %bb13, label %bb7

bb8:                                              ; preds = %bb3
  %7 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Err", ptr %_4, i64 0, i32 1
  %_13 = invoke fastcc zeroext i1 @_RNvMs4_NtNtCs1kSLwfZQ88S_3std2io5errorNtB5_5Error14is_interruptedCsc19p934y1mR_6std_rs(ptr nonnull align 8 %7)
          to label %bb9 unwind label %cleanup.loopexit

bb7:                                              ; preds = %bb5
  %_27 = icmp ugt i64 %5, %self.110
  br i1 %_27, label %bb20, label %bb21

bb21:                                             ; preds = %bb7
  %new_len = sub nuw i64 %self.110, %5
  %data = getelementptr inbounds i8, ptr %self.01, i64 %5
  br label %bb17

bb20:                                             ; preds = %bb7
  invoke void @_ZN4core5slice5index26slice_start_index_len_fail17hb6e6adbe9bcaa20aE(i64 %5, i64 %self.110, ptr nonnull align 8 @alloc_ad59c95d882f83cd0956f19d31e44c98) #36
          to label %unreachable unwind label %cleanup.loopexit.split-lp

bb17:                                             ; preds = %bb9.bb17_crit_edge, %bb21
  %self.1 = phi i64 [ %self.110, %bb9.bb17_crit_edge ], [ %new_len, %bb21 ]
  %_17 = phi i64 [ %_17.pre, %bb9.bb17_crit_edge ], [ 0, %bb21 ]
  %_5.07 = phi ptr [ %self.01, %bb9.bb17_crit_edge ], [ %data, %bb21 ]
  %.not6 = icmp eq i64 %_17, 0
  br i1 %.not6, label %bb15, label %bb16

bb19:                                             ; preds = %cleanup.loopexit.split-lp, %cleanup.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
  %_18 = load i64, ptr %_4, align 8, !range !5, !noundef !4
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
  %e4 = load ptr, ptr %7, align 8, !nonnull !4, !noundef !4
  br label %bb13

bb16:                                             ; preds = %bb17
  %8 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Err", ptr %_4, i64 0, i32 1
  call void @_RNvXs1_NtNtNtCs1kSLwfZQ88S_3std2io5error14repr_bitpackedNtB5_4ReprNtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %8)
  br label %bb15

bb15:                                             ; preds = %bb16, %bb17
  %9 = icmp eq i64 %self.1, 0
  br i1 %9, label %bb13, label %bb3

bb18:                                             ; preds = %bb19
  %10 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Err", ptr %_4, i64 0, i32 1
  call void @_RNvXs1_NtNtNtCs1kSLwfZQ88S_3std2io5error14repr_bitpackedNtB5_4ReprNtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %10) #34
  br label %bb14

bb14:                                             ; preds = %bb18, %bb19
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define internal fastcc ptr @_RNvYNtNtNtNtNtCs1kSLwfZQ88S_3std3sys3pal4unix5stdio6StderrNtNtBc_2io5Write9write_fmtCsc19p934y1mR_6std_rs(ptr align 1 %self, ptr align 8 %fmt) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %output = alloca %"std::io::Write::write_fmt::Adapter<'_, std::sys::pal::unix::stdio::Stderr>", align 8
  store ptr %self, ptr %output, align 8
  %0 = getelementptr inbounds i8, ptr %output, i64 8
  store ptr null, ptr %0, align 8
  %1 = invoke zeroext i1 @_ZN4core3fmt5write17ha63b5e044fedf034E(ptr nonnull align 1 %output, ptr nonnull align 8 @vtable.9, ptr align 8 %fmt)
          to label %bb1 unwind label %bb7

bb7:                                              ; preds = %start
  %2 = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNvNtNtCs1kSLwfZQ88S_3std2io5Write9write_fmt7AdapterNtNtNtNtNtBP_3sys3pal4unix5stdio6StderrEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %output) #34
  br label %bb8

bb1:                                              ; preds = %start
  br i1 %1, label %bb2, label %bb10

bb2:                                              ; preds = %bb1
  %3 = load ptr, ptr %0, align 8, !noundef !4
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb10, label %bb9

bb9:                                              ; preds = %bb10, %bb2
  %_0.03 = phi ptr [ %_0.04, %bb10 ], [ %3, %bb2 ]
  ret ptr %_0.03

bb10:                                             ; preds = %bb2, %bb1
  %_0.04 = phi ptr [ @alloc_5d9af7a776dc0d9eecd628aaf786bef9, %bb2 ], [ null, %bb1 ]
  call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs1kSLwfZQ88S_3std2io5error5ErrorEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %0)
  br label %bb9

bb8:                                              ; preds = %bb7
  resume { ptr, i32 } %2
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc i64 @_RNvYNvNtNtCs1kSLwfZQ88S_3std10sys_common6thread9min_stackINtNtNtCsghWqkCs9mKo_4core3ops8function6FnOnceuE9call_onceCsc19p934y1mR_6std_rs() unnamed_addr #7 {
start:
  %_0 = tail call i64 @_ZN3std10sys_common6thread9min_stack17h4877004752fad623E()
  ret i64 %_0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvCsc19p934y1mR_6std_rs4main() unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %t2 = alloca %"std::thread::JoinHandle<()>", align 8
  %t1 = alloca %"std::thread::JoinHandle<()>", align 8
  %y = alloca ptr, align 8
  %x = alloca ptr, align 8
  %_2 = alloca %"std::sync::mutex::Mutex<i32>", align 4
  %data = alloca ptr, align 8
  call fastcc void @_RNvMs2_NtNtCs1kSLwfZQ88S_3std4sync5mutexINtB5_5MutexlE3newCsc19p934y1mR_6std_rs(ptr nonnull sret(%"std::sync::mutex::Mutex<i32>") align 4 %_2, i32 1234)
  %0 = call fastcc ptr @_RNvMsc_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexlEE3newCsc19p934y1mR_6std_rs(ptr nonnull align 4 %_2)
  store ptr %0, ptr %data, align 8
  %1 = call fastcc ptr @_RNvXsq_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexlEENtNtCsghWqkCs9mKo_4core5clone5Clone5cloneCsc19p934y1mR_6std_rs(ptr nonnull align 8 %data)
  br label %bb3

bb11:                                             ; preds = %bb10, %bb13, %bb14
  %.pn = phi { ptr, i32 } [ %4, %bb10 ], [ %3, %bb14 ], [ %5, %bb13 ]
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexlEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %data) #34
  br label %bb12

bb3:                                              ; preds = %start
  store ptr %1, ptr %x, align 8
  %2 = call fastcc ptr @_RNvXsq_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexlEENtNtCsghWqkCs9mKo_4core5clone5Clone5cloneCsc19p934y1mR_6std_rs(ptr nonnull align 8 %data)
  br label %bb4

bb4:                                              ; preds = %bb3
  store ptr %2, ptr %y, align 8
  invoke fastcc void @_RINvNtCs1kSLwfZQ88S_3std6thread5spawnNCNvCsc19p934y1mR_6std_rs4main0uEBD_(ptr nonnull sret(%"std::thread::JoinHandle<()>") align 8 %t1, ptr nonnull %1)
          to label %bb5 unwind label %bb13

bb14:                                             ; preds = %bb7
  %3 = landingpad { ptr, i32 }
          cleanup
  br label %bb11

bb5:                                              ; preds = %bb4
  invoke fastcc void @_RINvNtCs1kSLwfZQ88S_3std6thread5spawnNCNvCsc19p934y1mR_6std_rs4mains_0uEBD_(ptr nonnull sret(%"std::thread::JoinHandle<()>") align 8 %t2, ptr nonnull %2)
          to label %bb6 unwind label %bb10

bb10:                                             ; preds = %bb6, %bb5
  %4 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtCs1kSLwfZQ88S_3std6thread9JoinInneruEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %t1) #34
  br label %bb11

bb6:                                              ; preds = %bb5
  invoke fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtCs1kSLwfZQ88S_3std6thread10JoinHandleuEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %t2)
          to label %bb7 unwind label %bb10

bb7:                                              ; preds = %bb6
  invoke fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtCs1kSLwfZQ88S_3std6thread10JoinHandleuEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %t1)
          to label %bb8 unwind label %bb14

bb8:                                              ; preds = %bb7
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexlEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %data)
  ret void

bb13:                                             ; preds = %bb4
  %5 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexlEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %y) #34
  br label %bb11

bb12:                                             ; preds = %bb11
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvCsc19p934y1mR_6std_rs4main0B3_(ptr %0) unnamed_addr #7 personality ptr @rust_eh_personality {
start:
  %e.i = alloca %"std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>", align 8
  %_3 = alloca %"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>", align 8
  %guard = alloca %"std::sync::mutex::MutexGuard<'_, i32>", align 8
  %_1 = alloca ptr, align 8
  store ptr %0, ptr %_1, align 8
  %_4 = call fastcc align 4 ptr @_RNvXsr_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexlEENtNtNtCsghWqkCs9mKo_4core3ops5deref5Deref5derefCsc19p934y1mR_6std_rs(ptr nonnull align 8 %_1)
  br label %bb1

bb8:                                              ; preds = %cleanup.body
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexlEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %_1) #34
  br label %bb9

cleanup:                                          ; preds = %bb4, %bb1
  %1 = landingpad { ptr, i32 }
          cleanup
  br label %cleanup.body

cleanup.body:                                     ; preds = %bb5.i, %cleanup
  %.pn = phi { ptr, i32 } [ %8, %bb5.i ], [ %1, %cleanup ]
  br label %bb8

bb1:                                              ; preds = %start
  invoke fastcc void @_RNvMs3_NtNtCs1kSLwfZQ88S_3std4sync5mutexINtB5_5MutexlE4lockCsc19p934y1mR_6std_rs(ptr nonnull sret(%"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>") align 8 %_3, ptr nonnull align 4 %_4)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_2.i = load i64, ptr %_3, align 8, !range !5, !noundef !4
  %2 = icmp eq i64 %_2.i, 0
  br i1 %2, label %bb3, label %bb1.i

bb1.i:                                            ; preds = %bb2
  %3 = getelementptr inbounds %"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>::Err", ptr %_3, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !nonnull !4, !align !18, !noundef !4
  %5 = getelementptr inbounds %"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>::Err", ptr %_3, i64 0, i32 1, i32 0, i32 1
  %6 = load i8, ptr %5, align 8, !range !14, !noundef !4
  store ptr %4, ptr %e.i, align 8
  %7 = getelementptr inbounds i8, ptr %e.i, i64 8
  store i8 %6, ptr %7, align 8
  invoke void @_ZN4core6result13unwrap_failed17h566b4fa76abf40a2E(ptr nonnull align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 43, ptr nonnull align 1 %e.i, ptr nonnull align 8 @vtable.5, ptr nonnull align 8 @alloc_cf4841192a075b187537d87234b8e041) #36
          to label %unreachable.i unwind label %cleanup.i

cleanup.i:                                        ; preds = %bb1.i
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @_RNvXsa_NtNtCs1kSLwfZQ88S_3std4sync5mutexINtB5_10MutexGuardlENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %e.i) #34
  br label %bb5.i

unreachable.i:                                    ; preds = %bb1.i
  unreachable

bb5.i:                                            ; preds = %cleanup.i
  br label %cleanup.body

bb3:                                              ; preds = %bb2
  %9 = getelementptr inbounds %"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>::Ok", ptr %_3, i64 0, i32 1, i32 1
  %10 = load i8, ptr %9, align 8, !range !14, !noundef !4
  %11 = getelementptr inbounds %"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>::Ok", ptr %_3, i64 0, i32 1
  %t.0.i = load ptr, ptr %11, align 8, !nonnull !4, !align !18, !noundef !4
  store ptr %t.0.i, ptr %guard, align 8
  %12 = getelementptr inbounds i8, ptr %guard, i64 8
  store i8 %10, ptr %12, align 8
  %_6 = call fastcc align 4 ptr @_RNvXs9_NtNtCs1kSLwfZQ88S_3std4sync5mutexINtB5_10MutexGuardlENtNtNtCsghWqkCs9mKo_4core3ops5deref8DerefMut9deref_mutCsc19p934y1mR_6std_rs(ptr nonnull align 8 %guard)
  br label %bb4

bb4:                                              ; preds = %bb3
  store i32 1234, ptr %_6, align 4
  invoke fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtNtCs1kSLwfZQ88S_3std4sync5mutex10MutexGuardlEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %guard)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexlEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %_1)
  ret void

bb9:                                              ; preds = %bb8
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvCsc19p934y1mR_6std_rs4mains_0B3_(ptr %0) unnamed_addr #7 personality ptr @rust_eh_personality {
start:
  %e.i = alloca %"std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>", align 8
  %_3 = alloca %"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>", align 8
  %guard = alloca %"std::sync::mutex::MutexGuard<'_, i32>", align 8
  %_1 = alloca ptr, align 8
  store ptr %0, ptr %_1, align 8
  %_4 = call fastcc align 4 ptr @_RNvXsr_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexlEENtNtNtCsghWqkCs9mKo_4core3ops5deref5Deref5derefCsc19p934y1mR_6std_rs(ptr nonnull align 8 %_1)
  br label %bb1

bb8:                                              ; preds = %cleanup.body
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexlEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %_1) #34
  br label %bb9

cleanup:                                          ; preds = %bb4, %bb1
  %1 = landingpad { ptr, i32 }
          cleanup
  br label %cleanup.body

cleanup.body:                                     ; preds = %bb5.i, %cleanup
  %.pn = phi { ptr, i32 } [ %8, %bb5.i ], [ %1, %cleanup ]
  br label %bb8

bb1:                                              ; preds = %start
  invoke fastcc void @_RNvMs3_NtNtCs1kSLwfZQ88S_3std4sync5mutexINtB5_5MutexlE4lockCsc19p934y1mR_6std_rs(ptr nonnull sret(%"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>") align 8 %_3, ptr nonnull align 4 %_4)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_2.i = load i64, ptr %_3, align 8, !range !5, !noundef !4
  %2 = icmp eq i64 %_2.i, 0
  br i1 %2, label %bb3, label %bb1.i

bb1.i:                                            ; preds = %bb2
  %3 = getelementptr inbounds %"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>::Err", ptr %_3, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !nonnull !4, !align !18, !noundef !4
  %5 = getelementptr inbounds %"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>::Err", ptr %_3, i64 0, i32 1, i32 0, i32 1
  %6 = load i8, ptr %5, align 8, !range !14, !noundef !4
  store ptr %4, ptr %e.i, align 8
  %7 = getelementptr inbounds i8, ptr %e.i, i64 8
  store i8 %6, ptr %7, align 8
  invoke void @_ZN4core6result13unwrap_failed17h566b4fa76abf40a2E(ptr nonnull align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 43, ptr nonnull align 1 %e.i, ptr nonnull align 8 @vtable.5, ptr nonnull align 8 @alloc_2b1a7445a35dd192b91c6eb2a3e4a532) #36
          to label %unreachable.i unwind label %cleanup.i

cleanup.i:                                        ; preds = %bb1.i
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @_RNvXsa_NtNtCs1kSLwfZQ88S_3std4sync5mutexINtB5_10MutexGuardlENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %e.i) #34
  br label %bb5.i

unreachable.i:                                    ; preds = %bb1.i
  unreachable

bb5.i:                                            ; preds = %cleanup.i
  br label %cleanup.body

bb3:                                              ; preds = %bb2
  %9 = getelementptr inbounds %"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>::Ok", ptr %_3, i64 0, i32 1, i32 1
  %10 = load i8, ptr %9, align 8, !range !14, !noundef !4
  %11 = getelementptr inbounds %"core::result::Result<std::sync::mutex::MutexGuard<'_, i32>, std::sync::poison::PoisonError<std::sync::mutex::MutexGuard<'_, i32>>>::Ok", ptr %_3, i64 0, i32 1
  %t.0.i = load ptr, ptr %11, align 8, !nonnull !4, !align !18, !noundef !4
  store ptr %t.0.i, ptr %guard, align 8
  %12 = getelementptr inbounds i8, ptr %guard, i64 8
  store i8 %10, ptr %12, align 8
  %_6 = call fastcc align 4 ptr @_RNvXs9_NtNtCs1kSLwfZQ88S_3std4sync5mutexINtB5_10MutexGuardlENtNtNtCsghWqkCs9mKo_4core3ops5deref8DerefMut9deref_mutCsc19p934y1mR_6std_rs(ptr nonnull align 8 %guard)
  br label %bb4

bb4:                                              ; preds = %bb3
  store i32 4321, ptr %_6, align 4
  invoke fastcc void @_RINvNtCsghWqkCs9mKo_4core3ptr13drop_in_placeINtNtNtCs1kSLwfZQ88S_3std4sync5mutex10MutexGuardlEECsc19p934y1mR_6std_rs(ptr nonnull align 8 %guard)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  call fastcc void @_RNvXsv_NtCs9lD8hpqNLQ1_5alloc4syncINtB5_3ArcINtNtNtCs1kSLwfZQ88S_3std4sync5mutex5MutexlEENtNtNtCsghWqkCs9mKo_4core3ops4drop4Drop4dropCsc19p934y1mR_6std_rs(ptr nonnull align 8 %_1)
  ret void

bb9:                                              ; preds = %bb8
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #21

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare ptr @_ZN3std6thread6Thread3new17h9286f061390b10b6E(ptr align 1, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare ptr @_ZN3std2io5stdio18set_output_capture17h47fa7577e7da3004E(ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std6thread6scoped9ScopeData29increment_num_running_threads17hb8778178a2b2dcd2E(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std3sys3pal4unix6thread6Thread3new17h25822420d6359794E(ptr sret(%"core::result::Result<std::sys::pal::unix::thread::Thread, std::io::error::Error>") align 8, i64, ptr align 1, ptr align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h268144b6f1132d80E() unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_ZN4core3fmt8builders9DebugList5entry17h5d20dd743daa8c38E(ptr align 8, ptr align 1, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i64 @_ZN3std2rt19lang_start_internal17hd1132dfff4140512E(ptr align 1, ptr align 8, i64, ptr, i8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN77_$LT$std..sys..pal..unix..thread..Thread$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2455a369488eb470E"(ptr align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17ha3d303d496008cd4E(ptr align 8, ptr align 8) unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: cold nonlazybind uwtable
declare { ptr, ptr } @_ZN3std9panicking3try7cleanup17h6d4e570bbe25440aE(ptr) unnamed_addr #25

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17hfa9f734a74de1f5aE() unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_ZN3std6thread6Thread5cname17he8eff7cc14160c1eE(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std3sys3pal4unix6thread6Thread8set_name17h76dc80adfde750b1E(ptr align 1, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std3sys3pal4unix6thread5guard7current17ha2bb65882033f000E(ptr sret(%"core::option::Option<core::ops::range::Range<usize>>") align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std10sys_common11thread_info3set17h2c664b76c70cf208E(ptr align 8, ptr) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias ptr @__rust_alloc(i64, i64 allocalign) unnamed_addr #26

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hb0183faaec54836bE"(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17h566b4fa76abf40a2E(ptr align 1, i64, ptr align 1, ptr align 8, ptr align 8) unnamed_addr #23

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys3pal4unix5locks11futex_mutex5Mutex14lock_contended17h4f7d6dac2a29401eE(ptr align 4) unnamed_addr #25

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h085c72f91e671903E(i64, i64) unnamed_addr #27

; Function Attrs: cold noinline nonlazybind uwtable
declare zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h082ee561e24f3651E() unnamed_addr #28

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h16e2d8a35fcc5a92E"(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #29

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17hcaba71f5f538ebe0E(i64, i64, ptr align 8) unnamed_addr #23

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h8f0bf65eb3f4aa75E(i8, ptr align 1, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_ZN5alloc3ffi5c_str7CString19_from_vec_unchecked17haed2596d76a1241bE(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h99ee99222d3e115aE"(ptr align 1, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17h685b2bbffb06450aE"(ptr align 1, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h5491a99e5df195d5E"(ptr align 1, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17hf2e8a08e617b8e39E"(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h644fa137a4214e55E"(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index24slice_end_index_len_fail17h23a8c1ae2d2af720E(i64, i64, ptr align 8) unnamed_addr #23

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index22slice_index_order_fail17h1fd59e78f9534eb8E(i64, i64, ptr align 8) unnamed_addr #23

; Function Attrs: noreturn nonlazybind uwtable
declare void @_ZN3std3sys3pal4unix14abort_internal17h7fd6e40882d9056eE() unnamed_addr #30

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std6thread6scoped9ScopeData29decrement_num_running_threads17h407e400d408a22bfE(ptr align 8, i1 zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hb946ec1de769060bE(ptr align 8, ptr align 1, i64, ptr align 1, ptr align 8, ptr align 1, ptr align 8) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @__rust_dealloc(ptr allocptr, i64, i64) unnamed_addr #31

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3fmt9Formatter12debug_struct17hdb73d511d1979dccE(ptr sret(%"core::fmt::builders::DebugStruct<'_, '_>") align 8, ptr align 8, ptr align 1, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17hd65b50a24aa85c65E(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt5write17ha63b5e044fedf034E(ptr align 1, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys3pal4unix5locks11futex_mutex5Mutex4wake17ha68d826fb94c0d3cE(ptr align 4) unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3fmt9Formatter10debug_list17h149015fd7be1ba26E(ptr sret(%"core::fmt::builders::DebugList<'_, '_>") align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h607b22500ce6076aE(ptr align 8) unnamed_addr #0

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #32

; Function Attrs: nonlazybind uwtable
declare void @"_ZN69_$LT$std..sys..pal..unix..stdio..Stderr$u20$as$u20$std..io..Write$GT$5write17h2f522eae24bf9405E"(ptr sret(%"core::result::Result<usize, std::io::error::Error>") align 8, ptr align 1, ptr align 1, i64) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index26slice_start_index_len_fail17hb6e6adbe9bcaa20aE(i64, i64, ptr align 8) unnamed_addr #23

; Function Attrs: nonlazybind uwtable
declare i64 @_ZN3std10sys_common6thread9min_stack17h4877004752fad623E() unnamed_addr #0

; Function Attrs: nonlazybind
define i32 @main(i32 %0, ptr %1) unnamed_addr #33 {
top:
  %2 = sext i32 %0 to i64
  %3 = tail call i64 @_RINvNtCs1kSLwfZQ88S_3std2rt10lang_startuECsc19p934y1mR_6std_rs(ptr nonnull @_RNvCsc19p934y1mR_6std_rs4main, i64 %2, ptr %1, i8 0)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: nonlazybind
define internal fastcc i32 @__rust_try.1(ptr nocapture readonly %0, ptr %1, ptr nocapture readonly %2) unnamed_addr #33 personality ptr @rust_eh_personality {
entry-block:
  invoke void @_RINvNvNtCs1kSLwfZQ88S_3std9panicking3try7do_callINtNtNtCsghWqkCs9mKo_4core5panic11unwind_safe16AssertUnwindSafeNCNvXs5_NtB6_6threadINtB1T_6PacketuENtNtNtBR_3ops4drop4Drop4drop0EuECsc19p934y1mR_6std_rs(ptr %1)
          to label %common.ret unwind label %catch

common.ret:                                       ; preds = %entry-block, %catch
  %common.ret.op = phi i32 [ 1, %catch ], [ 0, %entry-block ]
  ret i32 %common.ret.op

catch:                                            ; preds = %entry-block
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  tail call void @_RINvNvNtCs1kSLwfZQ88S_3std9panicking3try8do_catchINtNtNtCsghWqkCs9mKo_4core5panic11unwind_safe16AssertUnwindSafeNCNvXs5_NtB6_6threadINtB1U_6PacketuENtNtNtBS_3ops4drop4Drop4drop0EuECsc19p934y1mR_6std_rs(ptr %1, ptr %4)
  br label %common.ret
}

; Function Attrs: nonlazybind
define internal fastcc i32 @__rust_try.2(ptr nocapture readonly %0, ptr %1, ptr nocapture readonly %2) unnamed_addr #33 personality ptr @rust_eh_personality {
entry-block:
  invoke void @_RINvNvNtCs1kSLwfZQ88S_3std9panicking3try7do_callINtNtNtCsghWqkCs9mKo_4core5panic11unwind_safe16AssertUnwindSafeNCNCINvMNtB6_6threadNtB1T_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4mains_0uEs_00EuEB2F_(ptr %1)
          to label %common.ret unwind label %catch

common.ret:                                       ; preds = %entry-block, %catch
  %common.ret.op = phi i32 [ 1, %catch ], [ 0, %entry-block ]
  ret i32 %common.ret.op

catch:                                            ; preds = %entry-block
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  tail call void @_RINvNvNtCs1kSLwfZQ88S_3std9panicking3try8do_catchINtNtNtCsghWqkCs9mKo_4core5panic11unwind_safe16AssertUnwindSafeNCNCINvMNtB6_6threadNtB1U_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4mains_0uEs_00EuEB2G_(ptr %1, ptr %4)
  br label %common.ret
}

; Function Attrs: nonlazybind
define internal fastcc i32 @__rust_try.3(ptr nocapture readonly %0, ptr %1, ptr nocapture readonly %2) unnamed_addr #33 personality ptr @rust_eh_personality {
entry-block:
  invoke void @_RINvNvNtCs1kSLwfZQ88S_3std9panicking3try7do_callINtNtNtCsghWqkCs9mKo_4core5panic11unwind_safe16AssertUnwindSafeNCNCINvMNtB6_6threadNtB1T_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4main0uEs_00EuEB2F_(ptr %1)
          to label %common.ret unwind label %catch

common.ret:                                       ; preds = %entry-block, %catch
  %common.ret.op = phi i32 [ 1, %catch ], [ 0, %entry-block ]
  ret i32 %common.ret.op

catch:                                            ; preds = %entry-block
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  tail call void @_RINvNvNtCs1kSLwfZQ88S_3std9panicking3try8do_catchINtNtNtCsghWqkCs9mKo_4core5panic11unwind_safe16AssertUnwindSafeNCNCINvMNtB6_6threadNtB1U_7Builder16spawn_unchecked_NCNvCsc19p934y1mR_6std_rs4main0uEs_00EuEB2G_(ptr %1, ptr %4)
  br label %common.ret
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint mustprogress nofree norecurse nounwind nonlazybind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree nosync nonlazybind willreturn memory(argmem: write, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree nosync nounwind nonlazybind willreturn memory(inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint mustprogress nofree nosync nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { inlinehint mustprogress nofree norecurse nounwind nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { inlinehint mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #22 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #30 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { cold noreturn nounwind }
attributes #33 = { nonlazybind "target-cpu"="x86-64" }
attributes #34 = { cold }
attributes #35 = { nounwind }
attributes #36 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{!"rustc version 1.77.0-nightly (11f32b73e 2024-01-31)"}
!4 = !{}
!5 = !{i64 0, i64 2}
!6 = !{i64 0, i64 -9223372036854775807}
!7 = !{i32 0, i32 2}
!8 = !{i64 1}
!9 = !{i64 8}
!10 = !{i8 0, i8 4}
!11 = !{i32 3867113}
!12 = !{i8 0, i8 42}
!13 = !{i32 0, i32 256}
!14 = !{i8 0, i8 2}
!15 = !{i8 0, i8 41}
!16 = !{i64 0, i64 -9223372036854775808}
!17 = !{i64 1, i64 0}
!18 = !{i64 4}
