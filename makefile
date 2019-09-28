
build_debug: startup/startup.s startup/stm32.ld clean
	@echo
	@echo "Build debug image"
	arm-none-eabi-as -mcpu=cortex-m3 -mthumb -o obj/startup.o startup/startup.s
	arm-none-eabi-ld -Tstartup/stm32.ld -o exec/main.elf obj/startup.o
	arm-none-eabi-objcopy -O binary exec/main.elf exec/main.bin

clean:
	@echo
	@echo "Running target clean"
	rm -rf *.o
	rm -rf *.elf
	rm -rf *.bin
