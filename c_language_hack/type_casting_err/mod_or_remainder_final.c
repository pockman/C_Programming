#include <assert.h>
#include <stdio.h>

// so % is getting-remainderr

int mod(int a, int b) {
  int c = a / b; // to - infinity
  int m = a - c * b;
  if (m < 0)
    m += b;
  return m;
}

int main(int argc, char *argv[]) {
  printf("%d\n", mod(-7, 4)); // 1
  printf("%d\n", (-7 % 4));   // -3

  assert(mod(-7, 4) == (-7 % 4));
  assert(-3 == (-7 % 4));

  return 0;
}
