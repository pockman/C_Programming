
#include <assert.h>
#include <stdbool.h>
#include <stdio.h>


int
dot_mul(int arr_a[], int arr_b[], unsigned int size ) {

  int sum = 0;
  for (unsigned int i = 0; i<size; i++) {
    sum += (arr_a[i] * arr_b[i]);
  }

  return sum;
}


int main(int argc, char *argv[]) {

  const unsigned int array_size = 10;
  int arr[array_size];
  int arr_b[array_size];
  int i;

  for (i = 0; i < array_size; i++)
    arr[i] = i;

  assert(dot_mul(arr, arr, array_size) == 9*(9+1)*(2*9+1)/6);
  unsigned long xb = (unsigned long)arr_b;
  printf("%lx\n", xb);


  void *location = arr_b;
  printf("%p\n", location);



  return 0;
}
