#include <stdio.h>

int main(int argc, char *argv[]) {

  float x5 = -5.0f;
  float x1 = 1.0f;

  unsigned int x = 0x7f7fffff;
  unsigned int x2= 0x0;
  printf("5.0   -- %x\n", *(int *)&x5);
  printf("1.0   -- %x\n", *(int *)&x1);
  printf("max   -- %e\n", *(float *)&x);
  printf("zero  -- %e\n", *(float *)&x2);

  printf("%lu\n", sizeof(float));
  printf("%lu\n", sizeof(double));
  printf("%lu\n", sizeof(long double));

  return 0;
}
