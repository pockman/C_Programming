#ifndef _HEAD_SNAKE_H_
#define _HEAD_SNAKE_H_

#include <stdint.h>
#include <stdbool.h>


typedef enum tag_move_action {UP, DOWN, LEFT, RIGHT} move_action_t;

typedef struct tag_loc {
  uint32_t x;
  uint32_t y;
} location_t;


extern const location_t pos_inc[]; // four directions

typedef struct tag_node {
  location_t loc;
  struct tag_node *next;
} node_t, *ptr_node_t;

ptr_node_t create_node();

void destroy_node(ptr_node_t p);
ptr_node_t init_snake();
ptr_node_t insert_front(ptr_node_t head, ptr_node_t p);
ptr_node_t remove_last(ptr_node_t head);
bool is_empty(ptr_node_t head);
ptr_node_t get_front_node(ptr_node_t head);

ptr_node_t move_up(ptr_node_t head, bool with_food);
ptr_node_t move_down(ptr_node_t head, bool with_food);
ptr_node_t move_left(ptr_node_t head, bool with_food);
ptr_node_t move_right(ptr_node_t head, bool with_food);
ptr_node_t _move(ptr_node_t head, bool with_food, move_action_t action);

ptr_node_t show_snake(ptr_node_t head);

void kill_snake(ptr_node_t head);

void run(ptr_node_t head);

#endif
