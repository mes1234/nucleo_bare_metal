#include <stdint.h>
#define STM32F10X_MD
#include "stm32f10x.h"

// Define GPIOB pin mappings for our LED and button.
#define BUTTON_PIN (1) //PC13 PIN2
#define LED_PIN    (5) //PA5 
/* Main program. */
int main(void) {
    // Enable the GPIOB peripheral in 'RCC_AHBENR'.
    RCC->APB2ENR |= RCC_APB2ENR_IOPAEN ; //enable clock for port A

    // B3 is connected to an LED on the 'Nucleo' board.
    //    It should be set to push-pull low-speed output.
    GPIOA->CRL =  GPIO_CRL_MODE;
    // GPIOA->CRH  |=  GPIO_CRH_MODE;
   GPIOA->ODR =0x000ffff;
  int val = 0;
  int state =0;
  while (1) {
    val += 1;
    if (val>32000)
    {
       state = GPIOA->ODR;
       GPIOA->ODR= ~state ; 
       val =0;
    }
  }
}