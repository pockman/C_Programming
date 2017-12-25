#include <assert.h>
#include <stdio.h>

#define COIN_CLASS_NUMBER (7+1)

int value_of_coin (int n_class) {

  assert(n_class < COIN_CLASS_NUMBER && n_class > 0);
  if (1 == n_class) return 1;
  if (2 == n_class) return 2;
  if (3 == n_class) return 5;
  if (4 == n_class) return 10;
  if (5 == n_class) return 20;
  if (6 == n_class) return 50;
  if (7 == n_class) return 100;

  return -1;
}

int
count_change( int n_class, int amount ) {

  if (n_class < 1) return 0;
  if (amount < 0) return 0;

  if (0 == amount) return 1;


  return count_change(n_class - 1, amount)
         + count_change(n_class, amount - value_of_coin(n_class));
}

int main (int argc, char* argv[]) {
  printf("%d\n", count_change(7, 1));

  return 0;
}











