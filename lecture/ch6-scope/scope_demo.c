int i;                 /* declaration 1 */
void f(int i) {        /* declaration 2 */

  i = 1;
}

void g(void) {
  int i = 2;           /* declaration 3 */


  if (i > 0) {
    int i;             /* declaration 4 */ 
    i = 3;

  }


  i = 4;

}

void h(void) {
  i = 5;
}


