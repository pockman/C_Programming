#include <stdio.h>
void
triangle(unsigned int m, unsigned int n){

  if (m > n) return;

  for (int i=0; i<m; i++) putchar('*');
  putchar('\n');
  triangle(m+1, n);
  for (int i=0; i<m; i++) putchar('*');
  putchar('\n');

}

int main (int argc, char* argv[]) {

  triangle(3,5);
  

  return 0;
}
