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
subt(int a, int b)
{
  return add(-b, a);
}

int 
mul (int a, int b) {
  assert(b >= 0);

  if (0 == b)
    return 0;

  return add(mul(a, pred(b)), a);
}

int
div(int a, int b){
  assert (b > 0);

  if (a < b)
    return 0;

  return succ( div( subt(a, b), b) );
}

int
mod(int a, int b) {

  assert( a>=0 && b>0 );
  if (a < b) 
    return a;

  return mod(subt(a, b), b);
}


