#include <stdint.h>
#include "stm32f10x_gpio.h"
#include "stm32f10x_tim.h"
#include "stm32f10x_rcc.h"
#include "stm32f10x.h"
#include "core_cm3.h"
#include "main.h"
#include "setup_stack.h"

void setup_psp(uint32_t offset)
{
    uint32_t current_msp = __get_MSP();
    uint32_t new_psp = current_msp-offset;
    __set_PSP(new_psp);
}