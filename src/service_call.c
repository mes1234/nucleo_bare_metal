#include "main.h"

void service_call(void (*func)(void*), void* args){
     //by convention func is in r0 and args is in r1
     SVC(0);
}