#include <stdio.h>
#include <stdbool.h>
#include <assert.h>
#include <stdlib.h>

bool
is_leap_year(int year) {

  return ( (year % 4 == 0 && year % 100 !=0 ) || year % 400 == 0);

}


unsigned char 
get_month_days(unsigned int year, unsigned char mon) {

  unsigned char d;

  switch (mon) {
    case 2:
      d = 28;
      if (is_leap_year(year)) d++;
      break;

    case 1:
    case 3:
    case 5:
    case 7:
    case 8:
    case 10:
    case 12:
      d = 31;
      break;

    default:
      d = 30;
  }

  return d;
}


void 
print_month_title(unsigned char m) {
  switch(m) {
    case 1:
      puts("\n");
      printf("%42s\n", "January");
      puts("==========================================\n");
      break;
    case 2:
      puts("\n");
      printf("%42s\n","February");
      puts("==========================================\n");
      break;
    case 3:
      puts("\n");
      printf("%42s\n","March");
      puts("==========================================\n");
      break;
    case 4:
      puts("\n");
      printf("%42s\n","April");
      puts("==========================================\n");
      break;
    case 5:
      puts("\n");
      printf("%42s\n","May");
      puts("==========================================\n");
      break;
    case 6:
      puts("\n");
      printf("%42s\n","June");
      puts("==========================================\n");
      break;
    case 7:
      puts("\n");
      printf("%42s\n","July");
      puts("==========================================\n");
      break;
    case 8:
      puts("\n");
      printf("%42s\n","August");
      puts("==========================================\n");
      break;
    case 9:
      puts("\n");
      printf("%42s\n","September");
      puts("==========================================\n");
      break;
    case 10:
      puts("\n");
      printf("%42s\n","October");
      puts("==========================================\n");
      break;
    case 11:
      puts("\n");
      printf("%42s\n","November");
      puts("==========================================\n");
      break;
    case 12:
      puts("\n");
      printf("%42s\n","December");
      puts("==========================================\n");
  }
}


int 
days_in_year(int year) {
  if (is_leap_year(year)) return 366;
  return 365;
}

void
print_month(unsigned char m_days, unsigned char day_of_week) { 
  printf("%6s%6s%6s%6s%6s%6s%6s\n", 
      "SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT");
  unsigned char c = 1;

  for (; day_of_week > 0; c++, day_of_week-- ) 
    printf("%6c", ' ');
  for (unsigned char day_idx = 1; day_idx < m_days + 1; day_idx++, c++) {
    printf("%6d", day_idx);
    if (c % 7 == 0) printf("\n");
  }
}

int total_days_from_1900(int year, int month, int day) {
  assert(year >= 1900);
  assert(month >= 1 && month <= 12);
  assert(day >= 1 && month <= 31);

  int days = 0;
  for (int i = 1900; i<year; i++) /* YEAR */
    days += days_in_year(i);

  for (int j=1; j<month; j++) { /* MONTH */
    days += get_month_days(year, j);
  }

  days += day;

  return days - 1;


}

int
get_the_day_of_week(int year, int month, int day) {
  const int day_of_week_1900_1_1 = 1; /* Monday  1900.1.1 */
  int day_of_week = (total_days_from_1900(year, month, day) + day_of_week_1900_1_1 ) % 7;

  return day_of_week;
}

void print_calendar(int year, int month) {
  print_month_title(month);
  print_month(get_month_days(year, month), get_the_day_of_week(year, month, 1));
}

void print_calendar_year(int year) {
  char s[256];
  sprintf(s, "toilet -f bigascii12 %d", year);
  system(s);

  /* printf("%d\n", year); */
  for (int m = 1; m <= 12; m++) {
    print_calendar(year, m);

  }
  printf("\n");
}



int main (int argc, char* argv[]) {

  /* print_calendar(2017, 11); */
  /* print_calendar(2017, 10); */
  /* print_calendar(2016, 2);  */

  int year = 2000;
  if (argc == 2) {
    year = atoi(argv[1]);
  }

  print_calendar_year(year);


  return 0;

}
