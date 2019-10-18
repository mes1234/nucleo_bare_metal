#include <stdint.h>
#include "stm32f10x_gpio.h"
#include "stm32f10x_tim.h"
#include "stm32f10x_rcc.h"
#include "stm32f10x.h"
#include "core_cm3.h"
#include "kernel.h"

void save_software_context()
{
    // save the stack pointer in r0
    //Copy the values of r4-r11 in the stack and
    // decrement the stack pointer (r0)
    asm volatile("MRS   r0,  psp      \n\t"
                 "STMDB r0!, {r4-r11} \n\t");
}

void load_software_context()
{
    // Recover the registers r4-r11 from the stack and
    // increment the stack pointer (r0)
    asm volatile("LDMIA r0!, {r4-r11}  \n\t");
}

void setup_new_psp(uint32_t offset_from_msp)
{

    uint32_t current_msp = __get_MSP();
    uint32_t new_psp = current_msp - offset_from_msp;
    __set_PSP(new_psp);
}

void SetupKernel()
{
    asm volatile ("mov r12, lr 		    \n");
    setup_new_psp(0x2000);
    asm volatile ("MSR control, %0" : : "r" (USE_PSP_IN_THREAD_MODE) );
    asm volatile ("bx r12 		    \n");
}