#include <assert.h>

int add(int a, int b);
int subst(int a, int b);

int pred(int n);
int succ(int n);

int main (int argc, char* argv[]) {

  assert (pred(0) == -1);
  assert (succ(0) == 1);
  assert (add(9, 10) == 19);
  assert (subst(17, 10) == 7);


  return 0;
}


