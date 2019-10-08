LIBROOT=/home/witek/CODE/arm/STM32F10x_StdPeriph_Lib_V3.5.0/Libraries
CMSIS=$(LIBROOT)/CMSIS/CM3
# HEADERS
INCLUDES =\
	-I$(CMSIS)/CoreSupport\
	-I$(CMSIS)/DeviceSupport/ST/STM32F10x\
	-I$(LIBROOT)/STM32F10x_StdPeriph_Driver/inc


DEVICE=$(CMSIS)/DeviceSupport/ST/STM32F10x
CORE=$(CMSIS)/CoreSupport
PERIPH=$(LIBROOT)/STM32F10x_StdPeriph_Driver/src

build_debug: src/main.c startup/startup.s startup/stm32.ld clean
	@echo
	@echo "Build debug image"
	arm-none-eabi-gcc $(INCLUDES) -DSTM32F10X_MD -ggdb -O0 -mcpu=cortex-m3 -mthumb $(PERIPH)/stm32f10x_gpio.c $(PERIPH)/stm32f10x_rcc.c src/main.c -o obj/main.o 
	arm-none-eabi-as -ggdb -mcpu=cortex-m3 -mthumb -o obj/startup.o startup/startup.s
	arm-none-eabi-ld -Tstartup/stm32.ld -o exec/main.elf obj/startup.o obj/main.o
	# arm-none-eabi-objcopy -O binary exec/main.elf exec/main.bin

clean:
	@echo
	@echo "Running target clean"
	rm -rf *.o
	rm -rf *.elf
	rm -rf *.bin
