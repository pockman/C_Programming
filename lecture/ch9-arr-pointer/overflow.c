#include <stdio.h>

int f(int n) {
  if (n == 0)
    return 1;

  return n + f(n - 1);
}

int main(int argc, char *argv[]) {

  printf("%d\n", f(2000));

  return 0;
}
