#include <stdint.h>
#include "stm32f10x_gpio.h"
#include "stm32f10x_tim.h"
#include "stm32f10x_rcc.h"
#include "stm32f10x.h"
#include "core_cm3.h"
#include "kernel.h"

uint32_t ready_to_Switch = 0;
uint32_t halted_id = 0;

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
    InitThreads();
    InitPendSv();
    InitSysTick(1000);
}

void StartTask(void *taskPointer)
{
    asm volatile("mov r12, lr 		    \n");
    asm volatile("MSR control, %0"
                 :
                 : "r"(USE_PSP_IN_THREAD_MODE));
    threads->entryPoint = taskPointer;
    asm volatile("MOV lr, %0"
                 :
                 : "r"(taskPointer));
    asm volatile("bx lr 		    \n");
}

void CreateTask(void *taskPointer)
{

    for (i = 0; i < THREAD_COUNT_MAX; i++)
    {
        if (threads[i].state == DEAD)
        {
            threads[i].state = NEW;
            threads[i].entryPoint = taskPointer;
            break;
        }
    }
}

void RunOS()
{
    current_task_ID = 0;
    StartFirstTask();
}

void StartFirstTask()
{

    for (i = 0; i < THREAD_COUNT_MAX; i++)
    {
        if (threads[i].state == NEW)
        {
            threads[i].state = RUNNING;
            __set_PSP(threads[i].stackPointer);
            asm volatile("MSR control, %0"
                         :
                         : "r"(USE_PSP_IN_THREAD_MODE));
            asm volatile("MOV lr, %0"
                         :
                         : "r"(threads[i].entryPoint));
            asm volatile("bx lr 		    \n");
        }
    }
}

void InitThreads()
{
    uint32_t current_msp = __get_MSP();
    uint32_t new_psp;
    // uint32_t *psp_pointer = new_psp;
    // uint32_t *msp_pointer = current_msp;

    for (i = 0; i < THREAD_COUNT_MAX; i++)
    {
        new_psp = current_msp - (i + 1) * PSP_SIZE;
        threads[i].stackPointer = new_psp;
        threads[i].stackPointerAddr = threads[i].stackPointer;
        threads[i].state = DEAD;
    }
}

void InitSysTick(uint32_t freq)
{
    uint32_t status = SysTick_Config(SystemCoreClock / freq);
}

void SysTick_Handler(void)
{
    next_task_ID = current_task_ID + 1;
    if (next_task_ID == THREAD_COUNT_MAX)
    {
        next_task_ID = 0;
    }
    SCB->ICSR |= SCB_ICSR_PENDSVSET_Msk;
}

void InitPendSv(void)
{
    NVIC_SetPriority(PendSV_IRQn, 0xFF);
}

void PendSV_Handler(void)
{
    // save current task and halt it
    save_software_context();
    threads[current_task_ID].state = HALTED;
    threads[current_task_ID].stackPointer = __get_PSP();
    threads[current_task_ID].stackPointerAddr = __get_PSP();
    current_task_ID=next_task_ID;
    // if next is new start new
    if (threads[current_task_ID].state == NEW)
    {
        threads[current_task_ID].state = RUNNING;
        __set_PSP(threads[current_task_ID].stackPointer);
        asm volatile("MOV lr, %0"
                     :
                     : "r"(threads[current_task_ID].entryPoint));
        asm volatile("bx lr 		    \n");
    }
}