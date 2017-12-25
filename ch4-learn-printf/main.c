#include <stdio.h>
#include <math.h>

int main (int argc, char* argv[]) {
  int i = 6;
  int c = i + ++i;

  printf("%d\n", c);
}
