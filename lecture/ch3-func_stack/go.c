#include <assert.h>

int 
add(int a, int b, int c)
{
  return a + b + c;
}


int passme(int a)
{
  return a;
}

int main (int argc, char* argv[]) {
  
  int a = 10;
  int b = 20;
  int c = 30;

  int sum = passme(add(a, b, c));

  assert(sum == a+b+c);

  return 0;
}
