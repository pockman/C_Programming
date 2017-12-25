#include <assert.h>
#include <stdio.h>

unsigned int
reverse_digits(unsigned int x) {
  assert(x < 100 && x > 9);
  unsigned int a = x % 10;
  unsigned int b = x / 10;

  return a * 10 + b;

}

int main (int argc, char* argv[]) {

  unsigned int x;

  fprintf(stdout, "Enter a two-digit number:");
  fscanf(stdin, "%d", &x);
  fprintf(stdout, "The reversal number is:%d\n", reverse_digits(x));

  return 0;
}

