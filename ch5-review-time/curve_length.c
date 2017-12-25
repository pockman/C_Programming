#include <stdio.h>
#include <math.h>
#include <assert.h>

#define FX circle 

double square(double x);

double circle ( double x ) {
  assert(x >= 0.0 && x <= 1.0);

  return sqrt(1 - square(x));
}

double square(double x) {
  return x * x;
}

double dist (double x1, double y1, double x2, double y2) {
  return sqrt(square(x2 - x1) + square(y2 - y1));
}

double curve_length(double lower_bound, double upper_bound) {
  const double delta_x = 1e-4;
  double x = lower_bound;

  double sum = 0.0L;

  while ( (x += delta_x) < upper_bound) {
    sum += (  dist(x, FX(x), x-delta_x, FX(x-delta_x))          );

  }
  return sum;

}

int main (int argc, char* argv[]) {

  printf("%.10lf\n", curve_length(0, 1.0) );
  printf("%.10lf\n", M_PI_2 );

  return 0;
}



