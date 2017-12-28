#include <stdio.h>
#include <stdbool.h>
#include <math.h>

int main(int argc, char *argv[]) {

  int a = 5;
  int b = 10;
  int c = 10;

  a += b; // a = (a+b);
  a -= b;
  a *= b;
  a /= b;

  a %= c; // a = (a%c);

          /* ------------------------- */

  float root = (-b + sqrt(b * b - 4 * a * c)) / (2 * a);

  unsigned int year = 1984;
  bool is_leap_year = (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);

          /* ------------------------- */

  int x = b = 100;   //  int x = ( b = 100 );
  int y;

  (y = b) = 100;
          /* ------------------------- */

  ;
  4;
  a=2;
  a+3;
  if ( a > 3 ) 4;

  if ( a > 3 ) a += 5;

  if (a > 3) {
    4;
    a=2;
    a+3;
  }


  if (a > 3) {
      4;
      a=2;
      a+3;
  } else {

          ;
      b=2;
      b+3;
  }


  if ( a > b ) {
    if (a > c) {
      if ( a > y )
        printf("%d\n", a);
      else
        printf("NOT FOUND!");
    } else
     printf("%d\n", c); 
  } else {
    printf ("b :%d\n", b);
  }
      ;
      ;
 ;;;;{};;;
      ;
      ;



  return 0;
}
