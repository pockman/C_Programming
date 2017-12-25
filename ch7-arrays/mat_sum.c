#include <assert.h>
#include <stdio.h>

#define ROW_ELEMENTS 3
#define COL_ELEMENTS 2

typedef int mat_t[COL_ELEMENTS][ROW_ELEMENTS];

// array of array of integers
mat_t m = {{1, 2, 3}, {4, 5, 6}};
mat_t n = {{10, 20, 30}, {40, 50, 60}};

mat_t r;

void mat_add(mat_t m, mat_t n, mat_t r) {
  for (int column = 0; column < COL_ELEMENTS; column++)
    for (int row = 0; row < ROW_ELEMENTS; row++) {

      r[column][row] = m[column][row] + n[column][row];
    }
}

void print_mat(mat_t r) {
  for (int column = 0; column < COL_ELEMENTS; column++) {
    for (int row = 0; row < ROW_ELEMENTS; row++) {

      printf("%4d\t", r[column][row]);
    }
    putchar('\n');
  }
}

int main(int argc, char *argv[]) { 
  mat_add(m, n, r);
  print_mat(r);
  return 0; 
}
