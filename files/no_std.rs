#![no_std]
#![no_main]

pub struct Holder {
	pub test: i64,
	pub operation: fn(i32) -> i32,
}

impl Holder {
	pub fn execute(&self, a: i32) -> i32 {
		(self.operation)(a)
	}
}

pub struct InnerHolder<'a> {
	pub test: &'a Holder,
	pub other: &'a Holder,
	pub holder: &'a Holder,
}

use core::panic::PanicInfo;
#[panic_handler]
fn panic(_info: &PanicInfo) -> !{
	loop {}
}

fn f1(a: i32) -> i32 {
	a
}
fn f2(a: i32) -> i32 {
	a
}
fn f3(a: i32) -> i32 {
	a
}

fn actual(h: &Holder) -> i64 {
	(h.operation)(100) as i64
}

fn something(h: &Holder) -> i64 {
	actual(h)
}

#[no_mangle]
pub extern "C" fn _start() -> () {
	let f = Holder { test: 200, operation: f1 };
	let f2 = Holder { test: 200, operation: f2 };
	let f3 = Holder { test: 200, operation: f3 };
	let ih = InnerHolder { test: &f2, other: &f3, holder: &f };
	ih.other.execute(200);
	ih.holder.execute(200);
	something(&ih.other);
}
