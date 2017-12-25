#include <assert.h>
#include <stdio.h>

unsigned int reverse_digits_2( unsigned int x ) {
  assert (x > 9 && x < 100);

  unsigned int units = x % 10;
  unsigned int tens = x / 10;

  return units * 10 + tens;

}


int main (int argc, char* argv[]) {

  unsigned int x;

  fprintf(stdout, "Enter two-digit number: ");
  fscanf(stdin, "%d\n", &x);
  fprintf(stdout, "The reversal is: %d\n", reverse_digits_2(x));

  return 0;
}


