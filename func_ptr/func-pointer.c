#include <stdio.h>


typedef int (* func_ptr_t)(int a, int b);


int add(int a, int b)
{
  return a + b;
}


int main (int argc, char* argv[]) {
  
  func_ptr_t f = add;

  printf("%p\n", add);
  printf("%p\n", f);

  printf("%p\n", *f);
  printf("%p\n", **f);
  printf("%p\n", ***f);


  f(3, 4);
  (*f)(3,4);
  (**f)(3,4);
  (***f)(3,4);

  return 0;
}
