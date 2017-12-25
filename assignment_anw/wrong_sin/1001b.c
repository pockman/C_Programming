#include <stdio.h>
#include <stdbool.h>

bool
is_even(int n) {
  return n%2 == 0;
}


int 
sum_int(int n) {
  if (n<0) return 0;

  if (is_even(n))
    return n / 2 * (n+1);
  else
    return (n+1) /2 * n;
}


int main (int argc, char* argv[]) {
  
  int n = 0;
  while(scanf("%d", &n) != EOF) {
    printf("%d\n\n", sum_int(n));
  }

  return 0;
}
