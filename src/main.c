
#define STM32F10X_MD
#include "stm32f10x.h"

//This defines the stack frame that is saved  by the hardware
typedef struct {
  uint32_t r0;
  uint32_t r1;
  uint32_t r2;
  uint32_t r3;
  uint32_t r12;
  uint32_t lr;
  uint32_t pc;
  uint32_t psr;
} hw_stack_frame_t;

//This defines the stack frame that must be saved by the software
typedef struct {
  uint32_t r4;
  uint32_t r5;
  uint32_t r6;
  uint32_t r7;
  uint32_t r8;
  uint32_t r9;
  uint32_t r10;
  uint32_t r11;
} sw_stack_frame_t;


// save current hardware context 
void save_hwd_context(hw_stack_frame_t *hwd_context_backup)
{
  hwd_context_backup->r0=1;
}
static hw_stack_frame_t task1_hw_stack;

int main(void) 
{
  int a =1;
  int b =2;
  int c = a+b;
  asm("SVC #0");
  while (1) {
      a=10;
      b=30;
      c=a+b;
    };
}


void SVC_Handler(void)
{
  save_hwd_context(&task1_hw_stack);
}
