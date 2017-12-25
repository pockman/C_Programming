#include <stdio.h>

unsigned int
f(unsigned int n)
{
  unsigned int s = 0;
  for(unsigned int i=1; i<=100; i++) {
    s += (i*(i+1)/2);
  }

  return s;
}

int main (int argc, char* argv[]) {
  printf("%d\n", f(100));

  return 0;
}
