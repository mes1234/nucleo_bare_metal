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

#include "stm32f10x_gpio.h"
#include "stm32f10x_tim.h"
#include "stm32f10x_rcc.h"
#include "stm32f10x.h"
#include "core_cm3.h"
#include "kernel.h"
#include "main.h"

ThreadControlBlock threads[THREAD_COUNT_MAX];

/* Main program. */
int main(void)
{
  char *arglist[] = {"a", "ff"};
  char *arglist2[] = {"f", "def", "ss"};
  SystemInit();
  InitThreads();
  setupLED();
  CreateTask(task1, ARGV_SIZE(arglist), arglist);
  CreateTask(task2, ARGV_SIZE(arglist), arglist);
  // CreateTask(task3, ARGV_SIZE(arglist2), arglist2);
  RunOS();
}

void setupLED()
{
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);
  GPIO_InitTypeDef GPIO_InitStructure;
  GPIO_StructInit(&GPIO_InitStructure);
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_5;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_2MHz;
  GPIO_Init(GPIOA, &GPIO_InitStructure);
}

int task1(int argc, char *argv[])
{
  char *f1 = argv[0];
  char *f2 = argv[1];

  int val1 = 0;
  while (1)
  {
    val1 += 1;
    if (val1 > 302000)
    {
      val1 = 0;
      SetLED();
    }
  }
}

int task2(int argc, char *argv[])
{
  char *f1 = argv[0];
  char *f2 = argv[1];

  int val = 0;
  while (1)
  {
    val += 1;
    if (val > 702000)
    {
      ResetLED();
      val = 0;
    }
  }
}

int task3(int argc, char *argv[])
{
  char *f1 = argv[0];
  char *f2 = argv[1];

  int val = 0;
  int value = 0;
  // CreateTask(task1,argv);
  return 0;
}