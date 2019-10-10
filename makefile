LIBROOT=/home/witek/CODE/arm/STM32F10x_StdPeriph_Lib_V3.5.0/Libraries
CMSIS=$(LIBROOT)/CMSIS/CM3
# HEADERS
INCLUDES =\
	-I$(CMSIS)/CoreSupport\
	-I$(CMSIS)/DeviceSupport/ST/STM32F10x\
	-I$(LIBROOT)/STM32F10x_StdPeriph_Driver/inc\
	-I./inc


DEVICE=$(CMSIS)/DeviceSupport/ST/STM32F10x
CORE=$(CMSIS)/CoreSupport
PERIPH=$(LIBROOT)/STM32F10x_StdPeriph_Driver/src
STARTUP=$(DEVICE)/startup/gcc_ride7



build_debug: clean
	@echo
	@echo "Build debug image"
	arm-none-eabi-gcc -c -O0 $(INCLUDES) -DSTM32F10X_MD -ggdb  -mcpu=cortex-m3 -mthumb $(PERIPH)/stm32f10x_gpio.c -o obj/stm32f10x_gpio.o 
	arm-none-eabi-gcc -c -O0 $(INCLUDES) -DSTM32F10X_MD -ggdb  -mcpu=cortex-m3 -mthumb $(PERIPH)/stm32f10x_rcc.c  -o obj/stm32f10x_rcc.o 
	arm-none-eabi-gcc -c -O0 $(INCLUDES) -DSTM32F10X_MD -ggdb  -mcpu=cortex-m3 -mthumb  $(DEVICE)/system_stm32f10x.c -o obj/system_stm32f10x.o
	arm-none-eabi-gcc -c -O0 $(INCLUDES) -DSTM32F10X_MD -ggdb  -mcpu=cortex-m3 -mthumb  $(CORE)/core_cm3.c -o obj/core_cm3.o
	arm-none-eabi-gcc -c -O0 $(INCLUDES) -DSTM32F10X_MD -ggdb  -mcpu=cortex-m3 -mthumb  src/main.c -o obj/main.o
	arm-none-eabi-gcc -c -O0 $(INCLUDES) -DSTM32F10X_MD -ggdb  -mcpu=cortex-m3 -mthumb  src/service_call.c -o obj/service_call.o
	arm-none-eabi-as -mcpu=cortex-m3 -mthumb -o obj/startup.o $(STARTUP)/startup_stm32f10x_md.s
	arm-none-eabi-ld -Tstartup/stm32.ld -o exec/main.elf obj/*.o
	arm-none-eabi-objcopy -O binary exec/main.elf exec/main.bin

clean:
	@echo
	@echo "Running target clean"
	rm -rf *.o
	rm -rf *.elf
	rm -rf *.bin
