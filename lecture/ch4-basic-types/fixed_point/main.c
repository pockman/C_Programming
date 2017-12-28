#include <stdio.h>
#include <math.h>
typedef double (*fp_t) (double x);

double fixed_point(fp_t f, double first_guess );

double golden_ratio(double x) {
  return 1.0 + 1.0/x;
}

/*
 * x^x = 1000
 * x = log(1000)/log(x) 
 * 
 */
double gingle_bell(double x){
  return log(1000) / log(x);
}


int main (int argc, char* argv[]) {
  printf("%lf\n", fixed_point(cos, 1.0f));
  printf("%lf\n", fixed_point(sqrt, 1.0f));
  printf("%lf\n", fixed_point(golden_ratio, 1.0f));
//  printf("%lf\n", fixed_point(gingle_bell, 1.0f));
  printf("%lf\n", fixed_point(gingle_bell, 2.0f));
  return 0;
}
