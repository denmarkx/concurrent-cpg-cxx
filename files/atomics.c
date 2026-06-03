#include <stdatomic.h>
#include <pthread.h>

// Currently used for just PO/HB building
atomic_int count;

void* routine(void*) {
    count = 40;
    return NULL;
}

void* secondary(void*) {
    count = 120;
    return NULL;
}

int main() {
    pthread_t t1;
    pthread_t t2;
    pthread_create(&t1, NULL, routine, NULL);
    pthread_create(&t2, NULL, secondary, NULL);
    return 0;
}