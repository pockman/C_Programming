int foo(int *a, int *b) {
  *a = 5;
  *b = 6;
  return *a + *b;
}

int rfoo(int *restrict a, int *restrict b) {
  *a = 5;
  *b = 6;
  return *a + *b;
}

/* # generated code on 64bit Intel platform: */
/* foo: */
    /* movl    $5, (%rdi)    # store 5 in *a */
    /* movl    $6, (%rsi)    # store 6 in *b */
    /* movl    (%rdi), %eax  # read back from *a in case previous store modified it */
    /* addl    $6, %eax      # add 6 to the value read from *a */
    /* ret */
 
/* rfoo: */
    /* movl      $11, %eax   # the result is 11, a compile-time constant */
    /* movl      $5, (%rdi)  # store 5 in *a */
    /* movl      $6, (%rsi)  # store 6 in *b */
    /* ret */



int main(int argc, char *argv[]) {

  int a;
  int b;

  foo(&a, &b);
  rfoo(&a, &b);

  return 0;
}



