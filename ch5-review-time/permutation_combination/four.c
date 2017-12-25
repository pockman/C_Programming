
#include <stdio.h>
void four() {
  static int counter = 0;
  for (int i = 0; i < 10; i++)
    for (int j = 0; j < 10; j++)
      for (int k = 0; k < 10; k++) {
        if ((i < j) && (j < k)) {
          counter++;
          printf("[%3d]:  %5d %5d %5d\n", counter, i, j, k);
        }
      }
}

void four2() {
  static int counter = 0;
  for (int i = 0; i < 10; i++)
    for (int j = 0; j < 10; j++)
      for (int k = 0; k < 10; k++) {
        if ((i != j) && (j != k) && (i != k) ) {
          counter++;
          printf("[%3d]:  %5d %5d %5d\n", counter, i, j, k);
        }
      }
}
int main(int argc, char *argv[]) {

  four();

  four2();

  return 0;
}
