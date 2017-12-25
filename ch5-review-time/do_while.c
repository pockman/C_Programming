#include <math.h>
#include <stdio.h>
#include <stdbool.h>
#include <ctype.h>


void demo_code() {
/*
 *   while (true) ;
 * 
 *   while (true) printf("*");
 * 
 * 
 *   int sum = 0;
 *   int i = 1;
 *   while (i < 10) {
 * 
 *     sum += i;
 * 
 *   }
 * 
 * 
 */
  int sum = 0, i = 1;
  while (true) {
    if ( i == 5 ) continue;
    sum += i;
    i++;
    printf("%d\n", i);
    if ( i == 10 ) break;
  }

/*
 *   switch (i) {
 *     case 1:
 *       puts("aaa");
 *     case 2:
 *       puts("456");
 *       continue; //'continue' statement not in loop statement
 * 
 *     default:
 *       break;
 * 
 *   }
 * 
 */

  

/*
 *   double lower_bound;
 *   double upper_bound;
 *   double delta_x = 1e-3;
 *   double x = lower_bound;
 * 
 *   while (x += delta_x < upper_bound) {
 * 
 *     sum += cos(x) * delta_x;
 * 
 *   }
 * 
 */

}




int main (int argc, char* argv[]) {
  char user_input;
  do {
    printf("\nWill you marry me? [y/n]");
    scanf("%c", &user_input);
  } while (toupper(user_input) != 'Y'); // ctype.h

  puts("Thank you.\n");

  return 0;

}



