static int x[4] = {0, 1, 2, 3};
static int* y[2];

int main() {
    int z = 200;
    x[1] = z;

    int n = 100;
    y[1] = &n;
    return 0;
}
