#include <stdio.h>

unsigned int
f(unsigned int n)
{
  return n*(n+1)*(n+2)/6;
}

int main (int argc, char* argv[]) {
  printf("%d\n", f(100));

  return 0;
}
