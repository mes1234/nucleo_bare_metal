#include <stdint.h>
#define SVC(code) asm volatile ("svc %0" : : "I" (code) )
#define USE_PSP_IN_THREAD_MODE (1<<1)
#define THREAD_COUNT_MAX 3
#define PSP_SIZE 0x1000

void load_software_context();

void save_software_context();

void setup_new_psp(uint32_t offset_from_msp);

void service_call(void (*func)(void*), void* args);

typedef void (*svcall_t)(void*);

enum threadState{
    NEW,
    RUNNING,
    HALTED,
    DEAD 
};

typedef struct {
    uint32_t stackPointer;
    enum threadState state;
    uint32_t *entryPoint;
}ThreadControlBlock;

extern ThreadControlBlock threads[THREAD_COUNT_MAX];
uint32_t i;

void SetupKernel();
