#include <stdio.h>

long double pi(long double epsilon) {
  long double sum = 0.0;
  long double item = 1.0;

  int fn = 1;

  while (item >= epsilon) {
    /* printf("%f\n", item); */
    sum += item;
    item = item * fn / (2 * fn + 1);
    fn++;
  }
  return sum * 2.0;
}

int main(int argc, char *argv[]) {

  long double eps;
  scanf("%Lf", &eps);
  printf("%.6Lf\n", pi(eps));

  return 0;
}

