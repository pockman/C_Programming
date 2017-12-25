#include <algorithm>
#include <iostream>
#include <stdio.h>
using namespace std;
int main() {
  int n = 0;
  double e, f;           // e为输入的阈值，f为单独一项的值
  double fz = 1, fm = 1; //初始化分子，分母为1
  double sum = 0, pi;    // sum为各项的和，pi为最终结果
  while (~scanf("%lf", &e)) {
    for (f = 1; f >= e; n++) {
      if (n == 0) //第一项单独讨论
        fz = 1;
      else
        fz = fz * n; //后一项的分子等于前一项的分子乘上n
      fm = fm * (2 * n + 1); //后一项的分母等于前一项的分子乘上（2n+1）
      f = fz / fm;
      sum = sum + f;
    }
    pi = 2 * sum;
    printf("%.6f\n", pi);
  }
  return 0;
}
