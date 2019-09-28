all:
	@echo "Make targets"
	@cat makefile | grep '^[a-zA-Z]' | sed 's/:.*//g' | sed 's/^/  /g'

build: main.c startup.s stm32.ld clean
	@echo
	@echo "Build production image"
	arm-none-eabi-gcc -c -mcpu=cortex-m3 -mthumb -o main.o main.c
	arm-none-eabi-as -c -mcpu=cortex-m3 -mthumb -o startup.o startup.s
	arm-none-eabi-ld -Tstm32.ld -o main.elf startup.o main.o
	arm-none-eabi-objcopy -O binary main.elf main.bin

build_debug: main.c startup.s stm32.ld clean
	@echo
	@echo "Build debug image"
	arm-none-eabi-gcc -O0 -c -g -mcpu=cortex-m3 -mthumb -o main.o main.c
	arm-none-eabi-as -mcpu=cortex-m3 -mthumb -o startup.o startup.s
	arm-none-eabi-ld -Tstm32.ld -o main.elf startup.o main.o
	arm-none-eabi-objcopy -O binary main.elf main.bin

print_gcc_assembler:
	@echo
	@echo "Print assembler code of main.c using the arm-none-eabi-gcc -S option"
	arm-none-eabi-gcc -S -mcpu=cortex-m3 -mthumb main.c
	cat main.s
	@echo
	@echo "Print assembler code of startup.c using the arm-none-eabi-gcc -S option"
	arm-none-eabi-gcc -S -mcpu=cortex-m3 -mthumb startup.c
	cat startup.s

print_disassemble:
	@echo
	@echo "Print assembler code of main.elf with objdump"
	arm-none-eabi-objdump -S --disassemble main.elf
	@echo
	@echo "Print assembler code of main.o with objdump"
	arm-none-eabi-objdump -S --disassemble main.o
	@echo
	@echo "Print assembler code of startup.o with objdump"
	arm-none-eabi-objdump -S --disassemble startup.o

print_symbols_nm:
	@echo
	@echo "Print symbols of main.o using nm"
	arm-none-eabi-nm --numeric-sort main.o
	@echo
	@echo "Print symbols of startup.o using nm"
	arm-none-eabi-nm --numeric-sort startup.o
	@echo
	@echo "Print symbols of main.elf using nm"
	arm-none-eabi-nm --numeric-sort main.elf

print_symbols_objdump:
	@echo
	@echo "Print symbols of main.o using objdump"
	arm-none-eabi-objdump --syms main.o
	@echo
	@echo "Print symbols of startup.o using objdump"
	arm-none-eabi-objdump --syms startup.o
	@echo
	@echo "Print symbols of main.elf using objdump"
	arm-none-eabi-objdump --syms main.elf

print_sections:
	@echo
	@echo "Print sections of main.o using objdump"
	arm-none-eabi-objdump -h main.o
	@echo
	@echo "Print sections of startup.o using objdump"
	arm-none-eabi-objdump -h startup.o
	@echo
	@echo "Print sections of main.elf using objdump"
	arm-none-eabi-objdump -h main.elf

clean:
	@echo
	@echo "Running target clean"
	rm -f *.o
	rm -f *.elf
	rm -f *.bin
