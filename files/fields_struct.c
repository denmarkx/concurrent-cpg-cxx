struct S {
    int* x;
    int* y;
};

int main() {
    struct S s;
    int n = 100;
    s.x = &n;

    int q = 20000;
    s.y = &q;

    int test = 20;
    int *ptr = &test;
}
