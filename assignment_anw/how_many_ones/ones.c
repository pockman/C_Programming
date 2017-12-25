#include <stdio.h>

/*
 * unsigned int
 * counter_ones(unsigned char x) {
 * 
 *   if (0 == x) return 0;
 * 
 *   return (x&1) + counter_ones(x>>=1);
 * 
 * }
 */



unsigned int
counter_ones(unsigned char x) {

  if (0 == x) return 0;
  unsigned char one = x&1;

  return one + counter_ones(x>>=1);

}

int main (int argc, char* argv[]) {
  unsigned int a = 0x7;
  printf("%x %d\n", a, counter_ones(a));

  return 0;
}
