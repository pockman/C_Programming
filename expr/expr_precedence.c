#include <stdio.h>

int 
badcode(int a) {
  int r;
  r = a += a ++;
  return r;
}


int main (int argc, char* argv[]) {
  int a=10;
  printf("%d, %d\n", a, badcode(a));

  return 0;
}
