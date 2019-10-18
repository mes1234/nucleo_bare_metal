# YAOS - Yet another OS (for cortex m3)

## OS global items

### Defintion thread
```c
struct ThreadControlBlock{
    uint32_t *stackPointer;
    unsigned short int stacksize;
    enum threadState state;
    unsigned char threadID;
    uint32_t *taskEntryPoint;
};

### Definition of thread state
```c

enum threadState {
    NEW     = 0x00, // we start with this
    RUNNING = 0x01, // prior to executing it should be set
    HALTED  = 0x02, // after switching to another make it halted
    DEAD    = 0x03  // free free slot, not started or completed
};
```

```
### Array of tasks (threads)

```c
struct ThreadControlBlock Threads[COUNT_OF_THREADS]
```

## Kernel startup


## Start new task
1. find in __Threads__ first one with __state=DEAD__ 
2. assign taskEntryPoint to function of task
3. set __state = NEW__

## Switch to next task