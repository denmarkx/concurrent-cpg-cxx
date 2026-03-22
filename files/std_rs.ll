; ModuleID = 'files/std_rs.ll'
source_filename = "std_rs.5466325db683071d-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::result::Result<usize, std::io::error::Error>" = type { i64, [1 x i64] }
%"core::result::Result<usize, std::io::error::Error>::Ok" = type { [1 x i64], i64 }
%"core::result::Result<usize, std::io::error::Error>::Err" = type { [1 x i64], ptr }
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
%"std::io::error::Custom" = type { { ptr, ptr }, i8, [7 x i8] }
%"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>" = type { i64, [2 x i64] }
%"std::thread::JoinInner<'_, ()>" = type { ptr, ptr, i64 }
%"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>" = type { %"core::sync::atomic::AtomicUsize", %"core::sync::atomic::AtomicUsize", %"std::thread::Packet<'_, ()>" }
%"core::sync::atomic::AtomicUsize" = type { i64 }
%"std::thread::Packet<'_, ()>" = type { ptr, %"core::cell::UnsafeCell<core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>>", %"core::marker::PhantomData<core::option::Option<&std::thread::scoped::ScopeData>>" }
%"core::cell::UnsafeCell<core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>>" = type { %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>" }
%"core::marker::PhantomData<core::option::Option<&std::thread::scoped::ScopeData>>" = type {}
%"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>::Some" = type { [1 x i64], { ptr, ptr } }
%"std::thread::JoinHandle<()>" = type { %"std::thread::JoinInner<'_, ()>" }
%"core::option::Option<alloc::string::String>" = type { i64, [2 x i64] }
%"std::thread::Builder" = type { { i64, i64 }, %"core::option::Option<alloc::string::String>" }
%"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>" = type { ptr, [2 x i64] }
%"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>" = type { ptr, [2 x i64] }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, std::io::error::Error>, std::thread::JoinInner<'_, ()>>" = type { ptr, [2 x i64] }
%"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>::Err" = type { [1 x i64], ptr }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, std::io::error::Error>, std::thread::JoinInner<'_, ()>>::Break" = type { [1 x i64], ptr }
%"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>::Err" = type { [1 x i64], ptr }
%"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>" = type { i64, [3 x i64] }
%"alloc::string::String" = type { %"alloc::vec::Vec<u8>" }
%"alloc::vec::Vec<u8>" = type { { i64, ptr }, i64 }
%"core::result::Result<std::sys::unix::thread::Thread, std::io::error::Error>" = type { i64, [1 x i64] }
%"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}" = type { ptr, ptr, ptr, ptr }
%"alloc::sync::ArcInner<std::thread::scoped::ScopeData>" = type { %"core::sync::atomic::AtomicUsize", %"core::sync::atomic::AtomicUsize", %"std::thread::scoped::ScopeData" }
%"std::thread::scoped::ScopeData" = type { ptr, %"core::sync::atomic::AtomicUsize", %"core::sync::atomic::AtomicBool", [7 x i8] }
%"core::sync::atomic::AtomicBool" = type { i8 }
%"core::result::Result<std::sys::unix::thread::Thread, std::io::error::Error>::Ok" = type { [1 x i64], i64 }
%"core::result::Result<std::sys::unix::thread::Thread, std::io::error::Error>::Err" = type { [1 x i64], ptr }
%"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}" = type { ptr, ptr, ptr, ptr }
%"core::option::Option<core::ops::range::Range<usize>>" = type { i64, [2 x i64] }
%"std::panicking::try::Data<core::panic::unwind_safe::AssertUnwindSafe<{closure@<std::thread::Packet<'_, ()> as core::ops::drop::Drop>::drop::{closure#0}}>, ()>" = type { [2 x i64] }
%"std::panicking::try::Data<core::panic::unwind_safe::AssertUnwindSafe<{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}::{closure#0}}>, ()>" = type { [2 x i64] }
%"std::panicking::try::Data<core::panic::unwind_safe::AssertUnwindSafe<{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}::{closure#0}}>, ()>" = type { [2 x i64] }
%"core::fmt::builders::DebugList<'_, '_>" = type { %"core::fmt::builders::DebugInner<'_, '_>" }
%"core::fmt::builders::DebugInner<'_, '_>" = type { ptr, i8, i8, [6 x i8] }
%"core::fmt::Formatter<'_>" = type { { i64, i64 }, { i64, i64 }, { ptr, ptr }, i32, i32, i8, [7 x i8] }
%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }
%"std::thread::Inner" = type { i64, { ptr, i64 }, %"std::sys_common::thread_parking::futex::Parker", [1 x i32] }
%"std::sys_common::thread_parking::futex::Parker" = type { %"core::sync::atomic::AtomicU32" }
%"core::sync::atomic::AtomicU32" = type { i32 }
%"std::sync::mutex::Mutex<alloc::vec::Vec<u8>>" = type { %"std::sys::unix::locks::futex_mutex::Mutex", %"std::sync::poison::Flag", [3 x i8], %"core::cell::UnsafeCell<alloc::vec::Vec<u8>>" }
%"std::sys::unix::locks::futex_mutex::Mutex" = type { %"core::sync::atomic::AtomicU32" }
%"std::sync::poison::Flag" = type { %"core::sync::atomic::AtomicBool" }
%"core::cell::UnsafeCell<alloc::vec::Vec<u8>>" = type { %"alloc::vec::Vec<u8>" }
%"alloc::ffi::c_str::NulError" = type { %"alloc::vec::Vec<u8>", i64 }
%"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>::Ok" = type { [1 x i64], { ptr, i64 } }
%"alloc::sync::ArcInner<i32>" = type { %"core::sync::atomic::AtomicUsize", %"core::sync::atomic::AtomicUsize", i32, [1 x i32] }
%"alloc::sync::ArcInner<std::thread::Inner>" = type { %"core::sync::atomic::AtomicUsize", %"core::sync::atomic::AtomicUsize", %"std::thread::Inner" }
%"alloc::sync::ArcInner<std::sync::mutex::Mutex<alloc::vec::Vec<u8>>>" = type { %"core::sync::atomic::AtomicUsize", %"core::sync::atomic::AtomicUsize", %"std::sync::mutex::Mutex<alloc::vec::Vec<u8>>" }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>" = type { [1 x i64], i64, [1 x i64] }
%"core::fmt::rt::Placeholder" = type { { i64, i64 }, { i64, i64 }, i64, i32, i32, i8, [7 x i8] }

@alloc_8d68fcbc011419193bd208f22e2789d1 = private unnamed_addr constant <{ [28 x i8] }> <{ [28 x i8] c"failed to write whole buffer" }>, align 1
@alloc_626cc8bfd6c94d404aa777557e31db63 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @alloc_8d68fcbc011419193bd208f22e2789d1, [9 x i8] c"\1C\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@alloc_2f83dfc9a60946d6dd4382ae2c85abff = private unnamed_addr constant <{ [73 x i8] }> <{ [73 x i8] c"/rustc/07dca489ac2d933c78d3c5158e3f43beefeb02ce/library/std/src/io/mod.rs" }>, align 1
@alloc_4281a0c14125330c5d3c45e00517e107 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_2f83dfc9a60946d6dd4382ae2c85abff, [16 x i8] c"I\00\00\00\00\00\00\00\8D\06\00\00$\00\00\00" }>, align 8
@vtable.0 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr92drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..sys..unix..stdio..Stderr$GT$$GT$17ha962f8b841f1e395E", [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h9d33958e619f5e87E", ptr @_ZN4core3fmt5Write10write_char17ha2e307146d8e8cecE, ptr @_ZN4core3fmt5Write9write_fmt17h3cf4e8c57e0b0964E }>, align 8
@alloc_118e5dd62e18907a47aec3e2be501119 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"formatter error" }>, align 1
@alloc_5d9af7a776dc0d9eecd628aaf786bef9 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @alloc_118e5dd62e18907a47aec3e2be501119, [9 x i8] c"\0F\00\00\00\00\00\00\00(", [7 x i8] undef }>, align 8
@vtable.1 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hbf46b36e455c1aebE", [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17had9750606aaf5558E", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hc01589153985aec9E", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hc01589153985aec9E" }>, align 8
@alloc_5f55955de67e57c79064b537689facea = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c"called `Option::unwrap()` on a `None` value" }>, align 1
@alloc_33b1e69a422a81942b7149db811cc384 = private unnamed_addr constant <{ [77 x i8] }> <{ [77 x i8] c"/rustc/07dca489ac2d933c78d3c5158e3f43beefeb02ce/library/std/src/thread/mod.rs" }>, align 1
@alloc_210632c49b2fd4ef0dc8e7c88d1b4c5b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_33b1e69a422a81942b7149db811cc384, [16 x i8] c"M\00\00\00\00\00\00\00\ED\05\00\00(\00\00\00" }>, align 8
@alloc_75b83b2c75f3b36b94a7518a66ad8875 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_33b1e69a422a81942b7149db811cc384, [16 x i8] c"M\00\00\00\00\00\00\00\ED\05\00\00I\00\00\00" }>, align 8
@alloc_e3605bf48dd8479a638909176cc37fce = private unnamed_addr constant <{ [22 x i8] }> <{ [22 x i8] c"failed to spawn thread" }>, align 1
@alloc_1f8c62d57f163807c7029893ad26ce72 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_33b1e69a422a81942b7149db811cc384, [16 x i8] c"M\00\00\00\00\00\00\00\AC\02\00\00\1D\00\00\00" }>, align 8
@alloc_498705839b3ae85466bce6e7ebfe4996 = private unnamed_addr constant <{ [47 x i8] }> <{ [47 x i8] c"thread name may not contain interior null bytes" }>, align 1
@alloc_10ce3643ab05b89124ccab86e25db141 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_33b1e69a422a81942b7149db811cc384, [16 x i8] c"M\00\00\00\00\00\00\00\DC\01\00\00 \00\00\00" }>, align 8
@vtable.2 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr148drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17haaed32df4c189f1bE", [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h6840fdfd4583852fE" }>, align 8
@vtable.3 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr148drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h252c8220f67e077aE", [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h6987d04e5a582d75E" }>, align 8
@vtable.4 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr27drop_in_place$LT$$RF$u8$GT$17hc7195de170f8af81E", [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hce2cc252954964a2E" }>, align 8
@alloc_91c7fa63c3cfeaa3c795652d5cf060e4 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc_af99043bc04c419363a7f04d23183506 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_91c7fa63c3cfeaa3c795652d5cf060e4, [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc_513570631223a12912d85da2bec3b15a = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc_4243f84a3a879718e5490fe547b0ab9c = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/07dca489ac2d933c78d3c5158e3f43beefeb02ce/library/core/src/fmt/mod.rs" }>, align 1
@alloc_5f330cd7dff757941d785f386d839300 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_4243f84a3a879718e5490fe547b0ab9c, [16 x i8] c"K\00\00\00\00\00\00\00M\01\00\00\0D\00\00\00" }>, align 8
@alloc_87aade1e32141a008cc1d76d37ad88ac = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/07dca489ac2d933c78d3c5158e3f43beefeb02ce/library/core/src/char/methods.rs" }>, align 1
@alloc_6a0114d2661e84bef3991f7200e47da8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_87aade1e32141a008cc1d76d37ad88ac, [16 x i8] c"P\00\00\00\00\00\00\00\05\07\00\00\0D\00\00\00" }>, align 8
@alloc_6b031f9bca8204235732c7c365d04a1d = private unnamed_addr constant <{ [18 x i8] }> <{ [18 x i8] c"encode_utf8: need " }>, align 1
@alloc_28d13efb0f9a95ccb5d02ec33dd195cf = private unnamed_addr constant <{ [19 x i8] }> <{ [19 x i8] c" bytes to encode U+" }>, align 1
@alloc_0d928972d2befd736e581c7fcc5a2f9a = private unnamed_addr constant <{ [21 x i8] }> <{ [21 x i8] c", but the buffer has " }>, align 1
@alloc_d51214f097f67314513b76e97e13aa6b = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_6b031f9bca8204235732c7c365d04a1d, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @alloc_28d13efb0f9a95ccb5d02ec33dd195cf, [8 x i8] c"\13\00\00\00\00\00\00\00", ptr @alloc_0d928972d2befd736e581c7fcc5a2f9a, [8 x i8] c"\15\00\00\00\00\00\00\00" }>, align 8
@alloc_15e56ccbce15945ea86b75a3c6d59ec8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_87aade1e32141a008cc1d76d37ad88ac, [16 x i8] c"P\00\00\00\00\00\00\00\FE\06\00\00\0E\00\00\00" }>, align 8
@alloc_9cd20c3e415f4d39f0ceb012cb758628 = private unnamed_addr constant <{ [40 x i8] }> <{ [40 x i8] c"there is no such thing as a release load" }>, align 1
@alloc_cf8f91dd8bc9347b20052f6ccc905cd7 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_9cd20c3e415f4d39f0ceb012cb758628, [8 x i8] c"(\00\00\00\00\00\00\00" }>, align 8
@alloc_6c138c94c234ed7dfd455fcb63eead43 = private unnamed_addr constant <{ [79 x i8] }> <{ [79 x i8] c"/rustc/07dca489ac2d933c78d3c5158e3f43beefeb02ce/library/core/src/sync/atomic.rs" }>, align 1
@alloc_4c32346d01eeb3c0619dc95e0468893e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_6c138c94c234ed7dfd455fcb63eead43, [16 x i8] c"O\00\00\00\00\00\00\00\DB\0C\00\00\18\00\00\00" }>, align 8
@alloc_96ab912d0054b46da785b206a96c9a45 = private unnamed_addr constant <{ [49 x i8] }> <{ [49 x i8] c"there is no such thing as an acquire-release load" }>, align 1
@alloc_7e8e9a1d4bc7d0bbec692f0a50681e22 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_96ab912d0054b46da785b206a96c9a45, [8 x i8] c"1\00\00\00\00\00\00\00" }>, align 8
@alloc_93c532d79ae5a1fe4b07989efd8a35e4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_6c138c94c234ed7dfd455fcb63eead43, [16 x i8] c"O\00\00\00\00\00\00\00\DC\0C\00\00\17\00\00\00" }>, align 8
@alloc_bf39103a6db665396aab4632362d9353 = private unnamed_addr constant <{ [42 x i8] }> <{ [42 x i8] c"there is no such thing as an acquire store" }>, align 1
@alloc_47c752ba42fbab56d43a37cfd56e4899 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_bf39103a6db665396aab4632362d9353, [8 x i8] c"*\00\00\00\00\00\00\00" }>, align 8
@alloc_cb63d255000c7e9fed7db8f9c4b60326 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_6c138c94c234ed7dfd455fcb63eead43, [16 x i8] c"O\00\00\00\00\00\00\00\CC\0C\00\00\18\00\00\00" }>, align 8
@alloc_00c0bce0fa6327f8ec8e69d6d765d508 = private unnamed_addr constant <{ [50 x i8] }> <{ [50 x i8] c"there is no such thing as an acquire-release store" }>, align 1
@alloc_f8dbac861f87e25e445761cc4af66745 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_00c0bce0fa6327f8ec8e69d6d765d508, [8 x i8] c"2\00\00\00\00\00\00\00" }>, align 8
@alloc_2061bd2e099bb1065f735aed396f79a4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_6c138c94c234ed7dfd455fcb63eead43, [16 x i8] c"O\00\00\00\00\00\00\00\CD\0C\00\00\17\00\00\00" }>, align 8
@alloc_5a43f8d94dd4505c1dba43832ce73af8 = private unnamed_addr constant <{ [52 x i8] }> <{ [52 x i8] c"there is no such thing as a release failure ordering" }>, align 1
@alloc_04ab601c54c6e0a22ff11d72dc7f4511 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_5a43f8d94dd4505c1dba43832ce73af8, [8 x i8] c"4\00\00\00\00\00\00\00" }>, align 8
@alloc_826fa8dc4bf9d95988bea67cf29fdc26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_6c138c94c234ed7dfd455fcb63eead43, [16 x i8] c"O\00\00\00\00\00\00\000\0D\00\00\1D\00\00\00" }>, align 8
@alloc_7adef5546d83b439c7829602020737c6 = private unnamed_addr constant <{ [61 x i8] }> <{ [61 x i8] c"there is no such thing as an acquire-release failure ordering" }>, align 1
@alloc_dd7d8f77c173bf31726eae321f955bec = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_7adef5546d83b439c7829602020737c6, [8 x i8] c"=\00\00\00\00\00\00\00" }>, align 8
@alloc_69680bf1a9adc0c1931d0dbd2195eaef = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_6c138c94c234ed7dfd455fcb63eead43, [16 x i8] c"O\00\00\00\00\00\00\00/\0D\00\00\1C\00\00\00" }>, align 8
@alloc_a65db75132b92a882fd01eb367d64c4a = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/07dca489ac2d933c78d3c5158e3f43beefeb02ce/library/core/src/slice/memchr.rs" }>, align 1
@alloc_5bc1b291dae9b898876d4e4c4a53a140 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_a65db75132b92a882fd01eb367d64c4a, [16 x i8] c"P\00\00\00\00\00\00\00+\00\00\00\0C\00\00\00" }>, align 8
@vtable.5 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr48drop_in_place$LT$alloc..ffi..c_str..NulError$GT$17hbb731318acbda964E", [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN64_$LT$alloc..ffi..c_str..NulError$u20$as$u20$core..fmt..Debug$GT$3fmt17h8b0fe54febe51888E" }>, align 8
@vtable.6 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h103bcfb69fa8988bE", [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h6d10bf911b864f11E" }>, align 8
@alloc_00ae4b301f7fab8ac9617c03fcbd7274 = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c"called `Result::unwrap()` on an `Err` value" }>, align 1
@vtable.7 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17h7b70e56cb1c4ddf0E", [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h8f6e86e422aed82cE" }>, align 8
@__rust_no_alloc_shim_is_unstable = external global i8
@alloc_49c0eff15ce41ce22a2d8c8b146a94ef = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"NulError" }>, align 1
@vtable.8 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr26drop_in_place$LT$usize$GT$17h4532b2f223c5397bE", [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hb3c32fcfc529ca28E" }>, align 8
@vtable.9 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr50drop_in_place$LT$$RF$alloc..vec..Vec$LT$u8$GT$$GT$17h628487f5c9fc8300E", [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hec76821d6600275fE" }>, align 8
@alloc_3b99cf3889855522042186bfbc89cd01 = private unnamed_addr constant <{ [52 x i8] }> <{ [52 x i8] c"fatal runtime error: thread result panicked on drop\0A" }>, align 1
@alloc_2ca7775364e940040d1ca01e1c1e4d62 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_3b99cf3889855522042186bfbc89cd01, [8 x i8] c"4\00\00\00\00\00\00\00" }>, align 8
@alloc_1b0b6e2ee384b95b8e7eefa09af5967a = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"files/std_rs.rs" }>, align 1
@alloc_12a92478de7931f922a4a99ef3519763 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1b0b6e2ee384b95b8e7eefa09af5967a, [16 x i8] c"\0F\00\00\00\00\00\00\00\0D\00\00\00\0E\00\00\00" }>, align 8
@alloc_df98f02fc76fe3abc1e7ce5f16b13c1f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1b0b6e2ee384b95b8e7eefa09af5967a, [16 x i8] c"\0F\00\00\00\00\00\00\00\13\00\00\00\0F\00\00\00" }>, align 8
@alloc_9c6916c9bb86567722faae8b09a66490 = private unnamed_addr constant <{ [27 x i8] }> <{ [27 x i8] c"[files/std_rs.rs:11:9] y = " }>, align 1
@alloc_49a1e817e911805af64bbc7efb390101 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc_bfbb86cc6d189835cbb292836a61ad04 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_9c6916c9bb86567722faae8b09a66490, [8 x i8] c"\1B\00\00\00\00\00\00\00", ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_f62552dbfd9ec9b3b5c22b0dda30b91d = private unnamed_addr constant <{ [27 x i8] }> <{ [27 x i8] c"[files/std_rs.rs:17:9] z = " }>, align 1
@alloc_3540addb1ff9d570f8b9e92348c7768f = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_f62552dbfd9ec9b3b5c22b0dda30b91d, [8 x i8] c"\1B\00\00\00\00\00\00\00", ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN104_$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h20f3985a52bb6f5fE"(ptr align 8 %self) unnamed_addr #0 {
start:
  tail call fastcc void @"_ZN4core3ptr62drop_in_place$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$GT$17h577a7553141d98a8E"(ptr align 8 %self)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN104_$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6191a407d6050c28E"(ptr align 8 %self) unnamed_addr #0 {
start:
  tail call fastcc void @"_ZN4core3ptr62drop_in_place$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$GT$17hbf08f5cc563cda41E"(ptr align 8 %self)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2b5971e7db99089dE"(i64 %self.0, i64 %self.1, ptr align 1 %slice.0, i64 %slice.1, ptr align 8 %0) unnamed_addr #1 {
start:
  %_3 = icmp ugt i64 %self.0, %self.1
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_9 = icmp ugt i64 %self.1, %slice.1
  br i1 %_9, label %bb3, label %bb4

bb1:                                              ; preds = %start
  tail call void @_ZN4core5slice5index22slice_index_order_fail17hcfcb08cd5efc8d4cE(i64 %self.0, i64 %self.1, ptr align 8 %0) #28
  unreachable

bb4:                                              ; preds = %bb2
  %new_len = sub nuw i64 %self.1, %self.0
  %data = getelementptr inbounds i8, ptr %slice.0, i64 %self.0
  %1 = insertvalue { ptr, i64 } poison, ptr %data, 0
  %2 = insertvalue { ptr, i64 } %1, i64 %new_len, 1
  ret { ptr, i64 } %2

bb3:                                              ; preds = %bb2
  tail call void @_ZN4core5slice5index24slice_end_index_len_fail17h9163fa4abd3ca1acE(i64 %self.1, i64 %slice.1, ptr align 8 %0) #28
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h36f69e2c875f0a0aE"(ptr %self) unnamed_addr #1 {
start:
  tail call fastcc void @"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17he2060b9b23aa52f7E"(ptr %self)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17hc30f8f32590d91bbE"(ptr align 8 %self) unnamed_addr #1 {
start:
  tail call fastcc void @_ZN4core3ops8function6FnOnce9call_once17h9fec3ef5c1556fbbE(ptr align 8 %self)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17he119eba084900eceE"(ptr %self) unnamed_addr #1 {
start:
  tail call fastcc void @"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h2fc84ad383795bbdE"(ptr %self)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h16bc9f072097e682E(ptr nocapture readonly %f) unnamed_addr #2 {
start:
  tail call fastcc void @_ZN4core3ops8function6FnOnce9call_once17h89feb595ffb2c887E(ptr %f)
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !4
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h71425e548fedb43bE(ptr %f) unnamed_addr #2 {
start:
  tail call fastcc void @"_ZN6std_rs4main28_$u7b$$u7b$closure$u7d$$u7d$17h87325209b0cb1034E"(ptr %f)
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !4
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hf5f169f394194d80E(ptr %f) unnamed_addr #2 {
start:
  tail call fastcc void @"_ZN6std_rs4main28_$u7b$$u7b$closure$u7d$$u7d$17hc9299e69538b9dadE"(ptr %f)
  tail call void asm sideeffect "", "~{memory}"() #29, !srcloc !4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc ptr @_ZN3std2io5Write9write_all17hb79a6fd9ec28dd58E(ptr align 1 %self, ptr align 1 %0, i64 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_4 = alloca %"core::result::Result<usize, std::io::error::Error>", align 8
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %bb14, label %bb3

bb3:                                              ; preds = %start, %bb16
  %self.110 = phi i64 [ %self.1, %bb16 ], [ %1, %start ]
  %self.01 = phi ptr [ %_5.07, %bb16 ], [ %0, %start ]
  call void @"_ZN64_$LT$std..sys..unix..stdio..Stderr$u20$as$u20$std..io..Write$GT$5write17hc551fcdb92d4f4b1E"(ptr nonnull sret(%"core::result::Result<usize, std::io::error::Error>") align 8 %_4, ptr align 1 %self, ptr nonnull align 1 %self.01, i64 %self.110)
  %_6 = load i64, ptr %_4, align 8, !range !5, !noundef !6
  %3 = icmp eq i64 %_6, 0
  br i1 %3, label %bb5, label %bb9

bb14:                                             ; preds = %bb12, %bb5, %start, %bb16
  %_0.0 = phi ptr [ null, %bb16 ], [ null, %start ], [ %e4, %bb12 ], [ @alloc_626cc8bfd6c94d404aa777557e31db63, %bb5 ]
  ret ptr %_0.0

bb5:                                              ; preds = %bb3
  %4 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Ok", ptr %_4, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !noundef !6
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %bb14, label %bb8

bb9:                                              ; preds = %bb3
  %7 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Err", ptr %_4, i64 0, i32 1
  %_13 = invoke fastcc zeroext i1 @_ZN3std2io5error5Error14is_interrupted17h2f7c58b882ef3062E(ptr nonnull align 8 %7)
          to label %bb10 unwind label %cleanup.loopexit

bb8:                                              ; preds = %bb5
  %_27 = icmp ugt i64 %5, %self.110
  br i1 %_27, label %bb23, label %bb24

bb24:                                             ; preds = %bb8
  %new_len = sub nuw i64 %self.110, %5
  %data = getelementptr inbounds i8, ptr %self.01, i64 %5
  br label %bb19

bb23:                                             ; preds = %bb8
  invoke void @_ZN4core5slice5index26slice_start_index_len_fail17h0187bf4d120fc375E(i64 %5, i64 %self.110, ptr nonnull align 8 @alloc_4281a0c14125330c5d3c45e00517e107) #28
          to label %unreachable unwind label %cleanup.loopexit.split-lp

bb19:                                             ; preds = %bb10.bb19_crit_edge, %bb24
  %self.1 = phi i64 [ %self.110, %bb10.bb19_crit_edge ], [ %new_len, %bb24 ]
  %_18 = phi i64 [ %_18.pre, %bb10.bb19_crit_edge ], [ 0, %bb24 ]
  %_5.07 = phi ptr [ %self.01, %bb10.bb19_crit_edge ], [ %data, %bb24 ]
  %.not6 = icmp eq i64 %_18, 0
  br i1 %.not6, label %bb16, label %bb18

bb22:                                             ; preds = %cleanup.loopexit, %cleanup.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
  %_19 = load i64, ptr %_4, align 8, !range !5, !noundef !6
  %.not = icmp eq i64 %_19, 0
  br i1 %.not, label %bb15, label %bb21

cleanup.loopexit:                                 ; preds = %bb9
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb22

cleanup.loopexit.split-lp:                        ; preds = %bb23
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb22

unreachable:                                      ; preds = %bb23
  unreachable

bb10:                                             ; preds = %bb9
  br i1 %_13, label %bb10.bb19_crit_edge, label %bb12

bb10.bb19_crit_edge:                              ; preds = %bb10
  %_18.pre = load i64, ptr %_4, align 8, !range !5
  br label %bb19

bb12:                                             ; preds = %bb10
  %e4 = load ptr, ptr %7, align 8, !nonnull !6, !noundef !6
  br label %bb14

bb16:                                             ; preds = %bb18, %bb19
  %8 = icmp eq i64 %self.1, 0
  br i1 %8, label %bb14, label %bb3

bb18:                                             ; preds = %bb19
  %9 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Err", ptr %_4, i64 0, i32 1
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h103bcfb69fa8988bE"(ptr nonnull align 8 %9)
  br label %bb16

bb15:                                             ; preds = %bb21, %bb22
  resume { ptr, i32 } %lpad.phi

bb21:                                             ; preds = %bb22
  %10 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Err", ptr %_4, i64 0, i32 1
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h103bcfb69fa8988bE"(ptr nonnull align 8 %10) #30
          to label %bb15 unwind label %terminate

terminate:                                        ; preds = %bb21
  %11 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h55eb1d85cadde1a1E() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc ptr @_ZN3std2io5Write9write_fmt17hae899febf75fd3e6E(ptr align 1 %self, ptr align 8 %fmt) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %output = alloca { ptr, ptr }, align 8
  store ptr %self, ptr %output, align 8
  %0 = getelementptr inbounds { ptr, ptr }, ptr %output, i64 0, i32 1
  store ptr null, ptr %0, align 8
  %1 = invoke zeroext i1 @_ZN4core3fmt5write17h3ed6aeaa977c8e45E(ptr nonnull align 1 %output, ptr nonnull align 8 @vtable.0, ptr align 8 %fmt)
          to label %bb1 unwind label %bb8

bb8:                                              ; preds = %start
  %2 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr92drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..sys..unix..stdio..Stderr$GT$$GT$17ha962f8b841f1e395E"(ptr nonnull align 8 %output) #30
          to label %bb9 unwind label %terminate

bb1:                                              ; preds = %start
  br i1 %1, label %bb2, label %bb11

bb2:                                              ; preds = %bb1
  %3 = load ptr, ptr %0, align 8, !noundef !6
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb11, label %bb10

bb10:                                             ; preds = %bb2, %bb11
  %_0.03 = phi ptr [ %_0.04, %bb11 ], [ %3, %bb2 ]
  ret ptr %_0.03

bb11:                                             ; preds = %bb1, %bb2
  %_0.04 = phi ptr [ @alloc_5d9af7a776dc0d9eecd628aaf786bef9, %bb2 ], [ null, %bb1 ]
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17he054d62b5f6e860aE"(ptr nonnull align 8 %0)
  br label %bb10

terminate:                                        ; preds = %bb8
  %4 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h55eb1d85cadde1a1E() #26
  unreachable

bb9:                                              ; preds = %bb8
  resume { ptr, i32 } %2
}

; Function Attrs: inlinehint mustprogress nofree nosync nonlazybind willreturn memory(argmem: write, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_ZN3std2io5error14repr_bitpacked11decode_repr17h099e9a9ad2889d2aE(ptr nocapture writeonly sret(%"std::io::error::ErrorData<&std::io::error::Custom>") align 8 %_0, ptr %ptr) unnamed_addr #4 personality ptr @rust_eh_personality {
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
  %3 = call fastcc i8 @_ZN3std2io5error14repr_bitpacked14kind_from_prim17hb3aa7220ce938034E(i32 %kind_bits), !range !7
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
define internal fastcc void @_ZN3std2io5error14repr_bitpacked11decode_repr17h8cf41c1855a084bdE(ptr nocapture writeonly sret(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>") align 8 %_0, ptr %ptr) unnamed_addr #4 personality ptr @rust_eh_personality {
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
  %3 = call fastcc i8 @_ZN3std2io5error14repr_bitpacked14kind_from_prim17hb3aa7220ce938034E(i32 %kind_bits), !range !7
  br label %bb4

bb5:                                              ; preds = %start
  %4 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::SimpleMessage", ptr %_0, i64 0, i32 1
  store ptr %ptr, ptr %4, align 8
  store i8 2, ptr %_0, align 8
  br label %bb9

bb6:                                              ; preds = %start
  %5 = getelementptr i8, ptr %ptr, i64 -1
  %_22 = call fastcc align 8 ptr @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hf22b63f1a4ce0e1bE"(ptr %5)
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
define internal fastcc i8 @_ZN3std2io5error14repr_bitpacked14kind_from_prim17hb3aa7220ce938034E(i32 %0) unnamed_addr #5 {
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
define internal fastcc zeroext i1 @_ZN3std2io5error5Error14is_interrupted17h2f7c58b882ef3062E(ptr nocapture readonly align 8 %self) unnamed_addr #6 {
start:
  %_2 = alloca %"std::io::error::ErrorData<&std::io::error::Custom>", align 8
  %_12 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  call fastcc void @_ZN3std2io5error14repr_bitpacked11decode_repr17h099e9a9ad2889d2aE(ptr nonnull sret(%"std::io::error::ErrorData<&std::io::error::Custom>") align 8 %_2, ptr nonnull %_12)
  %0 = load i8, ptr %_2, align 8, !range !8, !noundef !6
  %_4 = zext i8 %0 to i64
  switch i64 %_4, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb5
    i64 2, label %bb1
    i64 3, label %bb4
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %1 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::Os", ptr %_2, i64 0, i32 1
  %code = load i32, ptr %1, align 4, !noundef !6
  %2 = icmp eq i32 %code, 4
  br label %bb6

bb5:                                              ; preds = %start
  %3 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::Simple", ptr %_2, i64 0, i32 1
  %4 = load i8, ptr %3, align 1, !range !9, !noundef !6
  %5 = icmp eq i8 %4, 35
  br label %bb6

bb1:                                              ; preds = %start
  %6 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::SimpleMessage", ptr %_2, i64 0, i32 1
  %m = load ptr, ptr %6, align 8, !nonnull !6, !align !10, !noundef !6
  %7 = getelementptr inbounds %"std::io::error::SimpleMessage", ptr %m, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !range !9, !noundef !6
  %9 = icmp eq i8 %8, 35
  br label %bb6

bb4:                                              ; preds = %start
  %10 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::Custom", ptr %_2, i64 0, i32 1
  %c = load ptr, ptr %10, align 8, !nonnull !6, !align !10, !noundef !6
  %11 = getelementptr inbounds %"std::io::error::Custom", ptr %c, i64 0, i32 1
  %12 = load i8, ptr %11, align 8, !range !9, !noundef !6
  %13 = icmp eq i8 %12, 35
  br label %bb6

bb6:                                              ; preds = %bb4, %bb1, %bb5, %bb3
  %_0.0.in = phi i1 [ %13, %bb4 ], [ %9, %bb1 ], [ %5, %bb5 ], [ %2, %bb3 ]
  ret i1 %_0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden i64 @_ZN3std2rt10lang_start17hb61cc6e8dd1bb6caE(ptr %main, i64 %argc, ptr %argv, i8 %sigpipe) unnamed_addr #3 {
start:
  %_8 = alloca ptr, align 8
  store ptr %main, ptr %_8, align 8
  %0 = call i64 @_ZN3std2rt19lang_start_internal17h6939038e2873596bE(ptr nonnull align 1 %_8, ptr nonnull align 8 @vtable.1, i64 %argc, ptr %argv, i8 %sigpipe)
  ret i64 %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hc01589153985aec9E"(ptr nocapture readonly align 8 %_1) unnamed_addr #1 {
start:
  %_4 = load ptr, ptr %_1, align 8, !nonnull !6, !noundef !6
  tail call fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h16bc9f072097e682E(ptr nonnull %_4)
  %0 = tail call fastcc i8 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hfc624ddf19bc5a02E"()
  %_0 = zext i8 %0 to i32
  ret i32 %_0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @"_ZN3std6thread18JoinInner$LT$T$GT$4join17hc1430fc235b208baE"(ptr align 8 %self) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %src = alloca %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>", align 8
  %result = alloca %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>", align 8
  %0 = getelementptr inbounds %"std::thread::JoinInner<'_, ()>", ptr %self, i64 0, i32 2
  %_3 = load i64, ptr %0, align 8, !noundef !6
  invoke void @_ZN3std3sys4unix6thread6Thread4join17h39b09a9c8f68b464E(i64 %_3)
          to label %bb1 unwind label %bb7

bb7:                                              ; preds = %start, %bb1, %bb12, %bb15
  %1 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h2c6ec9e6fc717a2aE"(ptr nonnull align 8 %self) #30
          to label %bb6 unwind label %terminate

bb1:                                              ; preds = %start
  %this = getelementptr inbounds %"std::thread::JoinInner<'_, ()>", ptr %self, i64 0, i32 1
  %_10 = invoke fastcc zeroext i1 @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9is_unique17h46e78195175c1a77E"(ptr nonnull align 8 %this)
          to label %bb8 unwind label %bb7

bb8:                                              ; preds = %bb1
  br i1 %_10, label %bb14, label %bb12

bb12:                                             ; preds = %bb8
  invoke void @_ZN4core9panicking5panic17hb837a5ebbbe5b188E(ptr nonnull align 1 @alloc_5f55955de67e57c79064b537689facea, i64 43, ptr nonnull align 8 @alloc_210632c49b2fd4ef0dc8e7c88d1b4c5b) #28
          to label %unreachable unwind label %bb7

bb14:                                             ; preds = %bb8
  %self2 = load ptr, ptr %this, align 8, !nonnull !6, !noundef !6
  store i64 0, ptr %src, align 8
  %2 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %self2, i64 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %result, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %src, i64 24, i1 false)
  %_19 = load i64, ptr %result, align 8, !range !5, !noundef !6
  %3 = icmp eq i64 %_19, 0
  br i1 %3, label %bb15, label %bb16

unreachable:                                      ; preds = %bb15, %bb12
  unreachable

bb15:                                             ; preds = %bb14
  invoke void @_ZN4core9panicking5panic17hb837a5ebbbe5b188E(ptr nonnull align 1 @alloc_5f55955de67e57c79064b537689facea, i64 43, ptr nonnull align 8 @alloc_75b83b2c75f3b36b94a7518a66ad8875) #28
          to label %unreachable unwind label %bb7

bb16:                                             ; preds = %bb14
  %4 = getelementptr inbounds %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>::Some", ptr %result, i64 0, i32 1
  %val.0 = load ptr, ptr %4, align 8, !align !11, !noundef !6
  %5 = getelementptr inbounds %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>::Some", ptr %result, i64 0, i32 1, i32 1
  %val.1 = load ptr, ptr %5, align 8
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h2c6ec9e6fc717a2aE"(ptr nonnull align 8 %self)
          to label %bb5 unwind label %bb4

bb4:                                              ; preds = %bb16
  %6 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hd134fefae5dee978E"(ptr nonnull align 8 %this) #30
          to label %bb2 unwind label %terminate

bb5:                                              ; preds = %bb16
  tail call fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hd134fefae5dee978E"(ptr nonnull align 8 %this)
  %7 = insertvalue { ptr, ptr } poison, ptr %val.0, 0
  %8 = insertvalue { ptr, ptr } %7, ptr %val.1, 1
  ret { ptr, ptr } %8

terminate:                                        ; preds = %bb6, %bb4, %bb7
  %9 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  tail call void @_ZN4core9panicking16panic_in_cleanup17h55eb1d85cadde1a1E() #26
  unreachable

bb2:                                              ; preds = %bb6, %bb4
  %.pn = phi { ptr, i32 } [ %1, %bb6 ], [ %6, %bb4 ]
  resume { ptr, i32 } %.pn

bb6:                                              ; preds = %bb7
  %10 = getelementptr inbounds %"std::thread::JoinInner<'_, ()>", ptr %self, i64 0, i32 1
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hd134fefae5dee978E"(ptr nonnull align 8 %10) #30
          to label %bb2 unwind label %terminate
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @"_ZN3std6thread19JoinHandle$LT$T$GT$4join17h1e86a47c2d80d596E"(ptr nocapture readonly align 8 %self) unnamed_addr #3 {
start:
  %_2 = alloca %"std::thread::JoinInner<'_, ()>", align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_2, ptr noundef nonnull align 8 dereferenceable(24) %self, i64 24, i1 false)
  %0 = call fastcc { ptr, ptr } @"_ZN3std6thread18JoinInner$LT$T$GT$4join17hc1430fc235b208baE"(ptr nonnull align 8 %_2)
  ret { ptr, ptr } %0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN3std6thread5spawn17h82d1dea53d27aa36E(ptr nocapture writeonly sret(%"std::thread::JoinHandle<()>") align 8 %_0, ptr %0) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7 = alloca %"core::option::Option<alloc::string::String>", align 8
  %self = alloca %"std::thread::Builder", align 8
  %_2 = alloca %"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>", align 8
  store i64 -9223372036854775808, ptr %_7, align 8
  %1 = getelementptr inbounds %"std::thread::Builder", ptr %self, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %_7, i64 24, i1 false)
  store i64 0, ptr %self, align 8
  invoke fastcc void @_ZN3std6thread7Builder15spawn_unchecked17hd617b5fdae9a3732E(ptr nonnull sret(%"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>") align 8 %_2, ptr nonnull align 8 %self, ptr nonnull %0)
          to label %bb5 unwind label %bb2

bb5:                                              ; preds = %start
  invoke fastcc void @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hbf0c28707c71ab2aE"(ptr sret(%"std::thread::JoinHandle<()>") align 8 %_0, ptr nonnull align 8 %_2, ptr nonnull align 1 @alloc_e3605bf48dd8479a638909176cc37fce, i64 22, ptr nonnull align 8 @alloc_1f8c62d57f163807c7029893ad26ce72)
          to label %bb1 unwind label %bb2

bb1:                                              ; preds = %bb5
  ret void

bb2:                                              ; preds = %bb5, %start
  %2 = landingpad { ptr, i32 }
          cleanup
  resume { ptr, i32 } %2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN3std6thread5spawn17hd7ee2c53f1ee0e58E(ptr nocapture writeonly sret(%"std::thread::JoinHandle<()>") align 8 %_0, ptr %0) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7 = alloca %"core::option::Option<alloc::string::String>", align 8
  %self = alloca %"std::thread::Builder", align 8
  %_2 = alloca %"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>", align 8
  store i64 -9223372036854775808, ptr %_7, align 8
  %1 = getelementptr inbounds %"std::thread::Builder", ptr %self, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %_7, i64 24, i1 false)
  store i64 0, ptr %self, align 8
  invoke fastcc void @_ZN3std6thread7Builder15spawn_unchecked17h3dc324323a09a17cE(ptr nonnull sret(%"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>") align 8 %_2, ptr nonnull align 8 %self, ptr nonnull %0)
          to label %bb5 unwind label %bb2

bb5:                                              ; preds = %start
  invoke fastcc void @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hbf0c28707c71ab2aE"(ptr sret(%"std::thread::JoinHandle<()>") align 8 %_0, ptr nonnull align 8 %_2, ptr nonnull align 1 @alloc_e3605bf48dd8479a638909176cc37fce, i64 22, ptr nonnull align 8 @alloc_1f8c62d57f163807c7029893ad26ce72)
          to label %bb1 unwind label %bb2

bb1:                                              ; preds = %bb5
  ret void

bb2:                                              ; preds = %bb5, %start
  %2 = landingpad { ptr, i32 }
          cleanup
  resume { ptr, i32 } %2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN3std6thread7Builder15spawn_unchecked17h3dc324323a09a17cE(ptr nocapture writeonly sret(%"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>") align 8 %_0, ptr nocapture readonly align 8 %self, ptr %f) unnamed_addr #3 {
start:
  %v = alloca %"std::thread::JoinInner<'_, ()>", align 8
  %val = alloca %"std::thread::JoinInner<'_, ()>", align 8
  %self1 = alloca %"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>", align 8
  %_4 = alloca %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, std::io::error::Error>, std::thread::JoinInner<'_, ()>>", align 8
  %_3 = alloca %"std::thread::JoinHandle<()>", align 8
  call fastcc void @_ZN3std6thread7Builder16spawn_unchecked_17hc959b41e83cea729E(ptr nonnull sret(%"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>") align 8 %self1, ptr align 8 %self, ptr %f, ptr null)
  %0 = load ptr, ptr %self1, align 8, !noundef !6
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb6.thread, label %bb6

bb6.thread:                                       ; preds = %start
  %1 = getelementptr inbounds %"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>::Err", ptr %self1, i64 0, i32 1
  %e = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %2 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, std::io::error::Error>, std::thread::JoinInner<'_, ()>>::Break", ptr %_4, i64 0, i32 1
  store ptr %e, ptr %2, align 8
  store ptr null, ptr %_4, align 8
  br label %bb4

bb6:                                              ; preds = %start
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %v, ptr noundef nonnull align 8 dereferenceable(24) %self1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_4, ptr noundef nonnull align 8 dereferenceable(24) %v, i64 24, i1 false)
  %.pr = load ptr, ptr %_4, align 8
  %.not1 = icmp eq ptr %.pr, null
  br i1 %.not1, label %bb6.bb4_crit_edge, label %bb2

bb6.bb4_crit_edge:                                ; preds = %bb6
  %.phi.trans.insert = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, std::io::error::Error>, std::thread::JoinInner<'_, ()>>::Break", ptr %_4, i64 0, i32 1
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb4

bb2:                                              ; preds = %bb6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %val, ptr noundef nonnull align 8 dereferenceable(24) %_4, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_3, ptr noundef nonnull align 8 dereferenceable(24) %val, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %_3, i64 24, i1 false)
  br label %bb5

bb4:                                              ; preds = %bb6.bb4_crit_edge, %bb6.thread
  %3 = phi ptr [ %.pre, %bb6.bb4_crit_edge ], [ %e, %bb6.thread ]
  %4 = getelementptr inbounds %"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>::Err", ptr %_0, i64 0, i32 1
  store ptr %3, ptr %4, align 8
  store ptr null, ptr %_0, align 8
  br label %bb5

bb5:                                              ; preds = %bb4, %bb2
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN3std6thread7Builder15spawn_unchecked17hd617b5fdae9a3732E(ptr nocapture writeonly sret(%"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>") align 8 %_0, ptr nocapture readonly align 8 %self, ptr %f) unnamed_addr #3 {
start:
  %v = alloca %"std::thread::JoinInner<'_, ()>", align 8
  %val = alloca %"std::thread::JoinInner<'_, ()>", align 8
  %self1 = alloca %"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>", align 8
  %_4 = alloca %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, std::io::error::Error>, std::thread::JoinInner<'_, ()>>", align 8
  %_3 = alloca %"std::thread::JoinHandle<()>", align 8
  call fastcc void @_ZN3std6thread7Builder16spawn_unchecked_17hb434c94bea7303c6E(ptr nonnull sret(%"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>") align 8 %self1, ptr align 8 %self, ptr %f, ptr null)
  %0 = load ptr, ptr %self1, align 8, !noundef !6
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb6.thread, label %bb6

bb6.thread:                                       ; preds = %start
  %1 = getelementptr inbounds %"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>::Err", ptr %self1, i64 0, i32 1
  %e = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %2 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, std::io::error::Error>, std::thread::JoinInner<'_, ()>>::Break", ptr %_4, i64 0, i32 1
  store ptr %e, ptr %2, align 8
  store ptr null, ptr %_4, align 8
  br label %bb4

bb6:                                              ; preds = %start
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %v, ptr noundef nonnull align 8 dereferenceable(24) %self1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_4, ptr noundef nonnull align 8 dereferenceable(24) %v, i64 24, i1 false)
  %.pr = load ptr, ptr %_4, align 8
  %.not1 = icmp eq ptr %.pr, null
  br i1 %.not1, label %bb6.bb4_crit_edge, label %bb2

bb6.bb4_crit_edge:                                ; preds = %bb6
  %.phi.trans.insert = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, std::io::error::Error>, std::thread::JoinInner<'_, ()>>::Break", ptr %_4, i64 0, i32 1
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb4

bb2:                                              ; preds = %bb6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %val, ptr noundef nonnull align 8 dereferenceable(24) %_4, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_3, ptr noundef nonnull align 8 dereferenceable(24) %val, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %_3, i64 24, i1 false)
  br label %bb5

bb4:                                              ; preds = %bb6.bb4_crit_edge, %bb6.thread
  %3 = phi ptr [ %.pre, %bb6.bb4_crit_edge ], [ %e, %bb6.thread ]
  %4 = getelementptr inbounds %"core::result::Result<std::thread::JoinHandle<()>, std::io::error::Error>::Err", ptr %_0, i64 0, i32 1
  store ptr %3, ptr %4, align 8
  store ptr null, ptr %_0, align 8
  br label %bb5

bb5:                                              ; preds = %bb4, %bb2
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN3std6thread7Builder16spawn_unchecked_17hb434c94bea7303c6E(ptr nocapture writeonly sret(%"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>") align 8 %_0, ptr nocapture readonly align 8 %self, ptr %0, ptr %1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_57 = alloca %"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>", align 8
  %x = alloca %"alloc::string::String", align 8
  %self5 = alloca %"core::result::Result<std::sys::unix::thread::Thread, std::io::error::Error>", align 8
  %_36 = alloca %"std::thread::JoinInner<'_, ()>", align 8
  %_33 = alloca %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", align 8
  %main = alloca %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", align 8
  %_20 = alloca ptr, align 8
  %output_capture = alloca ptr, align 8
  %their_packet = alloca ptr, align 8
  %value = alloca %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>", align 8
  %_15 = alloca %"core::cell::UnsafeCell<core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>>", align 8
  %_13 = alloca %"std::thread::Packet<'_, ()>", align 8
  %my_packet = alloca ptr, align 8
  %their_thread = alloca ptr, align 8
  %self2 = alloca %"core::option::Option<alloc::string::String>", align 8
  %my_thread = alloca ptr, align 8
  %name = alloca %"core::option::Option<alloc::string::String>", align 8
  %scope_data = alloca ptr, align 8
  %f = alloca ptr, align 8
  store ptr %0, ptr %f, align 8
  store ptr %1, ptr %scope_data, align 8
  %2 = getelementptr inbounds %"std::thread::Builder", ptr %self, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %name, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %3 = load i64, ptr %self, align 8, !range !5, !noundef !6
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %bb36, label %bb37

bb36:                                             ; preds = %start
  %5 = invoke fastcc i64 @_ZN4core3ops8function6FnOnce9call_once17h34dbfb27a538114eE()
          to label %bb38 unwind label %bb32

bb37:                                             ; preds = %start
  %6 = getelementptr inbounds { i64, i64 }, ptr %self, i64 0, i32 1
  %7 = load i64, ptr %6, align 8
  br label %bb38

bb33.thread9:                                     ; preds = %bb41, %bb43, %bb40
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %9 = extractvalue { ptr, i32 } %lpad.thr_comm, 1
  br label %bb34

bb38:                                             ; preds = %bb36, %bb37
  %stack_size1.0 = phi i64 [ %7, %bb37 ], [ %5, %bb36 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %self2, ptr noundef nonnull align 8 dereferenceable(24) %name, i64 24, i1 false)
  %10 = load i64, ptr %self2, align 8, !range !12, !noundef !6
  %11 = icmp eq i64 %10, -9223372036854775808
  br i1 %11, label %bb39, label %bb40

bb39:                                             ; preds = %bb38
  br label %bb41

bb40:                                             ; preds = %bb38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %x, ptr noundef nonnull align 8 dereferenceable(24) %self2, i64 24, i1 false)
  invoke fastcc void @"_ZN66_$LT$T$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17hef6e751e491ec51dE"(ptr nonnull sret(%"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>") align 8 %_57, ptr nonnull align 8 %x)
          to label %bb43 unwind label %bb33.thread9

bb41:                                             ; preds = %bb42, %bb39
  %12 = phi i64 [ %_56.1, %bb42 ], [ undef, %bb39 ]
  %13 = phi ptr [ %_56.0, %bb42 ], [ null, %bb39 ]
  %14 = invoke ptr @_ZN3std6thread6Thread3new17h91c2acbc87f07c63E(ptr align 1 %13, i64 %12)
          to label %bb1 unwind label %bb33.thread9

bb43:                                             ; preds = %bb40
  %15 = invoke fastcc { ptr, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h94bd910c9ff420daE"(ptr nonnull align 8 %_57, ptr nonnull align 1 @alloc_498705839b3ae85466bce6e7ebfe4996, i64 47, ptr nonnull align 8 @alloc_10ce3643ab05b89124ccab86e25db141)
          to label %bb42 unwind label %bb33.thread9

bb42:                                             ; preds = %bb43
  %_56.0 = extractvalue { ptr, i64 } %15, 0
  %_56.1 = extractvalue { ptr, i64 } %15, 1
  br label %bb41

bb1:                                              ; preds = %bb41
  store ptr %14, ptr %my_thread, align 8
  %_61 = call fastcc ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha0d41ed8b904f0b1E"(ptr nonnull align 8 %my_thread)
  br label %bb44

bb20:                                             ; preds = %bb30, %bb31
  %16 = phi i32 [ %54, %bb30 ], [ %21, %bb31 ]
  %17 = phi ptr [ %55, %bb30 ], [ %20, %bb31 ]
  %_51.1 = phi i8 [ %_48.014, %bb30 ], [ %_48.1, %bb31 ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h2c6ec9e6fc717a2aE"(ptr nonnull align 8 %my_thread) #30
          to label %bb21 unwind label %terminate

bb44:                                             ; preds = %bb1
  store ptr %_61, ptr %their_thread, align 8
  store i64 0, ptr %value, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_15, ptr noundef nonnull align 8 dereferenceable(24) %value, i64 24, i1 false)
  store ptr %1, ptr %_13, align 8
  %18 = getelementptr inbounds %"std::thread::Packet<'_, ()>", ptr %_13, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %_15, i64 24, i1 false)
  %19 = invoke fastcc ptr @"_ZN5alloc4sync12Arc$LT$T$GT$3new17h81df542b099b2befE"(ptr nonnull align 8 %_13)
          to label %bb2 unwind label %bb31.thread

bb31:                                             ; preds = %bb19
  %20 = extractvalue { ptr, i32 } %.pn.pn, 0
  %21 = extractvalue { ptr, i32 } %.pn.pn, 1
  br i1 %.not2, label %bb20, label %bb30

bb31.thread:                                      ; preds = %bb44
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = extractvalue { ptr, i32 } %22, 0
  %24 = extractvalue { ptr, i32 } %22, 1
  br label %bb30

bb2:                                              ; preds = %bb44
  store ptr %19, ptr %my_packet, align 8
  %25 = call fastcc ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h61335b6ab8dfc185E"(ptr nonnull align 8 %my_packet)
  br label %bb3

bb19:                                             ; preds = %bb24, %bb25.thread, %bb25, %bb28
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb28 ], [ %38, %bb25 ], [ %36, %bb25.thread ], [ %52, %bb24 ]
  %.not2 = phi i1 [ false, %bb28 ], [ true, %bb25 ], [ true, %bb25.thread ], [ true, %bb24 ]
  %_48.1 = phi i8 [ 1, %bb28 ], [ 0, %bb25 ], [ 0, %bb25.thread ], [ 0, %bb24 ]
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hd134fefae5dee978E"(ptr nonnull align 8 %my_packet) #30
          to label %bb31 unwind label %terminate

bb3:                                              ; preds = %bb2
  store ptr %25, ptr %their_packet, align 8
  %26 = invoke ptr @_ZN3std2io5stdio18set_output_capture17hbfdad0a1763c8421E(ptr null)
          to label %bb4 unwind label %bb29.thread

bb29:                                             ; preds = %bb26
  br label %bb28

bb29.thread:                                      ; preds = %bb3
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %bb28

bb4:                                              ; preds = %bb3
  store ptr %26, ptr %output_capture, align 8
  %28 = icmp eq ptr %26, null
  br i1 %28, label %bb45, label %bb47

bb47:                                             ; preds = %bb4
  %_65 = call fastcc ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8b7d01cf2cdac0faE"(ptr nonnull align 8 %output_capture)
  br label %bb45

bb45:                                             ; preds = %bb47, %bb4
  %_21.0 = phi ptr [ null, %bb4 ], [ %_65, %bb47 ]
  %29 = invoke ptr @_ZN3std2io5stdio18set_output_capture17hbfdad0a1763c8421E(ptr %_21.0)
          to label %bb5 unwind label %bb26

bb5:                                              ; preds = %bb45
  store ptr %29, ptr %_20, align 8
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17hc8f3867161fd7f48E"(ptr nonnull align 8 %_20)
          to label %bb6 unwind label %bb26

bb6:                                              ; preds = %bb5
  store ptr %_61, ptr %main, align 8
  %30 = load ptr, ptr %output_capture, align 8, !noundef !6
  %31 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", ptr %main, i64 0, i32 2
  store ptr %30, ptr %31, align 8
  %32 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", ptr %main, i64 0, i32 3
  store ptr %0, ptr %32, align 8
  %33 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", ptr %main, i64 0, i32 1
  store ptr %25, ptr %33, align 8
  %self13 = load ptr, ptr %my_packet, align 8, !nonnull !6, !noundef !6
  %34 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %self13, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !noundef !6
  %.not5 = icmp eq ptr %35, null
  br i1 %.not5, label %bb9, label %bb7

bb7:                                              ; preds = %bb6
  %_30 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::scoped::ScopeData>", ptr %35, i64 0, i32 2
  invoke void @_ZN3std6thread6scoped9ScopeData29increment_num_running_threads17h1f4288a87dda043cE(ptr nonnull align 8 %_30)
          to label %bb9 unwind label %bb24

bb9:                                              ; preds = %bb7, %bb6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %_33, ptr noundef nonnull align 8 dereferenceable(32) %main, i64 32, i1 false)
  %_4.i = invoke fastcc ptr @_ZN5alloc5alloc15exchange_malloc17hddb0a622925ad211E(i64 32, i64 8)
          to label %bb10 unwind label %cleanup.i

cleanup.i:                                        ; preds = %bb9
  %36 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr148drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17haaed32df4c189f1bE"(ptr nonnull align 8 %_33) #30
          to label %bb25.thread unwind label %terminate.i

terminate.i:                                      ; preds = %cleanup.i
  %37 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h55eb1d85cadde1a1E() #26
  unreachable

bb25.thread:                                      ; preds = %cleanup.i
  br label %bb19

bb25:                                             ; preds = %bb10
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %bb19

bb10:                                             ; preds = %bb9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %_4.i, ptr noundef nonnull align 8 dereferenceable(32) %_33, i64 32, i1 false)
  invoke void @_ZN3std3sys4unix6thread6Thread3new17h87f4070d7391b575E(ptr nonnull sret(%"core::result::Result<std::sys::unix::thread::Thread, std::io::error::Error>") align 8 %self5, i64 %stack_size1.0, ptr nonnull align 1 %_4.i, ptr nonnull align 8 @vtable.2)
          to label %bb11 unwind label %bb25

bb11:                                             ; preds = %bb10
  %_97 = load i64, ptr %self5, align 8, !range !5, !noundef !6
  %39 = icmp eq i64 %_97, 0
  br i1 %39, label %bb12, label %bb14

bb12:                                             ; preds = %bb11
  %40 = getelementptr inbounds %"core::result::Result<std::sys::unix::thread::Thread, std::io::error::Error>::Ok", ptr %self5, i64 0, i32 1
  %v = load i64, ptr %40, align 8, !noundef !6
  %_43 = load ptr, ptr %my_thread, align 8, !nonnull !6, !noundef !6
  %_44 = load ptr, ptr %my_packet, align 8, !nonnull !6, !noundef !6
  %41 = getelementptr inbounds %"std::thread::JoinInner<'_, ()>", ptr %_36, i64 0, i32 2
  store i64 %v, ptr %41, align 8
  store ptr %_43, ptr %_36, align 8
  %42 = getelementptr inbounds %"std::thread::JoinInner<'_, ()>", ptr %_36, i64 0, i32 1
  store ptr %_44, ptr %42, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %_36, i64 24, i1 false)
  br label %bb17

bb14:                                             ; preds = %bb11
  %43 = getelementptr inbounds %"core::result::Result<std::sys::unix::thread::Thread, std::io::error::Error>::Err", ptr %self5, i64 0, i32 1
  %e = load ptr, ptr %43, align 8, !nonnull !6, !noundef !6
  %44 = getelementptr inbounds %"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>::Err", ptr %_0, i64 0, i32 1
  store ptr %e, ptr %44, align 8
  store ptr null, ptr %_0, align 8
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hd134fefae5dee978E"(ptr nonnull align 8 %my_packet)
          to label %bb15 unwind label %bb18

bb17:                                             ; preds = %bb15, %bb12
  ret void

bb18:                                             ; preds = %bb14
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = extractvalue { ptr, i32 } %45, 0
  %47 = extractvalue { ptr, i32 } %45, 1
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h2c6ec9e6fc717a2aE"(ptr nonnull align 8 %my_thread) #30
          to label %bb23 unwind label %terminate

bb15:                                             ; preds = %bb14
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h2c6ec9e6fc717a2aE"(ptr nonnull align 8 %my_thread)
          to label %bb17 unwind label %cleanup24

bb21:                                             ; preds = %bb20
  br label %bb22

cleanup24:                                        ; preds = %bb15
  %48 = landingpad { ptr, i32 }
          cleanup
  %49 = extractvalue { ptr, i32 } %48, 0
  %50 = extractvalue { ptr, i32 } %48, 1
  br label %bb23

terminate:                                        ; preds = %bb34, %bb32, %bb30, %bb28, %bb26, %bb24, %bb18, %bb19, %bb20
  %51 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h55eb1d85cadde1a1E() #26
  unreachable

bb24:                                             ; preds = %bb7
  %52 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr148drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17haaed32df4c189f1bE"(ptr nonnull align 8 %main) #30
          to label %bb19 unwind label %terminate

bb26:                                             ; preds = %bb5, %bb45
  %53 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17hc8f3867161fd7f48E"(ptr nonnull align 8 %output_capture) #30
          to label %bb29 unwind label %terminate

bb28:                                             ; preds = %bb29, %bb29.thread
  %.pn = phi { ptr, i32 } [ %53, %bb29 ], [ %27, %bb29.thread ]
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hd134fefae5dee978E"(ptr nonnull align 8 %their_packet) #30
          to label %bb19 unwind label %terminate

bb30:                                             ; preds = %bb31.thread, %bb31
  %54 = phi i32 [ %24, %bb31.thread ], [ %21, %bb31 ]
  %55 = phi ptr [ %23, %bb31.thread ], [ %20, %bb31 ]
  %_48.014 = phi i8 [ 1, %bb31.thread ], [ %_48.1, %bb31 ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h2c6ec9e6fc717a2aE"(ptr nonnull align 8 %their_thread) #30
          to label %bb20 unwind label %terminate

bb32:                                             ; preds = %bb36
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %56 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %57 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 1
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h232dc8a184373168E"(ptr nonnull align 8 %name) #30
          to label %bb34 unwind label %terminate

bb22:                                             ; preds = %bb21, %bb34
  %58 = phi i32 [ %61, %bb34 ], [ %16, %bb21 ]
  %59 = phi ptr [ %62, %bb34 ], [ %17, %bb21 ]
  %_51.628 = phi i8 [ 1, %bb34 ], [ %_51.1, %bb21 ]
  %60 = and i8 %_51.628, 1
  %.not1 = icmp eq i8 %60, 0
  br i1 %.not1, label %bb23, label %bb35

bb34:                                             ; preds = %bb33.thread9, %bb32
  %61 = phi i32 [ %57, %bb32 ], [ %9, %bb33.thread9 ]
  %62 = phi ptr [ %56, %bb32 ], [ %8, %bb33.thread9 ]
  invoke fastcc void @"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h61e33117cfa09a39E"(ptr nonnull align 8 %scope_data) #30
          to label %bb22 unwind label %terminate

bb23:                                             ; preds = %bb35, %cleanup24, %bb18, %bb22
  %63 = phi i32 [ %50, %cleanup24 ], [ %47, %bb18 ], [ %58, %bb35 ], [ %58, %bb22 ]
  %64 = phi ptr [ %49, %cleanup24 ], [ %46, %bb18 ], [ %59, %bb35 ], [ %59, %bb22 ]
  %65 = insertvalue { ptr, i32 } poison, ptr %64, 0
  %66 = insertvalue { ptr, i32 } %65, i32 %63, 1
  resume { ptr, i32 } %66

bb35:                                             ; preds = %bb22
  call fastcc void @"_ZN4core3ptr62drop_in_place$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$GT$17hbf08f5cc563cda41E"(ptr nonnull align 8 %f) #30
  br label %bb23
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN3std6thread7Builder16spawn_unchecked_17hc959b41e83cea729E(ptr nocapture writeonly sret(%"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>") align 8 %_0, ptr nocapture readonly align 8 %self, ptr %0, ptr %1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_57 = alloca %"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>", align 8
  %x = alloca %"alloc::string::String", align 8
  %self5 = alloca %"core::result::Result<std::sys::unix::thread::Thread, std::io::error::Error>", align 8
  %_36 = alloca %"std::thread::JoinInner<'_, ()>", align 8
  %_33 = alloca %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", align 8
  %main = alloca %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", align 8
  %_20 = alloca ptr, align 8
  %output_capture = alloca ptr, align 8
  %their_packet = alloca ptr, align 8
  %value = alloca %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>", align 8
  %_15 = alloca %"core::cell::UnsafeCell<core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>>", align 8
  %_13 = alloca %"std::thread::Packet<'_, ()>", align 8
  %my_packet = alloca ptr, align 8
  %their_thread = alloca ptr, align 8
  %self2 = alloca %"core::option::Option<alloc::string::String>", align 8
  %my_thread = alloca ptr, align 8
  %name = alloca %"core::option::Option<alloc::string::String>", align 8
  %scope_data = alloca ptr, align 8
  %f = alloca ptr, align 8
  store ptr %0, ptr %f, align 8
  store ptr %1, ptr %scope_data, align 8
  %2 = getelementptr inbounds %"std::thread::Builder", ptr %self, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %name, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %3 = load i64, ptr %self, align 8, !range !5, !noundef !6
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %bb36, label %bb37

bb36:                                             ; preds = %start
  %5 = invoke fastcc i64 @_ZN4core3ops8function6FnOnce9call_once17h34dbfb27a538114eE()
          to label %bb38 unwind label %bb32

bb37:                                             ; preds = %start
  %6 = getelementptr inbounds { i64, i64 }, ptr %self, i64 0, i32 1
  %7 = load i64, ptr %6, align 8
  br label %bb38

bb33.thread9:                                     ; preds = %bb41, %bb43, %bb40
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %9 = extractvalue { ptr, i32 } %lpad.thr_comm, 1
  br label %bb34

bb38:                                             ; preds = %bb36, %bb37
  %stack_size1.0 = phi i64 [ %7, %bb37 ], [ %5, %bb36 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %self2, ptr noundef nonnull align 8 dereferenceable(24) %name, i64 24, i1 false)
  %10 = load i64, ptr %self2, align 8, !range !12, !noundef !6
  %11 = icmp eq i64 %10, -9223372036854775808
  br i1 %11, label %bb39, label %bb40

bb39:                                             ; preds = %bb38
  br label %bb41

bb40:                                             ; preds = %bb38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %x, ptr noundef nonnull align 8 dereferenceable(24) %self2, i64 24, i1 false)
  invoke fastcc void @"_ZN66_$LT$T$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17hef6e751e491ec51dE"(ptr nonnull sret(%"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>") align 8 %_57, ptr nonnull align 8 %x)
          to label %bb43 unwind label %bb33.thread9

bb41:                                             ; preds = %bb42, %bb39
  %12 = phi i64 [ %_56.1, %bb42 ], [ undef, %bb39 ]
  %13 = phi ptr [ %_56.0, %bb42 ], [ null, %bb39 ]
  %14 = invoke ptr @_ZN3std6thread6Thread3new17h91c2acbc87f07c63E(ptr align 1 %13, i64 %12)
          to label %bb1 unwind label %bb33.thread9

bb43:                                             ; preds = %bb40
  %15 = invoke fastcc { ptr, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h94bd910c9ff420daE"(ptr nonnull align 8 %_57, ptr nonnull align 1 @alloc_498705839b3ae85466bce6e7ebfe4996, i64 47, ptr nonnull align 8 @alloc_10ce3643ab05b89124ccab86e25db141)
          to label %bb42 unwind label %bb33.thread9

bb42:                                             ; preds = %bb43
  %_56.0 = extractvalue { ptr, i64 } %15, 0
  %_56.1 = extractvalue { ptr, i64 } %15, 1
  br label %bb41

bb1:                                              ; preds = %bb41
  store ptr %14, ptr %my_thread, align 8
  %_61 = call fastcc ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha0d41ed8b904f0b1E"(ptr nonnull align 8 %my_thread)
  br label %bb44

bb20:                                             ; preds = %bb30, %bb31
  %16 = phi i32 [ %54, %bb30 ], [ %21, %bb31 ]
  %17 = phi ptr [ %55, %bb30 ], [ %20, %bb31 ]
  %_51.1 = phi i8 [ %_48.014, %bb30 ], [ %_48.1, %bb31 ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h2c6ec9e6fc717a2aE"(ptr nonnull align 8 %my_thread) #30
          to label %bb21 unwind label %terminate

bb44:                                             ; preds = %bb1
  store ptr %_61, ptr %their_thread, align 8
  store i64 0, ptr %value, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_15, ptr noundef nonnull align 8 dereferenceable(24) %value, i64 24, i1 false)
  store ptr %1, ptr %_13, align 8
  %18 = getelementptr inbounds %"std::thread::Packet<'_, ()>", ptr %_13, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %_15, i64 24, i1 false)
  %19 = invoke fastcc ptr @"_ZN5alloc4sync12Arc$LT$T$GT$3new17h81df542b099b2befE"(ptr nonnull align 8 %_13)
          to label %bb2 unwind label %bb31.thread

bb31:                                             ; preds = %bb19
  %20 = extractvalue { ptr, i32 } %.pn.pn, 0
  %21 = extractvalue { ptr, i32 } %.pn.pn, 1
  br i1 %.not2, label %bb20, label %bb30

bb31.thread:                                      ; preds = %bb44
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = extractvalue { ptr, i32 } %22, 0
  %24 = extractvalue { ptr, i32 } %22, 1
  br label %bb30

bb2:                                              ; preds = %bb44
  store ptr %19, ptr %my_packet, align 8
  %25 = call fastcc ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h61335b6ab8dfc185E"(ptr nonnull align 8 %my_packet)
  br label %bb3

bb19:                                             ; preds = %bb24, %bb25.thread, %bb25, %bb28
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb28 ], [ %38, %bb25 ], [ %36, %bb25.thread ], [ %52, %bb24 ]
  %.not2 = phi i1 [ false, %bb28 ], [ true, %bb25 ], [ true, %bb25.thread ], [ true, %bb24 ]
  %_48.1 = phi i8 [ 1, %bb28 ], [ 0, %bb25 ], [ 0, %bb25.thread ], [ 0, %bb24 ]
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hd134fefae5dee978E"(ptr nonnull align 8 %my_packet) #30
          to label %bb31 unwind label %terminate

bb3:                                              ; preds = %bb2
  store ptr %25, ptr %their_packet, align 8
  %26 = invoke ptr @_ZN3std2io5stdio18set_output_capture17hbfdad0a1763c8421E(ptr null)
          to label %bb4 unwind label %bb29.thread

bb29:                                             ; preds = %bb26
  br label %bb28

bb29.thread:                                      ; preds = %bb3
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %bb28

bb4:                                              ; preds = %bb3
  store ptr %26, ptr %output_capture, align 8
  %28 = icmp eq ptr %26, null
  br i1 %28, label %bb45, label %bb47

bb47:                                             ; preds = %bb4
  %_65 = call fastcc ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8b7d01cf2cdac0faE"(ptr nonnull align 8 %output_capture)
  br label %bb45

bb45:                                             ; preds = %bb47, %bb4
  %_21.0 = phi ptr [ null, %bb4 ], [ %_65, %bb47 ]
  %29 = invoke ptr @_ZN3std2io5stdio18set_output_capture17hbfdad0a1763c8421E(ptr %_21.0)
          to label %bb5 unwind label %bb26

bb5:                                              ; preds = %bb45
  store ptr %29, ptr %_20, align 8
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17hc8f3867161fd7f48E"(ptr nonnull align 8 %_20)
          to label %bb6 unwind label %bb26

bb6:                                              ; preds = %bb5
  store ptr %_61, ptr %main, align 8
  %30 = load ptr, ptr %output_capture, align 8, !noundef !6
  %31 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", ptr %main, i64 0, i32 2
  store ptr %30, ptr %31, align 8
  %32 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", ptr %main, i64 0, i32 3
  store ptr %0, ptr %32, align 8
  %33 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", ptr %main, i64 0, i32 1
  store ptr %25, ptr %33, align 8
  %self13 = load ptr, ptr %my_packet, align 8, !nonnull !6, !noundef !6
  %34 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %self13, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !noundef !6
  %.not5 = icmp eq ptr %35, null
  br i1 %.not5, label %bb9, label %bb7

bb7:                                              ; preds = %bb6
  %_30 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::scoped::ScopeData>", ptr %35, i64 0, i32 2
  invoke void @_ZN3std6thread6scoped9ScopeData29increment_num_running_threads17h1f4288a87dda043cE(ptr nonnull align 8 %_30)
          to label %bb9 unwind label %bb24

bb9:                                              ; preds = %bb7, %bb6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %_33, ptr noundef nonnull align 8 dereferenceable(32) %main, i64 32, i1 false)
  %_4.i = invoke fastcc ptr @_ZN5alloc5alloc15exchange_malloc17hddb0a622925ad211E(i64 32, i64 8)
          to label %bb10 unwind label %cleanup.i

cleanup.i:                                        ; preds = %bb9
  %36 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr148drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h252c8220f67e077aE"(ptr nonnull align 8 %_33) #30
          to label %bb25.thread unwind label %terminate.i

terminate.i:                                      ; preds = %cleanup.i
  %37 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h55eb1d85cadde1a1E() #26
  unreachable

bb25.thread:                                      ; preds = %cleanup.i
  br label %bb19

bb25:                                             ; preds = %bb10
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %bb19

bb10:                                             ; preds = %bb9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %_4.i, ptr noundef nonnull align 8 dereferenceable(32) %_33, i64 32, i1 false)
  invoke void @_ZN3std3sys4unix6thread6Thread3new17h87f4070d7391b575E(ptr nonnull sret(%"core::result::Result<std::sys::unix::thread::Thread, std::io::error::Error>") align 8 %self5, i64 %stack_size1.0, ptr nonnull align 1 %_4.i, ptr nonnull align 8 @vtable.3)
          to label %bb11 unwind label %bb25

bb11:                                             ; preds = %bb10
  %_97 = load i64, ptr %self5, align 8, !range !5, !noundef !6
  %39 = icmp eq i64 %_97, 0
  br i1 %39, label %bb12, label %bb14

bb12:                                             ; preds = %bb11
  %40 = getelementptr inbounds %"core::result::Result<std::sys::unix::thread::Thread, std::io::error::Error>::Ok", ptr %self5, i64 0, i32 1
  %v = load i64, ptr %40, align 8, !noundef !6
  %_43 = load ptr, ptr %my_thread, align 8, !nonnull !6, !noundef !6
  %_44 = load ptr, ptr %my_packet, align 8, !nonnull !6, !noundef !6
  %41 = getelementptr inbounds %"std::thread::JoinInner<'_, ()>", ptr %_36, i64 0, i32 2
  store i64 %v, ptr %41, align 8
  store ptr %_43, ptr %_36, align 8
  %42 = getelementptr inbounds %"std::thread::JoinInner<'_, ()>", ptr %_36, i64 0, i32 1
  store ptr %_44, ptr %42, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %_36, i64 24, i1 false)
  br label %bb17

bb14:                                             ; preds = %bb11
  %43 = getelementptr inbounds %"core::result::Result<std::sys::unix::thread::Thread, std::io::error::Error>::Err", ptr %self5, i64 0, i32 1
  %e = load ptr, ptr %43, align 8, !nonnull !6, !noundef !6
  %44 = getelementptr inbounds %"core::result::Result<std::thread::JoinInner<'_, ()>, std::io::error::Error>::Err", ptr %_0, i64 0, i32 1
  store ptr %e, ptr %44, align 8
  store ptr null, ptr %_0, align 8
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hd134fefae5dee978E"(ptr nonnull align 8 %my_packet)
          to label %bb15 unwind label %bb18

bb17:                                             ; preds = %bb15, %bb12
  ret void

bb18:                                             ; preds = %bb14
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = extractvalue { ptr, i32 } %45, 0
  %47 = extractvalue { ptr, i32 } %45, 1
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h2c6ec9e6fc717a2aE"(ptr nonnull align 8 %my_thread) #30
          to label %bb23 unwind label %terminate

bb15:                                             ; preds = %bb14
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h2c6ec9e6fc717a2aE"(ptr nonnull align 8 %my_thread)
          to label %bb17 unwind label %cleanup24

bb21:                                             ; preds = %bb20
  br label %bb22

cleanup24:                                        ; preds = %bb15
  %48 = landingpad { ptr, i32 }
          cleanup
  %49 = extractvalue { ptr, i32 } %48, 0
  %50 = extractvalue { ptr, i32 } %48, 1
  br label %bb23

terminate:                                        ; preds = %bb34, %bb32, %bb30, %bb28, %bb26, %bb24, %bb18, %bb19, %bb20
  %51 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h55eb1d85cadde1a1E() #26
  unreachable

bb24:                                             ; preds = %bb7
  %52 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr148drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h252c8220f67e077aE"(ptr nonnull align 8 %main) #30
          to label %bb19 unwind label %terminate

bb26:                                             ; preds = %bb5, %bb45
  %53 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17hc8f3867161fd7f48E"(ptr nonnull align 8 %output_capture) #30
          to label %bb29 unwind label %terminate

bb28:                                             ; preds = %bb29, %bb29.thread
  %.pn = phi { ptr, i32 } [ %53, %bb29 ], [ %27, %bb29.thread ]
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hd134fefae5dee978E"(ptr nonnull align 8 %their_packet) #30
          to label %bb19 unwind label %terminate

bb30:                                             ; preds = %bb31.thread, %bb31
  %54 = phi i32 [ %24, %bb31.thread ], [ %21, %bb31 ]
  %55 = phi ptr [ %23, %bb31.thread ], [ %20, %bb31 ]
  %_48.014 = phi i8 [ 1, %bb31.thread ], [ %_48.1, %bb31 ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h2c6ec9e6fc717a2aE"(ptr nonnull align 8 %their_thread) #30
          to label %bb20 unwind label %terminate

bb32:                                             ; preds = %bb36
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %56 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %57 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 1
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h232dc8a184373168E"(ptr nonnull align 8 %name) #30
          to label %bb34 unwind label %terminate

bb22:                                             ; preds = %bb21, %bb34
  %58 = phi i32 [ %61, %bb34 ], [ %16, %bb21 ]
  %59 = phi ptr [ %62, %bb34 ], [ %17, %bb21 ]
  %_51.628 = phi i8 [ 1, %bb34 ], [ %_51.1, %bb21 ]
  %60 = and i8 %_51.628, 1
  %.not1 = icmp eq i8 %60, 0
  br i1 %.not1, label %bb23, label %bb35

bb34:                                             ; preds = %bb33.thread9, %bb32
  %61 = phi i32 [ %57, %bb32 ], [ %9, %bb33.thread9 ]
  %62 = phi ptr [ %56, %bb32 ], [ %8, %bb33.thread9 ]
  invoke fastcc void @"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h61e33117cfa09a39E"(ptr nonnull align 8 %scope_data) #30
          to label %bb22 unwind label %terminate

bb23:                                             ; preds = %bb35, %cleanup24, %bb18, %bb22
  %63 = phi i32 [ %50, %cleanup24 ], [ %47, %bb18 ], [ %58, %bb35 ], [ %58, %bb22 ]
  %64 = phi ptr [ %49, %cleanup24 ], [ %46, %bb18 ], [ %59, %bb35 ], [ %59, %bb22 ]
  %65 = insertvalue { ptr, i32 } poison, ptr %64, 0
  %66 = insertvalue { ptr, i32 } %65, i32 %63, 1
  resume { ptr, i32 } %66

bb35:                                             ; preds = %bb22
  call fastcc void @"_ZN4core3ptr62drop_in_place$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$GT$17h577a7553141d98a8E"(ptr nonnull align 8 %f) #30
  br label %bb23
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17h818c4671b8adc94eE"(ptr align 8 %_1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_x = alloca ptr, align 8
  %_17 = alloca %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>", align 8
  %_12 = alloca %"core::option::Option<core::ops::range::Range<usize>>", align 8
  %f = alloca ptr, align 8
  %_7 = alloca ptr, align 8
  %0 = invoke { ptr, i64 } @_ZN3std6thread6Thread5cname17h91163d95cfb5c369E(ptr align 8 %_1)
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
  %.elt = extractvalue { ptr, i64 } %0, 0
  %.not4 = icmp eq ptr %.elt, null
  br i1 %.not4, label %bb3, label %bb2

bb2:                                              ; preds = %bb1
  %.elt3 = extractvalue { ptr, i64 } %0, 1
  invoke void @_ZN3std3sys4unix6thread6Thread8set_name17h944eeb69463a3300E(ptr nonnull align 1 %.elt, i64 %.elt3)
          to label %bb3 unwind label %bb20.thread

bb3:                                              ; preds = %bb2, %bb1
  %6 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", ptr %_1, i64 0, i32 2
  %_8 = load ptr, ptr %6, align 8, !noundef !6
  %7 = invoke ptr @_ZN3std2io5stdio18set_output_capture17hbfdad0a1763c8421E(ptr %_8)
          to label %bb4 unwind label %bb20.thread

bb4:                                              ; preds = %bb3
  store ptr %7, ptr %_7, align 8
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17hc8f3867161fd7f48E"(ptr nonnull align 8 %_7)
          to label %bb5 unwind label %bb20.thread

bb5:                                              ; preds = %bb4
  %8 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", ptr %_1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !nonnull !6, !noundef !6
  store ptr %9, ptr %f, align 8
  invoke void @_ZN3std3sys4unix6thread5guard7current17h5a7c57689f473c66E(ptr nonnull sret(%"core::option::Option<core::ops::range::Range<usize>>") align 8 %_12)
          to label %bb6 unwind label %bb11

bb12:                                             ; preds = %bb7, %bb8
  %_23.2.ph = phi i8 [ 1, %bb7 ], [ 0, %bb8 ]
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %10 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %11 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 1
  br label %bb13

bb6:                                              ; preds = %bb5
  %_13 = load ptr, ptr %_1, align 8, !nonnull !6, !noundef !6
  invoke void @_ZN3std10sys_common11thread_info3set17hb38d90ff4419d5b1E(ptr nonnull align 8 %_12, ptr nonnull %_13)
          to label %bb7 unwind label %bb11

bb7:                                              ; preds = %bb6
  %12 = invoke fastcc { ptr, ptr } @_ZN3std9panicking3try17hfc0332b7eab0d245E(ptr nonnull %9)
          to label %bb22 unwind label %bb12

bb22:                                             ; preds = %bb7
  %try_result.0 = extractvalue { ptr, ptr } %12, 0
  %try_result.1 = extractvalue { ptr, ptr } %12, 1
  %13 = getelementptr inbounds %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>::Some", ptr %_17, i64 0, i32 1
  store ptr %try_result.0, ptr %13, align 8
  %14 = getelementptr inbounds %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>::Some", ptr %_17, i64 0, i32 1, i32 1
  store ptr %try_result.1, ptr %14, align 8
  store i64 1, ptr %_17, align 8
  %15 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", ptr %_1, i64 0, i32 1
  %self5 = load ptr, ptr %15, align 8, !nonnull !6, !noundef !6
  %_39 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %self5, i64 0, i32 2, i32 1
  invoke fastcc void @"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17ha7dc1a6812d0b1faE"(ptr nonnull align 8 %_39)
          to label %bb8 unwind label %bb13.thread

bb13.thread:                                      ; preds = %bb22
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = extractvalue { ptr, i32 } %16, 0
  %18 = extractvalue { ptr, i32 } %16, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_39, ptr noundef nonnull align 8 dereferenceable(24) %_17, i64 24, i1 false)
  br label %bb14

bb8:                                              ; preds = %bb22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_39, ptr noundef nonnull align 8 dereferenceable(24) %_17, i64 24, i1 false)
  %19 = load ptr, ptr %15, align 8, !nonnull !6, !noundef !6
  store ptr %19, ptr %_x, align 8
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hd134fefae5dee978E"(ptr nonnull align 8 %_x)
          to label %bb23 unwind label %bb12

bb23:                                             ; preds = %bb8
  ret void

bb11:                                             ; preds = %bb6, %bb5
  %.not = phi i1 [ false, %bb5 ], [ true, %bb6 ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr62drop_in_place$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$GT$17hbf08f5cc563cda41E"(ptr nonnull align 8 %f) #30
  br label %bb20

terminate:                                        ; preds = %bb14, %bb18, %bb19
  %20 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h55eb1d85cadde1a1E() #26
  unreachable

bb17:                                             ; preds = %bb19
  br i1 %_26.014, label %bb18, label %bb15

bb19:                                             ; preds = %bb20.thread, %bb20
  %21 = phi i32 [ %5, %bb20.thread ], [ %1, %bb20 ]
  %22 = phi ptr [ %4, %bb20.thread ], [ %2, %bb20 ]
  %_26.014 = phi i1 [ %_26.1, %bb20.thread ], [ false, %bb20 ]
  %_25.012 = phi i1 [ true, %bb20.thread ], [ false, %bb20 ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h2c6ec9e6fc717a2aE"(ptr align 8 %_1) #30
          to label %bb17 unwind label %terminate

bb15:                                             ; preds = %bb18, %bb17
  br i1 %_25.012, label %bb16, label %bb13

bb18:                                             ; preds = %bb17
  %23 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", ptr %_1, i64 0, i32 2
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17hc8f3867161fd7f48E"(ptr nonnull align 8 %23) #30
          to label %bb15 unwind label %terminate

bb13:                                             ; preds = %bb16, %bb12, %bb20, %bb15
  %24 = phi i32 [ %21, %bb16 ], [ %21, %bb15 ], [ %1, %bb20 ], [ %11, %bb12 ]
  %25 = phi ptr [ %22, %bb16 ], [ %22, %bb15 ], [ %2, %bb20 ], [ %10, %bb12 ]
  %_23.0113033 = phi i8 [ 1, %bb16 ], [ 1, %bb15 ], [ 1, %bb20 ], [ %_23.2.ph, %bb12 ]
  %26 = and i8 %_23.0113033, 1
  %.not1 = icmp eq i8 %26, 0
  br i1 %.not1, label %bb10, label %bb14

bb16:                                             ; preds = %bb15
  %27 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", ptr %_1, i64 0, i32 3
  call fastcc void @"_ZN4core3ptr123drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h15132ec8770dbca7E"(ptr nonnull align 8 %27) #30
  br label %bb13

bb10:                                             ; preds = %bb14, %bb13
  %28 = phi i32 [ %32, %bb14 ], [ %24, %bb13 ]
  %29 = phi ptr [ %33, %bb14 ], [ %25, %bb13 ]
  %30 = insertvalue { ptr, i32 } poison, ptr %29, 0
  %31 = insertvalue { ptr, i32 } %30, i32 %28, 1
  resume { ptr, i32 } %31

bb14:                                             ; preds = %bb13.thread, %bb13
  %32 = phi i32 [ %18, %bb13.thread ], [ %24, %bb13 ]
  %33 = phi ptr [ %17, %bb13.thread ], [ %25, %bb13 ]
  %34 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", ptr %_1, i64 0, i32 1
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hd134fefae5dee978E"(ptr nonnull align 8 %34) #30
          to label %bb10 unwind label %terminate
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17he5e96e7f512ef2bfE"(ptr align 8 %_1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_x = alloca ptr, align 8
  %_17 = alloca %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>", align 8
  %_12 = alloca %"core::option::Option<core::ops::range::Range<usize>>", align 8
  %f = alloca ptr, align 8
  %_7 = alloca ptr, align 8
  %0 = invoke { ptr, i64 } @_ZN3std6thread6Thread5cname17h91163d95cfb5c369E(ptr align 8 %_1)
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
  %.elt = extractvalue { ptr, i64 } %0, 0
  %.not4 = icmp eq ptr %.elt, null
  br i1 %.not4, label %bb3, label %bb2

bb2:                                              ; preds = %bb1
  %.elt3 = extractvalue { ptr, i64 } %0, 1
  invoke void @_ZN3std3sys4unix6thread6Thread8set_name17h944eeb69463a3300E(ptr nonnull align 1 %.elt, i64 %.elt3)
          to label %bb3 unwind label %bb20.thread

bb3:                                              ; preds = %bb2, %bb1
  %6 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", ptr %_1, i64 0, i32 2
  %_8 = load ptr, ptr %6, align 8, !noundef !6
  %7 = invoke ptr @_ZN3std2io5stdio18set_output_capture17hbfdad0a1763c8421E(ptr %_8)
          to label %bb4 unwind label %bb20.thread

bb4:                                              ; preds = %bb3
  store ptr %7, ptr %_7, align 8
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17hc8f3867161fd7f48E"(ptr nonnull align 8 %_7)
          to label %bb5 unwind label %bb20.thread

bb5:                                              ; preds = %bb4
  %8 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", ptr %_1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !nonnull !6, !noundef !6
  store ptr %9, ptr %f, align 8
  invoke void @_ZN3std3sys4unix6thread5guard7current17h5a7c57689f473c66E(ptr nonnull sret(%"core::option::Option<core::ops::range::Range<usize>>") align 8 %_12)
          to label %bb6 unwind label %bb11

bb12:                                             ; preds = %bb7, %bb8
  %_23.2.ph = phi i8 [ 1, %bb7 ], [ 0, %bb8 ]
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %10 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %11 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 1
  br label %bb13

bb6:                                              ; preds = %bb5
  %_13 = load ptr, ptr %_1, align 8, !nonnull !6, !noundef !6
  invoke void @_ZN3std10sys_common11thread_info3set17hb38d90ff4419d5b1E(ptr nonnull align 8 %_12, ptr nonnull %_13)
          to label %bb7 unwind label %bb11

bb7:                                              ; preds = %bb6
  %12 = invoke fastcc { ptr, ptr } @_ZN3std9panicking3try17hab138f7be3ceff6eE(ptr nonnull %9)
          to label %bb22 unwind label %bb12

bb22:                                             ; preds = %bb7
  %try_result.0 = extractvalue { ptr, ptr } %12, 0
  %try_result.1 = extractvalue { ptr, ptr } %12, 1
  %13 = getelementptr inbounds %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>::Some", ptr %_17, i64 0, i32 1
  store ptr %try_result.0, ptr %13, align 8
  %14 = getelementptr inbounds %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>::Some", ptr %_17, i64 0, i32 1, i32 1
  store ptr %try_result.1, ptr %14, align 8
  store i64 1, ptr %_17, align 8
  %15 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", ptr %_1, i64 0, i32 1
  %self5 = load ptr, ptr %15, align 8, !nonnull !6, !noundef !6
  %_39 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %self5, i64 0, i32 2, i32 1
  invoke fastcc void @"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17ha7dc1a6812d0b1faE"(ptr nonnull align 8 %_39)
          to label %bb8 unwind label %bb13.thread

bb13.thread:                                      ; preds = %bb22
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = extractvalue { ptr, i32 } %16, 0
  %18 = extractvalue { ptr, i32 } %16, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_39, ptr noundef nonnull align 8 dereferenceable(24) %_17, i64 24, i1 false)
  br label %bb14

bb8:                                              ; preds = %bb22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_39, ptr noundef nonnull align 8 dereferenceable(24) %_17, i64 24, i1 false)
  %19 = load ptr, ptr %15, align 8, !nonnull !6, !noundef !6
  store ptr %19, ptr %_x, align 8
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hd134fefae5dee978E"(ptr nonnull align 8 %_x)
          to label %bb23 unwind label %bb12

bb23:                                             ; preds = %bb8
  ret void

bb11:                                             ; preds = %bb6, %bb5
  %.not = phi i1 [ false, %bb5 ], [ true, %bb6 ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr62drop_in_place$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$GT$17h577a7553141d98a8E"(ptr nonnull align 8 %f) #30
  br label %bb20

terminate:                                        ; preds = %bb14, %bb18, %bb19
  %20 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h55eb1d85cadde1a1E() #26
  unreachable

bb17:                                             ; preds = %bb19
  br i1 %_26.014, label %bb18, label %bb15

bb19:                                             ; preds = %bb20.thread, %bb20
  %21 = phi i32 [ %5, %bb20.thread ], [ %1, %bb20 ]
  %22 = phi ptr [ %4, %bb20.thread ], [ %2, %bb20 ]
  %_26.014 = phi i1 [ %_26.1, %bb20.thread ], [ false, %bb20 ]
  %_25.012 = phi i1 [ true, %bb20.thread ], [ false, %bb20 ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h2c6ec9e6fc717a2aE"(ptr align 8 %_1) #30
          to label %bb17 unwind label %terminate

bb15:                                             ; preds = %bb18, %bb17
  br i1 %_25.012, label %bb16, label %bb13

bb18:                                             ; preds = %bb17
  %23 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", ptr %_1, i64 0, i32 2
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17hc8f3867161fd7f48E"(ptr nonnull align 8 %23) #30
          to label %bb15 unwind label %terminate

bb13:                                             ; preds = %bb16, %bb12, %bb20, %bb15
  %24 = phi i32 [ %21, %bb16 ], [ %21, %bb15 ], [ %1, %bb20 ], [ %11, %bb12 ]
  %25 = phi ptr [ %22, %bb16 ], [ %22, %bb15 ], [ %2, %bb20 ], [ %10, %bb12 ]
  %_23.0113033 = phi i8 [ 1, %bb16 ], [ 1, %bb15 ], [ 1, %bb20 ], [ %_23.2.ph, %bb12 ]
  %26 = and i8 %_23.0113033, 1
  %.not1 = icmp eq i8 %26, 0
  br i1 %.not1, label %bb10, label %bb14

bb16:                                             ; preds = %bb15
  %27 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", ptr %_1, i64 0, i32 3
  call fastcc void @"_ZN4core3ptr123drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb62b8b3916239723E"(ptr nonnull align 8 %27) #30
  br label %bb13

bb10:                                             ; preds = %bb14, %bb13
  %28 = phi i32 [ %32, %bb14 ], [ %24, %bb13 ]
  %29 = phi ptr [ %33, %bb14 ], [ %25, %bb13 ]
  %30 = insertvalue { ptr, i32 } poison, ptr %29, 0
  %31 = insertvalue { ptr, i32 } %30, i32 %28, 1
  resume { ptr, i32 } %31

bb14:                                             ; preds = %bb13.thread, %bb13
  %32 = phi i32 [ %18, %bb13.thread ], [ %24, %bb13 ]
  %33 = phi ptr [ %17, %bb13.thread ], [ %25, %bb13 ]
  %34 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", ptr %_1, i64 0, i32 1
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hd134fefae5dee978E"(ptr nonnull align 8 %34) #30
          to label %bb10 unwind label %terminate
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h2fc84ad383795bbdE"(ptr %_1) unnamed_addr #1 {
start:
  tail call fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hf5f169f394194d80E(ptr %_1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17he2060b9b23aa52f7E"(ptr %_1) unnamed_addr #1 {
start:
  tail call fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h71425e548fedb43bE(ptr %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_ZN3std9panicking3try17h277b2fb598852928E(ptr align 8 %f) unnamed_addr #3 {
start:
  %data = alloca %"std::panicking::try::Data<core::panic::unwind_safe::AssertUnwindSafe<{closure@<std::thread::Packet<'_, ()> as core::ops::drop::Drop>::drop::{closure#0}}>, ()>", align 8
  %0 = icmp ne ptr %f, null
  tail call void @llvm.assume(i1 %0)
  store ptr %f, ptr %data, align 8
  %1 = call fastcc i32 @__rust_try(ptr nonnull @_ZN3std9panicking3try7do_call17h8f189a79418b1601E, ptr nonnull %data, ptr nonnull @_ZN3std9panicking3try8do_catch17hc609cf7356b0c3cbE)
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %bb2, label %bb3

bb2:                                              ; preds = %start
  br label %bb4

bb3:                                              ; preds = %start
  %slot.0 = load ptr, ptr %data, align 8, !nonnull !6, !align !11, !noundef !6
  %3 = getelementptr inbounds { ptr, ptr }, ptr %data, i64 0, i32 1
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
define internal fastcc { ptr, ptr } @_ZN3std9panicking3try17hab138f7be3ceff6eE(ptr %f) unnamed_addr #3 {
start:
  %data = alloca %"std::panicking::try::Data<core::panic::unwind_safe::AssertUnwindSafe<{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}::{closure#0}}>, ()>", align 8
  %0 = icmp ne ptr %f, null
  tail call void @llvm.assume(i1 %0)
  store ptr %f, ptr %data, align 8
  %1 = call fastcc i32 @__rust_try(ptr nonnull @_ZN3std9panicking3try7do_call17h064e91deb9a434e8E, ptr nonnull %data, ptr nonnull @_ZN3std9panicking3try8do_catch17he70d473979419b34E)
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %bb2, label %bb3

bb2:                                              ; preds = %start
  br label %bb4

bb3:                                              ; preds = %start
  %slot.0 = load ptr, ptr %data, align 8, !nonnull !6, !align !11, !noundef !6
  %3 = getelementptr inbounds { ptr, ptr }, ptr %data, i64 0, i32 1
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
define internal fastcc { ptr, ptr } @_ZN3std9panicking3try17hfc0332b7eab0d245E(ptr %f) unnamed_addr #3 {
start:
  %data = alloca %"std::panicking::try::Data<core::panic::unwind_safe::AssertUnwindSafe<{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}::{closure#0}}>, ()>", align 8
  %0 = icmp ne ptr %f, null
  tail call void @llvm.assume(i1 %0)
  store ptr %f, ptr %data, align 8
  %1 = call fastcc i32 @__rust_try(ptr nonnull @_ZN3std9panicking3try7do_call17hdecad32ae09c6274E, ptr nonnull %data, ptr nonnull @_ZN3std9panicking3try8do_catch17h3fc198fcb0c69638E)
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %bb2, label %bb3

bb2:                                              ; preds = %start
  br label %bb4

bb3:                                              ; preds = %start
  %slot.0 = load ptr, ptr %data, align 8, !nonnull !6, !align !11, !noundef !6
  %3 = getelementptr inbounds { ptr, ptr }, ptr %data, i64 0, i32 1
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
define internal void @_ZN3std9panicking3try7do_call17h064e91deb9a434e8E(ptr nocapture readonly %data) unnamed_addr #1 {
start:
  %f = load ptr, ptr %data, align 8, !nonnull !6, !noundef !6
  tail call fastcc void @"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17he119eba084900eceE"(ptr nonnull %f)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN3std9panicking3try7do_call17h8f189a79418b1601E(ptr nocapture readonly %data) unnamed_addr #1 {
start:
  %f = load ptr, ptr %data, align 8, !nonnull !6, !align !10, !noundef !6
  tail call fastcc void @"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17hc30f8f32590d91bbE"(ptr nonnull align 8 %f)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN3std9panicking3try7do_call17hdecad32ae09c6274E(ptr nocapture readonly %data) unnamed_addr #1 {
start:
  %f = load ptr, ptr %data, align 8, !nonnull !6, !noundef !6
  tail call fastcc void @"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h36f69e2c875f0a0aE"(ptr nonnull %f)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_ZN3std9panicking3try8do_catch17h3fc198fcb0c69638E(ptr nocapture writeonly %data, ptr %payload) unnamed_addr #7 personality ptr @rust_eh_personality {
start:
  %0 = invoke { ptr, ptr } @_ZN3std9panicking3try7cleanup17h82b2c8e320bcb974E(ptr %payload)
          to label %bb1 unwind label %terminate

terminate:                                        ; preds = %start
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  tail call void @_ZN4core9panicking19panic_cannot_unwind17h728d9a0f3744453fE() #26
  unreachable

bb1:                                              ; preds = %start
  %obj.0 = extractvalue { ptr, ptr } %0, 0
  %obj.1 = extractvalue { ptr, ptr } %0, 1
  store ptr %obj.0, ptr %data, align 8
  %2 = getelementptr inbounds { ptr, ptr }, ptr %data, i64 0, i32 1
  store ptr %obj.1, ptr %2, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_ZN3std9panicking3try8do_catch17hc609cf7356b0c3cbE(ptr nocapture writeonly %data, ptr %payload) unnamed_addr #7 personality ptr @rust_eh_personality {
start:
  %0 = invoke { ptr, ptr } @_ZN3std9panicking3try7cleanup17h82b2c8e320bcb974E(ptr %payload)
          to label %bb1 unwind label %terminate

terminate:                                        ; preds = %start
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  tail call void @_ZN4core9panicking19panic_cannot_unwind17h728d9a0f3744453fE() #26
  unreachable

bb1:                                              ; preds = %start
  %obj.0 = extractvalue { ptr, ptr } %0, 0
  %obj.1 = extractvalue { ptr, ptr } %0, 1
  store ptr %obj.0, ptr %data, align 8
  %2 = getelementptr inbounds { ptr, ptr }, ptr %data, i64 0, i32 1
  store ptr %obj.1, ptr %2, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_ZN3std9panicking3try8do_catch17he70d473979419b34E(ptr nocapture writeonly %data, ptr %payload) unnamed_addr #7 personality ptr @rust_eh_personality {
start:
  %0 = invoke { ptr, ptr } @_ZN3std9panicking3try7cleanup17h82b2c8e320bcb974E(ptr %payload)
          to label %bb1 unwind label %terminate

terminate:                                        ; preds = %start
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  tail call void @_ZN4core9panicking19panic_cannot_unwind17h728d9a0f3744453fE() #26
  unreachable

bb1:                                              ; preds = %start
  %obj.0 = extractvalue { ptr, ptr } %0, 0
  %obj.1 = extractvalue { ptr, ptr } %0, 1
  store ptr %obj.0, ptr %data, align 8
  %2 = getelementptr inbounds { ptr, ptr }, ptr %data, i64 0, i32 1
  store ptr %obj.1, ptr %2, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h796fd35187ef2641E"(ptr nocapture readonly align 8 %self, ptr align 8 %f) unnamed_addr #3 {
start:
  %_3 = load ptr, ptr %self, align 8, !nonnull !6, !align !10, !noundef !6
  %_0 = tail call fastcc zeroext i1 @"_ZN66_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h3fc7e658bb415858E"(ptr nonnull align 8 %_3, ptr align 8 %f)
  ret i1 %_0
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hce2cc252954964a2E"(ptr nocapture readonly align 8 %self, ptr align 8 %f) unnamed_addr #3 {
start:
  %_3 = load ptr, ptr %self, align 8, !nonnull !6, !align !11, !noundef !6
  %_0 = tail call fastcc zeroext i1 @"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17h5ed6430ded1ea112E"(ptr nonnull align 1 %_3, ptr align 8 %f)
  ret i1 %_0
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hec76821d6600275fE"(ptr nocapture readonly align 8 %self, ptr align 8 %f) unnamed_addr #3 {
start:
  %_3 = load ptr, ptr %self, align 8, !nonnull !6, !align !10, !noundef !6
  %_0 = tail call fastcc zeroext i1 @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17he6698c7598e56530E"(ptr nonnull align 8 %_3, ptr align 8 %f)
  ret i1 %_0
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @"_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hfdbd86b8ec10ac5bE"(ptr nocapture readonly align 8 %self, ptr %ptr, i64 %layout.0, i64 %layout.1) unnamed_addr #7 {
start:
  %_4 = load ptr, ptr %self, align 8, !nonnull !6, !align !11, !noundef !6
  tail call fastcc void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h30cd7d9e90b030f1E"(ptr nonnull align 1 %_4, ptr %ptr, i64 %layout.0, i64 %layout.1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1d66b0887f4f60adE"(ptr align 1 %self.0, i64 %self.1, ptr align 8 %f) unnamed_addr #3 {
bb6:
  %_5 = alloca %"core::fmt::builders::DebugList<'_, '_>", align 8
  call void @_ZN4core3fmt9Formatter10debug_list17h1616b9a56f5bf339E(ptr nonnull sret(%"core::fmt::builders::DebugList<'_, '_>") align 8 %_5, ptr align 8 %f)
  %0 = getelementptr inbounds i8, ptr %self.0, i64 %self.1
  %1 = icmp ne ptr %self.0, null
  call void @llvm.assume(i1 %1)
  %_3 = call fastcc align 8 ptr @_ZN4core3fmt8builders9DebugList7entries17h9bc66fe990405b20E(ptr nonnull align 8 %_5, ptr nonnull %self.0, ptr nonnull %0)
  %_0 = call zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17hadbed7078d8807f7E(ptr nonnull align 8 %_5)
  ret i1 %_0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc zeroext i1 @"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17h5ed6430ded1ea112E"(ptr align 1 %self, ptr align 8 %f) unnamed_addr #1 {
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
  %3 = tail call zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17hf9f952c6b540cee3E"(ptr align 1 %self, ptr nonnull align 8 %f)
  br label %bb5

bb4:                                              ; preds = %bb2
  %4 = tail call zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h3d4d19436d6d837dE"(ptr align 1 %self, ptr nonnull align 8 %f)
  br label %bb5

bb3:                                              ; preds = %bb2
  %5 = tail call zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17hd83f82e68b17db74E"(ptr align 1 %self, ptr nonnull align 8 %f)
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4, %bb1
  %_0.0.in = phi i1 [ %4, %bb4 ], [ %5, %bb3 ], [ %3, %bb1 ]
  ret i1 %_0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h67dfcc54c69890bcE"(ptr align 4 %self, ptr align 8 %f) unnamed_addr #1 {
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
  %3 = tail call zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h8e89ccd3b870a36eE"(ptr align 4 %self, ptr nonnull align 8 %f)
  br label %bb5

bb4:                                              ; preds = %bb2
  %4 = tail call zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17hc9733ab76fb3c52cE"(ptr align 4 %self, ptr nonnull align 8 %f)
  br label %bb5

bb3:                                              ; preds = %bb2
  %5 = tail call zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h891839fecf0a4aefE"(ptr align 4 %self, ptr nonnull align 8 %f)
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4, %bb1
  %_0.0.in = phi i1 [ %4, %bb4 ], [ %5, %bb3 ], [ %3, %bb1 ]
  ret i1 %_0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hb3c32fcfc529ca28E"(ptr align 8 %self, ptr align 8 %f) unnamed_addr #1 {
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
  %3 = tail call zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h2a402146377b71d4E"(ptr align 8 %self, ptr nonnull align 8 %f)
  br label %bb5

bb4:                                              ; preds = %bb2
  %4 = tail call zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h54d4af2b1bb3d966E"(ptr align 8 %self, ptr nonnull align 8 %f)
  br label %bb5

bb3:                                              ; preds = %bb2
  %5 = tail call zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17hfb9868ecfefdd0c2E"(ptr align 8 %self, ptr nonnull align 8 %f)
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4, %bb1
  %_0.0.in = phi i1 [ %4, %bb4 ], [ %5, %bb3 ], [ %3, %bb1 ]
  ret i1 %_0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @_ZN4core3fmt5Write10write_char17ha2e307146d8e8cecE(ptr nocapture align 8 %self, i32 %c) unnamed_addr #3 {
start:
  %_6 = alloca [4 x i8], align 4
  store i32 0, ptr %_6, align 4
  %0 = call fastcc { ptr, i64 } @_ZN4core4char7methods15encode_utf8_raw17h25bdbd3ca93d1401E(i32 %c, ptr nonnull align 1 %_6, i64 4)
  %v.0 = extractvalue { ptr, i64 } %0, 0
  %v.1 = extractvalue { ptr, i64 } %0, 1
  %_0 = call zeroext i1 @"_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h9d33958e619f5e87E"(ptr align 8 %self, ptr align 1 %v.0, i64 %v.1)
  ret i1 %_0
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @_ZN4core3fmt5Write9write_fmt17h3cf4e8c57e0b0964E(ptr align 8 %self, ptr align 8 %args) unnamed_addr #3 {
start:
  %_0 = tail call fastcc zeroext i1 @"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h9286b9634c520c01E"(ptr align 8 %self, ptr align 8 %args)
  ret i1 %_0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc align 8 ptr @_ZN4core3fmt8builders9DebugList7entries17h9bc66fe990405b20E(ptr returned align 8 %self, ptr %entries.0, ptr %entries.1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %entry = alloca ptr, align 8
  %iter = alloca { ptr, ptr }, align 8
  %0 = tail call fastcc { ptr, ptr } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf501c09794a82a54E"(ptr %entries.0, ptr %entries.1)
  %_3.0 = extractvalue { ptr, ptr } %0, 0
  %_3.1 = extractvalue { ptr, ptr } %0, 1
  store ptr %_3.0, ptr %iter, align 8
  %1 = getelementptr inbounds { ptr, ptr }, ptr %iter, i64 0, i32 1
  store ptr %_3.1, ptr %1, align 8
  br label %bb2

bb2:                                              ; preds = %bb4, %start
  %2 = call fastcc align 1 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he33937d1af15bbf0E"(ptr nonnull align 8 %iter)
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
  %_9 = invoke align 8 ptr @_ZN4core3fmt8builders9DebugList5entry17h2ed5a4f4153b90ddE(ptr align 8 %self, ptr nonnull align 1 %entry, ptr nonnull align 8 @vtable.4)
          to label %bb2 unwind label %bb10

bb10:                                             ; preds = %bb4
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb11
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal fastcc void @_ZN4core3fmt9Arguments16new_v1_formatted17h3dd9796cd39befecE(ptr nocapture writeonly sret(%"core::fmt::Arguments<'_>") align 8 %_0, ptr align 8 %pieces.0, i64 %pieces.1, ptr align 8 %args.0, i64 %args.1, ptr align 8 %fmt.0, i64 %fmt.1) unnamed_addr #8 {
start:
  store ptr %pieces.0, ptr %_0, align 8
  %0 = getelementptr inbounds { ptr, i64 }, ptr %_0, i64 0, i32 1
  store i64 %pieces.1, ptr %0, align 8
  %1 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_0, i64 0, i32 2
  store ptr %fmt.0, ptr %1, align 8
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_0, i64 0, i32 2, i32 1
  store i64 %fmt.1, ptr %2, align 8
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_0, i64 0, i32 1
  store ptr %args.0, ptr %3, align 8
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_0, i64 0, i32 1, i32 1
  store i64 %args.1, ptr %4, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core3fmt9Arguments6new_v117h7a79c17f8f6b250dE(ptr nocapture writeonly sret(%"core::fmt::Arguments<'_>") align 8 %_0, ptr align 8 %pieces.0, i64 %pieces.1, ptr align 8 %args.0, i64 %args.1) unnamed_addr #1 {
start:
  %_11 = alloca %"core::fmt::Arguments<'_>", align 8
  %_3 = icmp ult i64 %pieces.1, %args.1
  %_8 = add i64 %args.1, 1
  %_6 = icmp ult i64 %_8, %pieces.1
  %or.cond = or i1 %_3, %_6
  br i1 %or.cond, label %bb3, label %bb4

bb4:                                              ; preds = %start
  store ptr %pieces.0, ptr %_0, align 8
  %0 = getelementptr inbounds { ptr, i64 }, ptr %_0, i64 0, i32 1
  store i64 %pieces.1, ptr %0, align 8
  %1 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_0, i64 0, i32 2
  store ptr null, ptr %1, align 8
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_0, i64 0, i32 1
  store ptr %args.0, ptr %2, align 8
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_0, i64 0, i32 1, i32 1
  store i64 %args.1, ptr %3, align 8
  ret void

bb3:                                              ; preds = %start
  store ptr @alloc_af99043bc04c419363a7f04d23183506, ptr %_11, align 8
  %4 = getelementptr inbounds { ptr, i64 }, ptr %_11, i64 0, i32 1
  store i64 1, ptr %4, align 8
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_11, i64 0, i32 2
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_11, i64 0, i32 1
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %6, align 8
  %7 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_11, i64 0, i32 1, i32 1
  store i64 0, ptr %7, align 8
  call void @_ZN4core9panicking9panic_fmt17h784f20a50eaab275E(ptr nonnull align 8 %_11, ptr nonnull align 8 @alloc_5f330cd7dff757941d785f386d839300) #28
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h6840fdfd4583852fE"(ptr %_1) unnamed_addr #1 {
start:
  tail call fastcc void @"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17h818c4671b8adc94eE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h6987d04e5a582d75E"(ptr %_1) unnamed_addr #1 {
start:
  tail call fastcc void @"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17he5e96e7f512ef2bfE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17had9750606aaf5558E"(ptr nocapture readonly %_1) unnamed_addr #1 {
start:
  %0 = load ptr, ptr %_1, align 8, !nonnull !6, !noundef !6
  %_0 = tail call fastcc i32 @_ZN4core3ops8function6FnOnce9call_once17h064c4bee5215ad28E(ptr nonnull %0)
  ret i32 %_0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc i32 @_ZN4core3ops8function6FnOnce9call_once17h064c4bee5215ad28E(ptr %0) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_1 = alloca ptr, align 8
  store ptr %0, ptr %_1, align 8
  %_0 = invoke i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hc01589153985aec9E"(ptr nonnull align 8 %_1)
          to label %bb1 unwind label %bb3

bb3:                                              ; preds = %start
  %1 = landingpad { ptr, i32 }
          cleanup
  resume { ptr, i32 } %1

bb1:                                              ; preds = %start
  ret i32 %_0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc i64 @_ZN4core3ops8function6FnOnce9call_once17h34dbfb27a538114eE() unnamed_addr #1 {
start:
  %_0 = tail call i64 @_ZN3std10sys_common6thread9min_stack17hbc35171617379d33E()
  ret i64 %_0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core3ops8function6FnOnce9call_once17h89feb595ffb2c887E(ptr nocapture readonly %_1) unnamed_addr #1 {
start:
  tail call void %_1()
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core3ops8function6FnOnce9call_once17h9fec3ef5c1556fbbE(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_1 = alloca ptr, align 8
  store ptr %0, ptr %_1, align 8
  invoke fastcc void @"_ZN70_$LT$std..thread..Packet$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h8ffd353ba9b4585aE"(ptr nonnull align 8 %_1)
          to label %bb1 unwind label %bb3

bb3:                                              ; preds = %start
  %1 = landingpad { ptr, i32 }
          cleanup
  resume { ptr, i32 } %1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr101drop_in_place$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$17hf5b535d96333f41dE"(ptr align 8 %_1) unnamed_addr #3 {
start:
  tail call fastcc void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc2f4c3853a6e22dbE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17h0f1a18bcf3efb78bE"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 {
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
  tail call fastcc void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h69065f7908ef8309E"(ptr nonnull align 8 %1)
  br label %bb1

bb1:                                              ; preds = %bb2, %start, %start, %start
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr103drop_in_place$LT$alloc..sync..Weak$LT$std..thread..scoped..ScopeData$C$$RF$alloc..alloc..Global$GT$$GT$17h7f40a3c35568f140E"(ptr nocapture readonly align 8 %_1) unnamed_addr #0 {
start:
  tail call fastcc void @"_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf51d72a73adb0c60E"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h61e33117cfa09a39E"(ptr align 8 %_1) unnamed_addr #3 {
start:
  %0 = load ptr, ptr %_1, align 8, !noundef !6
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  tail call fastcc void @"_ZN4core3ptr75drop_in_place$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$17h7cff8bb86d2b0909E"(ptr nonnull align 8 %_1)
  br label %bb1
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr108drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$$LP$$RP$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h1b3a6f04939ce547E"(ptr nocapture readonly align 8 %_1) unnamed_addr #0 {
start:
  tail call fastcc void @"_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf55d50bb9789f65bE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$17h36ed624c85fbcc5bE"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_6.0 = load ptr, ptr %_1, align 8, !noundef !6
  %0 = getelementptr inbounds { ptr, ptr }, ptr %_1, i64 0, i32 1
  %_6.1 = load ptr, ptr %0, align 8, !nonnull !6, !align !10, !noundef !6
  %1 = load ptr, ptr %_6.1, align 8, !invariant.load !6, !nonnull !6
  invoke void %1(ptr align 1 %_6.0)
          to label %bb3 unwind label %bb4

bb4:                                              ; preds = %start
  %2 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf48fb90ec075f1e3E"(ptr nonnull align 8 %_1) #30
  br label %bb1

bb3:                                              ; preds = %start
  tail call fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf48fb90ec075f1e3E"(ptr nonnull align 8 %_1)
  ret void

bb1:                                              ; preds = %bb4
  resume { ptr, i32 } %2
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr123drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h15132ec8770dbca7E"(ptr align 8 %_1) unnamed_addr #0 {
start:
  tail call fastcc void @"_ZN104_$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6191a407d6050c28E"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr123drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb62b8b3916239723E"(ptr align 8 %_1) unnamed_addr #0 {
start:
  tail call fastcc void @"_ZN104_$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h20f3985a52bb6f5fE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr129drop_in_place$LT$alloc..sync..Weak$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h6b50de3c5f2fb4a9E"(ptr nocapture readonly align 8 %_1) unnamed_addr #0 {
start:
  tail call fastcc void @"_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf1f3fa174702c143E"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17hc8f3867161fd7f48E"(ptr align 8 %_1) unnamed_addr #3 {
start:
  %0 = load ptr, ptr %_1, align 8, !noundef !6
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  tail call fastcc void @"_ZN4core3ptr101drop_in_place$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$17hf5b535d96333f41dE"(ptr nonnull align 8 %_1)
  br label %bb1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h9ce7498891cbe9c9E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 {
start:
  %0 = load ptr, ptr %_1, align 8, !noundef !6
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  tail call void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17h7b70e56cb1c4ddf0E"(ptr nonnull align 8 %_1)
  br label %bb1
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr148drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h252c8220f67e077aE"(ptr align 8 %_1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h2c6ec9e6fc717a2aE"(ptr align 8 %_1)
          to label %bb8 unwind label %bb5

bb5:                                              ; preds = %start
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", ptr %_1, i64 0, i32 2
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17hc8f3867161fd7f48E"(ptr nonnull align 8 %1) #30
          to label %bb4 unwind label %terminate

bb8:                                              ; preds = %start
  %2 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", ptr %_1, i64 0, i32 2
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17hc8f3867161fd7f48E"(ptr nonnull align 8 %2)
          to label %bb7 unwind label %cleanup1

bb4:                                              ; preds = %cleanup1, %bb5
  %.pn = phi { ptr, i32 } [ %4, %cleanup1 ], [ %0, %bb5 ]
  %3 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", ptr %_1, i64 0, i32 3
  call fastcc void @"_ZN4core3ptr123drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb62b8b3916239723E"(ptr nonnull align 8 %3) #30
  br label %bb3

cleanup1:                                         ; preds = %bb8
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb4

bb7:                                              ; preds = %bb8
  %5 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", ptr %_1, i64 0, i32 3
  call fastcc void @"_ZN4core3ptr123drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb62b8b3916239723E"(ptr nonnull align 8 %5)
  br label %bb6

bb3:                                              ; preds = %bb4
  %6 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", ptr %_1, i64 0, i32 1
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hd134fefae5dee978E"(ptr nonnull align 8 %6) #30
          to label %bb1 unwind label %terminate

bb6:                                              ; preds = %bb7
  %7 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:16:28: 16:35}, ()>::{closure#1}}", ptr %_1, i64 0, i32 1
  tail call fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hd134fefae5dee978E"(ptr nonnull align 8 %7)
  ret void

terminate:                                        ; preds = %bb3, %bb5
  %8 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  tail call void @_ZN4core9panicking16panic_in_cleanup17h55eb1d85cadde1a1E() #26
  unreachable

bb1:                                              ; preds = %bb3
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr148drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17haaed32df4c189f1bE"(ptr align 8 %_1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h2c6ec9e6fc717a2aE"(ptr align 8 %_1)
          to label %bb8 unwind label %bb5

bb5:                                              ; preds = %start
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", ptr %_1, i64 0, i32 2
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17hc8f3867161fd7f48E"(ptr nonnull align 8 %1) #30
          to label %bb4 unwind label %terminate

bb8:                                              ; preds = %start
  %2 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", ptr %_1, i64 0, i32 2
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17hc8f3867161fd7f48E"(ptr nonnull align 8 %2)
          to label %bb7 unwind label %cleanup1

bb4:                                              ; preds = %cleanup1, %bb5
  %.pn = phi { ptr, i32 } [ %4, %cleanup1 ], [ %0, %bb5 ]
  %3 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", ptr %_1, i64 0, i32 3
  call fastcc void @"_ZN4core3ptr123drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h15132ec8770dbca7E"(ptr nonnull align 8 %3) #30
  br label %bb3

cleanup1:                                         ; preds = %bb8
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb4

bb7:                                              ; preds = %bb8
  %5 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", ptr %_1, i64 0, i32 3
  call fastcc void @"_ZN4core3ptr123drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h15132ec8770dbca7E"(ptr nonnull align 8 %5)
  br label %bb6

bb3:                                              ; preds = %bb4
  %6 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", ptr %_1, i64 0, i32 1
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hd134fefae5dee978E"(ptr nonnull align 8 %6) #30
          to label %bb1 unwind label %terminate

bb6:                                              ; preds = %bb7
  %7 = getelementptr inbounds %"{closure@std::thread::Builder::spawn_unchecked_<'_, '_, {closure@files/std_rs.rs:10:27: 10:34}, ()>::{closure#1}}", ptr %_1, i64 0, i32 1
  tail call fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hd134fefae5dee978E"(ptr nonnull align 8 %7)
  ret void

terminate:                                        ; preds = %bb3, %bb5
  %8 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  tail call void @_ZN4core9panicking16panic_in_cleanup17h55eb1d85cadde1a1E() #26
  unreachable

bb1:                                              ; preds = %bb3
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17ha7dc1a6812d0b1faE"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 {
start:
  %_2 = load i64, ptr %_1, align 8, !range !5, !noundef !6
  %0 = icmp eq i64 %_2, 0
  br i1 %0, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  %1 = getelementptr inbounds %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>::Some", ptr %_1, i64 0, i32 1
  tail call fastcc void @"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h9ce7498891cbe9c9E"(ptr nonnull align 8 %1)
  br label %bb1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr188drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$$GT$17hc066ad2544dc59e4E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 {
start:
  tail call fastcc void @"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17ha7dc1a6812d0b1faE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @"_ZN4core3ptr26drop_in_place$LT$usize$GT$17h4532b2f223c5397bE"(ptr nocapture readnone align 8 %_1) unnamed_addr #5 {
start:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @"_ZN4core3ptr27drop_in_place$LT$$RF$u8$GT$17hc7195de170f8af81E"(ptr nocapture readnone align 8 %_1) unnamed_addr #5 {
start:
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr39drop_in_place$LT$std..thread..Inner$GT$17h112dabf7034eb68aE"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 {
start:
  %0 = getelementptr inbounds %"std::thread::Inner", ptr %_1, i64 0, i32 1
  tail call fastcc void @"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17hee8273a2ab352c6cE"(ptr nonnull align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h2c6ec9e6fc717a2aE"(ptr align 8 %_1) unnamed_addr #3 {
start:
  tail call fastcc void @"_ZN4core3ptr85drop_in_place$LT$core..pin..Pin$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$$GT$17ha2d6e43bef8f301dE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd51a3e7b93a66c12E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 {
start:
  tail call fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h67eaa829cecc3904E"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h103bcfb69fa8988bE"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 {
start:
  tail call fastcc void @"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h6afab08150e0769aE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17hd09c5142fbb5f304E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 {
start:
  tail call fastcc void @"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$17h36ed624c85fbcc5bE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h67eaa829cecc3904E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  br label %bb4

bb4:                                              ; preds = %start
  tail call fastcc void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h3e7af746348650feE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17h51517376bb8a85dcE"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  call fastcc void @"_ZN68_$LT$alloc..ffi..c_str..CString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9f070990e423d124E"(ptr align 8 %_1)
  br label %bb4

bb4:                                              ; preds = %start
  tail call fastcc void @"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17he65f436307b0ac4cE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr48drop_in_place$LT$alloc..ffi..c_str..NulError$GT$17hbb731318acbda964E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 {
start:
  tail call fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h67eaa829cecc3904E"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr48drop_in_place$LT$alloc..sync..Arc$LT$i32$GT$$GT$17h49c1313db23cef8bE"(ptr align 8 %_1) unnamed_addr #0 {
start:
  tail call fastcc void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha8d2f1b680fe955bE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @"_ZN4core3ptr50drop_in_place$LT$$RF$alloc..vec..Vec$LT$u8$GT$$GT$17h628487f5c9fc8300E"(ptr nocapture readnone align 8 %_1) unnamed_addr #5 {
start:
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr51drop_in_place$LT$std..thread..scoped..ScopeData$GT$17h1820c3a2e0ec760bE"(ptr align 8 %_1) unnamed_addr #3 {
start:
  tail call fastcc void @"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h2c6ec9e6fc717a2aE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h3e7af746348650feE"(ptr nocapture readonly align 8 %_1) unnamed_addr #0 {
start:
  tail call fastcc void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h223cb3c30ed4c64dE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr56drop_in_place$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$17h32709a0756d63af1E"(ptr align 8 %_1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  invoke fastcc void @"_ZN70_$LT$std..thread..Packet$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc16652ae580df434E"(ptr align 8 %_1)
          to label %bb6 unwind label %bb4

bb4:                                              ; preds = %start
  %0 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h61e33117cfa09a39E"(ptr align 8 %_1) #30
          to label %bb3 unwind label %terminate

bb6:                                              ; preds = %start
  invoke fastcc void @"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h61e33117cfa09a39E"(ptr align 8 %_1)
          to label %bb5 unwind label %cleanup1

bb3:                                              ; preds = %cleanup1, %bb4
  %.pn = phi { ptr, i32 } [ %2, %cleanup1 ], [ %0, %bb4 ]
  %1 = getelementptr inbounds %"std::thread::Packet<'_, ()>", ptr %_1, i64 0, i32 1
  invoke fastcc void @"_ZN4core3ptr188drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$$GT$17hc066ad2544dc59e4E"(ptr nonnull align 8 %1) #30
          to label %bb1 unwind label %terminate

cleanup1:                                         ; preds = %bb6
  %2 = landingpad { ptr, i32 }
          cleanup
  br label %bb3

bb5:                                              ; preds = %bb6
  %3 = getelementptr inbounds %"std::thread::Packet<'_, ()>", ptr %_1, i64 0, i32 1
  tail call fastcc void @"_ZN4core3ptr188drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$$GT$17hc066ad2544dc59e4E"(ptr nonnull align 8 %3)
  ret void

terminate:                                        ; preds = %bb3, %bb4
  %4 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  tail call void @_ZN4core9panicking16panic_in_cleanup17h55eb1d85cadde1a1E() #26
  unreachable

bb1:                                              ; preds = %bb3
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h6afab08150e0769aE"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 {
start:
  tail call fastcc void @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6e3caf840b6db1e3E"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17he65f436307b0ac4cE"(ptr nocapture readonly align 8 %_1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb3:
  tail call fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd0d59bc9aab79199E"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr62drop_in_place$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$GT$17h577a7553141d98a8E"(ptr align 8 %_1) unnamed_addr #0 {
start:
  tail call fastcc void @"_ZN4core3ptr48drop_in_place$LT$alloc..sync..Arc$LT$i32$GT$$GT$17h49c1313db23cef8bE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr62drop_in_place$LT$std_rs..main..$u7b$$u7b$closure$u7d$$u7d$$GT$17hbf08f5cc563cda41E"(ptr align 8 %_1) unnamed_addr #0 {
start:
  tail call fastcc void @"_ZN4core3ptr48drop_in_place$LT$alloc..sync..Arc$LT$i32$GT$$GT$17h49c1313db23cef8bE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$17h424ed1b38eeabac4E"(ptr align 8 %_1) unnamed_addr #3 {
start:
  tail call fastcc void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb5edb9bdcb6da71fE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h69065f7908ef8309E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_6 = load ptr, ptr %_1, align 8, !noundef !6
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17hd09c5142fbb5f304E"(ptr align 8 %_6)
          to label %bb3 unwind label %bb4

bb4:                                              ; preds = %start
  %0 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h55ebe542a3a25820E"(ptr nonnull align 8 %_1) #30
  br label %bb1

bb3:                                              ; preds = %start
  tail call fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h55ebe542a3a25820E"(ptr nonnull align 8 %_1)
  ret void

bb1:                                              ; preds = %bb4
  resume { ptr, i32 } %0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h232dc8a184373168E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 {
start:
  %0 = load i64, ptr %_1, align 8, !range !12, !noundef !6
  %1 = icmp eq i64 %0, -9223372036854775808
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  tail call fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd51a3e7b93a66c12E"(ptr nonnull align 8 %_1)
  br label %bb1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr75drop_in_place$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$17h7cff8bb86d2b0909E"(ptr align 8 %_1) unnamed_addr #3 {
start:
  tail call fastcc void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he551b3d864d772f2E"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17hee8273a2ab352c6cE"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 {
start:
  %0 = load ptr, ptr %_1, align 8, !noundef !6
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  tail call fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17h51517376bb8a85dcE"(ptr nonnull align 8 %_1)
  br label %bb1
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Weak$LT$i32$C$$RF$alloc..alloc..Global$GT$$GT$17h7fb348fc466ebebbE"(ptr nocapture readonly align 8 %_1) unnamed_addr #0 {
start:
  tail call fastcc void @"_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h30665c0c4e849563E"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr76drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17ha8e6637c7e428f97E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 {
start:
  tail call fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h67eaa829cecc3904E"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr77drop_in_place$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h3a21f29314a1a5c5E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 {
start:
  %0 = getelementptr inbounds %"std::sync::mutex::Mutex<alloc::vec::Vec<u8>>", ptr %_1, i64 0, i32 3
  tail call fastcc void @"_ZN4core3ptr76drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17ha8e6637c7e428f97E"(ptr nonnull align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hd134fefae5dee978E"(ptr align 8 %_1) unnamed_addr #3 {
start:
  tail call fastcc void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd113f43ed5560a75E"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17he054d62b5f6e860aE"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 {
start:
  %0 = load ptr, ptr %_1, align 8, !noundef !6
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  tail call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h103bcfb69fa8988bE"(ptr nonnull align 8 %_1)
  br label %bb1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr85drop_in_place$LT$alloc..sync..ArcInner$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h515b8bc09805af84E"(ptr align 8 %_1) unnamed_addr #3 {
start:
  %0 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %_1, i64 0, i32 2
  tail call fastcc void @"_ZN4core3ptr56drop_in_place$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$17h32709a0756d63af1E"(ptr nonnull align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr85drop_in_place$LT$core..pin..Pin$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$$GT$17ha2d6e43bef8f301dE"(ptr align 8 %_1) unnamed_addr #3 {
start:
  tail call fastcc void @"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$17h424ed1b38eeabac4E"(ptr align 8 %_1)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hbf46b36e455c1aebE"(ptr nocapture readnone align 8 %_1) unnamed_addr #5 {
start:
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17h7b70e56cb1c4ddf0E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_6.0 = load ptr, ptr %_1, align 8, !noundef !6
  %0 = getelementptr inbounds { ptr, ptr }, ptr %_1, i64 0, i32 1
  %_6.1 = load ptr, ptr %0, align 8, !nonnull !6, !align !10, !noundef !6
  %1 = load ptr, ptr %_6.1, align 8, !invariant.load !6, !nonnull !6
  invoke void %1(ptr align 1 %_6.0)
          to label %bb3 unwind label %bb4

bb4:                                              ; preds = %start
  %2 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h53e53171ca1304cdE"(ptr nonnull align 8 %_1) #30
  br label %bb1

bb3:                                              ; preds = %start
  tail call fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h53e53171ca1304cdE"(ptr nonnull align 8 %_1)
  ret void

bb1:                                              ; preds = %bb4
  resume { ptr, i32 } %2
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Inner$C$$RF$alloc..alloc..Global$GT$$GT$17h1f8f95091fd7296cE"(ptr nocapture readonly align 8 %_1) unnamed_addr #0 {
start:
  tail call fastcc void @"_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h20378ac887218641E"(ptr align 8 %_1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr92drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..sys..unix..stdio..Stderr$GT$$GT$17ha962f8b841f1e395E"(ptr nocapture readonly align 8 %_1) unnamed_addr #3 {
start:
  %0 = getelementptr inbounds { ptr, ptr }, ptr %_1, i64 0, i32 1
  tail call fastcc void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17he054d62b5f6e860aE"(ptr nonnull align 8 %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_ZN4core4char7methods15encode_utf8_raw17h25bdbd3ca93d1401E(i32 %0, ptr align 1 %dst.0, i64 %dst.1) unnamed_addr #1 {
start:
  %_70 = alloca i64, align 8
  %_63 = alloca [3 x { ptr, ptr }], align 8
  %_59 = alloca %"core::fmt::Arguments<'_>", align 8
  %len = alloca i64, align 8
  %code = alloca i32, align 4
  store i32 %0, ptr %code, align 4
  %_73 = icmp ult i32 %0, 128
  br i1 %_73, label %bb1, label %bb13

bb13:                                             ; preds = %start
  %_74 = icmp ult i32 %0, 2048
  br i1 %_74, label %bb3, label %bb15

bb15:                                             ; preds = %bb13
  %_75 = icmp ult i32 %0, 65536
  br i1 %_75, label %bb4, label %bb5

bb2:                                              ; preds = %bb5, %bb4, %bb3, %bb1
  store i64 %dst.1, ptr %_70, align 8
  store ptr %len, ptr %_63, align 8
  %1 = getelementptr inbounds { ptr, ptr }, ptr %_63, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h54d4af2b1bb3d966E", ptr %1, align 8
  %2 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_63, i64 0, i64 1
  store ptr %code, ptr %2, align 8
  %3 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_63, i64 0, i64 1, i32 1
  store ptr @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h457ee4312ccc84c1E", ptr %3, align 8
  %4 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_63, i64 0, i64 2
  store ptr %_70, ptr %4, align 8
  %5 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_63, i64 0, i64 2, i32 1
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h54d4af2b1bb3d966E", ptr %5, align 8
  call fastcc void @_ZN4core3fmt9Arguments6new_v117h7a79c17f8f6b250dE(ptr nonnull sret(%"core::fmt::Arguments<'_>") align 8 %_59, ptr nonnull align 8 @alloc_d51214f097f67314513b76e97e13aa6b, i64 3, ptr nonnull align 8 %_63, i64 3)
  call void @_ZN4core9panicking9panic_fmt17h784f20a50eaab275E(ptr nonnull align 8 %_59, ptr nonnull align 8 @alloc_15e56ccbce15945ea86b75a3c6d59ec8) #28
  unreachable

bb1:                                              ; preds = %start
  store i64 1, ptr %len, align 8
  %_7.not = icmp eq i64 %dst.1, 0
  br i1 %_7.not, label %bb2, label %bb6

bb3:                                              ; preds = %bb13
  store i64 2, ptr %len, align 8
  %_9 = icmp ugt i64 %dst.1, 1
  br i1 %_9, label %bb7, label %bb2

bb4:                                              ; preds = %bb15
  store i64 3, ptr %len, align 8
  %_11 = icmp ugt i64 %dst.1, 2
  br i1 %_11, label %bb8, label %bb2

bb5:                                              ; preds = %bb15
  store i64 4, ptr %len, align 8
  %_13 = icmp ugt i64 %dst.1, 3
  br i1 %_13, label %bb9, label %bb2

bb6:                                              ; preds = %bb1
  %6 = trunc i32 %0 to i8
  store i8 %6, ptr %dst.0, align 1
  br label %bb11

bb11:                                             ; preds = %bb9, %bb8, %bb7, %bb6
  %index = phi i64 [ 4, %bb9 ], [ 3, %bb8 ], [ 2, %bb7 ], [ 1, %bb6 ]
  %7 = tail call fastcc { ptr, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2b5971e7db99089dE"(i64 0, i64 %index, ptr nonnull align 1 %dst.0, i64 %dst.1, ptr nonnull align 8 @alloc_6a0114d2661e84bef3991f7200e47da8)
  ret { ptr, i64 } %7

bb7:                                              ; preds = %bb3
  %_20 = lshr i32 %0, 6
  %8 = trunc i32 %_20 to i8
  %_18 = and i8 %8, 31
  %9 = or i8 %_18, -64
  store i8 %9, ptr %dst.0, align 1
  %10 = trunc i32 %0 to i8
  %_22 = and i8 %10, 63
  %11 = getelementptr inbounds [0 x i8], ptr %dst.0, i64 0, i64 1
  %12 = or i8 %_22, -128
  store i8 %12, ptr %11, align 1
  br label %bb11

bb8:                                              ; preds = %bb4
  %_30 = lshr i32 %0, 12
  %13 = trunc i32 %_30 to i8
  %_28 = and i8 %13, 15
  %14 = or i8 %_28, -32
  store i8 %14, ptr %dst.0, align 1
  %_34 = lshr i32 %0, 6
  %15 = trunc i32 %_34 to i8
  %_32 = and i8 %15, 63
  %16 = getelementptr inbounds [0 x i8], ptr %dst.0, i64 0, i64 1
  %17 = or i8 %_32, -128
  store i8 %17, ptr %16, align 1
  %18 = trunc i32 %0 to i8
  %_36 = and i8 %18, 63
  %19 = getelementptr inbounds [0 x i8], ptr %dst.0, i64 0, i64 2
  %20 = or i8 %_36, -128
  store i8 %20, ptr %19, align 1
  br label %bb11

bb9:                                              ; preds = %bb5
  %_45 = lshr i32 %0, 18
  %21 = trunc i32 %_45 to i8
  %_43 = and i8 %21, 7
  %22 = or i8 %_43, -16
  store i8 %22, ptr %dst.0, align 1
  %_49 = lshr i32 %0, 12
  %23 = trunc i32 %_49 to i8
  %_47 = and i8 %23, 63
  %24 = getelementptr inbounds [0 x i8], ptr %dst.0, i64 0, i64 1
  %25 = or i8 %_47, -128
  store i8 %25, ptr %24, align 1
  %_53 = lshr i32 %0, 6
  %26 = trunc i32 %_53 to i8
  %_51 = and i8 %26, 63
  %27 = getelementptr inbounds [0 x i8], ptr %dst.0, i64 0, i64 2
  %28 = or i8 %_51, -128
  store i8 %28, ptr %27, align 1
  %29 = trunc i32 %0 to i8
  %_55 = and i8 %29, 63
  %30 = getelementptr inbounds [0 x i8], ptr %dst.0, i64 0, i64 3
  %31 = or i8 %_55, -128
  store i8 %31, ptr %30, align 1
  br label %bb11
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc i64 @_ZN4core4sync6atomic11atomic_load17h9d41e3d1e66ad2a8E(ptr nocapture readonly %dst, i8 %0) unnamed_addr #1 {
start:
  %_8 = alloca %"core::fmt::Arguments<'_>", align 8
  %_5 = alloca %"core::fmt::Arguments<'_>", align 8
  switch i8 %0, label %bb2 [
    i8 0, label %bb3
    i8 1, label %bb13
    i8 2, label %bb4
    i8 3, label %bb10
    i8 4, label %bb5
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %1 = load atomic i64, ptr %dst monotonic, align 8
  br label %bb7

bb4:                                              ; preds = %start
  %2 = load atomic i64, ptr %dst acquire, align 8
  br label %bb7

bb5:                                              ; preds = %start
  %3 = load atomic i64, ptr %dst seq_cst, align 8
  br label %bb7

bb7:                                              ; preds = %bb5, %bb4, %bb3
  %_0.0 = phi i64 [ %3, %bb5 ], [ %2, %bb4 ], [ %1, %bb3 ]
  ret i64 %_0.0

bb13:                                             ; preds = %start
  store ptr @alloc_cf8f91dd8bc9347b20052f6ccc905cd7, ptr %_5, align 8
  %4 = getelementptr inbounds { ptr, i64 }, ptr %_5, i64 0, i32 1
  store i64 1, ptr %4, align 8
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5, i64 0, i32 2
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5, i64 0, i32 1
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %6, align 8
  %7 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5, i64 0, i32 1, i32 1
  store i64 0, ptr %7, align 8
  call void @_ZN4core9panicking9panic_fmt17h784f20a50eaab275E(ptr nonnull align 8 %_5, ptr nonnull align 8 @alloc_4c32346d01eeb3c0619dc95e0468893e) #28
  unreachable

bb10:                                             ; preds = %start
  store ptr @alloc_7e8e9a1d4bc7d0bbec692f0a50681e22, ptr %_8, align 8
  %8 = getelementptr inbounds { ptr, i64 }, ptr %_8, i64 0, i32 1
  store i64 1, ptr %8, align 8
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_8, i64 0, i32 2
  store ptr null, ptr %9, align 8
  %10 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_8, i64 0, i32 1
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %10, align 8
  %11 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_8, i64 0, i32 1, i32 1
  store i64 0, ptr %11, align 8
  call void @_ZN4core9panicking9panic_fmt17h784f20a50eaab275E(ptr nonnull align 8 %_8, ptr nonnull align 8 @alloc_93c532d79ae5a1fe4b07989efd8a35e4) #28
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4sync6atomic12atomic_store17ha019432af0cdded9E(ptr nocapture writeonly %dst, i64 %val, i8 %0) unnamed_addr #1 {
start:
  %_9 = alloca %"core::fmt::Arguments<'_>", align 8
  %_6 = alloca %"core::fmt::Arguments<'_>", align 8
  switch i8 %0, label %bb2 [
    i8 0, label %bb3
    i8 1, label %bb4
    i8 2, label %bb13
    i8 3, label %bb10
    i8 4, label %bb5
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  store atomic i64 %val, ptr %dst monotonic, align 8
  br label %bb7

bb4:                                              ; preds = %start
  store atomic i64 %val, ptr %dst release, align 8
  br label %bb7

bb5:                                              ; preds = %start
  store atomic i64 %val, ptr %dst seq_cst, align 8
  br label %bb7

bb7:                                              ; preds = %bb5, %bb4, %bb3
  ret void

bb13:                                             ; preds = %start
  store ptr @alloc_47c752ba42fbab56d43a37cfd56e4899, ptr %_6, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %_6, i64 0, i32 1
  store i64 1, ptr %1, align 8
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_6, i64 0, i32 2
  store ptr null, ptr %2, align 8
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_6, i64 0, i32 1
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %3, align 8
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_6, i64 0, i32 1, i32 1
  store i64 0, ptr %4, align 8
  call void @_ZN4core9panicking9panic_fmt17h784f20a50eaab275E(ptr nonnull align 8 %_6, ptr nonnull align 8 @alloc_cb63d255000c7e9fed7db8f9c4b60326) #28
  unreachable

bb10:                                             ; preds = %start
  store ptr @alloc_f8dbac861f87e25e445761cc4af66745, ptr %_9, align 8
  %5 = getelementptr inbounds { ptr, i64 }, ptr %_9, i64 0, i32 1
  store i64 1, ptr %5, align 8
  %6 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_9, i64 0, i32 2
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_9, i64 0, i32 1
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %7, align 8
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_9, i64 0, i32 1, i32 1
  store i64 0, ptr %8, align 8
  call void @_ZN4core9panicking9panic_fmt17h784f20a50eaab275E(ptr nonnull align 8 %_9, ptr nonnull align 8 @alloc_2061bd2e099bb1065f735aed396f79a4) #28
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, i64 } @_ZN4core4sync6atomic23atomic_compare_exchange17h9a0f0c62ac6959feE(ptr nocapture %dst, i64 %old, i64 %new, i8 %0, i8 %1) unnamed_addr #1 {
start:
  %_20 = alloca %"core::fmt::Arguments<'_>", align 8
  %_17 = alloca %"core::fmt::Arguments<'_>", align 8
  switch i8 %0, label %bb7 [
    i8 0, label %bb1
    i8 1, label %bb3
    i8 2, label %bb4
    i8 3, label %bb5
    i8 4, label %bb6
  ]

bb7:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  switch i8 %1, label %bb34 [
    i8 0, label %bb9
    i8 2, label %bb10
    i8 4, label %bb11
    i8 1, label %bb31
  ]

bb3:                                              ; preds = %start
  switch i8 %1, label %bb34 [
    i8 0, label %bb15
    i8 2, label %bb16
    i8 4, label %bb17
    i8 1, label %bb31
  ]

bb4:                                              ; preds = %start
  switch i8 %1, label %bb34 [
    i8 0, label %bb12
    i8 2, label %bb13
    i8 4, label %bb14
    i8 1, label %bb31
  ]

bb5:                                              ; preds = %start
  switch i8 %1, label %bb34 [
    i8 0, label %bb18
    i8 2, label %bb19
    i8 4, label %bb20
    i8 1, label %bb31
  ]

bb6:                                              ; preds = %start
  switch i8 %1, label %bb34 [
    i8 0, label %bb21
    i8 2, label %bb22
    i8 4, label %bb23
    i8 1, label %bb31
  ]

bb9:                                              ; preds = %bb1
  %2 = cmpxchg ptr %dst, i64 %old, i64 %new monotonic monotonic, align 8
  br label %bb25

bb10:                                             ; preds = %bb1
  %3 = cmpxchg ptr %dst, i64 %old, i64 %new monotonic acquire, align 8
  br label %bb25

bb11:                                             ; preds = %bb1
  %4 = cmpxchg ptr %dst, i64 %old, i64 %new monotonic seq_cst, align 8
  br label %bb25

bb25:                                             ; preds = %bb23, %bb22, %bb21, %bb20, %bb19, %bb18, %bb14, %bb13, %bb12, %bb17, %bb16, %bb15, %bb11, %bb10, %bb9
  %.pn = phi { i64, i1 } [ %16, %bb23 ], [ %15, %bb22 ], [ %14, %bb21 ], [ %13, %bb20 ], [ %12, %bb19 ], [ %11, %bb18 ], [ %10, %bb14 ], [ %9, %bb13 ], [ %8, %bb12 ], [ %7, %bb17 ], [ %6, %bb16 ], [ %5, %bb15 ], [ %4, %bb11 ], [ %3, %bb10 ], [ %2, %bb9 ]
  %.in = extractvalue { i64, i1 } %.pn, 1
  br i1 %.in, label %bb26, label %bb27

bb15:                                             ; preds = %bb3
  %5 = cmpxchg ptr %dst, i64 %old, i64 %new release monotonic, align 8
  br label %bb25

bb16:                                             ; preds = %bb3
  %6 = cmpxchg ptr %dst, i64 %old, i64 %new release acquire, align 8
  br label %bb25

bb17:                                             ; preds = %bb3
  %7 = cmpxchg ptr %dst, i64 %old, i64 %new release seq_cst, align 8
  br label %bb25

bb12:                                             ; preds = %bb4
  %8 = cmpxchg ptr %dst, i64 %old, i64 %new acquire monotonic, align 8
  br label %bb25

bb13:                                             ; preds = %bb4
  %9 = cmpxchg ptr %dst, i64 %old, i64 %new acquire acquire, align 8
  br label %bb25

bb14:                                             ; preds = %bb4
  %10 = cmpxchg ptr %dst, i64 %old, i64 %new acquire seq_cst, align 8
  br label %bb25

bb18:                                             ; preds = %bb5
  %11 = cmpxchg ptr %dst, i64 %old, i64 %new acq_rel monotonic, align 8
  br label %bb25

bb19:                                             ; preds = %bb5
  %12 = cmpxchg ptr %dst, i64 %old, i64 %new acq_rel acquire, align 8
  br label %bb25

bb20:                                             ; preds = %bb5
  %13 = cmpxchg ptr %dst, i64 %old, i64 %new acq_rel seq_cst, align 8
  br label %bb25

bb21:                                             ; preds = %bb6
  %14 = cmpxchg ptr %dst, i64 %old, i64 %new seq_cst monotonic, align 8
  br label %bb25

bb22:                                             ; preds = %bb6
  %15 = cmpxchg ptr %dst, i64 %old, i64 %new seq_cst acquire, align 8
  br label %bb25

bb23:                                             ; preds = %bb6
  %16 = cmpxchg ptr %dst, i64 %old, i64 %new seq_cst seq_cst, align 8
  br label %bb25

bb27:                                             ; preds = %bb25
  br label %bb28

bb26:                                             ; preds = %bb25
  br label %bb28

bb28:                                             ; preds = %bb26, %bb27
  %storemerge = phi i64 [ 1, %bb27 ], [ 0, %bb26 ]
  %17 = extractvalue { i64, i1 } %.pn, 0
  %18 = insertvalue { i64, i64 } poison, i64 %storemerge, 0
  %19 = insertvalue { i64, i64 } %18, i64 %17, 1
  ret { i64, i64 } %19

bb31:                                             ; preds = %bb6, %bb5, %bb4, %bb3, %bb1
  store ptr @alloc_04ab601c54c6e0a22ff11d72dc7f4511, ptr %_20, align 8
  %20 = getelementptr inbounds { ptr, i64 }, ptr %_20, i64 0, i32 1
  store i64 1, ptr %20, align 8
  %21 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_20, i64 0, i32 2
  store ptr null, ptr %21, align 8
  %22 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_20, i64 0, i32 1
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %22, align 8
  %23 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_20, i64 0, i32 1, i32 1
  store i64 0, ptr %23, align 8
  call void @_ZN4core9panicking9panic_fmt17h784f20a50eaab275E(ptr nonnull align 8 %_20, ptr nonnull align 8 @alloc_826fa8dc4bf9d95988bea67cf29fdc26) #28
  unreachable

bb34:                                             ; preds = %bb6, %bb5, %bb4, %bb3, %bb1
  store ptr @alloc_dd7d8f77c173bf31726eae321f955bec, ptr %_17, align 8
  %24 = getelementptr inbounds { ptr, i64 }, ptr %_17, i64 0, i32 1
  store i64 1, ptr %24, align 8
  %25 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_17, i64 0, i32 2
  store ptr null, ptr %25, align 8
  %26 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_17, i64 0, i32 1
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %26, align 8
  %27 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_17, i64 0, i32 1, i32 1
  store i64 0, ptr %27, align 8
  call void @_ZN4core9panicking9panic_fmt17h784f20a50eaab275E(ptr nonnull align 8 %_17, ptr nonnull align 8 @alloc_69680bf1a9adc0c1931d0dbd2195eaef) #28
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, i64 } @_ZN4core5slice6memchr12memchr_naive17hc619571ad702d71cE(i8 %x, ptr nocapture readonly align 1 %text.0, i64 %text.1) unnamed_addr #1 {
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
  %_7 = icmp eq i8 %_8, %x
  br i1 %_7, label %bb4, label %bb5

panic:                                            ; preds = %bb2
  tail call void @_ZN4core9panicking18panic_bounds_check17h8331054858f0bf20E(i64 %i.04, i64 %text.1, ptr nonnull align 8 @alloc_5bc1b291dae9b898876d4e4c4a53a140) #28
  unreachable

bb5:                                              ; preds = %bb3
  %4 = add nuw i64 %i.04, 1
  %exitcond.not = icmp eq i64 %4, %text.1
  br i1 %exitcond.not, label %bb7, label %bb2

bb4:                                              ; preds = %bb3
  br label %bb7
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h94bd910c9ff420daE"(ptr nocapture readonly align 8 %self, ptr align 1 %msg.0, i64 %msg.1, ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %e = alloca %"alloc::ffi::c_str::NulError", align 8
  %1 = load i64, ptr %self, align 8, !range !12, !noundef !6
  %2 = icmp eq i64 %1, -9223372036854775808
  br i1 %2, label %bb3, label %bb1

bb3:                                              ; preds = %start
  %3 = getelementptr inbounds %"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>::Ok", ptr %self, i64 0, i32 1
  %t.0 = load ptr, ptr %3, align 8, !nonnull !6, !align !11, !noundef !6
  %4 = getelementptr inbounds %"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>::Ok", ptr %self, i64 0, i32 1, i32 1
  %t.1 = load i64, ptr %4, align 8, !noundef !6
  %5 = insertvalue { ptr, i64 } poison, ptr %t.0, 0
  %6 = insertvalue { ptr, i64 } %5, i64 %t.1, 1
  ret { ptr, i64 } %6

bb1:                                              ; preds = %start
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %e, ptr noundef nonnull align 8 dereferenceable(32) %self, i64 32, i1 false)
  invoke void @_ZN4core6result13unwrap_failed17h03d8a5018196e1cdE(ptr align 1 %msg.0, i64 %msg.1, ptr nonnull align 1 %e, ptr nonnull align 8 @vtable.5, ptr align 8 %0) #28
          to label %unreachable unwind label %bb4

bb4:                                              ; preds = %bb1
  %7 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr48drop_in_place$LT$alloc..ffi..c_str..NulError$GT$17hbb731318acbda964E"(ptr nonnull align 8 %e) #30
          to label %bb5 unwind label %terminate

unreachable:                                      ; preds = %bb1
  unreachable

terminate:                                        ; preds = %bb4
  %8 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h55eb1d85cadde1a1E() #26
  unreachable

bb5:                                              ; preds = %bb4
  resume { ptr, i32 } %7
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hbf0c28707c71ab2aE"(ptr nocapture writeonly sret(%"std::thread::JoinHandle<()>") align 8 %t, ptr nocapture readonly align 8 %self, ptr align 1 %msg.0, i64 %msg.1, ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  invoke void @_ZN4core6result13unwrap_failed17h03d8a5018196e1cdE(ptr align 1 %msg.0, i64 %msg.1, ptr nonnull align 1 %e, ptr nonnull align 8 @vtable.6, ptr align 8 %0) #28
          to label %unreachable unwind label %bb4

bb4:                                              ; preds = %bb1
  %4 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h103bcfb69fa8988bE"(ptr nonnull align 8 %e) #30
          to label %bb5 unwind label %terminate

unreachable:                                      ; preds = %bb1
  unreachable

terminate:                                        ; preds = %bb4
  %5 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h55eb1d85cadde1a1E() #26
  unreachable

bb5:                                              ; preds = %bb4
  resume { ptr, i32 } %4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h3fc686120212960dE"(ptr align 1 %0, ptr %1, ptr align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %e = alloca { ptr, ptr }, align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %bb3, label %bb1

bb3:                                              ; preds = %start
  ret void

bb1:                                              ; preds = %start
  store ptr %0, ptr %e, align 8
  %4 = getelementptr inbounds { ptr, ptr }, ptr %e, i64 0, i32 1
  store ptr %1, ptr %4, align 8
  invoke void @_ZN4core6result13unwrap_failed17h03d8a5018196e1cdE(ptr nonnull align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 43, ptr nonnull align 1 %e, ptr nonnull align 8 @vtable.7, ptr align 8 %2) #28
          to label %unreachable unwind label %bb4

bb4:                                              ; preds = %bb1
  %5 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17h7b70e56cb1c4ddf0E"(ptr nonnull align 8 %e) #30
          to label %bb5 unwind label %terminate

unreachable:                                      ; preds = %bb1
  unreachable

terminate:                                        ; preds = %bb4
  %6 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h55eb1d85cadde1a1E() #26
  unreachable

bb5:                                              ; preds = %bb4
  resume { ptr, i32 } %5
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hded9a98581180326E"(ptr nocapture writeonly sret(%"alloc::vec::Vec<u8>") align 8 %_0, ptr nocapture readonly align 8 %self) unnamed_addr #9 {
start:
  tail call fastcc void @"_ZN5alloc6string104_$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..vec..Vec$LT$u8$GT$$GT$4from17h97cc30efb500d40fE"(ptr sret(%"alloc::vec::Vec<u8>") align 8 %_0, ptr align 8 %self)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc i8 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hfc624ddf19bc5a02E"() unnamed_addr #5 {
start:
  ret i8 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc ptr @"_ZN5alloc4sync12Arc$LT$T$GT$3new17h618e67e83dd49ccdE"(i32 %data) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_3 = alloca %"alloc::sync::ArcInner<i32>", align 8
  store i64 1, ptr %_3, align 8
  %0 = getelementptr inbounds %"alloc::sync::ArcInner<i32>", ptr %_3, i64 0, i32 1
  store i64 1, ptr %0, align 8
  %1 = getelementptr inbounds %"alloc::sync::ArcInner<i32>", ptr %_3, i64 0, i32 2
  store i32 %data, ptr %1, align 8
  %_4.i = invoke fastcc ptr @_ZN5alloc5alloc15exchange_malloc17hddb0a622925ad211E(i64 24, i64 8)
          to label %bb1 unwind label %cleanup.i

cleanup.i:                                        ; preds = %start
  %2 = landingpad { ptr, i32 }
          cleanup
  resume { ptr, i32 } %2

bb1:                                              ; preds = %start
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_4.i, ptr noundef nonnull align 8 dereferenceable(24) %_3, i64 24, i1 false)
  ret ptr %_4.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc ptr @"_ZN5alloc4sync12Arc$LT$T$GT$3new17h81df542b099b2befE"(ptr nocapture readonly align 8 %data) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_6 = alloca %"std::thread::Packet<'_, ()>", align 8
  %_3 = alloca %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %_6, ptr noundef nonnull align 8 dereferenceable(32) %data, i64 32, i1 false)
  store i64 1, ptr %_3, align 8
  %0 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %_3, i64 0, i32 1
  store i64 1, ptr %0, align 8
  %1 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %_3, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %_6, i64 32, i1 false)
  %_4.i = invoke fastcc ptr @_ZN5alloc5alloc15exchange_malloc17hddb0a622925ad211E(i64 48, i64 8)
          to label %bb1 unwind label %cleanup.i

cleanup.i:                                        ; preds = %start
  %2 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr85drop_in_place$LT$alloc..sync..ArcInner$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h515b8bc09805af84E"(ptr nonnull align 8 %_3) #30
          to label %bb3.i unwind label %terminate.i

terminate.i:                                      ; preds = %cleanup.i
  %3 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h55eb1d85cadde1a1E() #26
  unreachable

bb3.i:                                            ; preds = %cleanup.i
  resume { ptr, i32 } %2

bb1:                                              ; preds = %start
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %_4.i, ptr noundef nonnull align 8 dereferenceable(48) %_3, i64 48, i1 false)
  ret ptr %_4.i
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3ec9eab3d39f8441E"(ptr align 8 %self) unnamed_addr #10 {
start:
  %_x = alloca { ptr, ptr }, align 8
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_6 = getelementptr i8, ptr %self, i64 8
  store ptr %self1, ptr %_x, align 8
  %0 = getelementptr inbounds { ptr, ptr }, ptr %_x, i64 0, i32 1
  store ptr %_6, ptr %0, align 8
  call fastcc void @"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Weak$LT$i32$C$$RF$alloc..alloc..Global$GT$$GT$17h7fb348fc466ebebbE"(ptr nonnull align 8 %_x)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h6d15e07d30a65f14E"(ptr align 8 %self) unnamed_addr #2 {
start:
  %_x = alloca { ptr, ptr }, align 8
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_3 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %self1, i64 0, i32 2
  tail call fastcc void @"_ZN4core3ptr56drop_in_place$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$17h32709a0756d63af1E"(ptr nonnull align 8 %_3)
  %_5 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_6 = getelementptr i8, ptr %self, i64 8
  store ptr %_5, ptr %_x, align 8
  %0 = getelementptr inbounds { ptr, ptr }, ptr %_x, i64 0, i32 1
  store ptr %_6, ptr %0, align 8
  call fastcc void @"_ZN4core3ptr108drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$$LP$$RP$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h1b3a6f04939ce547E"(ptr nonnull align 8 %_x)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hdd2c8111af086fafE"(ptr align 8 %self) unnamed_addr #2 {
start:
  %_x = alloca { ptr, ptr }, align 8
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_3 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::scoped::ScopeData>", ptr %self1, i64 0, i32 2
  tail call fastcc void @"_ZN4core3ptr51drop_in_place$LT$std..thread..scoped..ScopeData$GT$17h1820c3a2e0ec760bE"(ptr nonnull align 8 %_3)
  %_5 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_6 = getelementptr i8, ptr %self, i64 8
  store ptr %_5, ptr %_x, align 8
  %0 = getelementptr inbounds { ptr, ptr }, ptr %_x, i64 0, i32 1
  store ptr %_6, ptr %0, align 8
  call fastcc void @"_ZN4core3ptr103drop_in_place$LT$alloc..sync..Weak$LT$std..thread..scoped..ScopeData$C$$RF$alloc..alloc..Global$GT$$GT$17h7f40a3c35568f140E"(ptr nonnull align 8 %_x)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he798430f543e7163E"(ptr align 8 %self) unnamed_addr #2 {
start:
  %_x = alloca { ptr, ptr }, align 8
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_3 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Inner>", ptr %self1, i64 0, i32 2
  tail call fastcc void @"_ZN4core3ptr39drop_in_place$LT$std..thread..Inner$GT$17h112dabf7034eb68aE"(ptr nonnull align 8 %_3)
  %_5 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_6 = getelementptr i8, ptr %self, i64 8
  store ptr %_5, ptr %_x, align 8
  %0 = getelementptr inbounds { ptr, ptr }, ptr %_x, i64 0, i32 1
  store ptr %_6, ptr %0, align 8
  call fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Inner$C$$RF$alloc..alloc..Global$GT$$GT$17h1f8f95091fd7296cE"(ptr nonnull align 8 %_x)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf31df6bb71bfa5dcE"(ptr align 8 %self) unnamed_addr #2 {
start:
  %_x = alloca { ptr, ptr }, align 8
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_3 = getelementptr inbounds %"alloc::sync::ArcInner<std::sync::mutex::Mutex<alloc::vec::Vec<u8>>>", ptr %self1, i64 0, i32 2
  tail call fastcc void @"_ZN4core3ptr77drop_in_place$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h3a21f29314a1a5c5E"(ptr nonnull align 8 %_3)
  %_5 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_6 = getelementptr i8, ptr %self, i64 8
  store ptr %_5, ptr %_x, align 8
  %0 = getelementptr inbounds { ptr, ptr }, ptr %_x, i64 0, i32 1
  store ptr %_6, ptr %0, align 8
  call fastcc void @"_ZN4core3ptr129drop_in_place$LT$alloc..sync..Weak$LT$std..sync..mutex..Mutex$LT$alloc..vec..Vec$LT$u8$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h6b50de3c5f2fb4a9E"(ptr nonnull align 8 %_x)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc zeroext i1 @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9is_unique17h46e78195175c1a77E"(ptr nocapture readonly align 8 %self) unnamed_addr #3 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_17 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %self1, i64 0, i32 1
  %0 = tail call fastcc { i64, i64 } @_ZN4core4sync6atomic23atomic_compare_exchange17h9a0f0c62ac6959feE(ptr nonnull %_17, i64 1, i64 -1, i8 2, i8 0)
  %.elt = extractvalue { i64, i64 } %0, 0
  %1 = icmp eq i64 %.elt, 0
  br i1 %1, label %bb1, label %bb3

bb1:                                              ; preds = %start
  %self4 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_6 = tail call fastcc i64 @_ZN4core4sync6atomic11atomic_load17h9d41e3d1e66ad2a8E(ptr nonnull %self4, i8 2)
  %unique = icmp eq i64 %_6, 1
  %self5 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_38 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %self5, i64 0, i32 1
  tail call fastcc void @_ZN4core4sync6atomic12atomic_store17ha019432af0cdded9E(ptr nonnull %_38, i64 1, i8 1)
  br label %bb3

bb3:                                              ; preds = %start, %bb1
  %_0.0 = phi i1 [ %unique, %bb1 ], [ false, %start ]
  ret i1 %_0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc ptr @_ZN5alloc5alloc15exchange_malloc17hddb0a622925ad211E(i64 %size, i64 %align) unnamed_addr #1 {
start:
  %0 = tail call fastcc { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17ha643b9aa93c19ba8E(ptr nonnull align 1 @alloc_513570631223a12912d85da2bec3b15a, i64 %align, i64 %size, i1 zeroext false)
  %.elt = extractvalue { ptr, i64 } %0, 0
  %.not = icmp eq ptr %.elt, null
  br i1 %.not, label %bb1, label %bb3

bb3:                                              ; preds = %start
  ret ptr %.elt

bb1:                                              ; preds = %start
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h81706c48453a6249E(i64 %align, i64 %size) #28
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17ha643b9aa93c19ba8E(ptr nocapture readnone align 1 %self, i64 %0, i64 %1, i1 zeroext %zeroed) unnamed_addr #7 {
start:
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %bb2, label %bb1

bb2:                                              ; preds = %start
  %ptr = inttoptr i64 %0 to ptr
  br label %bb9

bb1:                                              ; preds = %start
  br i1 %zeroed, label %bb3, label %bb4

bb9:                                              ; preds = %bb8, %bb6, %bb2
  %3 = phi i64 [ undef, %bb8 ], [ %1, %bb6 ], [ 0, %bb2 ]
  %4 = phi ptr [ null, %bb8 ], [ %raw_ptr.0, %bb6 ], [ %ptr, %bb2 ]
  %5 = insertvalue { ptr, i64 } poison, ptr %4, 0
  %6 = insertvalue { ptr, i64 } %5, i64 %3, 1
  ret { ptr, i64 } %6

bb4:                                              ; preds = %bb1
  %7 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1
  %8 = tail call ptr @__rust_alloc(i64 %1, i64 %0) #29
  br label %bb5

bb3:                                              ; preds = %bb1
  %9 = tail call ptr @__rust_alloc_zeroed(i64 %1, i64 %0) #29
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %raw_ptr.0 = phi ptr [ %9, %bb3 ], [ %8, %bb4 ]
  %10 = icmp eq ptr %raw_ptr.0, null
  br i1 %10, label %bb8, label %bb6

bb6:                                              ; preds = %bb5
  br label %bb9

bb8:                                              ; preds = %bb5
  br label %bb9
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZN5alloc6string104_$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..vec..Vec$LT$u8$GT$$GT$4from17h97cc30efb500d40fE"(ptr nocapture writeonly sret(%"alloc::vec::Vec<u8>") align 8 %_0, ptr nocapture readonly align 8 %string) unnamed_addr #11 {
start:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %string, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h61467bdac48bbc1fE"(ptr nocapture writeonly sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") align 8 %_0, ptr nocapture readonly align 8 %self) unnamed_addr #11 {
bb1:
  %_9 = alloca { ptr, { i64, i64 } }, align 8
  %_3 = load i64, ptr %self, align 8, !noundef !6
  %0 = icmp eq i64 %_3, 0
  br i1 %0, label %bb2, label %bb3

bb2:                                              ; preds = %bb1
  %1 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", ptr %_0, i64 0, i32 1
  store i64 0, ptr %1, align 8
  br label %bb4

bb3:                                              ; preds = %bb1
  %2 = getelementptr inbounds { i64, ptr }, ptr %self, i64 0, i32 1
  %self3 = load ptr, ptr %2, align 8, !nonnull !6, !noundef !6
  store ptr %self3, ptr %_9, align 8
  %3 = getelementptr inbounds { ptr, { i64, i64 } }, ptr %_9, i64 0, i32 1
  store i64 1, ptr %3, align 8
  %4 = getelementptr inbounds { ptr, { i64, i64 } }, ptr %_9, i64 0, i32 1, i32 1
  store i64 %_3, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %_9, i64 24, i1 false)
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc { ptr, ptr } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf501c09794a82a54E"(ptr %self.0, ptr %self.1) unnamed_addr #5 {
start:
  %0 = insertvalue { ptr, ptr } poison, ptr %self.0, 0
  %1 = insertvalue { ptr, ptr } %0, ptr %self.1, 1
  ret { ptr, ptr } %1
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h30cd7d9e90b030f1E"(ptr nocapture readnone align 1 %self, ptr %ptr, i64 %0, i64 %1) unnamed_addr #7 {
start:
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %bb3, label %bb1

bb1:                                              ; preds = %start
  tail call void @__rust_dealloc(ptr %ptr, i64 %1, i64 %0) #29
  br label %bb3

bb3:                                              ; preds = %start, %bb1
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN64_$LT$alloc..ffi..c_str..NulError$u20$as$u20$core..fmt..Debug$GT$3fmt17h8b0fe54febe51888E"(ptr align 8 %self, ptr align 8 %f) unnamed_addr #1 {
start:
  %_8 = alloca ptr, align 8
  %_5 = getelementptr inbounds %"alloc::ffi::c_str::NulError", ptr %self, i64 0, i32 1
  store ptr %self, ptr %_8, align 8
  %_0 = call zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hfb9e7ebe7ba6a1ceE(ptr align 8 %f, ptr nonnull align 1 @alloc_49c0eff15ce41ce22a2d8c8b146a94ef, i64 8, ptr nonnull align 1 %_5, ptr nonnull align 8 @vtable.8, ptr nonnull align 1 %_8, ptr nonnull align 8 @vtable.9)
  ret i1 %_0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc zeroext i1 @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17he6698c7598e56530E"(ptr nocapture readonly align 8 %self, ptr align 8 %f) unnamed_addr #3 {
start:
  %0 = getelementptr inbounds { i64, ptr }, ptr %self, i64 0, i32 1
  %self1 = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %1 = getelementptr inbounds %"alloc::vec::Vec<u8>", ptr %self, i64 0, i32 1
  %len = load i64, ptr %1, align 8, !noundef !6
  %_0 = tail call fastcc zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1d66b0887f4f60adE"(ptr nonnull align 1 %self1, i64 %len, ptr align 8 %f)
  ret i1 %_0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN66_$LT$T$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17hef6e751e491ec51dE"(ptr nocapture writeonly sret(%"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>") align 8 %_0, ptr nocapture readonly align 8 %self) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_11 = alloca %"alloc::vec::Vec<u8>", align 8
  %_9 = alloca %"alloc::vec::Vec<u8>", align 8
  %_8 = alloca %"alloc::ffi::c_str::NulError", align 8
  %bytes = alloca %"alloc::vec::Vec<u8>", align 8
  call fastcc void @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hded9a98581180326E"(ptr nonnull sret(%"alloc::vec::Vec<u8>") align 8 %bytes, ptr align 8 %self)
  %0 = getelementptr inbounds { i64, ptr }, ptr %bytes, i64 0, i32 1
  %self1 = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %1 = getelementptr inbounds %"alloc::vec::Vec<u8>", ptr %bytes, i64 0, i32 1
  %len = load i64, ptr %1, align 8, !noundef !6
  %_23 = icmp ult i64 %len, 16
  br i1 %_23, label %bb11, label %bb13

bb13:                                             ; preds = %start
  %2 = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h3504444bb25b5daaE(i8 0, ptr nonnull align 1 %self1, i64 %len)
          to label %bb14 unwind label %bb8

bb11:                                             ; preds = %start
  %3 = invoke fastcc { i64, i64 } @_ZN4core5slice6memchr12memchr_naive17hc619571ad702d71cE(i8 0, ptr nonnull align 1 %self1, i64 %len)
          to label %bb12 unwind label %bb8

bb9:                                              ; preds = %bb2
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb7

bb14:                                             ; preds = %bb13
  br label %bb10

bb10:                                             ; preds = %bb12, %bb14
  %.pn = phi { i64, i64 } [ %3, %bb12 ], [ %2, %bb14 ]
  %_6 = extractvalue { i64, i64 } %.pn, 0
  %4 = icmp eq i64 %_6, 0
  br i1 %4, label %bb2, label %bb4

bb12:                                             ; preds = %bb11
  br label %bb10

bb2:                                              ; preds = %bb10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_11, ptr noundef nonnull align 8 dereferenceable(24) %bytes, i64 24, i1 false)
  %5 = invoke { ptr, i64 } @_ZN5alloc3ffi5c_str7CString19_from_vec_unchecked17h63065522f4c82317E(ptr nonnull align 8 %_11)
          to label %bb5 unwind label %bb9

bb4:                                              ; preds = %bb10
  %i = extractvalue { i64, i64 } %.pn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_9, ptr noundef nonnull align 8 dereferenceable(24) %bytes, i64 24, i1 false)
  %6 = getelementptr inbounds %"alloc::ffi::c_str::NulError", ptr %_8, i64 0, i32 1
  store i64 %i, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_8, ptr noundef nonnull align 8 dereferenceable(24) %_9, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %_0, ptr noundef nonnull align 8 dereferenceable(32) %_8, i64 32, i1 false)
  br label %bb6

bb5:                                              ; preds = %bb2
  %_10.0 = extractvalue { ptr, i64 } %5, 0
  %_10.1 = extractvalue { ptr, i64 } %5, 1
  %7 = getelementptr inbounds %"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>::Ok", ptr %_0, i64 0, i32 1
  store ptr %_10.0, ptr %7, align 8
  %8 = getelementptr inbounds %"core::result::Result<alloc::ffi::c_str::CString, alloc::ffi::c_str::NulError>::Ok", ptr %_0, i64 0, i32 1, i32 1
  store i64 %_10.1, ptr %8, align 8
  store i64 -9223372036854775808, ptr %_0, align 8
  br label %bb6

bb6:                                              ; preds = %bb5, %bb4
  ret void

bb7:                                              ; preds = %bb9, %bb8
  %lpad.thr_comm.pn = phi { ptr, i32 } [ %lpad.thr_comm, %bb8 ], [ %lpad.thr_comm.split-lp, %bb9 ]
  resume { ptr, i32 } %lpad.thr_comm.pn

bb8:                                              ; preds = %bb11, %bb13
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h67eaa829cecc3904E"(ptr nonnull align 8 %bytes) #30
          to label %bb7 unwind label %terminate

terminate:                                        ; preds = %bb8
  %9 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h55eb1d85cadde1a1E() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc zeroext i1 @"_ZN66_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h3fc7e658bb415858E"(ptr nocapture readonly align 8 %self, ptr align 8 %f) unnamed_addr #3 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_3 = getelementptr inbounds %"alloc::sync::ArcInner<i32>", ptr %self1, i64 0, i32 2
  %_0 = tail call fastcc zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h67dfcc54c69890bcE"(ptr nonnull align 4 %_3, ptr align 8 %f)
  ret i1 %_0
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h8f6e86e422aed82cE"(ptr nocapture readonly align 8 %self, ptr align 8 %f) unnamed_addr #3 {
start:
  %_4.0 = load ptr, ptr %self, align 8, !nonnull !6, !align !11, !noundef !6
  %0 = getelementptr inbounds { ptr, ptr }, ptr %self, i64 0, i32 1
  %_4.1 = load ptr, ptr %0, align 8, !nonnull !6, !align !10, !noundef !6
  %_0 = tail call zeroext i1 @"_ZN82_$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$u20$as$u20$core..fmt..Debug$GT$3fmt17h8431d16cb1751b1dE"(ptr nonnull align 1 %_4.0, ptr nonnull align 8 %_4.1, ptr align 8 %f)
  ret i1 %_0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @"_ZN68_$LT$alloc..ffi..c_str..CString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9f070990e423d124E"(ptr nocapture readonly align 8 %self) unnamed_addr #12 {
start:
  %_2.0 = load ptr, ptr %self, align 8, !nonnull !6, !align !11, !noundef !6
  store i8 0, ptr %_2.0, align 1
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc nonnull ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h61335b6ab8dfc185E"(ptr nocapture readonly align 8 %self) unnamed_addr #7 {
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
define internal fastcc nonnull ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8b7d01cf2cdac0faE"(ptr nocapture readonly align 8 %self) unnamed_addr #7 {
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
define internal fastcc nonnull ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha0d41ed8b904f0b1E"(ptr nocapture readonly align 8 %self) unnamed_addr #7 {
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
define internal fastcc nonnull ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hdfc3be2e7c19f698E"(ptr nocapture readonly align 8 %self) unnamed_addr #7 {
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
define internal fastcc void @"_ZN70_$LT$std..thread..Packet$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc16652ae580df434E"(ptr align 8 %self) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_18 = alloca [0 x { ptr, ptr }], align 8
  %_14 = alloca %"core::fmt::Arguments<'_>", align 8
  %_12 = alloca ptr, align 8
  %_6 = alloca { ptr, ptr }, align 8
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
  %4 = tail call fastcc { ptr, ptr } @_ZN3std9panicking3try17h277b2fb598852928E(ptr nonnull align 8 %0)
  %.elt = extractvalue { ptr, ptr } %4, 0
  store ptr %.elt, ptr %_6, align 8
  %_6.repack1 = getelementptr inbounds { ptr, ptr }, ptr %_6, i64 0, i32 1
  %.elt2 = extractvalue { ptr, ptr } %4, 1
  store ptr %.elt2, ptr %_6.repack1, align 8
  %.not3 = icmp eq ptr %.elt, null
  br i1 %.not3, label %bb8, label %bb4

bb4:                                              ; preds = %bb3
  invoke fastcc void @_ZN4core3fmt9Arguments6new_v117h7a79c17f8f6b250dE(ptr nonnull sret(%"core::fmt::Arguments<'_>") align 8 %_14, ptr nonnull align 8 @alloc_2ca7775364e940040d1ca01e1c1e4d62, i64 1, ptr nonnull align 8 %_18, i64 0)
          to label %bb5 unwind label %bb13

bb8:                                              ; preds = %bb3
  call fastcc void @"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h9ce7498891cbe9c9E"(ptr nonnull align 8 %_6)
  %5 = load ptr, ptr %self, align 8, !noundef !6
  %.not4 = icmp eq ptr %5, null
  br i1 %.not4, label %bb12, label %bb10

bb13:                                             ; preds = %bb4, %bb5, %bb6, %bb7
  %6 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h9ce7498891cbe9c9E"(ptr nonnull align 8 %_6) #30
          to label %bb14 unwind label %terminate

bb5:                                              ; preds = %bb4
  %7 = invoke fastcc ptr @_ZN3std2io5Write9write_fmt17hae899febf75fd3e6E(ptr nonnull align 1 %_18, ptr nonnull align 8 %_14)
          to label %bb6 unwind label %bb13

bb6:                                              ; preds = %bb5
  store ptr %7, ptr %_12, align 8
  invoke fastcc void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17he054d62b5f6e860aE"(ptr nonnull align 8 %_12)
          to label %bb7 unwind label %bb13

bb7:                                              ; preds = %bb6
  invoke void @_ZN3std3sys4unix14abort_internal17h65c316bb00fe1f50E() #28
          to label %unreachable unwind label %bb13

unreachable:                                      ; preds = %bb7
  unreachable

terminate:                                        ; preds = %bb13
  %8 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_ZN4core9panicking16panic_in_cleanup17h55eb1d85cadde1a1E() #26
  unreachable

bb14:                                             ; preds = %bb13
  resume { ptr, i32 } %6

bb10:                                             ; preds = %bb8
  %_23 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::scoped::ScopeData>", ptr %5, i64 0, i32 2
  call void @_ZN3std6thread6scoped9ScopeData29decrement_num_running_threads17h9feaf29f09120671E(ptr nonnull align 8 %_23, i1 zeroext %unhandled_panic.0)
  br label %bb12

bb12:                                             ; preds = %bb10, %bb8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN70_$LT$std..thread..Packet$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h8ffd353ba9b4585aE"(ptr nocapture readonly align 8 %_1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_2 = alloca %"core::option::Option<core::result::Result<(), alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>>", align 8
  store i64 0, ptr %_2, align 8
  %self = load ptr, ptr %_1, align 8, !nonnull !6, !align !10, !noundef !6
  invoke fastcc void @"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17ha7dc1a6812d0b1faE"(ptr nonnull align 8 %self)
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

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha8d2f1b680fe955bE"(ptr align 8 %self) unnamed_addr #7 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %0 = atomicrmw sub ptr %self1, i64 1 release, align 8
  %1 = icmp eq i64 %0, 1
  br i1 %1, label %bb2, label %bb3

bb2:                                              ; preds = %start
  fence acquire
  tail call fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3ec9eab3d39f8441E"(ptr nonnull align 8 %self)
  br label %bb3

bb3:                                              ; preds = %start, %bb2
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb5edb9bdcb6da71fE"(ptr align 8 %self) unnamed_addr #1 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %0 = atomicrmw sub ptr %self1, i64 1 release, align 8
  %1 = icmp eq i64 %0, 1
  br i1 %1, label %bb2, label %bb3

bb2:                                              ; preds = %start
  fence acquire
  tail call fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he798430f543e7163E"(ptr nonnull align 8 %self)
  br label %bb3

bb3:                                              ; preds = %start, %bb2
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc2f4c3853a6e22dbE"(ptr align 8 %self) unnamed_addr #1 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %0 = atomicrmw sub ptr %self1, i64 1 release, align 8
  %1 = icmp eq i64 %0, 1
  br i1 %1, label %bb2, label %bb3

bb2:                                              ; preds = %start
  fence acquire
  tail call fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf31df6bb71bfa5dcE"(ptr nonnull align 8 %self)
  br label %bb3

bb3:                                              ; preds = %start, %bb2
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd113f43ed5560a75E"(ptr align 8 %self) unnamed_addr #1 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %0 = atomicrmw sub ptr %self1, i64 1 release, align 8
  %1 = icmp eq i64 %0, 1
  br i1 %1, label %bb2, label %bb3

bb2:                                              ; preds = %start
  fence acquire
  tail call fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h6d15e07d30a65f14E"(ptr nonnull align 8 %self)
  br label %bb3

bb3:                                              ; preds = %start, %bb2
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he551b3d864d772f2E"(ptr align 8 %self) unnamed_addr #1 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %0 = atomicrmw sub ptr %self1, i64 1 release, align 8
  %1 = icmp eq i64 %0, 1
  br i1 %1, label %bb2, label %bb3

bb2:                                              ; preds = %start
  fence acquire
  tail call fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hdd2c8111af086fafE"(ptr nonnull align 8 %self)
  br label %bb3

bb3:                                              ; preds = %start, %bb2
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h53e53171ca1304cdE"(ptr nocapture readonly align 8 %self) unnamed_addr #7 {
start:
  %0 = getelementptr inbounds { ptr, ptr }, ptr %self, i64 0, i32 1
  %ptr.1 = load ptr, ptr %0, align 8, !nonnull !6, !align !10, !noundef !6
  %1 = getelementptr inbounds i64, ptr %ptr.1, i64 1
  %2 = load i64, ptr %1, align 8, !range !13, !invariant.load !6
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %bb4, label %bb1

bb1:                                              ; preds = %start
  %4 = getelementptr inbounds i64, ptr %ptr.1, i64 2
  %5 = load i64, ptr %4, align 8, !range !14, !invariant.load !6
  %ptr.0 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_8 = getelementptr i8, ptr %self, i64 16
  tail call fastcc void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h30cd7d9e90b030f1E"(ptr align 1 %_8, ptr nonnull %ptr.0, i64 %5, i64 %2)
  br label %bb4

bb4:                                              ; preds = %start, %bb1
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h55ebe542a3a25820E"(ptr nocapture readonly align 8 %self) unnamed_addr #7 {
bb4:
  %ptr = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_8 = getelementptr i8, ptr %self, i64 8
  tail call fastcc void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h30cd7d9e90b030f1E"(ptr align 1 %_8, ptr nonnull %ptr, i64 8, i64 24)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd0d59bc9aab79199E"(ptr nocapture readonly align 8 %self) unnamed_addr #7 {
start:
  %0 = getelementptr inbounds { ptr, i64 }, ptr %self, i64 0, i32 1
  %ptr.1 = load i64, ptr %0, align 8, !noundef !6
  %1 = icmp eq i64 %ptr.1, 0
  br i1 %1, label %bb4, label %bb1

bb1:                                              ; preds = %start
  %ptr.0 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_8 = getelementptr i8, ptr %self, i64 16
  tail call fastcc void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h30cd7d9e90b030f1E"(ptr align 1 %_8, ptr nonnull %ptr.0, i64 1, i64 %ptr.1)
  br label %bb4

bb4:                                              ; preds = %start, %bb1
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf48fb90ec075f1e3E"(ptr nocapture readonly align 8 %self) unnamed_addr #7 {
start:
  %0 = getelementptr inbounds { ptr, ptr }, ptr %self, i64 0, i32 1
  %ptr.1 = load ptr, ptr %0, align 8, !nonnull !6, !align !10, !noundef !6
  %1 = getelementptr inbounds i64, ptr %ptr.1, i64 1
  %2 = load i64, ptr %1, align 8, !range !13, !invariant.load !6
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %bb4, label %bb1

bb1:                                              ; preds = %start
  %4 = getelementptr inbounds i64, ptr %ptr.1, i64 2
  %5 = load i64, ptr %4, align 8, !range !14, !invariant.load !6
  %ptr.0 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_8 = getelementptr i8, ptr %self, i64 16
  tail call fastcc void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h30cd7d9e90b030f1E"(ptr align 1 %_8, ptr nonnull %ptr.0, i64 %5, i64 %2)
  br label %bb4

bb4:                                              ; preds = %start, %bb1
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h20378ac887218641E"(ptr nocapture readonly align 8 %self) unnamed_addr #0 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_15 = icmp eq ptr %self1, inttoptr (i64 -1 to ptr)
  br i1 %_15, label %bb2, label %bb1

bb1:                                              ; preds = %start
  %_18 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Inner>", ptr %self1, i64 0, i32 1
  %0 = atomicrmw sub ptr %_18, i64 1 release, align 8
  %1 = icmp eq i64 %0, 1
  br i1 %1, label %bb3, label %bb6

bb2:                                              ; preds = %start
  br label %bb6

bb3:                                              ; preds = %bb1
  fence acquire
  %_6 = getelementptr inbounds { ptr, ptr }, ptr %self, i64 0, i32 1
  %self3 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  tail call fastcc void @"_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hfdbd86b8ec10ac5bE"(ptr nonnull align 8 %_6, ptr nonnull %self3, i64 8, i64 48)
  br label %bb6

bb6:                                              ; preds = %bb1, %bb3, %bb2
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h30665c0c4e849563E"(ptr nocapture readonly align 8 %self) unnamed_addr #0 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_15 = icmp eq ptr %self1, inttoptr (i64 -1 to ptr)
  br i1 %_15, label %bb2, label %bb1

bb1:                                              ; preds = %start
  %_18 = getelementptr inbounds %"alloc::sync::ArcInner<i32>", ptr %self1, i64 0, i32 1
  %0 = atomicrmw sub ptr %_18, i64 1 release, align 8
  %1 = icmp eq i64 %0, 1
  br i1 %1, label %bb3, label %bb6

bb2:                                              ; preds = %start
  br label %bb6

bb3:                                              ; preds = %bb1
  fence acquire
  %_6 = getelementptr inbounds { ptr, ptr }, ptr %self, i64 0, i32 1
  %self3 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  tail call fastcc void @"_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hfdbd86b8ec10ac5bE"(ptr nonnull align 8 %_6, ptr nonnull %self3, i64 8, i64 24)
  br label %bb6

bb6:                                              ; preds = %bb1, %bb3, %bb2
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf1f3fa174702c143E"(ptr nocapture readonly align 8 %self) unnamed_addr #0 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_15 = icmp eq ptr %self1, inttoptr (i64 -1 to ptr)
  br i1 %_15, label %bb2, label %bb1

bb1:                                              ; preds = %start
  %_18 = getelementptr inbounds %"alloc::sync::ArcInner<std::sync::mutex::Mutex<alloc::vec::Vec<u8>>>", ptr %self1, i64 0, i32 1
  %0 = atomicrmw sub ptr %_18, i64 1 release, align 8
  %1 = icmp eq i64 %0, 1
  br i1 %1, label %bb3, label %bb6

bb2:                                              ; preds = %start
  br label %bb6

bb3:                                              ; preds = %bb1
  fence acquire
  %_6 = getelementptr inbounds { ptr, ptr }, ptr %self, i64 0, i32 1
  %self3 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  tail call fastcc void @"_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hfdbd86b8ec10ac5bE"(ptr nonnull align 8 %_6, ptr nonnull %self3, i64 8, i64 48)
  br label %bb6

bb6:                                              ; preds = %bb1, %bb3, %bb2
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf51d72a73adb0c60E"(ptr nocapture readonly align 8 %self) unnamed_addr #0 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_15 = icmp eq ptr %self1, inttoptr (i64 -1 to ptr)
  br i1 %_15, label %bb2, label %bb1

bb1:                                              ; preds = %start
  %_18 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::scoped::ScopeData>", ptr %self1, i64 0, i32 1
  %0 = atomicrmw sub ptr %_18, i64 1 release, align 8
  %1 = icmp eq i64 %0, 1
  br i1 %1, label %bb3, label %bb6

bb2:                                              ; preds = %start
  br label %bb6

bb3:                                              ; preds = %bb1
  fence acquire
  %_6 = getelementptr inbounds { ptr, ptr }, ptr %self, i64 0, i32 1
  %self3 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  tail call fastcc void @"_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hfdbd86b8ec10ac5bE"(ptr nonnull align 8 %_6, ptr nonnull %self3, i64 8, i64 40)
  br label %bb6

bb6:                                              ; preds = %bb1, %bb3, %bb2
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf55d50bb9789f65bE"(ptr nocapture readonly align 8 %self) unnamed_addr #0 {
start:
  %self1 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  %_15 = icmp eq ptr %self1, inttoptr (i64 -1 to ptr)
  br i1 %_15, label %bb2, label %bb1

bb1:                                              ; preds = %start
  %_18 = getelementptr inbounds %"alloc::sync::ArcInner<std::thread::Packet<'_, ()>>", ptr %self1, i64 0, i32 1
  %0 = atomicrmw sub ptr %_18, i64 1 release, align 8
  %1 = icmp eq i64 %0, 1
  br i1 %1, label %bb3, label %bb6

bb2:                                              ; preds = %start
  br label %bb6

bb3:                                              ; preds = %bb1
  fence acquire
  %_6 = getelementptr inbounds { ptr, ptr }, ptr %self, i64 0, i32 1
  %self3 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  tail call fastcc void @"_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hfdbd86b8ec10ac5bE"(ptr nonnull align 8 %_6, ptr nonnull %self3, i64 8, i64 48)
  br label %bb6

bb6:                                              ; preds = %bb1, %bb3, %bb2
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc zeroext i1 @"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h9286b9634c520c01E"(ptr align 8 %self, ptr align 8 %args) unnamed_addr #1 {
start:
  %_0 = tail call zeroext i1 @_ZN4core3fmt5write17h3ed6aeaa977c8e45E(ptr align 1 %self, ptr nonnull align 8 @vtable.0, ptr align 8 %args)
  ret i1 %_0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h223cb3c30ed4c64dE"(ptr nocapture readonly align 8 %self) unnamed_addr #0 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  call fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h61467bdac48bbc1fE"(ptr nonnull sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") align 8 %_2, ptr align 8 %self)
  %0 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", ptr %_2, i64 0, i32 1
  %1 = load i64, ptr %0, align 8, !range !12, !noundef !6
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb4, label %bb2

bb2:                                              ; preds = %start
  %ptr = load ptr, ptr %_2, align 8, !nonnull !6, !noundef !6
  %2 = getelementptr inbounds { ptr, { i64, i64 } }, ptr %_2, i64 0, i32 1, i32 1
  %layout.1 = load i64, ptr %2, align 8, !noundef !6
  %_7 = getelementptr i8, ptr %self, i64 16
  call fastcc void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h30cd7d9e90b030f1E"(ptr align 1 %_7, ptr nonnull %ptr, i64 %1, i64 %layout.1)
  br label %bb4

bb4:                                              ; preds = %bb2, %start
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6e3caf840b6db1e3E"(ptr nocapture readonly align 8 %self) unnamed_addr #1 {
start:
  %_2 = alloca %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>", align 8
  %_3 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
  call fastcc void @_ZN3std2io5error14repr_bitpacked11decode_repr17h8cf41c1855a084bdE(ptr nonnull sret(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>") align 8 %_2, ptr nonnull %_3)
  call fastcc void @"_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17h0f1a18bcf3efb78bE"(ptr nonnull align 8 %_2)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind nonlazybind willreturn memory(inaccessiblemem: readwrite) uwtable
define internal fastcc align 8 ptr @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hf22b63f1a4ce0e1bE"(ptr readnone returned %p) unnamed_addr #13 {
start:
  %0 = icmp ne ptr %p, null
  tail call void @llvm.assume(i1 %0)
  ret ptr %p
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h9d33958e619f5e87E"(ptr nocapture align 8 %self, ptr align 1 %s.0, i64 %s.1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_8 = load ptr, ptr %self, align 8, !nonnull !6, !align !11, !noundef !6
  %0 = tail call fastcc ptr @_ZN3std2io5Write9write_all17hb79a6fd9ec28dd58E(ptr nonnull align 1 %_8, ptr align 1 %s.0, i64 %s.1)
  %1 = icmp ne ptr %0, null
  br i1 %1, label %bb2, label %bb7

bb2:                                              ; preds = %start
  %2 = getelementptr inbounds { ptr, ptr }, ptr %self, i64 0, i32 1
  invoke fastcc void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17he054d62b5f6e860aE"(ptr nonnull align 8 %2)
          to label %bb5 unwind label %bb6

bb7:                                              ; preds = %start, %bb5
  ret i1 %1

bb6:                                              ; preds = %bb2
  %3 = landingpad { ptr, i32 }
          cleanup
  store ptr %0, ptr %2, align 8
  resume { ptr, i32 } %3

bb5:                                              ; preds = %bb2
  store ptr %0, ptr %2, align 8
  br label %bb7
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc align 1 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he33937d1af15bbf0E"(ptr nocapture align 8 %self) unnamed_addr #14 {
bb3:
  %self1 = getelementptr inbounds { ptr, ptr }, ptr %self, i64 0, i32 1
  %0 = load ptr, ptr %self1, align 8, !nonnull !6, !noundef !6
  %self2 = load ptr, ptr %self, align 8, !nonnull !6, !noundef !6
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
define internal void @_ZN6std_rs4main17ha086a72508c6f8f6E() unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %t2 = alloca %"std::thread::JoinHandle<()>", align 8
  %t = alloca %"std::thread::JoinHandle<()>", align 8
  %z = alloca ptr, align 8
  %y = alloca ptr, align 8
  %x = alloca ptr, align 8
  %0 = tail call fastcc ptr @"_ZN5alloc4sync12Arc$LT$T$GT$3new17h618e67e83dd49ccdE"(i32 5)
  store ptr %0, ptr %x, align 8
  %1 = call fastcc ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hdfc3be2e7c19f698E"(ptr nonnull align 8 %x)
  br label %bb2

bb11:                                             ; preds = %bb13, %bb14
  %lpad.thr_comm.split-lp.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb14 ], [ %lpad.thr_comm, %bb13 ]
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$alloc..sync..Arc$LT$i32$GT$$GT$17h49c1313db23cef8bE"(ptr nonnull align 8 %x) #30
  br label %bb12

bb2:                                              ; preds = %start
  store ptr %1, ptr %y, align 8
  %2 = call fastcc ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hdfc3be2e7c19f698E"(ptr nonnull align 8 %x)
  br label %bb3

bb3:                                              ; preds = %bb2
  store ptr %2, ptr %z, align 8
  invoke fastcc void @_ZN3std6thread5spawn17h82d1dea53d27aa36E(ptr nonnull sret(%"std::thread::JoinHandle<()>") align 8 %t, ptr nonnull %1)
          to label %bb4 unwind label %bb13

bb14:                                             ; preds = %bb6, %bb7, %bb8
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb11

bb4:                                              ; preds = %bb3
  %3 = invoke fastcc { ptr, ptr } @"_ZN3std6thread19JoinHandle$LT$T$GT$4join17h1e86a47c2d80d596E"(ptr nonnull align 8 %t)
          to label %bb5 unwind label %bb13

bb5:                                              ; preds = %bb4
  %_9.0 = extractvalue { ptr, ptr } %3, 0
  %_9.1 = extractvalue { ptr, ptr } %3, 1
  invoke fastcc void @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h3fc686120212960dE"(ptr align 1 %_9.0, ptr %_9.1, ptr nonnull align 8 @alloc_12a92478de7931f922a4a99ef3519763)
          to label %bb6 unwind label %bb13

bb6:                                              ; preds = %bb5
  invoke fastcc void @_ZN3std6thread5spawn17hd7ee2c53f1ee0e58E(ptr nonnull sret(%"std::thread::JoinHandle<()>") align 8 %t2, ptr nonnull %2)
          to label %bb7 unwind label %bb14

bb7:                                              ; preds = %bb6
  %4 = invoke fastcc { ptr, ptr } @"_ZN3std6thread19JoinHandle$LT$T$GT$4join17h1e86a47c2d80d596E"(ptr nonnull align 8 %t2)
          to label %bb8 unwind label %bb14

bb8:                                              ; preds = %bb7
  %_13.0 = extractvalue { ptr, ptr } %4, 0
  %_13.1 = extractvalue { ptr, ptr } %4, 1
  invoke fastcc void @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h3fc686120212960dE"(ptr align 1 %_13.0, ptr %_13.1, ptr nonnull align 8 @alloc_df98f02fc76fe3abc1e7ce5f16b13c1f)
          to label %bb9 unwind label %bb14

bb9:                                              ; preds = %bb8
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$alloc..sync..Arc$LT$i32$GT$$GT$17h49c1313db23cef8bE"(ptr nonnull align 8 %x)
  ret void

bb13:                                             ; preds = %bb5, %bb4, %bb3
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$alloc..sync..Arc$LT$i32$GT$$GT$17h49c1313db23cef8bE"(ptr nonnull align 8 %z) #30
  br label %bb11

bb12:                                             ; preds = %bb11
  resume { ptr, i32 } %lpad.thr_comm.split-lp.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN6std_rs4main28_$u7b$$u7b$closure$u7d$$u7d$17h87325209b0cb1034E"(ptr %_1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb3:
  %_16 = alloca %"core::fmt::rt::Placeholder", align 8
  %_15 = alloca [1 x %"core::fmt::rt::Placeholder"], align 8
  %_12 = alloca ptr, align 8
  %_9 = alloca [1 x { ptr, ptr }], align 8
  %_5 = alloca %"core::fmt::Arguments<'_>", align 8
  %tmp = alloca ptr, align 8
  %_2 = alloca ptr, align 8
  store ptr %_1, ptr %tmp, align 8
  store ptr %tmp, ptr %_12, align 8
  store ptr %_12, ptr %_9, align 8
  %0 = getelementptr inbounds { ptr, ptr }, ptr %_9, i64 0, i32 1
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h796fd35187ef2641E", ptr %0, align 8
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
  call fastcc void @_ZN4core3fmt9Arguments16new_v1_formatted17h3dd9796cd39befecE(ptr nonnull sret(%"core::fmt::Arguments<'_>") align 8 %_5, ptr nonnull align 8 @alloc_bfbb86cc6d189835cbb292836a61ad04, i64 2, ptr nonnull align 8 %_9, i64 1, ptr nonnull align 8 %_15, i64 1)
  br label %bb4

bb7:                                              ; preds = %bb4
  %6 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$alloc..sync..Arc$LT$i32$GT$$GT$17h49c1313db23cef8bE"(ptr nonnull align 8 %tmp) #30
  br label %bb8

bb4:                                              ; preds = %bb3
  invoke void @_ZN3std2io5stdio7_eprint17h7bc67d585efd070eE(ptr nonnull align 8 %_5)
          to label %bb5 unwind label %bb7

bb5:                                              ; preds = %bb4
  %7 = load ptr, ptr %tmp, align 8, !nonnull !6, !noundef !6
  store ptr %7, ptr %_2, align 8
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$alloc..sync..Arc$LT$i32$GT$$GT$17h49c1313db23cef8bE"(ptr nonnull align 8 %_2)
  ret void

bb8:                                              ; preds = %bb7
  resume { ptr, i32 } %6
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN6std_rs4main28_$u7b$$u7b$closure$u7d$$u7d$17hc9299e69538b9dadE"(ptr %_1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb3:
  %_16 = alloca %"core::fmt::rt::Placeholder", align 8
  %_15 = alloca [1 x %"core::fmt::rt::Placeholder"], align 8
  %_12 = alloca ptr, align 8
  %_9 = alloca [1 x { ptr, ptr }], align 8
  %_5 = alloca %"core::fmt::Arguments<'_>", align 8
  %tmp = alloca ptr, align 8
  %_2 = alloca ptr, align 8
  store ptr %_1, ptr %tmp, align 8
  store ptr %tmp, ptr %_12, align 8
  store ptr %_12, ptr %_9, align 8
  %0 = getelementptr inbounds { ptr, ptr }, ptr %_9, i64 0, i32 1
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h796fd35187ef2641E", ptr %0, align 8
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
  call fastcc void @_ZN4core3fmt9Arguments16new_v1_formatted17h3dd9796cd39befecE(ptr nonnull sret(%"core::fmt::Arguments<'_>") align 8 %_5, ptr nonnull align 8 @alloc_3540addb1ff9d570f8b9e92348c7768f, i64 2, ptr nonnull align 8 %_9, i64 1, ptr nonnull align 8 %_15, i64 1)
  br label %bb4

bb7:                                              ; preds = %bb4
  %6 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$alloc..sync..Arc$LT$i32$GT$$GT$17h49c1313db23cef8bE"(ptr nonnull align 8 %tmp) #30
  br label %bb8

bb4:                                              ; preds = %bb3
  invoke void @_ZN3std2io5stdio7_eprint17h7bc67d585efd070eE(ptr nonnull align 8 %_5)
          to label %bb5 unwind label %bb7

bb5:                                              ; preds = %bb4
  %7 = load ptr, ptr %tmp, align 8, !nonnull !6, !noundef !6
  store ptr %7, ptr %_2, align 8
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$alloc..sync..Arc$LT$i32$GT$$GT$17h49c1313db23cef8bE"(ptr nonnull align 8 %_2)
  ret void

bb8:                                              ; preds = %bb7
  resume { ptr, i32 } %6
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index24slice_end_index_len_fail17h9163fa4abd3ca1acE(i64, i64, ptr align 8) unnamed_addr #15

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index22slice_index_order_fail17hcfcb08cd5efc8d4cE(i64, i64, ptr align 8) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN64_$LT$std..sys..unix..stdio..Stderr$u20$as$u20$std..io..Write$GT$5write17hc551fcdb92d4f4b1E"(ptr sret(%"core::result::Result<usize, std::io::error::Error>") align 8, ptr align 1, ptr align 1, i64) unnamed_addr #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index26slice_start_index_len_fail17h0187bf4d120fc375E(i64, i64, ptr align 8) unnamed_addr #15

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h55eb1d85cadde1a1E() unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt5write17h3ed6aeaa977c8e45E(ptr align 1, ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #18

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17hb837a5ebbbe5b188E(ptr align 1, i64, ptr align 8) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare i64 @_ZN3std2rt19lang_start_internal17h6939038e2873596bE(ptr align 1, ptr align 8, i64, ptr, i8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std3sys4unix6thread6Thread4join17h39b09a9c8f68b464E(i64) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare ptr @_ZN3std6thread6Thread3new17h91c2acbc87f07c63E(ptr align 1, i64) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare ptr @_ZN3std2io5stdio18set_output_capture17hbfdad0a1763c8421E(ptr) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std6thread6scoped9ScopeData29increment_num_running_threads17h1f4288a87dda043cE(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std3sys4unix6thread6Thread3new17h87f4070d7391b575E(ptr sret(%"core::result::Result<std::sys::unix::thread::Thread, std::io::error::Error>") align 8, i64, ptr align 1, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_ZN3std6thread6Thread5cname17h91163d95cfb5c369E(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std3sys4unix6thread6Thread8set_name17h944eeb69463a3300E(ptr align 1, i64) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std3sys4unix6thread5guard7current17h5a7c57689f473c66E(ptr sret(%"core::option::Option<core::ops::range::Range<usize>>") align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std10sys_common11thread_info3set17hb38d90ff4419d5b1E(ptr align 8, ptr) unnamed_addr #3

; Function Attrs: nonlazybind
define internal fastcc i32 @__rust_try(ptr nocapture readonly %0, ptr %1, ptr nocapture readonly %2) unnamed_addr #19 personality ptr @rust_eh_personality {
entry-block:
  invoke void %0(ptr %1)
          to label %common.ret unwind label %catch, !callees !15

common.ret:                                       ; preds = %entry-block, %catch
  %common.ret.op = phi i32 [ 1, %catch ], [ 0, %entry-block ]
  ret i32 %common.ret.op

catch:                                            ; preds = %entry-block
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  tail call void %2(ptr %1, ptr %4), !callees !16
  br label %common.ret
}

; Function Attrs: cold nonlazybind uwtable
declare { ptr, ptr } @_ZN3std9panicking3try7cleanup17h82b2c8e320bcb974E(ptr) unnamed_addr #20

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h728d9a0f3744453fE() unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3fmt9Formatter10debug_list17h1616b9a56f5bf339E(ptr sret(%"core::fmt::builders::DebugList<'_, '_>") align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17hadbed7078d8807f7E(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h3d4d19436d6d837dE"(ptr align 1, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17hd83f82e68b17db74E"(ptr align 1, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17hf9f952c6b540cee3E"(ptr align 1, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17hc9733ab76fb3c52cE"(ptr align 4, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h891839fecf0a4aefE"(ptr align 4, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h8e89ccd3b870a36eE"(ptr align 4, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h54d4af2b1bb3d966E"(ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17hfb9868ecfefdd0c2E"(ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h2a402146377b71d4E"(ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_ZN4core3fmt8builders9DebugList5entry17h2ed5a4f4153b90ddE(ptr align 8, ptr align 1, ptr align 8) unnamed_addr #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17h784f20a50eaab275E(ptr align 8, ptr align 8) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare i64 @_ZN3std10sys_common6thread9min_stack17hbc35171617379d33E() unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h457ee4312ccc84c1E"(ptr align 4, ptr align 8) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #21

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8331054858f0bf20E(i64, i64, ptr align 8) unnamed_addr #15

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17h03d8a5018196e1cdE(ptr align 1, i64, ptr align 1, ptr align 8, ptr align 8) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h6d10bf911b864f11E"(ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h81706c48453a6249E(i64, i64) unnamed_addr #22

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias ptr @__rust_alloc(i64, i64 allocalign) unnamed_addr #23

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias ptr @__rust_alloc_zeroed(i64, i64 allocalign) unnamed_addr #24

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @__rust_dealloc(ptr allocptr, i64, i64) unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hfb9e7ebe7ba6a1ceE(ptr align 8, ptr align 1, i64, ptr align 1, ptr align 8, ptr align 1, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h3504444bb25b5daaE(i8, ptr align 1, i64) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_ZN5alloc3ffi5c_str7CString19_from_vec_unchecked17h63065522f4c82317E(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN82_$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$u20$as$u20$core..fmt..Debug$GT$3fmt17h8431d16cb1751b1dE"(ptr align 1, ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #26

; Function Attrs: noreturn nonlazybind uwtable
declare void @_ZN3std3sys4unix14abort_internal17h65c316bb00fe1f50E() unnamed_addr #27

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std6thread6scoped9ScopeData29decrement_num_running_threads17h9feaf29f09120671E(ptr align 8, i1 zeroext) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio7_eprint17h7bc67d585efd070eE(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind
define i32 @main(i32 %0, ptr %1) unnamed_addr #19 {
top:
  %2 = sext i32 %0 to i64
  %3 = tail call i64 @_ZN3std2rt10lang_start17hb61cc6e8dd1bb6caE(ptr nonnull @_ZN6std_rs4main17ha086a72508c6f8f6E, i64 %2, ptr %1, i8 0)
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
attributes #9 = { inlinehint mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { inlinehint mustprogress nofree nosync nounwind nonlazybind willreturn memory(inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nonlazybind "target-cpu"="x86-64" }
attributes #20 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #22 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { cold noreturn nounwind }
attributes #27 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { noreturn }
attributes #29 = { nounwind }
attributes #30 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{!"rustc version 1.76.0 (07dca489a 2024-02-04)"}
!4 = !{i32 3806389}
!5 = !{i64 0, i64 2}
!6 = !{}
!7 = !{i8 0, i8 42}
!8 = !{i8 0, i8 4}
!9 = !{i8 0, i8 41}
!10 = !{i64 8}
!11 = !{i64 1}
!12 = !{i64 0, i64 -9223372036854775807}
!13 = !{i64 0, i64 -9223372036854775808}
!14 = !{i64 1, i64 0}
!15 = !{ptr @_ZN3std9panicking3try7do_call17h064e91deb9a434e8E, ptr @_ZN3std9panicking3try7do_call17h8f189a79418b1601E, ptr @_ZN3std9panicking3try7do_call17hdecad32ae09c6274E}
!16 = !{ptr @_ZN3std9panicking3try8do_catch17h3fc198fcb0c69638E, ptr @_ZN3std9panicking3try8do_catch17hc609cf7356b0c3cbE, ptr @_ZN3std9panicking3try8do_catch17he70d473979419b34E}
