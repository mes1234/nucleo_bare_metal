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
#include "stm32f10x_tim.h"
#include "stm32f10x_rcc.h"
#include "stm32f10x.h"
#include "core_cm3.h"
#include "main.h"



void my_priv_func(void * data){
    int * my_int;
    my_int = data;
    if (*my_int == 10 ){
        *my_int = 0;
    }
}

/* Main program. */
int main(void) {
  SystemInit();
  __set_CONTROL(0x3);
  RCC_APB2PeriphClockCmd ( RCC_APB2Periph_GPIOA, ENABLE );
  GPIO_InitTypeDef GPIO_InitStructure;

  GPIO_StructInit(&GPIO_InitStructure);

  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_5;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_2MHz;
  GPIO_Init(GPIOA,&GPIO_InitStructure);
  int val = 0;
  int value = 0;

  int var;
  var = 10;
  service_call(my_priv_func, &var); //executes my_priv_func() in interrupt mode
  if( var == 0 ){
      //if this is true, that means everything worked
  }

  while (1) {
    
    val += 1;
    if (val>302000)
    {
      value=~value;
      GPIO_WriteBit(GPIOA,GPIO_Pin_5,value);
       val =0;
       SVC(44);
    }
  }
}

void SVC_Handler(void)
{
  register uint32_t * frame;
  register svcall_t call;
  register void * args;
  asm volatile ("MRS %0, psp\n\t" : "=r" (frame) ); //assumes PSP in use when service_call() invoked
  call = (svcall_t)frame[0];
  args = (void*)(frame[1]);
  call(args);
}