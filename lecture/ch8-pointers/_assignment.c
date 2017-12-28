#include <stdio.h>

void foo() {

  int i, *p, *q;
  p = &i;

  q = p;


  *p = 1;

  *q = 2;
}

void
swap(int a, int b) // not work
{
  int temp = a;
  a = b;
  b = temp;
}

void
swap_int(int *a, int *b)
{
  int temp = *a;
  *a = *b;
  *b = temp;
}



int main(int argc, char *argv[]) {

  int i;
  int *p;

  p = &i;

  i = 1;

  printf("%d\n", i);  /* prints 1 */
  printf("%d\n", *p); /* prints 1 */
  *p = 2;

  printf("%d\n", i);  /* prints 2 */
  printf("%d\n", *p); /* prints 2 */


  return 0;
}


