#include <stdio.h>
#include <stdbool.h>


long long int 
sum_int(long long int n) {
  return (n+1) * n / 2;
}


int main (int argc, char* argv[]) {
  
  long long int n = 0;
  while(scanf("%lld", &n) != EOF) {
    printf("%u\n\n", (unsigned int)sum_int(n));
  }

  return 0;
}
