

	char planets[][8] = {"Mercury", "Venus", "Earth",
	                     "Mars", "Jupiter", "Saturn",
	                     "Uranus", "Neptune", "Pluto"};




#include <stdio.h>
#define SENT_LEN 10

char *strcat(char *s1, const char *s2) {
  char *p = s1;

  while (*p != '\0')
    p++;
  while (*s2 != '\0') {
    *p = *s2;
    p++;
    s2++;
  }
  *p = '\0';
  return s1;
}

char *strcat(char *s1, const char *s2) {
  char *p = s1;
  while (*p) p++;

  while (*p++ = *s2++)
    ;
  return s1;
}

size_t strlen(const char *s) {
  size_t n = 0;
    while (*s++) n++;
  return n;
}

size_t strlen_1(const char *s) {
  size_t n = 0;
  for (; *s++;)
    n++;

  return n;
}

 

    size_t
    strlen(const char *s) {
  size_t n = 0;
    for (; *s; s++) n++;
  return n;
}

size_t strlen(const char *s) {
  size_t n = 0;

  for (; *s != '\0'; s++)
    n++;
  return n;
}

size_t strlen(const char *s) {
  size_t n;
    for (n = 0; *s != '\0'; s++) n++;
  return n;
}

char str1[10] = "abc";

if (str1 == str2) {
  puts("Same pointers.");
}

char str1[10], str2[10];
str1 = "abc"; /*** WRONG ***/
str2 = str1;  /*** WRONG ***/

int count_spaces_ptr(const char *s) {
  int count = 0;

  for (; *s != '\0'; s++)
    if (*s == ' ')
      count++;
  return count;
}
 

    int
    count_spaces(const char s[]) {
  int count = 0, i;

  for (i = 0; s[i] != '\0'; i++)
    if (s[i] == ' ')
      count++;
  return count;
}

void v() {

  char sentence[SENT_LEN + 1];

  printf("Enter a sentence:\n");
  scanf("%s", sentence);

  int i = 4;

  char *s = "Hi, there.";

  s[i];
}
