#include <stdint.h>
#include <stdio.h>

void
move(char from_pole, char to_pole) {
  static int counter = 0;
  counter++;
  printf("%4u: %c -> %c\n", counter, from_pole, to_pole);
}


void 
hanoi_solver(uint32_t n, char from_pole, char accessory_pole, char to_pole) {

  if (1==n) {
    move(from_pole, to_pole);
    return;
  }

  hanoi_solver(n-1, from_pole, to_pole, accessory_pole);
  move(from_pole, to_pole);
  hanoi_solver(n-1, accessory_pole, from_pole, to_pole);

}

int main (int argc, char* argv[]) {
  const uint32_t n = 4;
  hanoi_solver(n, 'A', 'B', 'C');

  return 0;
}
