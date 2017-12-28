#include <assert.h>

int add(int a, int b);
int subt(int a, int b);
int mul(int a, int b);
int div(int a, int b);
int mod(int a, int b);

int pred(int n);
int succ(int n);

int main (int argc, char* argv[]) {

  assert (pred(0) == -1);
  assert (succ(0) == 1);
  assert (add(9, 10) == 19);
  assert (subt(17, 10) == 7);
  assert (mul(3, 4) == 12);
  assert (div(17, 10) == 1);
  assert (mod(17, 10) == 7);


  return 0;
}


