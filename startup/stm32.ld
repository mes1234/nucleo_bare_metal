/*
Linker script for STM32F10x_128K_8K

modified from

http://www.codesourcery.com/archives/arm-gnu/msg02972.html
http://communities.mentor.com/community/cs/archives/arm-gnu/msg02972.html
*/

/*
There will be a link error if there is not this amount of RAM free at the
end.
*/

_Minimum_Stack_Size = 256;

ENTRY(reset_handler)


/* Memory Spaces Definitions */

MEMORY
{
  RAM (rwx)  : ORIGIN = 0x20000000, LENGTH = 20K
  FLASH (rx) : ORIGIN = 0x08000000, LENGTH = 128K
}

__ram_start__ = ORIGIN(RAM);
__ram_size__  = LENGTH(RAM);
__ram_end__   = __ram_start__ + __ram_size__;
_estack = __ram_end__;
/* highest address of the user mode stack */



PROVIDE ( _Stack_Limit = _estack - _Minimum_Stack_Size );

/* Sections Definitions */

SECTIONS
{
    .text :
    {
        KEEP(*(.isr_vector))            /* Startup code */
        *(.text)                   /* code */
        *(.text.*)                 /* remaining code */
        *(.rodata)                 /* read-only data (constants) */
        *(.rodata.*)
        *(.glue_7)
        *(.glue_7t)
        *(.vfp11_veneer)
        *(.v4_bx)
        *(.ARM.extab* .gnu.linkonce.armextab.*)
    } >FLASH

    /* for exception handling/unwind - some Newlib functions (in
    common with C++ and STDC++) use this. */
    .ARM.extab :
    {
        *(.ARM.extab* .gnu.linkonce.armextab.*)

    } > FLASH

     __exidx_start = .;
    .ARM.exidx :
    {
        *(.ARM.exidx* .gnu.linkonce.armexidx.*)
    } > FLASH
        __exidx_end = .;

    . = ALIGN(4);
     _etext = .;
    /* This is used by the startup in order to initialize the .data secion
*/
    _sidata = _etext;

    /* This is the initialized data section
    The program executes knowing that the data is in the RAM
    but the loader puts the initial values in the FLASH (inidata).
    It is one task of the startup to copy the initial values from FLASH to
RAM. */
    .data  : AT ( _sidata )
    {
        . = ALIGN(4);
        /* This is used by the startup in order to initialize the .data
secion */
        _sdata = . ;

        *(.data)
        *(.data.*)

        . = ALIGN(4);
        /* This is used by the startup in order to initialize the .data
secion */
        _edata = . ;
    } >RAM


    /* This is the uninitialized data section */
    .bss :
    {
        . = ALIGN(4);
        /* This is used by the startup in order to initialize the .bss
secion */
        _sbss = .;
	__bss_start__ = _sbss;
        *(.bss)
        *(.bss.*)
        *(COMMON)

        . = ALIGN(4);
        /* This is used by the startup in order to initialize the .bss
secion */
        _ebss = . ;
	__bss_end__ = _ebss;
    } >RAM

    PROVIDE ( end = _ebss );
    PROVIDE ( _end = _ebss );
    PROVIDE ( _exit = _ebss );
    PROVIDE (_stackend = ORIGIN(RAM) + LENGTH(RAM) - _Minimum_Stack_Size);

    /* This is the user stack section
    This is just to check that there is enough RAM left for the User mode
stack
    It should generate an error if it's full.
     */
    ._usrstack :
    {
        . = ALIGN(4);
        _susrstack = . ;

        . = . + _Minimum_Stack_Size ;

        . = ALIGN(4);
        _eusrstack = . ;
    } >RAM



    /* after that it's only debugging information. */

    /* remove the debugging information from the standard libraries */
/*
    DISCARD :
    {
     libc.a ( * )
     libm.a ( * )
     libgcc.a ( * )
     }
*/

  
}