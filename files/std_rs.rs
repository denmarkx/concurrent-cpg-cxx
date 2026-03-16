use std::thread;
use std::sync::Arc;

fn main() {
    let x = Arc::new(5);
    let y = x.clone();

    // let h = Arc::new(5);
    let z = x.clone();
    let t = thread::spawn(move || {
        dbg!(y);
    });
    t.join().unwrap();


    let t2 = thread::spawn(move || {
        dbg!(z);
    });
    t2.join().unwrap();
}