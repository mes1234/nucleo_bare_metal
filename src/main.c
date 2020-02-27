#include <stdint.h>

void assert_param()
{
  return;
}

void _exit(int status)
{
  while (1)
  {
  }
}

#include "stm32f10x_usart.h"
#include "stm32f10x_gpio.h"
#include "stm32f10x_tim.h"
#include "stm32f10x_rcc.h"
#include "stm32f10x.h"
#include "core_cm3.h"
#include "kernel.h"
#include "main.h"
#include "print.h"

#define SLEEP_PERIOD 700000
#define SLEEP_LED 300000

ThreadControlBlock threads[THREAD_COUNT_MAX];

/* Main program. */
int main(void)
{
  char *arglist[] = {"a", "ff"};
  char *arglist2[] = {"f", "def", "ss"};
  SystemInit();
  InitThreads();
  
  CreateTask(startup, ARGV_SIZE(arglist), arglist);
  CreateTask(S_print, ARGV_SIZE(arglist), arglist);
  CreateTask(task1, ARGV_SIZE(arglist), arglist);
  CreateTask(task2, ARGV_SIZE(arglist), arglist);
  CreateTask(task3, ARGV_SIZE(arglist), arglist);
  CreateTask(task4, ARGV_SIZE(arglist), arglist);
  CreateTask(task5, ARGV_SIZE(arglist), arglist);
  CreateTask(task6, ARGV_SIZE(arglist), arglist);
  RunOS();
  while (1)
  {
    ;
    // sys_Sleep();
  }
}



int startup(int argc, char *argv[])
{
  sys_SetupLED();
  sys_StartUart();
  return;
}


int task1(int argc, char *argv[])
{
uint32_t val = 0;
  while (1)
  {
    while (val < SLEEP_PERIOD)
    {
      val = val + 1;
      // sys_Sleep();
    }
    print("task1\n");
    val = 0;
  }
}	
	
int task2(int argc, char *argv[])
{
uint32_t val = 0;
  while (1)
  {
    while (val < SLEEP_PERIOD)
    {
      val = val + 1;
      // sys_Sleep();
    }
    print("task2\n");
    val = 0;
  }
}	

int task3(int argc, char *argv[])
{
uint32_t val = 0;
  while (1)
  {
    while (val < SLEEP_PERIOD)
    {
      val = val + 1;
      // sys_Sleep();
    }
    print("task3\n");
    val = 0;
  }
}	

int task4(int argc, char *argv[])
{
uint32_t val = 0;
  while (1)
  {
    while (val < SLEEP_PERIOD)
    {
      val = val + 1;
      // sys_Sleep();
    }
    print("task4\n");
    val = 0;
  }
}	

int task5(int argc, char *argv[])
{
uint32_t val = 0;
  while (1)
  {
    while (val < SLEEP_PERIOD)
    {
      val = val + 1;
      // sys_Sleep();
    }
    print("task5\n");
    val = 0;
  }
}	

int task6(int argc, char *argv[])
{
  char *f1 = argv[0];
  char *f2 = argv[1];

  sys_SetLED();
  uint32_t val = 0;
  while (1)
  {
    while (val < SLEEP_LED)
    {
      val = val + 1;
      // sys_Sleep();
    }
    val = 0;
    sys_SetLED();
    while (val < SLEEP_LED)
    {
      val = val + 1;
      // sys_Sleep();
    }
    val = 0;
    sys_ResetLED();
  }
  return;
}