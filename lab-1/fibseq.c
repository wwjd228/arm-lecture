#include <stdio.h>
#include <time.h>

extern int fibonacci(int x);

int main(int argc, char **argv)
{
  clock_t start_time, end_time;
  float total_time;
  int number=0;
  int result=0;

  scanf("%d",&number);
  start_time = clock();
  result = fibonacci(number);
  end_time = clock();
  total_time = (float) end_time - start_time;
  printf("The fibonacci sequence at %d is: %d\n", number, result);
  printf( "Time = %f ms\n", total_time );
}

