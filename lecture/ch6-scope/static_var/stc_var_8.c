#include <stdio.h>

int
foo(void)
{
  int a = 41;
  a = a++;
  return a;
}

int main (int argc, char* argv[]) {

  printf("%d\n", foo());
  printf("%d\n", foo());
  return 0;
}
