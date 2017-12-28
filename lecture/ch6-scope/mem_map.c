#include <stdio.h>
#include <stdlib.h>

typedef int s32;

int x = 10;

int add(int a, int b) {
  int x = a * b;
  printf(".code %p\n", add);
  printf(".local var %p\n", &x);
  printf(".local var %p\n", &a);

  if (b==0) return a;

  return add(++a, --b);
}

s32 sum_digits(s32 n) {

  static int no_use = 90;

  auto int sum = 0; /* local variable */
  printf("code %p\n", sum_digits);
  printf("local var %p\n", &sum);
  printf("globe var %p\n", &x);
  printf("static block %p\n", &no_use);


  while (n > 0) {
    sum += n % 10;
    n /= 10;
  }

  return sum;
}

int main (int argc, char* argv[]) {
  int *p = malloc(1024);
  printf("heap addr: %p\n", p);
  add(2,2);
  return sum_digits(sum_digits(123));
}


