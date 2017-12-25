#include <stdbool.h>
#include <stdio.h>
#include <assert.h>

int
value_of_coin ( int n_class );

int
count_change( int n_class, int amount ) {
  if (0 == n_class) return 0;
  if (amount < 0) return 0;

  if (0 == amount) return 1;


  return count_change( n_class - 1, amount )
       + count_change(n_class, amount - value_of_coin(n_class));

}

int
value_of_coin ( int n_class ) {
  assert(n_class < 4 && n_class > 0 );

  int val = 0;
  
  switch (n_class) {
    case 1:
      val = 1;
      break;
    case 2:
      val = 2;
      break;
    case 3:
      val = 5;

  }
  return val;

}

int main (int argc, char* argv[]) {


  assert(count_change(3, 1) == 1);
  assert(count_change(3, 2) == 2);
  assert(count_change(3, 3) == 2);
  assert(count_change(3, 4) == 3);
  assert(count_change(3, 5) == 4);


  int amount;

  puts("Enter the amount of coins: ");

  scanf("%d", &amount);
  printf("%d\n", count_change(3, amount));

  return 0;
}


