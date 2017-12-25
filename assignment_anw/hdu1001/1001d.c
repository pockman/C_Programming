#include <stdio.h>
#include <stdbool.h>


unsigned int 
sum_int(unsigned int n) {
  return (n+1) * n / 2;
}


int main (int argc, char* argv[]) {
  
  unsigned int n = 0;
  while(scanf("%u", &n) != EOF) {
    printf("%u\n\n", sum_int(n));
  }

  return 0;
}
