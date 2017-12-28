#include <assert.h>
#include <stdbool.h> /* C99 */

#define STACK_SIZE 100
#define S_UNDERFLOW_CODE -1
#define S_OVERFLOW_CODE -2

/* external variables */
int contents[STACK_SIZE];
int top = 0;

void make_empty(void) { top = 0; }
bool is_empty(void) { return top == 0; }

bool is_full(void) { return top == STACK_SIZE; }

void push(int i) {
  assert(!is_full());
  contents[top++] = i;
}

int pop(void) {
  assert(!is_empty());
  return contents[--top];
}


