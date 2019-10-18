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

void SetupKernel(ThreadControlBlock *threads)
{
    InitThreads(threads);
}

void StartTask(ThreadControlBlock *threads, void *taskPointer)
{
    asm volatile("mov r12, lr 		    \n");
    asm volatile("MSR control, %0"
                 :
                 : "r"(USE_PSP_IN_THREAD_MODE));
    threads[0].entryPoint = taskPointer;
    asm volatile("MOV lr, %0"
                 :
                 : "r"(taskPointer));
    asm volatile("bx lr 		    \n");
}

void CreateTask(ThreadControlBlock *threads, void *taskPointer)
{
    uint32_t i;
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

void RunOS(ThreadControlBlock *threads)
{
    //StartSysTimer
    //SetupHandlers
    StartFirstTask(threads);
}

void StartFirstTask(ThreadControlBlock *threads)
{
    uint32_t i;
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

void InitThreads(ThreadControlBlock *threads)
{
    uint32_t current_msp = __get_MSP();
    uint32_t new_psp;
    // uint32_t *psp_pointer = new_psp;
    // uint32_t *msp_pointer = current_msp;
    uint32_t i;
    for (i = 0; i < THREAD_COUNT_MAX; i++)
    {
        new_psp = current_msp - (i + 1) * PSP_SIZE;
        threads[i].stackPointer = new_psp;
        threads[i].state = DEAD;
    }
}