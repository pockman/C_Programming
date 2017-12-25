#include <stdio.h>

unsigned int
sum_digits(unsigned int x)
{
  if (x < 10) return x;

  return sum_digits(x % 9);
}



int main (int argc, char* argv[]) {
  
  printf("%d\n", sum_digits(4322));
  
  return 0;
}
