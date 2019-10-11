#define SVC(code) asm volatile ("svc %0" : : "I" (code) )

typedef void (*svcall_t)(void*);