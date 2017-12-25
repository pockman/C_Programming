#include <stdio.h>

int a;

int
foo(void)
{
  ++a;
  return a;
}

int main (int argc, char* argv[]) {

  printf("%d\n", foo());
  printf("%d\n", foo());
  printf("%d\n", foo());
  return 0;
}
