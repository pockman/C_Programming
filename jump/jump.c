#include <assert.h>

unsigned int
sum_of_squares(unsigned int n)
{
  unsigned int sum = 0;
  unsigned int current_number = 1;

loop:
  sum = sum + (current_number * current_number);
  current_number++;
  if (current_number <= n) 
    goto loop;

  return sum;
}

unsigned int
sum_of_squares_fast(unsigned int n)
{
  return n * (n+1) * (2*n + 1) / 6;
}


int main (int argc, char* argv[]) {
  
  assert(sum_of_squares(5) == sum_of_squares_fast(5));

  return 0;
}
