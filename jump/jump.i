# 1 "jump.c"
# 1 "/Users/huiw/Programming/C/examples/jump//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "jump.c"
# 1 "/usr/include/assert.h" 1 3 4
# 42 "/usr/include/assert.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 533 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/sys/_symbol_aliasing.h" 1 3 4
# 534 "/usr/include/sys/cdefs.h" 2 3 4
# 599 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/sys/_posix_availability.h" 1 3 4
# 600 "/usr/include/sys/cdefs.h" 2 3 4
# 43 "/usr/include/assert.h" 2 3 4
# 75 "/usr/include/assert.h" 3 4


# 76 "/usr/include/assert.h" 3 4
void __assert_rtn(const char *, const char *, int, const char *) __attribute__((noreturn));




# 2 "jump.c" 2


# 3 "jump.c"
unsigned int
sum_of_squares(unsigned int n)
{
  unsigned int sum = 0;
  unsigned int current_number = 1;

loop:
  sum = sum + (current_number * current_number);
  current_number++;
  if (current_number <= n)
    goto loop;

  return sum;
}

unsigned int
sum_of_squares_fast(unsigned int n)
{
  return n * (n+1) * (2*n + 1) / 6;
}


int main (int argc, char* argv[]) {

  
# 27 "jump.c" 3 4
 (__builtin_expect(!(
# 27 "jump.c"
 sum_of_squares(5) == sum_of_squares_fast(5)
# 27 "jump.c" 3 4
 ), 0) ? __assert_rtn(__func__, "jump.c", 27, 
# 27 "jump.c"
 "sum_of_squares(5) == sum_of_squares_fast(5)"
# 27 "jump.c" 3 4
 ) : (void)0)
# 27 "jump.c"
                                                    ;

  return 0;
}
