#include <assert.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdint.h>

int
value_of_coin(int n_class);

int
play_with_change(int n_class, int amount) {
  if (n_class < 1) return 0;
  if (amount < 0) return 0;

  if (0 == amount) return 1;

  return play_with_change(n_class - 1, amount) +
    play_with_change(n_class, amount - value_of_coin(n_class));
}

int
value_of_coin(int n_class) {
  int val = 0;
  switch(n_class) {
    case 1:
      val = 1;
      break;   // jump to the end of switch statement
    case 2:
      val = 2;
      break;
    case 3:
      val = 5;
      break;

    default:
      assert(false);
  }
  return val;
}


int main (int argc, char* argv[]) {
  for (int i=0; i<100; i++) 
    printf("%d\n" ,play_with_change(3, i));

  return 0;
}


