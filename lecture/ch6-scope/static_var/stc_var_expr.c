#include <stdio.h>

int
three(void) { puts("3"); return 3; }

int
four(void) { puts("4"); return 4; }

int main (int argc, char* argv[]) {
  int a = three() + four();

  printf("%d\n", a);
  return 0;
}
