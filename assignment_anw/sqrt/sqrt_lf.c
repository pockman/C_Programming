#include <stdio.h>
#include <math.h>
typedef double (*fp_t) (double x, double y);

double fixed_point(fp_t f, double y,  double first_guess );


double g(double y, double x) {
  return ( (y/x)  + x ) / 2.0f;
}

double
sqrt_lf(double y) {
  return fixed_point(g, y, 1.0f);
}


int main (int argc, char* argv[]) {
  printf("%lf\n", sqrt_lf(2.0f));
  return 0;
}
