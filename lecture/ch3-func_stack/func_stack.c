#include <string.h>
#include <stdio.h>

struct tagObj{
  int x;
  int y;
  char c;
  // ...

};

typedef struct tagObj Object;


void function2() {
  Object *var1 = NULL; //...
  int var2;
  printf("Program Stack Example\n");
}
void function1() {
  Object *var3 = NULL; //...
  function2();
}
int main() {
  int var4;
  function1();
}
