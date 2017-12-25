static int j;

void fun1(void) {

  extern int global_var_here;
  global_var_here += 20;

  static int i = 0;
  i++;
}

void fun2(void) {
  j = 0;
  j++;
}

int global_var_here = 18;

int main (int argc, char* argv[]) {

  for (int k = 0; k < 10; k++) {
    fun1();
    fun2();
  }
  return 0;
}


