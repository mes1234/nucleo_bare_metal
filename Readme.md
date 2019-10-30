# YAOS - Yet another OS (for cortex m3)

## Hardware
(ST nucleo)[https://www.st.com/content/st_com/en/products/evaluation-tools/product-evaluation-tools/mcu-mpu-eval-tools/stm32-mcu-mpu-eval-tools/stm32-nucleo-boards/nucleo-f103rb.html#resource]
## State of tasks:<BR>
 * FREE_SLOT - free not initilized yet
 * NEW - prepared but never run 
 * RUNNING - currently running
 * HALTED - waiting
 * COMPLETED - exited and freed stack

## Bootup lifecycle
```c
/* Main program. */
int main(void)
{
  SystemInit();
  InitThreads();
  setupLED();
  CreateTask(task1);
  CreateTask(task2);
  CreateTask(task3);
  RunOS();
}
```
### InitThreads()
prepare free slots, count of avialable slots is in __kernel.h__
```c
#define THREAD_COUNT_MAX 5
```
Size of stack per task is in __kernel.h__
```c
#define PSP_SIZE 0x1000
```
### CreateTask(task1)
Add task1 function to scheduler, <BR>
__#TODO__ allow passing arg1, and args[]
### RunOS()
Start executing tasks and let OS decide which task to do

## OS level function
OS level function are invoked as SVC(#code) 
