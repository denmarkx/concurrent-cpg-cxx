use std::sync::{Arc, Mutex};
use std::thread;

fn main() {
    let mutex = Mutex::new(1234);
    let mut guard = mutex.lock().unwrap();
    *guard = 4321;
}
