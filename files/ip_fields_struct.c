struct Test {
    int *x;
};

void f1(struct Test *s, int **n) {
    s->x = *n;
}

int main() {
    struct Test s;
    int x = 100;
    s.x = &x;

    f1(&s, &s.x);

    return 0;
}
