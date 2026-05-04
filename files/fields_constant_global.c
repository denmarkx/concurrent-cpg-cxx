void f1() {}
void f2() {}

void (*const g[])() = {&f1, &f2};

int main() {
	void (*x)() = (void(*)())(g[0]);
	void (*y)() = (void(*)())(g[1]);
	x();
	y();
	return 0;
}