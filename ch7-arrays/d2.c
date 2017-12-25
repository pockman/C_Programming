#include <assert.h>
#include <stdio.h>

// array of integers
int a[3]; 

// array of array of integers
int b[2][3] = {{1, 2, 3}, {4, 5, 6}};




int main(int argc, char *argv[]) {

  printf("%d\n", b[0][0]);

  assert(sizeof b  == sizeof(int) * 6);
  assert(sizeof b[0]  == sizeof(int) * 3);
  assert(sizeof b[1]  == sizeof(int) * 3);

  assert(sizeof b[2][3]  == sizeof(int));

  b = b;

  return 0;
}
