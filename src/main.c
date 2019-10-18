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



/* Main program. */
int main(void)
{
  SystemInit();
  SetupKernel();
  setupLED();
  task2();
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

void task1()
{
  int val = 0;
  int value = 0;
  while (1)
  {
    val += 1;
    if (val > 302000)
    {
      value = ~value;
      GPIO_WriteBit(GPIOA, GPIO_Pin_5, value);
      val = 0;
    }
  }
}

void task2()
{
  int val = 0;
  int value = 0;
  while (1)
  {

    val += 1;
    if (val > 102000)
    {
      value = ~value;
      GPIO_WriteBit(GPIOA, GPIO_Pin_5, value);
      val = 0;
    }
  }
}