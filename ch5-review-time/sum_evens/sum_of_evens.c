#include <stdio.h>
#include <stdbool.h>

static inline bool
is_odd(long long int n) {
  /* return n & 1; */
  return n % 2 == 1;
}

static inline bool
is_even(long long int n) {
  return !is_odd(n);
}

long long int 
sum_of_evens(long long int n) {
  long long int sum = 0;
  for (long long int i=1; i<=n; i++)
    sum += (is_even(i)?i:0);
  return sum;
}

int main (int argc, char* argv[]) {
  printf("%lld\n", sum_of_evens(100000000));

  return 0;
}
