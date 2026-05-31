#include <stdatomic.h>

// Currently used for just PO/HB building
atomic_int count;

void routine() {
    ++count;
}

void secondary() {
    ++count;
}

int main() {
    routine();
    secondary();
    return 0;
}