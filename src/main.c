#include <stdint.h>

void assert_param()
{
return;
}

void _exit(int status)
{
while (1) {}
}
#include "stm32f10x_gpio.h"
#include "stm32f10x.h"

// Define GPIOB pin mappings for our LED and button.
#define BUTTON_PIN (1) //PC13 PIN2
#define LED_PIN    (5) //PA5 



/* Main program. */
int main(void) {
  GPIO_InitTypeDef GPIO_InitStructure;

  GPIO_StructInit(&GPIO_InitStructure);

  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_5;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_2MHz;
  GPIO_Init(GPIOA,&GPIO_InitStructure);

  int val = 0;
  while (1) {
    val += 1;
    GPIO_WriteBit(GPIOA,GPIO_Pin_5,Bit_SET);
    if (val>32000)
    {
      GPIO_WriteBit(GPIOA,GPIO_Pin_5,Bit_RESET);
       val =0;
    }
  }
}