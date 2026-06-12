use std::thread;
use std::sync::Arc;

struct SendablePtr<T>(*mut T);
unsafe impl<T> Send for SendablePtr<T> {}
unsafe impl<T> Sync for SendablePtr<T> {}

fn main() {
    let data = Arc::new(0);
    let ptr = Arc::into_raw(data) as *mut i32;

    let y = SendablePtr(ptr);
    let z = SendablePtr(ptr);

    let t = thread::spawn(move || {
        unsafe { *y.0 = 1234; }
    });
    // t.join().unwrap();


    let t2 = thread::spawn(move || {
        unsafe { *z.0 = 4321; }
    });
    // t2.join().unwrap();
}