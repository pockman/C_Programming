#include <stdio.h>

#include <assert.h>
#include <string.h>

#define STR_LEN 80

char str[STR_LEN+1];
char  *p;

char date_array[] = "June 14";
char *date_pointer = "June 14";


int read_line(char str[], int n)
{
  int ch, i = 0;

  while ((ch = getchar()) != '\n')
    if (i < n)
      str[i++] = ch;
  str[i] = '\0';   /* terminates string */
  return i;        /* number of characters stored */
}

void foo();

int main (int argc, char* argv[]) {
  /* "When you come to a fork in the road, take it." */
  /* "Candy\nIs dandy\nBut liquor\nIs quicker.\n  --Ogden Nash\n" */

  printf("%ld %ld\n", sizeof(str), sizeof(p));

  printf("When you come to a fork in the road, take it.  \
      --Yogi Berra");
  printf("\n01234567890123456789");
  printf("%6s\n", str);


  foo();
  /* char *pointer; */
  /* char *p; */

  /* p = "abc"; */

  char ch;

  ch = "abc"[1]; // ch == 'b'

  char *p = "abc";
  *p = 'd';   /*** WRONG ***/

  printf("%s\n", p);

  return 0;
}



char _date[8] = "June 14"; 
char date4[] = "June 14";


char digit_to_hex_char(int digit)
{
  return "0123456789ABCDEF"[digit];
}

char digit_to_char(int digit) {
  assert(digit < 10 && digit >= 0);
  return '0' + digit;
}


void foo() {
  /*
   *   char *p;
   * 
   *   p[0] = 'a';    [>** WRONG **<]
   *   p[1] = 'b';    [>** WRONG **<]
   *   p[2] = 'c';    [>** WRONG **<]
   *   p[3] = '\0';   [>** WRONG **<]
   * 
   */

  char str[] = "Are we having fun yet?";

  printf("%s\n", str);
  printf("%ld\n", strlen(str));
  printf("%ld\n", sizeof(str));

  puts("***********************");
  puts(str);

}


