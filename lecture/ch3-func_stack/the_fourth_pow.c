#include <assert.h>

int 
square(int a)
{
  return a * a;
}


int 
the_fourth_power(int a)
{
  return square(square(a));
}

int 
main (int argc, char* argv[]) {
  
  int a = 10;

  int r = the_fourth_power(a);

  assert(r == a*a*a*a);

  return 0;
}
