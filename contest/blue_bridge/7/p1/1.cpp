#include <cstdio>
#include <iostream>

using namespace std;

//
// a_n = \frac{n(n+1)}{2}
// n \in [1, 100]
//
// ? S_n = \sum_{i=1}^{n} a_n
//



int main(int argc, char *argv[]) {

  int num[105], sum = 0;
  num[0] = 0;
  for (int i = 1; i <= 100; i++) {
    num[i] = num[i - 1] + i;
    sum += num[i];
  }

  cout << sum << endl;

  return 0;
}
