#include <stdio.h>

long double pi(long double epsilon) {
  long double sum = 0.0;
  long double item = 1.0;


  for (int fn = 1;item >= epsilon; fn++) {
    /* printf("%f\n", item); */
    sum += item;
    item = item * fn / (2 * fn + 1);
  }
  return sum * 2.0;
}

int main(int argc, char *argv[]) {

  long double eps;
  scanf("%Lf", &eps);
  printf("%.6Lf\n", pi(eps));

  return 0;
}
