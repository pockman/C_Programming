#include <stdio.h>

int max (int a, int b) {
  if (a > b) return a;

  return b;
}

int min (int a, int b) {
  if (a < b) return a;

  return b;
}

int the_2nd_largest(int a, int b, int c, int d) {
  int x_max = max(a,b);
  int x_min = min(a,b);
  int y_max = max(c,d);
  int y_min = min(c,d);

  if (x_min >= y_max) return x_min;
  if (y_min >= x_max) return y_min;
  return min(x_max, y_max);
}


int main (int argc, char* argv[]) {
  
  printf("%d\n", the_2nd_largest(1, 2, 3, 4));
  printf("%d\n", the_2nd_largest(4, 4, 3, 4));
  printf("%d\n", the_2nd_largest(4, 4, 5, 4));
  printf("%d\n", the_2nd_largest(4, 2, 5, 1));
  printf("%d\n", the_2nd_largest(4, 3, 2, 1));
  return 0;
}
