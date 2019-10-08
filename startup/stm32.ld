/* Entry Point */
ENTRY(Reset_Handler)

/* Highest address of the user mode stack */
_estack = 0x20005000;    /* end of RAM */

_Min_Heap_Size = 0;      /* required amount of heap  */
_Min_Stack_Size = 0x400; /* required amount of stack */

/* Memories definition */
MEMORY
{
  RAM (xrw)		: ORIGIN = 0x20000000, LENGTH = 20K
  ROM (rx)		: ORIGIN = 0x8000000, LENGTH = 128K
}

/* Sections */
SECTIONS
{
  /* The startup code into ROM memory */
  .isr_vector :
  {
    . = ALIGN(4);
    KEEP(*(.isr_vector)) /* Startup code */
    . = ALIGN(4);
  } >ROM

  /* The program code and other data into ROM memory */
  .text :
  {
    . = ALIGN(4);
    *(.text)           /* .text sections (code) */
    . = ALIGN(4);
  } >ROM

  /* Constant data into ROM memory*/
  .rodata :
  {
    . = ALIGN(4);
    *(.rodata)         /* .rodata sections (constants, strings, etc.) */
    . = ALIGN(4);
  } >ROM

 /* Used by the startup to initialize data */
  _sidata = LOADADDR(.data);

  /* Initialized data sections into RAM memory */
  .data : 
  {
    . = ALIGN(4);
    _sdata = .;        /* create a global symbol at data start */
    *(.data)           /* .data sections */
    . = ALIGN(4);
    _edata = .;        /* define a global symbol at data end */
  } >RAM AT> ROM

  
  /* Uninitialized data section into RAM memory */
  . = ALIGN(4);
  .bss :
  {
    /* This is used by the startup in order to initialize the .bss secion */
    _sbss = .;         /* define a global symbol at bss start */
    __bss_start__ = _sbss;
    *(.bss)
    *(.bss*)
    *(COMMON)

    . = ALIGN(4);
    _ebss = .;         /* define a global symbol at bss end */
    __bss_end__ = _ebss;
  } >RAM
}
