#include <stdint.h>

#define THREAD_COUNT_MAX 3
#define PSP_SIZE 0x1000

void InitThreads();
void SetupKernel();
void CreateTask(void *taskPointer);

enum threadState{
    NEW,
    RUNNING,
    HALTED,
    DEAD 
};
typedef struct {
    uint32_t stackPointer;
    uint32_t* stackPointerAdd;
    enum threadState state;
    uint32_t *entryPoint;
}ThreadControlBlock;


//This defines the stack frame that is saved  by the hardware
typedef struct {
  uint32_t r0;
  uint32_t r1;
  uint32_t r2;
  uint32_t r3;
  uint32_t r12;
  uint32_t lr;
  uint32_t pc;
  uint32_t psr;
} hw_stack_frame_t;

extern ThreadControlBlock threads[THREAD_COUNT_MAX];
uint32_t i;
uint32_t current_task_ID;
uint32_t next_task_ID;

