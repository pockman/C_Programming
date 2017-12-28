#include <assert.h>
#include <limits.h>

void
check_all_types();


int main (int argc, char* argv[]) {
  check_all_types();

  return 0;
}

void
check_all_types()
{
  // char
  char a_uppercase_letter = 'A';
  char a_control_charater = (char)0x07;
  assert (sizeof (char) == 1);

}
