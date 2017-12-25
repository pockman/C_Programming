#include <stdio.h>

int
bar (void)
{
  int a = 42;
  return a;
}


int
foo(void)
{
  int a;
  return a;
}

int main (int argc, char* argv[]) {

  printf("%d\n", foo());
  printf("%d\n", bar());
  printf("%d\n", foo());
  return 0;
}
