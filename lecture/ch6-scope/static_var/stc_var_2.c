#include <stdio.h>

int
foo(void)
{
  static int a = 3;
  ++a;
  return a;
}

int main (int argc, char* argv[]) {

  printf("%d\n", foo());
  printf("%d\n", foo());
  printf("%d\n", foo());
  return 0;
}
