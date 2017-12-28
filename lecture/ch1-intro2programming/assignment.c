#include <stdbool.h>

/*
 *   C language has got 32 keywords
 * auto
 * register
 *
 * volatile
 * const
 * static
 * extern
 *
 * char
 * int
 * double
 * enum
 * float
 * short
 * long
 * signed
 * unsigned
 * void
 * struct
 * union
 *
 * sizeof
 *
 * typedef
 *
 * continue
 * default
 * break
 * if
 * else
 * for
 * goto
 * return
 * switch
 * case
 * while
 * do
 * 
 */

int max(int a, int b)
{
  if (a > b)
    return a;
  return b;

}

  
  
bool
relative_expressions(int a, int b)
{

  return (a+b)*(a+b) == (a*a + 2*a*b + b*b);

}


int main (int argc, char* argv[]) {

  int number_of_students;
  number_of_students = 60;

  <%

    int a;
    a = 10;
  %>

  int another_variable_keeps_the_number;
  another_variable_keeps_the_number = number_of_students;

  return 0;
}
