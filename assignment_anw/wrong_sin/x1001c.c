#include <stdio.h>
#include <stdbool.h>


long int 
sum_int(long int n) {
  if (n<0) return 0;

  return (n+1) * n / 2;
}


int main (int argc, char* argv[]) {
  
  long int n = 0;
  while(scanf("%ld", &n) != EOF) {
    printf("%d\n\n", (int)sum_int(n));
  }

  return 0;
}
