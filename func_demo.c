#include <assert.h>
#include <stdbool.h>

int
square(int x)
{
  return x * x;
}


bool
is_odd(int i)
{
  return (i % 2 == 1);
}

bool
is_even(int i)
{
  return !is_odd(i);
}


int main (int argc, char* argv[]) {
  // testing code here
  assert(is_even(2));
  assert(is_even(420));
  assert(is_odd(7));


  return 0;
}
