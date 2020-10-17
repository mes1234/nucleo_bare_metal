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
#include "ssd1306.h"

ThreadControlBlock threads[THREAD_COUNT_MAX];

/* Main program. */
int main(void)
{
  char *arglist[] = {"a", "ff"};
  char *arglist2[] = {"f", "def", "ss"};
  SystemInit();
  ssd1306_Init();
  ssd1306_Fill(SSD1306_COLOR.White);
  InitThreads();
  setupLED();
  CreateTask(task2, ARGV_SIZE(arglist), arglist);
  CreateTask(idle_task, ARGV_SIZE(arglist), arglist);
  RunOS();
  while (1)
  {
    Sleep();
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

int idle_task(int argc, char *argv[])
{
  while (1)
  {
    ;
  }
}

int task1(int argc, char *argv[])
{
  char *f1 = argv[0];
  char *f2 = argv[1];

  ResetLED();
  uint32_t val = 0;
  while (val < 950000)
  {
    val = val + 1;
  }

  CreateTask(task2, 2, argv);
  return;
}

int task2(int argc, char *argv[])
{
  char *f1 = argv[0];
  char *f2 = argv[1];

  SetLED();
  uint32_t val = 0;
  while (val < 950000)
  {
    val = val + 1;
  }

  CreateTask(task1, 2, argv);
  return;
}