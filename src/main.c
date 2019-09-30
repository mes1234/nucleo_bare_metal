
#define STM32F10X_MD
#include "stm32f10x.h"
void start_timer(TIM_TypeDef *TIMx, uint16_t ms);
// Define GPIOB pin mappings for our LED and button.
#define BUTTON_PIN (1) //PC13 PIN2
#define LED_PIN    (5) //PA5 
/* Main program. */
int main(void) {
  // RCC->APB2ENR |= RCC_APB2ENR_IOPAEN ; //enable clock for port A
  // RCC->APB1ENR |= RCC_APB1ENR_TIM2EN ; //enable clock for tim2
  // GPIOA->CRL =  GPIO_CRL_MODE;
  // GPIOA->ODR |=(1<< LED_PIN);

  // Enable the NVIC interrupt for TIM2.
  // NVIC_SetPriority(TIM2_IRQn, 0x03);
  // NVIC_EnableIRQ(TIM2_IRQn);
  // start_timer(TIM2,2000);
  asm("MOV r0,#555");
  asm("SVC #0");
  while (1) {  };
}

void start_timer(TIM_TypeDef *TIMx, uint16_t ms) {
  // Start by making sure the timer's 'counter' is off.
  TIMx->CR1 &= ~(TIM_CR1_CEN);
  // Next, reset the peripheral. (This is where a HAL can help)
  if (TIMx == TIM2) {
    RCC->APB1RSTR |=  (RCC_APB1RSTR_TIM2RST);
    RCC->APB1RSTR &= ~(RCC_APB1RSTR_TIM2RST);
  }
  // Set the timer prescaler/autoreload timing registers.
  // (These are 16-bit timers, so this won't work with >65MHz.)
  TIMx->PSC   = 4000000 / 1000;
  TIMx->ARR   = ms;
  // Send an update event to reset the timer and apply settings.
  TIMx->EGR  |= TIM_EGR_UG;
  // Enable the hardware interrupt.
  TIMx->DIER |= TIM_DIER_UIE;
  // Enable the timer.
  TIMx->CR1  |= TIM_CR1_CEN;
}
  void SVC_Handler(void)
  {
    // asm("POP {r3}");
    // asm("POP {r3}");
    // asm("POP {r3}");
    // asm("POP {r3}");
    // asm("POP {r3}");
    // asm("POP {r3}");
    // asm("POP {r3}");
    // asm("POP {r3}");
    // GPIOA->ODR ^= (1 << LED_PIN);
  }

  void TIM2_IRQHandler(void) {
    // Handle a timer 'update' interrupt event
    if (TIM2->SR & TIM_SR_UIF) {
      TIM2->SR &= ~(TIM_SR_UIF);
      // Toggle the LED output pin.
      GPIOA->ODR ^= (1 << LED_PIN);
    }
  }