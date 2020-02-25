#include <stdint.h>

#define ARGV_SIZE(arr)  sizeof(arr)/sizeof(arr[0])
#define THREAD_COUNT_MAX 6
#define PSP_SIZE 0x200
#define SVC(code) asm volatile("svc %[immediate]" ::[immediate] "I"(code))
#define ScheduleContextSwitch() SCB->ICSR |= SCB_ICSR_PENDSVSET_Msk; // Set PendSV to pending
#define sys_Sleep() SVC(001);
#define sys_SetLED() SVC(110);
#define sys_ResetLED() SVC(109);
#define sys_StartUart() SVC(112);
#define BackupSoftwareStack() asm volatile("MRS   r0,  psp      \n\t" \
                                           "STMDB r0!, {r4-r11} \n\t");
#define RestoreSoftwareStack() asm volatile("MRS   r0,  psp      \n\t" \
                                            "LDMIA r0!, {r4-r11} \n\t");
#define SetPSP(value) asm volatile("msr psp, %0 \n\t" \
                                   :                  \
                                   : "r"(value));
#define GetPSP(addr) asm volatile("mrs %0, psp \n\t" \
                                  : "=r"(addr)       \
                                  :);

void CloseThread();
void InitThreads();
void SetupKernel();
void CreateTask(void *taskPointer,int argc,char** argv);
uint32_t GetSvcNumber();

enum threadState
{
  FREE_SLOT,
  NEW,
  RUNNING,
  HALTED,
  COMPLETED,
};
typedef struct
{
  uint32_t stackPointerClean;
  uint32_t stackPointer;
  uint32_t *stackPointerAdd;
  uint32_t *stackPointerCleanAdd;
  enum threadState state;
  uint32_t *entryPoint;
} ThreadControlBlock;

//This defines the stack frame that is saved  by the hardware
typedef struct
{
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
uint32_t task_id_adder;
uint32_t shared_value;
uint32_t svc_number;

