#include <locale.h>
#include <ncurses.h>
#include <signal.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <unistd.h>

#include "snake.h"

#define ROWS 40
#define COLS 120

#define X_OFF (COLS/2)
#define Y_OFF (ROWS/2)
#define DELAY (300000)

int points = 1000;
location_t food = {0, 0};

static WINDOW *field, *score;
static move_action_t current_direction = RIGHT;
void nc_draw_snake(WINDOW *w, ptr_node_t head, chtype att);


void gen_food( location_t *f ) {
  f->x = rand() % COLS - COLS/2;
  f->y = rand() % ROWS - ROWS/2;
}


static void check_term_size(int rowtot, int coltot)
{
    if ((rowtot < ROWS + 6) || (coltot < COLS + 2)) {
        endwin();
        delwin(stdscr);
        printf("This screen has %d rows and %d columns. Enlarge it.\n", rowtot, coltot);
        printf("You need at least %d rows and %d columns.\n", ROWS + 6, COLS + 2);
        exit(EXIT_FAILURE);
    }
}
static void colored_print(WINDOW *win, int x, int y, char *c, int color)
{
    wattron(win, COLOR_PAIR(color));
    mvwprintw(win, x + 1, y + 1, c);
    wattroff(win, COLOR_PAIR);
}

ptr_node_t nc_show_snake_dbg(WINDOW *w, ptr_node_t head) {
  ptr_node_t p = head;
  int i = 0;
  while( p->next != head ) {
    mvwprintw(w, 0, strlen("Snake")+2, "[%03d %03d] L:%3d", p->loc.x, p->loc.y, i);
    p = p->next;
    i++;
  }


  return head;
}

static void screen_init(int rowtot, int coltot)
{
    start_color();
    init_pair(1, COLOR_RED, COLOR_BLACK);
    init_pair(2, COLOR_GREEN, COLOR_BLACK);
    init_pair(3, COLOR_YELLOW, COLOR_BLACK);
    init_pair(4, COLOR_CYAN, COLOR_BLACK);
    raw();
    noecho();
    /* print sub windows centered */
    field = subwin(stdscr, ROWS + 2, COLS + 2, (rowtot - 6 - ROWS) / 2, (coltot - COLS - 2) / 2);
    score = subwin(stdscr, 2 + 2, coltot, rowtot - 4, 0);
    keypad(field, TRUE);
    nodelay(field, TRUE);
    wattron(field, COLOR_PAIR(4));
    wattron(score, COLOR_PAIR(3));
    wborder(field, '|', '|', '-', '-', '+', '+', '+', '+');
    wborder(score, '|', '|', '-', '-', '+', '+', '+', '+');
    wattroff(field, COLOR_PAIR);
    mvwprintw(score, 2, 1, "q anytime to *rage* quit. u/d/l/r to move. U/D/L/R to grow.");
    mvwprintw(score, 1, 1, "Points: ");
    
    mvwprintw(score, 1, strlen("Points: ") + 1, "%d", points);
    wattron(field, A_BOLD);
    wattron(score, A_BOLD);
    colored_print(field, -1, -1, "Snake", 4);
    mvwprintw(score, 0, 0, "Score");
    wrefresh(score);
}

static void screen_end(int rowtot, int coltot, int quit_value)
{
    char exitmsg[] = "Leaving...bye! See you later :)";

    wclear(field);
    wclear(score);
    delwin(field);
    delwin(score);
    attron(COLOR_PAIR(rand() % 4 + 1));
    attron(A_BOLD);
    mvprintw(rowtot / 2, (coltot - strlen(exitmsg)) / 2, "%s", exitmsg);

    refresh();
    sleep(1);
    endwin();
    delwin(stdscr);
}


static void attr_addstr(WINDOW *w, const char *s, chtype a) {
  while (*s)
    waddch(w, ((unsigned char)(*s++)) | a);
}


void die(ptr_node_t head) {

}

void nc_snake_move(ptr_node_t head, move_action_t current_direction) {

  bool got_food_ahead = false;
  ptr_node_t neck = get_front_node(head);

  if(neck->loc.x > COLS/2) die(head);
  if(neck->loc.y > ROWS/2) die(head);

  if(neck->loc.x < -COLS/2) die(head);
  if(neck->loc.y < -ROWS/2) die(head);

  if (neck->loc.x == food.x && neck->loc.y == food.y) got_food_ahead = true;

  if (got_food_ahead) {
    points+=100;
    gen_food(&food);

  }

  snake_move(head, got_food_ahead, current_direction);

}
void   nc_draw_food(WINDOW *w, chtype att) {
  mvwaddch(w, food.y+Y_OFF, food.x+X_OFF, '*' | att);
}

void nc_run(WINDOW *w, ptr_node_t head, chtype att) {
  int ch;
  while ((ch = wgetch(w)) != 'q') {
    wclear(w);
    switch (ch) {
      case KEY_LEFT:
        current_direction = LEFT;
        break;
      case KEY_RIGHT:
        current_direction = RIGHT;
        break;
      case KEY_UP:
        current_direction = UP;
        break;
      case KEY_DOWN:
        current_direction = DOWN;
        break;

      case 'u':
      case 'U':
        current_direction = UP;
        move_up(head, true);
        break;
      case 'd':
      case 'D':
        current_direction = DOWN;
        move_down(head, true);
        break;

      case 'l':
      case 'L':
        current_direction = LEFT;
        move_left(head, true);
        break;
      case 'r':
      case 'R':
        current_direction = RIGHT;
        move_right(head, true);
        break;
    }
    nc_snake_move(head, current_direction);
    wborder(field, '|', '|', '-', '-', '+', '+', '+', '+');
    colored_print(field, -1, -1, "Snake", 4);
    mvwprintw(score, 1, strlen("Points: ") + 1, "%d", points);
    nc_draw_snake(w, head, att);
    nc_draw_food(w, att);
    nc_show_snake_dbg (w, head);
    wrefresh(w);
    wrefresh(score);
    usleep(DELAY); // Shorter delay between movements
  }
}

void nc_draw_snake(WINDOW *w, ptr_node_t head, chtype att) {
  ptr_node_t p = head;
  p = p->next; //neck node//
  while (p->next != head) {
    wmove(w, p->loc.y + Y_OFF, p->loc.x + X_OFF);
    waddch(w, 'O' | att);
    p = p->next;
  }

}

int main(int argc, char *argv[]) {

  int rowtot, coltot, quit_value = 0;
  setlocale(LC_ALL, "");

  srand(time(NULL));
  initscr();
  getmaxyx(stdscr, rowtot, coltot);
  check_term_size(rowtot, coltot);
  screen_init(rowtot, coltot);
  wrefresh(field);
  //----------------------------------------------------------------------
  curs_set(FALSE);
  chtype attr, attr_str;

  attr = (chtype)COLOR_PAIR(4);
  attr_str = (chtype)COLOR_PAIR(3);

  ptr_node_t snake = init_snake();

  insert_front(snake, create_node());
  move_right(snake, true);
  move_right(snake, true);
  move_right(snake, true);

  nc_run(field, snake, attr);
  kill_snake(snake);
  //----------------------------------------------------------------------

  screen_end(rowtot, coltot, quit_value);
  exit(EXIT_SUCCESS);

}
