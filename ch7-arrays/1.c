#include <stdio.h>

#define ELEMENTS(a) (sizeof(a)/sizeof(a[0]))

int 
sum_arr(int a[], size_t n) {
  int sum = 0;
  for (int i = 0; i<n; i++) {
    sum += a[i];
  }

  return sum;
}


int main (int argc, char* argv[]) {
  int array[] = {12, 45, 900, -4, 74, 92, 34};
  
  printf("%d\n", sum_arr(array, ELEMENTS(array)));

  return 0;
}
