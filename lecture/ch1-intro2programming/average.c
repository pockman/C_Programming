#include <stdlib.h>
#include <stdio.h>

#define NUM_OF_ARRAY_ELEMENTS(arr, type) (sizeof(arr)/sizeof(type))


float average(int arr[], size_t size) {
  int sum = 0;

  /* printf("arr: %p\n", &arr); */
  /* printf("size: %p\n", &size); */
  /* printf("sum: %p\n", &sum); */

  for (int i = 0; i < size; i++) {
    sum += arr[i];
  }
  return (float)sum / size;
}

int main (int argc, char* argv[]) {
  int a[5] = {1,2,3,4,5};

  printf("%f\n", average(a, NUM_OF_ARRAY_ELEMENTS(a, int)));  
  return 0;
}
