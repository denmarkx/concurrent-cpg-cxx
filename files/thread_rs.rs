use std::thread;

fn main() {
    let mut _x = 0;
    let h = thread::spawn(move || {
        _x = 1;
    });
    h.join().unwrap();
}