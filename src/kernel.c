#include <stdint.h>
#include "stm32f10x_gpio.h"
#include "stm32f10x_tim.h"
#include "stm32f10x_rcc.h"
#include "stm32f10x.h"
#include "core_cm3.h"
#include "kernel.h"

void CreateTask(void *taskPointer)
{
    hw_stack_frame_t *process_frame;
    for (i = 0; i < THREAD_COUNT_MAX; i++)
    {
        if (threads[i].state == DEAD)
        {
            threads[i].state = NEW;
            threads[i].entryPoint = taskPointer;
            process_frame = (hw_stack_frame_t *)(threads[i].stackPointer);
            process_frame->r0 = 0;
            process_frame->r1 = 0;
            process_frame->r2 = 0;
            process_frame->r3 = 0;
            process_frame->r12 = 0;
            process_frame->pc = taskPointer;
            process_frame->lr = taskPointer;
            process_frame->psr = 0x21000000; //default PSR value
            break;
        }
    }
}

void RunOS()
{
    uint32_t status = SysTick_Config(SystemCoreClock / 1000);
    current_task_ID = 0;
    __set_CONTROL(0x3);
}

void InitThreads()
{

    uint32_t current_msp = __get_MSP();
    uint32_t new_psp;

    for (i = 0; i < THREAD_COUNT_MAX; i++)
    {
        new_psp = current_msp - (i + 1) * PSP_SIZE;
        threads[i].stackPointer = new_psp;
        threads[i].state = DEAD;
    }
}

void SysTick_Handler(void)
{
    if (threads[current_task_ID].state == RUNNING)
    {
        threads[current_task_ID].stackPointer = __get_PSP();
        asm volatile("MRS   r0,  psp      \n\t"
                     "STMDB r0!, {r4-r11} \n\t");
    }
    next_task_ID = current_task_ID + 1;
    if (next_task_ID == THREAD_COUNT_MAX)
    {
        next_task_ID = 0;
    }
    if (threads[current_task_ID].state == RUNNING)
    {
        threads[current_task_ID].state = HALTED;
        current_task_ID = next_task_ID;
    }
    __set_PSP(threads[current_task_ID].stackPointer);
    if (threads[current_task_ID].state == NEW)
    {
        threads[current_task_ID].state = RUNNING;
    }
    if (threads[current_task_ID].state == HALTED)
    {
        threads[current_task_ID].state = RUNNING;
        asm volatile("LDMIA r0!, {r4-r11}  \n\t");
    }
}
