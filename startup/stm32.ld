/* Define the end of RAM and limit of stack memory */
/* (4KB SRAM on the STM32F031x6 line, 4096 = 0x1000) */
/* (RAM starts at address 0x20000000)*/
_estack = 0x20005000;    /* end of RAM */

MEMORY
{
    FLASH ( rx )      : ORIGIN = 0x08000000, LENGTH = 128K
    RAM ( xrw )       : ORIGIN = 0x20000000, LENGTH = 20K
}