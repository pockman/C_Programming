#include <stdio.h>
#include <stdbool.h>

int average(int a, int b)
{
  return (a+b) / 2;
}

int sign(int x)
{
  if (x < 0)
    return -1;

  if (x == 0)
    return 0;

  return 1;
}


int abs(int x)
{
  return sign(x) * x;
}

int square(int x)
{
  return x * x;
}

bool is_equal(int a, int b, int c)
{
  return (square(abs(a-b)) + 
         square(abs(b-c)) + 
         square(abs(c-a))) <= 2; 

}

int average_more_numbers_simple(int a, int b, int c)
{
  return (a+b+c) / 3;
}

int average_more_numbers(int a, int b, int c)
{
  if (is_equal(a, b, c))
    return a;

  if (a > b)
    return average_more_numbers(b+1, c, a-1);
  else
    return average_more_numbers(b, c, a);
}

int average_more_numbers_fast(int a, int b, int c)
{
  if (is_equal(a, b, c))
    return a;

  int x = average(a, b);
  int y = average(b, c);
  int z = average(c, a);

  return average_more_numbers_fast(x, y, z);


}
int main (int argc, char* argv[]) {

  int x = average_more_numbers(1, 2, 3);
  printf("%d\n", x);
  return 0;
}
