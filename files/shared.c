#include <pthread.h>
#include <stdint.h>

int g = 0;

pthread_mutex_t mutex;
/*
void other() {
    int x = 0;
}
*/

void* routineA(void *args) {
    pthread_mutex_lock(&mutex);
    int* a = (int*)args;
    *a = 101;
    pthread_mutex_unlock(&mutex);
    // other();
    return NULL;
}

// void* drop_fake() {};

// struct ArtificalVTable {
//     void*(*drop)();
//     uint8_t s[16];
//     void*(*routine)(void*);
// };

// struct ArtificalVTable V = { &drop_fake, {}, &routineA};


// void create(struct ArtificalVTable *table, int *args) {
//     pthread_t thread;
//     pthread_create(&thread, NULL, table->routine, args);
//     pthread_join(thread, NULL);
// }

int main() {
    int t = 10;
    // create(&V, &t);
    pthread_t thread;
    pthread_create(&thread, NULL, &routineA, &g);
    pthread_join(thread, NULL);

    // int *y = &g;
    // int **z = &y;


    // pthread_t thread2;
    // pthread_create(&thread2, NULL, &routineA, *z);
    // pthread_join(thread2, NULL);
    return 0;
}
