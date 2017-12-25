#include <stdio.h>

void first_function(void);
int second_function(int);

int main(void)
{
   printf("hello world\n");
   first_function();
   printf("goodbye goodbye\n");

   return 0;
}


void first_function(void)
{
   int imidate = 3;
   char broiled = 'c';
   void *where_prohibited = NULL;

   second_function(imidate);
   imidate = 10 + (int)broiled;               // junk codes
   where_prohibited = (void *)&imidate;       // 
}


int second_function(int a)
{
   int b = a;
   return b;
}



