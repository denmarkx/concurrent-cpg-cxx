int g = 100;
int h = 500;

int* get(int* p) {
    return p;
}

int main() {
    int *x = get(&g);
    int *y = get(&h);
    return 0;
}
