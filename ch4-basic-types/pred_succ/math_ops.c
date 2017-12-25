#include <assert.h>

int pred(int n);
int succ(int n);


int
add (int a, int b)
{
  assert(b >= 0);
  if (b == 0)
    return a;
  else
    return add(succ(a), pred(b));
}

int
subst(int a, int b)
{
  return add(-b, a);
}


