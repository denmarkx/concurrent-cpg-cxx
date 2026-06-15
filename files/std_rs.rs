use std::sync::{Arc, Mutex};
use std::thread;

fn main() {
    let data = Arc::new(Mutex::new(1234));
    // let mut guard = mutex.lock().unwrap();
    // *guard = 4321;
    let x = Arc::clone(&data);
    let y = Arc::clone(&data);

    let t1 = std::thread::spawn(move || {
        let mut guard = x.lock().unwrap();
        *guard = 1234;
    });

    let t2 = std::thread::spawn(move || {
        let mut guard = y.lock().unwrap();
        *guard = 4321;
    });
}
