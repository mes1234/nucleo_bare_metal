#include <stdint.h>
#include "stm32f10x_gpio.h"
#include "stm32f10x_tim.h"
#include "stm32f10x_rcc.h"
#include "stm32f10x.h"
#include "core_cm3.h"
#include "kernel.h"


void SelectNextTask()
{
    task_id_adder = 1;

    do
    {
        next_task_ID = current_task_ID + task_id_adder;
        if (next_task_ID == THREAD_COUNT_MAX)
        {
            next_task_ID = 0;
            task_id_adder = 1;
        }
        task_id_adder++;
    } while (threads[next_task_ID].state == DEAD);
}

void ContexSwitch()
{
    // save software stack
    if (threads[current_task_ID].state == RUNNING)
    {
        asm volatile("MRS   r0,  psp      \n\t"
                     "STMDB r0!, {r4-r11} \n\t");
    }

    //halt current working
    if (threads[current_task_ID].state == RUNNING)
    {
        asm volatile("mrs %0, psp"
                     : "=r"(threads[current_task_ID].stackPointer)
                     :);
        threads[current_task_ID].stackPointerAdd = __get_PSP();
        threads[current_task_ID].state = HALTED;
        current_task_ID = next_task_ID;
    }

    //start new task
    if (threads[current_task_ID].state == NEW)
    {
        __set_PSP(threads[current_task_ID].stackPointer);
        threads[current_task_ID].state = RUNNING;
    }

    //start running halted task
    if (threads[current_task_ID].state == HALTED)
    {
        __set_PSP(threads[current_task_ID].stackPointer);
        threads[current_task_ID].state = RUNNING;
        asm volatile("LDMIA r0!, {r4-r11}  \n\t");
    }
}

void Sleep()
{
    SVC(111);
}

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
    uint32_t status = SysTick_Config(0x2FFFF);
    NVIC_SetPriority(PendSV_IRQn, 0xFF); // Set PendSV to lowest
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
        threads[i].stackPointerAdd = threads[i].stackPointer;
        threads[i].state = DEAD;
    }
}
void PendSV_Handler(void)
{
    SelectNextTask();
    ContexSwitch();
}
void SysTick_Handler(void)
{
    

    ScheduleContextSwitch();
}

void SVC_Handler()
{
    svc_number= Get_SVC_Number();
    ScheduleContextSwitch();
    
}

uint32_t Get_SVC_Number()
{
    uint32_t* result = 0;
    asm volatile("MRS R0, PSP\n\t"
                 "MOV %0, R0"
                 : "=r"(result));
    return ((char *) result[6])[-2];
}