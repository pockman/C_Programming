#include <stdio.h>
#include <assert.h>

unsigned long long int 
factorial(unsigned int long long n) {
  assert (n <= 20);
  if (0 == n)
    return 1;

  return n * factorial(n-1);
}


long double 
item(unsigned long long int n) {
  return 1.0L / factorial(n);
}

long double
accumulate(unsigned long long int n) {
  if (0 == n) 
    return item(0);

  return item(n) + accumulate(n-1);
}


int main (int argc, char* argv[]) {

  printf("%2.51Lf\n", accumulate(20));
  return 0;
}
