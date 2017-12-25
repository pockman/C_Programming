#include <stdio.h>

double iterate(double x_prev);

int main (int argc, char* argv[]) {

  float x;
  scanf("%f\n", &x);
  printf("%f\n", iterate(x));

  return 0;
}
