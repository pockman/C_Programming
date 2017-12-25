# 1 "stack.c"
# 1 "/Users/huiw/Desktop/Courseware/C_Programming_A_Modern_Approach/C/examples/ch6-scope/stack//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "stack.c"
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




# 2 "stack.c" 2
# 1 "/opt/local/lib/gcc6/gcc/x86_64-apple-darwin15/6.3.0/include/stdbool.h" 1 3 4
# 3 "stack.c" 2







# 9 "stack.c"
int contents[100];
int top = 0;

void make_empty(void) { top = 0; }

# 13 "stack.c" 3 4
_Bool 
# 13 "stack.c"
    is_empty(void) { return top == 0; }


# 15 "stack.c" 3 4
_Bool 
# 15 "stack.c"
    is_full(void) { return top == 100; }

void push(int i) {
  
# 18 "stack.c" 3 4
 (__builtin_expect(!(
# 18 "stack.c"
 !is_full()
# 18 "stack.c" 3 4
 ), 0) ? __assert_rtn(__func__, "stack.c", 18, 
# 18 "stack.c"
 "!is_full()"
# 18 "stack.c" 3 4
 ) : (void)0)
# 18 "stack.c"
                   ;
  contents[top++] = i;
}

int pop(void) {
  
# 23 "stack.c" 3 4
 (__builtin_expect(!(
# 23 "stack.c"
 !is_empty()
# 23 "stack.c" 3 4
 ), 0) ? __assert_rtn(__func__, "stack.c", 23, 
# 23 "stack.c"
 "!is_empty()"
# 23 "stack.c" 3 4
 ) : (void)0)
# 23 "stack.c"
                    ;
  return contents[--top];
}
