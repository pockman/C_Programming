#include <stdio.h>

int main(int argc, char *argv[]) {

  for (float y = 1.5f; y > -1.5f; y -= 0.1f) {

    for (float x = -1.5f; x < 1.5f; x += 0.1f) {
      float a = x * x + y * y - 1;
      putchar(a * a * a - x * x * y * y * y <= 0.0f ? '*' : ' ');
    }
    putchar('\n');
  }

  return 0;
}
