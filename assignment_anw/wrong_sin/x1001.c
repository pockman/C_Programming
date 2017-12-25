#include <stdio.h>

int 
sum_int(int n) {
  if (n<0) return 0;

  return n*(n+1)/2;
}


int main (int argc, char* argv[]) {
  
  int n = 0;
  while(scanf("%d", &n) != EOF) {
    printf("%d\n\n", sum_int(n));
  }

  return 0;
}
