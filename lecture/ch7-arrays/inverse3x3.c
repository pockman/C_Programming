#include <assert.h>
#include <stdio.h>
#include <stdbool.h>

typedef int mat3x3_t[3][3];

bool is_odd(int i) { 
  return (i % 2 == 1) ? true : false; 
}

bool is_even(int i) { 
  return !is_odd(i); 
}

int sign_cofactor(unsigned int i, unsigned int j) {
  if (is_even(i+j)) return 1;

  return -1;
}
/*
 * 
 * | a b |
 * | c d |
 * 
 */
int det2(int a, int b, int c, int d) {
  return a * d - b * c;
}

int calculate_cofactor(mat3x3_t m, unsigned int i, unsigned int j) {
  assert(i<3 && j<3);
  if (0==i && 0==j) return det2(m[1][1],m[1][2],m[2][1],m[2][2]);
  if (0==i && 1==j) return det2(m[1][0],m[1][2],m[2][0],m[2][2]);
  if (0==i && 2==j) return det2(m[1][0],m[1][1],m[2][0],m[2][1]);

  if (1==i && 0==j) return det2(m[0][1],m[0][2],m[2][1],m[2][2]);
  if (1==i && 1==j) return det2(m[0][0],m[0][2],m[2][0],m[2][2]);
  if (1==i && 2==j) return det2(m[0][0],m[0][1],m[2][0],m[2][1]);
  
  if (2==i && 0==j) return det2(m[0][1],m[0][2],m[1][1],m[1][2]);
  if (2==i && 1==j) return det2(m[0][0],m[0][2],m[1][0],m[1][2]);

  // if (2==i && 2==j) 
  return det2(m[0][0],m[0][1],m[1][0],m[1][1]);
}

void
calculate_cofactor_mat(mat3x3_t a, mat3x3_t cofactor_mat)
{
  for (int col=0; col<3; col++)
    for (int row=0; row<3; row++){
      cofactor_mat[col][row] = sign_cofactor(col,row) * 
        calculate_cofactor(a, col, row);
    }

}

void
transpose_swap(mat3x3_t m, unsigned int i, unsigned int j) {
  unsigned int t = m[i][j];
  m[i][j] = m[j][i];

  m[j][i] = t;
}

void
transpose(mat3x3_t m) {
  for (int i=0; i<3; i++)
    for (int j=i+1; j<3; j++){
      transpose_swap(m, i, j);
    }
}

void
print_mat(mat3x3_t a)
{
  for (int col=0; col<3; col++) {
    for (int row=0; row<3; row++)
      printf("%5i\t",a[col][row]);
    putchar('\n');
  }

}


int
det3x3(mat3x3_t m)
{
int r = m[0][0] * m[1][1] * m[2][2] + 
        m[0][1] * m[1][2] * m[2][0] +
        m[0][2] * m[1][0] * m[2][1] -

        m[0][2] * m[1][1] * m[2][0] -
        m[1][2] * m[2][1] * m[0][0] -
        m[2][2] * m[0][1] * m[1][0];

  return r;
}


mat3x3_t a = {{1,2,3}, 
              {0,4,5}, 
              {1,0,6}};

mat3x3_t cofactor_mat = {{0,0,0},
                         {0,0,0},
                         {0,0,0}};

int main (int argc, char* argv[]) {
  
  calculate_cofactor_mat(a, cofactor_mat);
  transpose(cofactor_mat);
  print_mat(cofactor_mat);
  printf("* (1/%d)", det3x3(a));
  return 0;
}

