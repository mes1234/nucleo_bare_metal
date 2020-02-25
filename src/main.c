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

ThreadControlBlock threads[THREAD_COUNT_MAX];

/* Main program. */
int main(void)
{
  char *arglist[] = {"a", "ff"};
  char *arglist2[] = {"f", "def", "ss"};
  SystemInit();
  InitThreads();
  setupLED();
  // CreateTask(idle_task, ARGV_SIZE(arglist), arglist);
  CreateTask(startup, ARGV_SIZE(arglist), arglist);
  CreateTask(S_print, ARGV_SIZE(arglist), arglist);
  CreateTask(task2, ARGV_SIZE(arglist), arglist);
  CreateTask(task1, ARGV_SIZE(arglist), arglist);

  RunOS();
  while (1)
  {
    ;
    // sys_Sleep();
  }
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

int startup(int argc, char *argv[])
{
  sys_StartUart();
  // print("\n\nWKOSss_started_!\n\n");
  // print("\n\n###_START_###\n\n");
  return;
}


int task1(int argc, char *argv[])
{
uint32_t val = 0;
  while (1)
  {
    while (val < 350000)
    {
      val = val + 1;
    }
    print("idling\n");
    val = 0;
  }
}	
	


int idle_task(int argc, char *argv[])
{
  print("idle\n");
  while (1)
  {
    ;
    // print("idling");
    // sys_Sleep();
  }
}

int task2(int argc, char *argv[])
{
  print("t2\n");
  char *f1 = argv[0];
  char *f2 = argv[1];

  sys_SetLED();
  uint32_t val = 0;
  while (1)
  {
    while (val < 350000)
    {
      val = val + 1;
    }
    val = 0;
    sys_SetLED();
    print("On\n");
    while (val < 350000)
    {
      val = val + 1;
    }
    val = 0;
    sys_ResetLED();
    print("Off\n");
  }
  return;
}