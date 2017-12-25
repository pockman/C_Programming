#include <math.h>
#include <stdio.h>

int  int main (int argc, char* argv[]) {
  

  return 0;
}
  
int fac(int n) {
  if (n == 1) 
    return 1;
  else
    return n*fac(n-1);
}

double
numerator(double x, int order) {
  return pow(x, order);
}

double
denominator (int n) {
  return fac(n);
}

int 
symbol (int n) {
  if (n % 2 == 0) 
    return 1;
  else
    return -1;
}


int main (int argc, char* argv[]) {

  
  int i;
  double x;
  double tmp = 0;
  double sin_x = 0;

  printf("input the x: ");
  scanf("%lf", &x);

  for(i=0;;i++) {
    tmp = sin_x;
    sin_x += numerator(x, 2*i+1) / denominator(2*i+1) * symbol(i);

    if (fabs(sin_x - tmp ) < 1e-6)
      break;
  }

  printf("sin(%f)=%lf\n", x, sin_x);

  return 0;
}
