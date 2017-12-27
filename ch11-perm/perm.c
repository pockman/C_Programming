#include <assert.h>
#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>

int card_rank[] = {0,3,3,8,8};

typedef enum tag_ops {ADD, SUB, MUL, DIV} ops_t;

typedef struct tag_ra_num  {
  int numer;
  int denom;
} ra_num_t;

typedef ra_num_t (*ptr_operator_t) (ra_num_t a, ra_num_t b);

ra_num_t radd (ra_num_t a, ra_num_t b);
ra_num_t rsub (ra_num_t a, ra_num_t b);
ra_num_t rmul (ra_num_t a, ra_num_t b);
ra_num_t rdiv (ra_num_t a, ra_num_t b);

ptr_operator_t ra_ops[] = {radd, rsub, rmul, rdiv};
char ch_operator[]={'+', '-', '*', '/'};


void rprint(ra_num_t a) {
  printf("(%d/%d) ", a.numer, a.denom);
}

int gcd (int m, int n) {

  return (n==0)?m:gcd(n, m%n);

}

ra_num_t radd (ra_num_t a, ra_num_t b) {
  ra_num_t c;
  c.numer = a.numer * b.denom + a.denom * b.numer;
  c.denom = a.denom * b.denom;

//  int factor = gcd(c.numer, c.denom);
  /*
   * assert(factor != 0);
   * c.numer /= factor;
   * c.denom /= factor;
   */

  /* printf(" %d/%d + %d/%d\n", a.numer,a.denom, b.numer, b.denom); */

  return c;
}

ra_num_t rsub (ra_num_t a, ra_num_t b) {
  /* printf(" %d/%d - %d/%d ", a.numer,a.denom, b.numer, b.denom); */
  b.numer *= -1;
  return radd(a, b);
}


ra_num_t reciprocal(ra_num_t a) {
  ra_num_t c;
  c.numer = a.denom;
  c.denom = a.numer;

  return c;
}

ra_num_t rmul (ra_num_t a, ra_num_t b) {
  /* printf(" %d/%d * %d/%d\n", a.numer,a.denom, b.numer, b.denom); */
  ra_num_t c;
  c.numer = a.numer * b.numer;
  c.denom = a.denom * b.denom;

  /* int factor = gcd(c.numer, c.denom); */
  /* c.numer /= factor; */
  /* c.denom /= factor; */

  return c;
}

ra_num_t rdiv (ra_num_t a, ra_num_t b) {
  /* printf(" %d/%d / %d/%d ", a.numer,a.denom, b.numer, b.denom); */

  return rmul(a, reciprocal(b));
}


ra_num_t int_to_rational (int a) {
  ra_num_t c = {1, 1};

  c.numer = a;
  return c;
}

bool is_solution(ra_num_t a) {
  if (a.denom == 0) return false;
  return (a.numer / a.denom) == 24 && (a.numer % a.denom == 0);
}

bool calculate(ra_num_t a, ra_num_t b, ra_num_t c, ra_num_t d) {
  for (ops_t i = ADD; i<=DIV; i++)
    for (ops_t j = ADD; j<=DIV; j++)
      for (ops_t k = ADD; k<=DIV; k++) {

        // ((a b) c) d
        if (is_solution (ra_ops[k](ra_ops[j](ra_ops[i](a ,b), c), d))) {
          printf("((%d %c %d) %c %d) %c %d\n", a.numer, ch_operator[i], b.numer, ch_operator[j], 
              c.numer, ch_operator[k], d.numer);

          return true;
        }
        // (a (b c)) d
        if (is_solution (ra_ops[k](ra_ops[i](a, ra_ops[j](b ,c)), d))) {
          printf("(%d %c (%d %c %d)) %c %d\n", a.numer, ch_operator[i], b.numer, ch_operator[j], 
              c.numer, ch_operator[k], d.numer);
          return true;

        }
        // a (b (c d))
        if (is_solution (ra_ops[i](a, ra_ops[j](b, ra_ops[k](c ,d))))) {
          printf("%d %c (%d %c (%d %c %d))\n", a.numer, ch_operator[i], b.numer, ch_operator[j], 
              c.numer, ch_operator[k], d.numer);
          return true;
        }
        // a ((b c) d)
        if (is_solution (ra_ops[i](a, ra_ops[k](ra_ops[j](b,c), d)))) {
          printf("%d %c ((%d %c %d) %c %d)\n", a.numer, ch_operator[i], b.numer, ch_operator[j], 
              c.numer, ch_operator[k], d.numer);

          return true;
        }

        // (a b)(c d)
        if (is_solution (ra_ops[j](ra_ops[i](a, b), ra_ops[k](c,d)))) {
          printf("(%d %c %d) %c (%d %c %d)\n", a.numer, ch_operator[i], b.numer, ch_operator[j], 
              c.numer, ch_operator[k], d.numer);
          return true;

        }
      } //for
  return false;
}

void process(int a[], size_t sz) {

  calculate(int_to_rational(card_rank[a[1]]),
      int_to_rational(card_rank[a[2]]),
      int_to_rational(card_rank[a[3]]),
      int_to_rational(card_rank[a[4]])
      );

  printf("\n");
}


void swap (int a[], int i, int j) {
  int t = a[i];
  a[i] = a[j];
  a[j] = t;
}

void permute(int a[], int i, size_t n) {
  int j; 
  if (i == n)
    process(a, n);
  else {
    for (j = i; j <= n; j++) {
      swap(a, i, j);
      permute(a, i+1, n);
      swap(a, i, j); 
    }
  }
}

bool
has_same_number(int a, int b, int c, int d) {
  bool same_num = false;
  if (a == b) same_num = true;
  if (a == c) same_num = true;
  if (a == d) same_num = true;
  if (b == c) same_num = true;
  if (b == d) same_num = true;
  if (c == d) same_num = true;

  return same_num;

}

void perm_four_nums () {
  for (int i = 1; i<10; i++) 
    for (int j = 1; j<10; j++) 
      for (int k = 1; k<10; k++) 
        for (int l = 1; l<10; l++)  {
          if (!has_same_number(i, j, k, l))
            printf("%4d %4d %4d %4d\n", i, j, k, l);

        }
}

bool strict_ascend_sequence(int i ,int j, int k, int l) {
  if ( (i < j) && (j < k) && (k < l))  return true;

  return false;
}

void comb_four_nums () {
  for (int i = 1; i<10; i++) 
    for (int j = 1; j<10; j++) 
      for (int k = 1; k<10; k++) 
        for (int l = 1; l<10; l++)  {
          if (strict_ascend_sequence(i, j, k, l))
            printf("%4d %4d %4d %4d\n", i, j, k, l);

        }
}



int main (int argc, char* argv[]) {
  int a[] = {0,1,2,3,4,5,6,7,8,9, 10, 11, 12, 13};
  printf("please input four integers:");
  scanf("%d %d %d %d", card_rank+1, card_rank+2, card_rank+3, card_rank+4);
  permute(a, 1, 4);

  return 0;
}
