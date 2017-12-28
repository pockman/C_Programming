#include <stdio.h>
#include <assert.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#include "snake.h"

const location_t pos_inc[] = {{0, -1}, {0, 1}, {-1, 0}, {1, 0} }; // four directions

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

ptr_node_t snake_move(ptr_node_t head, bool with_food, move_action_t action) {
  ptr_node_t n = create_node();
  *n = *get_front_node(head);


  n->loc.x += pos_inc[action].x;
  n->loc.y += pos_inc[action].y;

  insert_front(head, n);
  if (!with_food) remove_last(head);

  return head;

}


ptr_node_t move_up(ptr_node_t head, bool with_food) {
  return  snake_move(head, with_food, UP);
}

ptr_node_t move_down(ptr_node_t head, bool with_food) {
  return  snake_move(head, with_food, DOWN);
}



ptr_node_t move_left(ptr_node_t head, bool with_food) {
  return  snake_move(head, with_food, LEFT);

}

ptr_node_t move_right(ptr_node_t head, bool with_food) {
  return  snake_move(head, with_food, RIGHT);

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

