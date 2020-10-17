LIBROOT=C:\\Users\\witol\\Documents\\CODE\\arm\\yaos\\STM32F10x_StdPeriph_Lib_V3.5.0\\Libraries
CMSIS=$(LIBROOT)\\CMSIS\\CM3
HAL=C:\\Users\\witol\\Documents\\CODE\\arm\\yaos\\STM32CubeF1\\Drivers\\STM32F1xx_HAL_Driver\\Inc
# HEADERS
INCLUDES =\
	-I$(CMSIS)\\CoreSupport\
	-I$(CMSIS)\\DeviceSupport\\ST\\STM32F10x\
	-I$(LIBROOT)\\STM32F10x_StdPeriph_Driver\\inc\
	-I$(HAL)\
	-I.\\inc\
	-I.\\src\\ssd1306


DEVICE=$(CMSIS)\\DeviceSupport\\ST\\STM32F10x
CORE=$(CMSIS)\\CoreSupport
PERIPH=$(LIBROOT)\\STM32F10x_StdPeriph_Driver\\src
STARTUP=$(DEVICE)\\startup\\gcc_ride7

CC=arm-none-eabi-gcc
CFLAGS=-c -O0 $(INCLUDES) -DSTM32F10X_MD -ggdb  -mcpu=cortex-m3 -mthumb


build_debug: clean
	@echo
	@echo "Build debug image"
	$(CC) $(CFLAGS) $(PERIPH)\\stm32f10x_gpio.c -o obj\\stm32f10x_gpio.o 
	$(CC) $(CFLAGS) $(PERIPH)\\stm32f10x_rcc.c  -o obj\\stm32f10x_rcc.o 
	$(CC) $(CFLAGS) $(DEVICE)\\system_stm32f10x.c -o obj\\system_stm32f10x.o
	$(CC) $(CFLAGS) $(CORE)\\core_cm3.c -o obj\\core_cm3.o
	$(CC) $(CFLAGS) src\\main.c -o obj\\main.o
	$(CC) $(CFLAGS) src\\kernel.c -o obj\\kernel.o
	$(CC) $(CFLAGS) src\\ssd1306\\ssd1306.c -o obj\\ssd1306.c
	arm-none-eabi-as -mcpu=cortex-m3 -mthumb -o obj\\startup.o $(STARTUP)\\startup_stm32f10x_md.s
	arm-none-eabi-ld -Tstartup\\stm32.ld -o exec\\main.elf obj\\*.o
	arm-none-eabi-objcopy -O binary exec\\main.elf exec\\main.bin
	$(CC) $(CFLAGS) -S src\\kernel.c -o debug\\kernel.s
clean:
	@echo
	@echo "Running target clean"
	# del /f *.o
	# del /f *.elf
	# del /f *.bin
