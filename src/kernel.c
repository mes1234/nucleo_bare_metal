#include <stdint.h>
#include "stm32f10x_gpio.h"
#include "stm32f10x_tim.h"
#include "stm32f10x_rcc.h"
#include "stm32f10x.h"
#include "core_cm3.h"
#include "kernel.h"

uint32_t ready_to_Switch = 0;
uint32_t halted_id = 0;

void setup_new_psp(uint32_t offset_from_msp)
{

    uint32_t current_msp = __get_MSP();
    uint32_t new_psp = current_msp - offset_from_msp;
    __set_PSP(new_psp);
}

void SetupKernel()
{
    SCB->CCR |= SCB_CCR_STKALIGN_Msk; // Enable double word stack
    InitThreads();
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
    InitPendSv();
    InitSysTick(10);
    current_task_ID = 0;
    __set_CONTROL(0x3);
    __ISB();
}

void InitThreads()
{
    uint32_t current_msp = __get_MSP();
    uint32_t new_psp;

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
    // RCC_ClocksTypeDef RCC_Clocks;
    // RCC_GetClocksFreq(&RCC_Clocks);
    // (void)SysTick_Config(RCC_Clocks.HCLK_Frequency / freq);
    uint32_t status = SysTick_Config(SystemCoreClock / freq);
}

void SysTick_Handler(void)
{
    next_task_ID = current_task_ID + 1;
    if (next_task_ID == THREAD_COUNT_MAX)
    {
        next_task_ID = 0;
    }
    PendSV_Handler();
    // SCB->ICSR |= SCB_ICSR_PENDSVSET_Msk;
}

void InitPendSv(void)
{
    NVIC_SetPriority(PendSV_IRQn, 0xFF);
}

void PendSV_Handler(void)
{
    // save current task and halt it
    // save the stack pointer in r0
    //Copy the values of r4-r11 in the stack and
    // decrement the stack pointer (r0)
    if (threads[current_task_ID].state == RUNNING)
    {
        asm volatile("MRS   r0,  psp      \n\t"
                     "STMDB r0!, {r4-r11} \n\t");
        threads[current_task_ID].state = HALTED;
        threads[current_task_ID].stackPointer = __get_PSP();
        threads[current_task_ID].stackPointerAddr = __get_PSP();
        current_task_ID = next_task_ID;
    }
    // if next is new start new
    if (threads[current_task_ID].state == NEW)
    {
        threads[current_task_ID].state = RUNNING;
        asm volatile("msr psp, %0"
                     :
                     : "r"(threads[current_task_ID].stackPointer));
        asm volatile("MSR control, %0"
                       :
                       : "r"(0x3));
        __ISB();
        asm volatile("MOV lr, %0"
                     :
                     : "r"(threads[current_task_ID].entryPoint));
        asm volatile("bx lr \n");
    }
    if (threads[current_task_ID].state == HALTED)
    {
        threads[current_task_ID].state = RUNNING;
        asm volatile("msr psp, %0"
                     :
                     : "r"(threads[current_task_ID].stackPointer));
        asm volatile("LDMIA r0!, {r4-r11}  \n\t");
        asm volatile("bx lr \n");
    }
}

// // ------------------------------------------------------------
// __asm void PendSV_Handler(void)
// { // Context switching code
// // Simple version - assume No floating point support
// // -------------------------
// // Save current context
// MRS
// STMDB R0, PSP
// R0!,{R4-R11}
// // Get current process stack pointer value
// // Save R4 to R11 in task stack (8 regs)
// LDR R1,=__cpp(&curr_task)
// LDR R2,[R1]
// LDR R3,=__cpp(&PSP_array)
// STR R0,[R3, R2, LSL #2]
// // Get current task ID
// // Save PSP value into PSP_array
// // -------------------------
// // Load next context
// LDR
// LDR R4,=__cpp(&next_task)
// R4,[R4]
// // Get next task ID
// STR R4,[R1]
// LDR R0,[R3, R4, LSL #2] // Load PSP value from PSP_array
// LDMIA R0!,{R4-R11}
// MSR PSP, R0
// // Set PSP to next task
// BX LR
// // Return
// ALIGN 4
// // Set curr_task = next_task
// // Load R4 to R11 from task
// stack (8 regs)
// }
// // ------------------------------------------------------------