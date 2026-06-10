#include <stdatomic.h>

atomic_int a;
int main() {
	atomic_init(&a, 0);

	atomic_store_explicit(&a, 100, memory_order_seq_cst);
	int x = atomic_load_explicit(&a, memory_order_seq_cst);
}