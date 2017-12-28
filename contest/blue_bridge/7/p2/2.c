#include <stdio.h>
#include <math.h>


int main() {
  int start, end;
  for (start = 1; start < 236; start++) {
    for (end = start; end < start + sqrt(236*2) + 1; end++) {

      int sum = (start+end) * (end-start+1) / 2;
      if (sum > 236) break;

      if (sum == 236) {
        printf("%d\n", start);
      }
    }
  }
  return 0;
}
