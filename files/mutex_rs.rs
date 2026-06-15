use std::sync::{Arc, Mutex};
use std::thread;

fn main() {
    let data = Arc::new(Mutex::new(1234));
    // let mut guard = mutex.lock().unwrap();
    // *guard = 4321;
    let x = Arc::clone(data);
    let y = Arc::clone(data);

    let _ = std::thread(move || {
        let mut guard = x.lock().unwrap();
        *guard = 1234;
    });
}
