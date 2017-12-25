#include <stdio.h>
#include <math.h>

double
get_area_circle(double r) {
  return r*r*M_PI;
}


double
get_perimeter_circle(double r) {
  return 2*M_PI*r;
}

int main (int argc, char* argv[]) {
  double r = 0.0;

  scanf("%lf", &r);

  printf("%0.2f\n", get_area_circle(r));
  printf("%0.2f", get_perimeter_circle(r));

  return 0;
}

