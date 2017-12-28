#include <stdio.h>

int max(int a, int b) { return (a > b ? a : b); }

int the_2nd_largest(int a, int b, int c, int d) {
  int result;

  if ((result = max(max(a, b), c)) < d)
    return result;
  if ((result = max(max(a, b), d)) < c)
    return result;
  if ((result = max(max(a, c), d)) < b)
    return result;
  if ((result = max(max(b, c), d)) < a)
    return result;
}

int main(int argc, char *argv[]) {

  printf("%d\n", the_2nd_largest(1, 2, 3, 4));
  printf("%d\n", the_2nd_largest(4, 4, 3, 4));
  printf("%d\n", the_2nd_largest(4, 4, 5, 4));
  printf("%d\n", the_2nd_largest(4, 2, 5, 1));
  printf("%d\n", the_2nd_largest(4, 3, 2, 1));
  printf("%d\n", the_2nd_largest(4, 4, 4, 4));
  return 0;
}
