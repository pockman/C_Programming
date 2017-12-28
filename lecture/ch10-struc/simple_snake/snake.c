#include <stdio.h>
#include <assert.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

typedef struct tag_loc {
  uint32_t x;
  uint32_t y;
} location_t;

typedef struct tag_node {
  location_t loc;
  struct tag_node *next;
} node_t, *ptr_node_t;

ptr_node_t create_node() {
  ptr_node_t p = (ptr_node_t)malloc(sizeof(node_t));
  assert(p != NULL);

  p->loc.x = 0;
  p->loc.y = 0;

  return (ptr_node_t)p;
}

void destroy_node(ptr_node_t p) {
  assert(p != NULL);
  free(p);
}

ptr_node_t init_snake() {
  ptr_node_t p = create_node();
  p->next = p;
  return p;
}

ptr_node_t insert_front(ptr_node_t head, ptr_node_t p) {
  p->next = head->next;
  head->next = p;
  return head;
}

ptr_node_t remove_last(ptr_node_t head) {

  ptr_node_t last = head;
  while (last->next != head)
    last = last->next;

  ptr_node_t last_but_one = head;
  while (last_but_one->next != last)
    last_but_one = last_but_one->next;

  // remove last node
  last_but_one->next = last->next;
  destroy_node(last);

  return head;
}

bool is_empty(ptr_node_t head) { return head == head->next; }

ptr_node_t get_front_node(ptr_node_t head) {
  assert(!is_empty(head));

  return head->next;
}

ptr_node_t move_up(ptr_node_t head, bool with_food) {
  ptr_node_t n = create_node();
  *n = *get_front_node(head);

  n->loc.y--;

  insert_front(head, n);
  if (!with_food) remove_last(head);

  return head;

}

ptr_node_t move_down(ptr_node_t head, bool with_food) {
  ptr_node_t n = create_node();
  *n = *get_front_node(head);

  n->loc.y++;

  insert_front(head, n);
  if (!with_food) remove_last(head);

  return head;
}


ptr_node_t move_left(ptr_node_t head, bool with_food) {
  ptr_node_t n = create_node();
  *n = *get_front_node(head);

  n->loc.x--;

  insert_front(head, n);
  if (!with_food) remove_last(head);

  return head;
}

ptr_node_t move_right(ptr_node_t head, bool with_food) {
  ptr_node_t n = create_node();
  *n = *get_front_node(head);

  n->loc.x++;

  insert_front(head, n);
  if (!with_food) remove_last(head);

  return head;
}

ptr_node_t show_snake(ptr_node_t head) {
  ptr_node_t p = head;
  while( p->next != head ) {
    printf("[%d %d]-", p->loc.x, p->loc.y);
    p = p->next;
  }

  puts("<");

  return head;
}


void kill_snake(ptr_node_t head) {
  while (!is_empty(head))
    remove_last(head);

  free(head);
}

void run(ptr_node_t head) {
  char ch;
  while ( (ch = getchar() ) != 'q') {
    switch(ch) {
      case 'u': 
        move_up(head, false);
        break;
      case 'U': 
        move_up(head, true);
        break;
      case 'd': 
        move_down(head, false);
        break;
      case 'D': 
        move_down(head, true);
        break;

      case 'l': 
        move_left(head, false);
        break;
      case 'L': 
        move_left(head, true);
        break;
      case 'r': 
        move_right(head, false);
        break;
      case 'R': 
        move_right(head, true);
        break;

      default:
        show_snake(head);
    }
  }

  puts("kill snake and quit ...");


}

int main (int argc, char* argv[]) {

  puts("Snake V0.1");
  puts("q -quit the test.");
  puts("Key strokes:");
  puts("u/d/l/r - Move up/down/left/right.");
  puts("U/D/L/R - Move up/down/left/right, and eat food.");
  puts("show snake...");
  ptr_node_t snake = init_snake();
  ptr_node_t p = create_node();
  insert_front(snake, p);

  show_snake(snake);

  run(snake);

  kill_snake(snake);
  return 0;
}
