#include "stm32f10x_usart.h"
#include "kernel.h"

char *PrintBuf = 0x0;

int S_print(int argc, char *argv[])
{
    // while (1)
    // {
    //     PrintBuf = 0x0;
    //     sys_Sleep();
    // }

    while (1)
    {
        while (PrintBuf == 0x0)
        {
            ;
            //   sys_Sleep();
        }
        while (PrintBuf[0])
        {
            while (USART_GetFlagStatus(USART2, USART_FLAG_TXE) == RESET)
                ;
            USART_SendData(USART2, PrintBuf++ [0]);
        }
        PrintBuf = 0x0;
    }
}

void print(char *msg)
{
    // return;
    while (PrintBuf != 0x0)
    {
        ;
        // sys_Sleep();
    }

    PrintBuf = msg;
}
