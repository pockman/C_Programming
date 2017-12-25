void foo() {

  int a[10];
  int *ptr;

  ptr = &a[0];

  *ptr = 5;

  a[6] = 8;

  int *p, *q, j = 0;

  p = &a[2];

  q = p + 3;

  p += 6;

  int i;

  p = &a[5];
  q = &a[1];

  i = p - q; /* i is  4 */
  i = q - p; /* i is -4 */

a[i++] = j;
*p++ = j;



}


#define N 10
{
  int a[N], sum, *p;
  sum = 0;
  for (p = &a[0]; p < &a[N]; p++)
    sum += *p;

}
