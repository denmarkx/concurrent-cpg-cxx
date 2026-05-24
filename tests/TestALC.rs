#![no_std]
#![no_main]

extern crate alloc;

use core::alloc::{GlobalAlloc, Layout};
use core::panic::PanicInfo;
use alloc::boxed::Box;

extern "C" {
    fn malloc(size: usize) -> *mut u8;
    fn free(ptr: *mut u8);
}

pub struct Allocator;

#[global_allocator]
static ALLOCATOR: Allocator = Allocator;

unsafe impl GlobalAlloc for Allocator {
    unsafe fn alloc(&self, layout: Layout) -> *mut u8 {
        malloc(layout.size())
    }

    unsafe fn dealloc(&self, ptr: *mut u8, _layout: Layout) {
        free(ptr);
    }
}

#[panic_handler]
fn panic(_info: &PanicInfo) -> !{
    loop {}
}

#[no_mangle]
pub extern "C" fn _start() -> () {
    let x = Box::new(5);
    let y = Box::new(x);
    let z = *y;
    let q = Box::new(z);

}
