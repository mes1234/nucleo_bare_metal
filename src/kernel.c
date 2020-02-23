#include <stdint.h>
#include "stm32f10x_gpio.h"
#include "stm32f10x_tim.h"
#include "stm32f10x_rcc.h"
#include "stm32f10x_usart.h"
#include "stm32f10x.h"
#include "core_cm3.h"
#include "kernel.h"

char *PrintBuf;

void SelectNextTask()
{
    next_task_ID = current_task_ID;
    do
    {
        next_task_ID = next_task_ID + 1;
        if (next_task_ID == THREAD_COUNT_MAX)
        {
            next_task_ID = 0;
        }
    } while ((threads[next_task_ID].state == FREE_SLOT) || (threads[next_task_ID].state == COMPLETED) || (threads[next_task_ID].state == RUNNING));
}

void CreateTask(void *taskPointer, int argc, char *argv[])
{
    hw_stack_frame_t *process_frame;
    for (i = 0; i < THREAD_COUNT_MAX; i++)
    {
        if ((threads[i].state == FREE_SLOT) || (threads[i].state == COMPLETED))
        {
            threads[i].state = NEW;
            threads[i].entryPoint = taskPointer;
            process_frame = (hw_stack_frame_t *)(threads[i].stackPointerClean);
            process_frame->r0 = argc;
            process_frame->r1 = argv;
            process_frame->r2 = 0;
            process_frame->r3 = 0;
            process_frame->r12 = 0;
            process_frame->pc = taskPointer;
            process_frame->lr = CloseThread;
            process_frame->psr = 0x21000000; //default PSR value
            break;
        }
    }
}

void RunOS()
{
    uint32_t status = SysTick_Config(36000);
    NVIC_SetPriority(PendSV_IRQn, 0xFF); // Set PendSV to lowest
    current_task_ID = 0;
    asm volatile("MSR control, %0"
                 :
                 : "r"(0x3));
    return;
}

void CloseThread()
{
    SVC(000);
    while (1)
    {
        ;
    }
}

void InitThreads()
{
    uint32_t current_msp = __get_MSP();
    uint32_t new_psp;

    for (i = 0; i < THREAD_COUNT_MAX; i++)
    {
        new_psp = current_msp - (i + 1) * PSP_SIZE;
        threads[i].stackPointer = new_psp;
        threads[i].stackPointerClean = threads[i].stackPointer;
        threads[i].stackPointerAdd = threads[i].stackPointer;
        threads[i].stackPointerCleanAdd = threads[i].stackPointerClean;
        threads[i].state = FREE_SLOT;
    }
}
void PendSV_Handler(void)
{
    BackupSoftwareStack();
    //halt current working
    if ((threads[current_task_ID].state != COMPLETED) && (threads[current_task_ID].state != NEW))
    {
        GetPSP(threads[current_task_ID].stackPointer);
        threads[current_task_ID].stackPointerAdd = threads[current_task_ID].stackPointer;
        threads[current_task_ID].state = HALTED;
    }
    current_task_ID = next_task_ID;
    //start running halted task
    if (threads[current_task_ID].state == HALTED)
    {
        SetPSP(threads[current_task_ID].stackPointer);
        threads[current_task_ID].state = RUNNING;
        RestoreSoftwareStack();
        __ISB();
        return;
    }
    //start new task
    if (threads[current_task_ID].state == NEW)
    {
        SetPSP(threads[current_task_ID].stackPointerClean);
        threads[current_task_ID].state = RUNNING;
        return;
    }
}
void SysTick_Handler(void)
{
    SelectNextTask();
    ScheduleContextSwitch();
}

void SVC_Handler()
{

    svc_number = GetSvcNumber();
    switch (svc_number)
    {
    case 000:
        // void CloseThread()
        threads[current_task_ID].state = COMPLETED;
        SelectNextTask();
        // ScheduleContextSwitch();
        PendSV_Handler();
        break;
    case 001:
        // Sleep()
        SelectNextTask();
        PendSV_Handler();
        // ScheduleContextSwitch();
        break;
    case 109:
        // Reset LED
        GPIO_WriteBit(GPIOA, GPIO_Pin_5, Bit_RESET);
        break;
    case 110:
        // Set LED
        GPIO_WriteBit(GPIOA, GPIO_Pin_5, Bit_SET);
        break;
    case 112:
        start_uart();
        break;
    default:
        break;
    }
}

uint32_t GetSvcNumber()
{
    uint32_t *result = 0;
    asm volatile("MRS R0, PSP\n\t"
                 "MOV %0, R0"
                 : "=r"(result));
    return ((char *)result[6])[-2];
}







void start_uart()
{
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO, ENABLE);
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART2, ENABLE);
    GPIO_InitTypeDef gpio;

    GPIO_StructInit(&gpio);
    gpio.GPIO_Pin = GPIO_Pin_2;
    gpio.GPIO_Mode = GPIO_Mode_AF_PP;
    GPIO_Init(GPIOA, &gpio);

    gpio.GPIO_Pin = GPIO_Pin_3;
    gpio.GPIO_Mode = GPIO_Mode_IN_FLOATING;
    GPIO_Init(GPIOA, &gpio);

    USART_InitTypeDef uart;

    USART_StructInit(&uart);
    uart.USART_BaudRate = 115200;
    USART_Init(USART2, &uart);

    USART_Cmd(USART2, ENABLE);
    return;
}