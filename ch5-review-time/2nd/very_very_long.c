#include <stdio.h>

#define R(a, b, c, d) if ((a) >= (b) && (a) >= (c) && (a) >= (d) \
                      && (b) >= (c) && (b) >= (d)) return b;


int the_2nd_largest(int a, int b, int c, int d) {
    R(a, b, c, d)
    R(a, b, d, c)
    R(a, c, b, d)
    R(a, c, d, b)
    R(a, d, b, c)
    R(a, d, c, b)
    R(b, a, c, d)
    R(b, a, d, c)
    R(b, c, a, d)
    R(b, c, d, a)
    R(b, d, a, c)
    R(b, d, c, a)
    R(c, a, b, d)
    R(c, a, d, b)
    R(c, b, a, d)
    R(c, b, d, a)
    R(c, d, a, b)
    R(c, d, b, a)
    R(d, a, b, c)
    R(d, a, c, b)
    R(d, b, a, c)
    R(d, b, c, a)
    R(d, c, a, b)
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
