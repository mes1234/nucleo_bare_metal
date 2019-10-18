#include <stdint.h>
#define SVC(code) asm volatile ("svc %0" : : "I" (code) )
#define USE_PSP_IN_THREAD_MODE (1<<1)
void load_software_context();

void save_software_context();

void setup_new_psp(uint32_t offset_from_msp);

void service_call(void (*func)(void*), void* args);

typedef void (*svcall_t)(void*);

enum threadState {
    NEW     = 0x00,
    RUNNING = 0x01,
    HALTED  = 0x02,
    DEAD    = 0x03 
};

struct ThreadControlBlock{
    uint32_t *stackPointer;
    unsigned short int stacksize;
    enum threadState state;
    unsigned char threadID;
};

void SetupKernel();
