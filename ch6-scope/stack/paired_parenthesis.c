#include <assert.h>
#include <err.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>

#define ERR_BAD_CHAR -1

void make_empty(void);
void push(int i);
int pop(void);
bool is_empty(void);
bool is_full(void);


bool
paired_parentheses(char a[], size_t sz) {

  make_empty();
  for (int i=0; i<sz; i++)
  {
    assert(a[i] == '(' || a[i] == ')');

    if (a[i] == '(')
      push('(');

    if (a[i] == ')')
      pop();
  }

  return is_empty();
}

bool
paired_parentheses_switch(char a[], size_t sz) {

  make_empty();
  for (int i=0; i<sz; i++)
  {
    switch(a[i]){
      case '(':
        push('(');
        break;
      case ')':
        pop();
        break;

      default:
        err(ERR_BAD_CHAR, "bad characters.");
    }

  }

  return is_empty();
}

int main (int argc, char* argv[]) {
  char a[] = "(()(()))((((()))))";

  size_t sz = strlen(a);

  assert(paired_parentheses(a, sz));
  assert(paired_parentheses_switch(a, sz));


  return 0;
}
