#include <math.h>
#include <stdio.h>
#include <math.h>
#include <assert.h>

#define FX sin 


double integral(double lower_bound, double upper_bound) {
  const double delta_x = 1e-3;
  double x = lower_bound;

  double sum = 0.0L;

  while ( (x += delta_x) < upper_bound) {
    sum += (FX(x) * delta_x);

  }
  return sum;

}

int main (int argc, char* argv[]) {

  printf("%.10lf\n", integral(0, M_PI) );

  return 0;
}



