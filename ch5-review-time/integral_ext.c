#include <math.h>
#include <stdio.h>
#include <math.h>
#include <assert.h>

#define FX circle

double square(double x) {
  return x * x;
}


double circle(double x) {

  assert (x < 1.0L && x >= 0);
  return sqrt(1 - square(x));
}

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

  printf("%.10lf\n", integral(0, 1.0) );
  printf("%.10lf\n", M_PI_4 );

  return 0;
}



