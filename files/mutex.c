#include <stdatomic.h>
#include <pthread.h>

int count;
pthread_mutex_t lock;

void* routine(void*) {
    pthread_mutex_lock(&lock);
    count = 40;
    pthread_mutex_unlock(&lock);
    return NULL;
}

void* secondary(void*) {
    pthread_mutex_lock(&lock);
    count = 120;
    pthread_mutex_unlock(&lock);
    return NULL;
}

int main() {
    pthread_t t1;
    pthread_t t2;
    pthread_create(&t1, NULL, routine, NULL);
    pthread_create(&t2, NULL, secondary, NULL);
    return 0;
}