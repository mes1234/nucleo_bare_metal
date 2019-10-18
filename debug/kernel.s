	.cpu cortex-m3
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"kernel.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	1
	.global	save_software_context
	.arch armv7-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	save_software_context, %function
save_software_context:
.LFB29:
	.file 1 "src/kernel.c"
	.loc 1 10 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 14 5
	.syntax unified
@ 14 "src/kernel.c" 1
	MRS   r0,  psp      
	STMDB r0!, {r4-r11} 
	
@ 0 "" 2
	.loc 1 16 1
	.thumb
	.syntax unified
	nop
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE29:
	.size	save_software_context, .-save_software_context
	.align	1
	.global	load_software_context
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	load_software_context, %function
load_software_context:
.LFB30:
	.loc 1 19 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 22 5
	.syntax unified
@ 22 "src/kernel.c" 1
	LDMIA r0!, {r4-r11}  
	
@ 0 "" 2
	.loc 1 23 1
	.thumb
	.syntax unified
	nop
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE30:
	.size	load_software_context, .-load_software_context
	.align	1
	.global	setup_new_psp
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	setup_new_psp, %function
setup_new_psp:
.LFB31:
	.loc 1 26 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 28 28
	bl	__get_MSP
	str	r0, [r7, #12]
	.loc 1 29 14
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	subs	r3, r2, r3
	str	r3, [r7, #8]
	.loc 1 30 5
	ldr	r0, [r7, #8]
	bl	__set_PSP
	.loc 1 31 1
	nop
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE31:
	.size	setup_new_psp, .-setup_new_psp
	.align	1
	.global	SetupKernel
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SetupKernel, %function
SetupKernel:
.LFB32:
	.loc 1 34 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 35 5
	ldr	r0, [r7, #4]
	bl	InitThreads
	.loc 1 36 1
	nop
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE32:
	.size	SetupKernel, .-SetupKernel
	.align	1
	.global	StartTask
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	StartTask, %function
StartTask:
.LFB33:
	.loc 1 39 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 40 5
	.syntax unified
@ 40 "src/kernel.c" 1
	mov r12, lr 		    

@ 0 "" 2
	.loc 1 41 5
	.thumb
	.syntax unified
	movs	r3, #2
	.syntax unified
@ 41 "src/kernel.c" 1
	MSR control, r3
@ 0 "" 2
	.loc 1 44 27
	.thumb
	.syntax unified
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #8]
	.loc 1 45 5
	ldr	r3, [r7]
	.syntax unified
@ 45 "src/kernel.c" 1
	MOV lr, r3
@ 0 "" 2
	.loc 1 48 5
@ 48 "src/kernel.c" 1
	bx lr 		    

@ 0 "" 2
	.loc 1 49 1
	.thumb
	.syntax unified
	nop
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE33:
	.size	StartTask, .-StartTask
	.align	1
	.global	CreateTask
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	CreateTask, %function
CreateTask:
.LFB34:
	.loc 1 52 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 54 12
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 1 54 5
	b	.L7
.L10:
	.loc 1 56 20
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	.loc 1 56 23
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 1 56 12
	cmp	r3, #3
	bne	.L8
	.loc 1 58 20
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	.loc 1 58 30
	movs	r2, #0
	strb	r2, [r3, #4]
	.loc 1 59 20
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	.loc 1 59 35
	ldr	r2, [r7]
	str	r2, [r3, #8]
	.loc 1 60 13
	b	.L9
.L8:
	.loc 1 54 40 discriminator 2
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L7:
	.loc 1 54 5 discriminator 1
	ldr	r3, [r7, #12]
	cmp	r3, #9
	bls	.L10
.L9:
	.loc 1 63 1
	nop
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE34:
	.size	CreateTask, .-CreateTask
	.align	1
	.global	RunOS
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	RunOS, %function
RunOS:
.LFB35:
	.loc 1 66 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 67 5
	ldr	r0, [r7, #4]
	bl	StartFirstTask
	.loc 1 68 1
	nop
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE35:
	.size	RunOS, .-RunOS
	.align	1
	.global	StartFirstTask
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	StartFirstTask, %function
StartFirstTask:
.LFB36:
	.loc 1 71 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 73 12
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 1 73 5
	b	.L13
.L15:
	.loc 1 75 20
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	.loc 1 75 23
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 1 75 12
	cmp	r3, #0
	bne	.L14
	.loc 1 77 20
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	.loc 1 77 30
	movs	r2, #1
	strb	r2, [r3, #4]
	.loc 1 78 30
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	.loc 1 78 13
	ldr	r3, [r3]
	mov	r0, r3
	bl	__set_PSP
	.loc 1 79 13
	movs	r3, #2
	.syntax unified
@ 79 "src/kernel.c" 1
	MSR control, r3
@ 0 "" 2
	.loc 1 84 39
	.thumb
	.syntax unified
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	.loc 1 84 42
	ldr	r3, [r3, #8]
	.loc 1 82 13
	.syntax unified
@ 82 "src/kernel.c" 1
	MOV lr, r3
@ 0 "" 2
	.loc 1 85 13
@ 85 "src/kernel.c" 1
	bx lr 		    

@ 0 "" 2
	.thumb
	.syntax unified
.L14:
	.loc 1 73 40 discriminator 2
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L13:
	.loc 1 73 5 discriminator 1
	ldr	r3, [r7, #12]
	cmp	r3, #9
	bls	.L15
	.loc 1 88 1
	nop
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE36:
	.size	StartFirstTask, .-StartFirstTask
	.align	1
	.global	InitThreads
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	InitThreads, %function
InitThreads:
.LFB37:
	.loc 1 91 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 92 28
	bl	__get_MSP
	str	r0, [r7, #16]
	.loc 1 97 12
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 1 97 5
	b	.L17
.L18:
	.loc 1 99 41 discriminator 3
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	lsls	r3, r3, #9
	.loc 1 99 17 discriminator 3
	ldr	r2, [r7, #16]
	subs	r3, r2, r3
	str	r3, [r7, #12]
	.loc 1 100 16 discriminator 3
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	.loc 1 100 33 discriminator 3
	ldr	r2, [r7, #12]
	str	r2, [r3]
	.loc 1 101 16 discriminator 3
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	.loc 1 101 26 discriminator 3
	movs	r2, #3
	strb	r2, [r3, #4]
	.loc 1 97 40 discriminator 3
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L17:
	.loc 1 97 5 discriminator 1
	ldr	r3, [r7, #20]
	cmp	r3, #9
	bls	.L18
	.loc 1 103 1
	nop
	adds	r7, r7, #24
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE37:
	.size	InitThreads, .-InitThreads
.Letext0:
	.file 2 "/home/witek/CODE/arm/gnu/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/witek/CODE/arm/gnu/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "/home/witek/CODE/arm/STM32F10x_StdPeriph_Lib_V3.5.0/Libraries/CMSIS/CM3/CoreSupport/core_cm3.h"
	.file 5 "/home/witek/CODE/arm/STM32F10x_StdPeriph_Lib_V3.5.0/Libraries/CMSIS/CM3/DeviceSupport/ST/STM32F10x/system_stm32f10x.h"
	.file 6 "./inc/kernel.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x2df
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0xc
	.4byte	.LASF35
	.4byte	.LASF36
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.byte	0x19
	.4byte	0x54
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x48
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x4
	.2byte	0x6ce
	.byte	0x15
	.4byte	0x70
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x5
	.byte	0x35
	.byte	0x11
	.4byte	0x7c
	.uleb128 0x8
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0x6
	.byte	0x10
	.byte	0x6
	.4byte	0xce
	.uleb128 0xa
	.ascii	"NEW\000"
	.byte	0
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.byte	0xc
	.byte	0x6
	.byte	0x17
	.byte	0x9
	.4byte	0xff
	.uleb128 0xd
	.4byte	.LASF16
	.byte	0x6
	.byte	0x18
	.byte	0xe
	.4byte	0x7c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x6
	.byte	0x19
	.byte	0x16
	.4byte	0xa3
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF18
	.byte	0x6
	.byte	0x1a
	.byte	0xf
	.4byte	0xff
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7c
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x1b
	.byte	0x2
	.4byte	0xce
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0x1
	.byte	0x5a
	.byte	0x6
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x162
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x1
	.byte	0x5a
	.byte	0x26
	.4byte	0x162
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.4byte	.LASF20
	.byte	0x1
	.byte	0x5c
	.byte	0xe
	.4byte	0x7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x11
	.4byte	.LASF21
	.byte	0x1
	.byte	0x5d
	.byte	0xe
	.4byte	0x7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.ascii	"i\000"
	.byte	0x1
	.byte	0x60
	.byte	0xe
	.4byte	0x7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x105
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x1
	.byte	0x46
	.byte	0x6
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19b
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x1
	.byte	0x46
	.byte	0x29
	.4byte	0x162
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.ascii	"i\000"
	.byte	0x1
	.byte	0x48
	.byte	0xe
	.4byte	0x7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x1
	.byte	0x41
	.byte	0x6
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cf
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x1
	.byte	0x41
	.byte	0x20
	.4byte	0x162
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.4byte	.LASF23
	.byte	0x1
	.byte	0x43
	.byte	0x5
	.4byte	0x69
	.uleb128 0x14
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF26
	.byte	0x1
	.byte	0x33
	.byte	0x6
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x211
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x1
	.byte	0x33
	.byte	0x25
	.4byte	0x162
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.4byte	.LASF27
	.byte	0x1
	.byte	0x33
	.byte	0x34
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.ascii	"i\000"
	.byte	0x1
	.byte	0x35
	.byte	0xe
	.4byte	0x7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x15
	.4byte	.LASF28
	.byte	0x1
	.byte	0x26
	.byte	0x6
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x246
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x1
	.byte	0x26
	.byte	0x24
	.4byte	0x162
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x10
	.4byte	.LASF27
	.byte	0x1
	.byte	0x26
	.byte	0x33
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x1
	.byte	0x21
	.byte	0x6
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27a
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x1
	.byte	0x21
	.byte	0x26
	.4byte	0x162
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.4byte	.LASF22
	.byte	0x1
	.byte	0x23
	.byte	0x5
	.4byte	0x69
	.uleb128 0x14
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x1
	.byte	0x19
	.byte	0x6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2be
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0x19
	.byte	0x1d
	.4byte	0x7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.4byte	.LASF20
	.byte	0x1
	.byte	0x1c
	.byte	0xe
	.4byte	0x7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x11
	.4byte	.LASF21
	.byte	0x1
	.byte	0x1d
	.byte	0xe
	.4byte	0x7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x16
	.4byte	.LASF32
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.4byte	.LASF33
	.byte	0x1
	.byte	0x9
	.byte	0x6
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF26:
	.ascii	"CreateTask\000"
.LASF30:
	.ascii	"setup_new_psp\000"
.LASF14:
	.ascii	"HALTED\000"
.LASF22:
	.ascii	"InitThreads\000"
.LASF32:
	.ascii	"load_software_context\000"
.LASF34:
	.ascii	"GNU C17 8.3.1 20190703 (release) [gcc-8-branch revi"
	.ascii	"sion 273027] -mcpu=cortex-m3 -mthumb -mfloat-abi=so"
	.ascii	"ft -march=armv7-m -ggdb -O0\000"
.LASF29:
	.ascii	"SetupKernel\000"
.LASF36:
	.ascii	"/home/witek/CODE/arm/test_gnu\000"
.LASF25:
	.ascii	"RunOS\000"
.LASF31:
	.ascii	"offset_from_msp\000"
.LASF17:
	.ascii	"state\000"
.LASF20:
	.ascii	"current_msp\000"
.LASF21:
	.ascii	"new_psp\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF11:
	.ascii	"ITM_RxBuffer\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF16:
	.ascii	"stackPointer\000"
.LASF15:
	.ascii	"DEAD\000"
.LASF0:
	.ascii	"signed char\000"
.LASF24:
	.ascii	"threads\000"
.LASF19:
	.ascii	"ThreadControlBlock\000"
.LASF6:
	.ascii	"long long int\000"
.LASF12:
	.ascii	"SystemCoreClock\000"
.LASF37:
	.ascii	"threadState\000"
.LASF23:
	.ascii	"StartFirstTask\000"
.LASF2:
	.ascii	"short int\000"
.LASF18:
	.ascii	"entryPoint\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF4:
	.ascii	"long int\000"
.LASF13:
	.ascii	"RUNNING\000"
.LASF28:
	.ascii	"StartTask\000"
.LASF33:
	.ascii	"save_software_context\000"
.LASF27:
	.ascii	"taskPointer\000"
.LASF35:
	.ascii	"src/kernel.c\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 8-2019-q3-update) 8.3.1 20190703 (release) [gcc-8-branch revision 273027]"
