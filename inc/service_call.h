//we need to decrease the optimization so the the compiler
//does not ignore func and args
void service_call(void (*func)(void*), void* args);