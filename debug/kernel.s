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
	.arch armv7-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	NVIC_SetPriority, %function
NVIC_SetPriority:
.LFB20:
	.file 1 "/home/witek/CODE/arm/STM32F10x_StdPeriph_Lib_V3.5.0/Libraries/CMSIS/CM3/CoreSupport/core_cm3.h"
	.loc 1 1587 1
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
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	.loc 1 1588 5
	ldrsb	r3, [r7, #7]
	cmp	r3, #0
	bge	.L2
	.loc 1 1589 55
	ldr	r3, [r7]
	uxtb	r2, r3
	.loc 1 1589 8
	ldr	r1, .L5
	.loc 1 1589 32
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	and	r3, r3, #15
	.loc 1 1589 38
	subs	r3, r3, #4
	.loc 1 1589 55
	lsls	r2, r2, #4
	uxtb	r2, r2
	.loc 1 1589 42
	add	r3, r3, r1
	strb	r2, [r3, #24]
	.loc 1 1592 1
	b	.L4
.L2:
	.loc 1 1591 45
	ldr	r3, [r7]
	uxtb	r2, r3
	.loc 1 1591 9
	ldr	r1, .L5+4
	.loc 1 1591 14
	ldrsb	r3, [r7, #7]
	.loc 1 1591 45
	lsls	r2, r2, #4
	uxtb	r2, r2
	.loc 1 1591 32
	add	r3, r3, r1
	strb	r2, [r3, #768]
.L4:
	.loc 1 1592 1
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
.L6:
	.align	2
.L5:
	.word	-536810240
	.word	-536813312
	.cfi_endproc
.LFE20:
	.size	NVIC_SetPriority, .-NVIC_SetPriority
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SysTick_Config, %function
SysTick_Config:
.LFB24:
	.loc 1 1695 1
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
	.loc 1 1696 6
	ldr	r3, [r7, #4]
	cmp	r3, #16777216
	bcc	.L8
	.loc 1 1696 48 discriminator 1
	movs	r3, #1
	b	.L9
.L8:
	.loc 1 1698 27
	ldr	r3, [r7, #4]
	bic	r3, r3, #-16777216
	.loc 1 1698 10
	ldr	r2, .L10
	.loc 1 1698 54
	subs	r3, r3, #1
	.loc 1 1698 18
	str	r3, [r2, #4]
	.loc 1 1699 3
	movs	r1, #15
	mov	r0, #-1
	bl	NVIC_SetPriority
	.loc 1 1700 10
	ldr	r3, .L10
	.loc 1 1700 18
	movs	r2, #0
	str	r2, [r3, #8]
	.loc 1 1701 10
	ldr	r3, .L10
	.loc 1 1701 18
	movs	r2, #7
	str	r2, [r3]
	.loc 1 1704 10
	movs	r3, #0
.L9:
	.loc 1 1705 1
	mov	r0, r3
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L11:
	.align	2
.L10:
	.word	-536813552
	.cfi_endproc
.LFE24:
	.size	SysTick_Config, .-SysTick_Config
	.comm	i,4,4
	.comm	current_task_ID,4,4
	.comm	next_task_ID,4,4
	.global	ready_to_Switch
	.bss
	.align	2
	.type	ready_to_Switch, %object
	.size	ready_to_Switch, 4
ready_to_Switch:
	.space	4
	.global	halted_id
	.align	2
	.type	halted_id, %object
	.size	halted_id, 4
halted_id:
	.space	4
	.text
	.align	1
	.global	save_software_context
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	save_software_context, %function
save_software_context:
.LFB29:
	.file 2 "src/kernel.c"
	.loc 2 13 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 2 17 5
	.syntax unified
@ 17 "src/kernel.c" 1
	MRS   r0,  psp      
	STMDB r0!, {r4-r11} 
	
@ 0 "" 2
	.loc 2 19 1
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
	.loc 2 22 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 2 25 5
	.syntax unified
@ 25 "src/kernel.c" 1
	LDMIA r0!, {r4-r11}  
	
@ 0 "" 2
	.loc 2 26 1
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
	.loc 2 29 1
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
	.loc 2 31 28
	bl	__get_MSP
	str	r0, [r7, #12]
	.loc 2 32 14
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	subs	r3, r2, r3
	str	r3, [r7, #8]
	.loc 2 33 5
	ldr	r0, [r7, #8]
	bl	__set_PSP
	.loc 2 34 1
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
	.loc 2 37 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 2 38 5
	bl	InitThreads
	.loc 2 39 5
	bl	InitPendSv
	.loc 2 40 5
	mov	r0, #1000
	bl	InitSysTick
	.loc 2 41 1
	nop
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
	.loc 2 44 1
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
	.loc 2 45 5
	.syntax unified
@ 45 "src/kernel.c" 1
	mov r12, lr 		    

@ 0 "" 2
	.loc 2 46 5
	.thumb
	.syntax unified
	movs	r3, #2
	.syntax unified
@ 46 "src/kernel.c" 1
	MSR control, r3
@ 0 "" 2
	.loc 2 49 25
	.thumb
	.syntax unified
	ldr	r2, .L17
	ldr	r3, [r7, #4]
	str	r3, [r2, #12]
	.loc 2 50 5
	ldr	r3, [r7, #4]
	.syntax unified
@ 50 "src/kernel.c" 1
	MOV lr, r3
@ 0 "" 2
	.loc 2 53 5
@ 53 "src/kernel.c" 1
	bx lr 		    

@ 0 "" 2
	.loc 2 54 1
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
.L18:
	.align	2
.L17:
	.word	threads
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
	.loc 2 57 1
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
	.loc 2 59 12
	ldr	r3, .L24
	movs	r2, #0
	str	r2, [r3]
	.loc 2 59 5
	b	.L20
.L23:
	.loc 2 61 23
	ldr	r3, .L24
	ldr	r3, [r3]
	ldr	r2, .L24+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #8
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 61 12
	cmp	r3, #3
	bne	.L21
	.loc 2 63 23
	ldr	r3, .L24
	ldr	r3, [r3]
	.loc 2 63 30
	ldr	r2, .L24+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #8
	movs	r2, #0
	strb	r2, [r3]
	.loc 2 64 23
	ldr	r3, .L24
	ldr	r3, [r3]
	.loc 2 64 35
	ldr	r2, .L24+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #12
	ldr	r2, [r7, #4]
	str	r2, [r3]
	.loc 2 65 13
	b	.L22
.L21:
	.loc 2 59 40 discriminator 2
	ldr	r3, .L24
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L24
	str	r3, [r2]
.L20:
	.loc 2 59 19 discriminator 1
	ldr	r3, .L24
	ldr	r3, [r3]
	.loc 2 59 5 discriminator 1
	cmp	r3, #1
	bls	.L23
.L22:
	.loc 2 68 1
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
.L25:
	.align	2
.L24:
	.word	i
	.word	threads
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
	.loc 2 71 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 2 72 21
	ldr	r3, .L27
	movs	r2, #0
	str	r2, [r3]
	.loc 2 73 5
	bl	StartFirstTask
	.loc 2 74 1
	nop
	pop	{r7, pc}
.L28:
	.align	2
.L27:
	.word	current_task_ID
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
	.loc 2 77 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 2 79 12
	ldr	r3, .L33
	movs	r2, #0
	str	r2, [r3]
	.loc 2 79 5
	b	.L30
.L32:
	.loc 2 81 23
	ldr	r3, .L33
	ldr	r3, [r3]
	ldr	r2, .L33+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #8
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 81 12
	cmp	r3, #0
	bne	.L31
	.loc 2 83 23
	ldr	r3, .L33
	ldr	r3, [r3]
	.loc 2 83 30
	ldr	r2, .L33+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #8
	movs	r2, #1
	strb	r2, [r3]
	.loc 2 84 13
	ldr	r3, .L33
	ldr	r3, [r3]
	ldr	r2, .L33+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r0, r3
	bl	__set_PSP
	.loc 2 85 13
	movs	r3, #2
	.syntax unified
@ 85 "src/kernel.c" 1
	MSR control, r3
@ 0 "" 2
	.loc 2 90 42
	.thumb
	.syntax unified
	ldr	r3, .L33
	ldr	r3, [r3]
	ldr	r2, .L33+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #12
	ldr	r3, [r3]
	.loc 2 88 13
	.syntax unified
@ 88 "src/kernel.c" 1
	MOV lr, r3
@ 0 "" 2
	.loc 2 91 13
@ 91 "src/kernel.c" 1
	bx lr 		    

@ 0 "" 2
	.thumb
	.syntax unified
.L31:
	.loc 2 79 40 discriminator 2
	ldr	r3, .L33
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L33
	str	r3, [r2]
.L30:
	.loc 2 79 19 discriminator 1
	ldr	r3, .L33
	ldr	r3, [r3]
	.loc 2 79 5 discriminator 1
	cmp	r3, #1
	bls	.L32
	.loc 2 94 1
	nop
	pop	{r7, pc}
.L34:
	.align	2
.L33:
	.word	i
	.word	threads
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
	.loc 2 97 1
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
	.loc 2 98 28
	bl	__get_MSP
	str	r0, [r7, #4]
	.loc 2 103 12
	ldr	r3, .L38
	movs	r2, #0
	str	r2, [r3]
	.loc 2 103 5
	b	.L36
.L37:
	.loc 2 105 41 discriminator 3
	ldr	r3, .L38
	ldr	r3, [r3]
	adds	r3, r3, #1
	lsls	r3, r3, #12
	.loc 2 105 17 discriminator 3
	ldr	r2, [r7, #4]
	subs	r3, r2, r3
	str	r3, [r7]
	.loc 2 106 19 discriminator 3
	ldr	r3, .L38
	ldr	r3, [r3]
	.loc 2 106 33 discriminator 3
	ldr	r2, .L38+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r7]
	str	r2, [r3]
	.loc 2 107 49 discriminator 3
	ldr	r3, .L38
	ldr	r3, [r3]
	ldr	r2, .L38+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r3]
	.loc 2 107 19 discriminator 3
	ldr	r3, .L38
	ldr	r3, [r3]
	.loc 2 107 49 discriminator 3
	mov	r1, r2
	.loc 2 107 37 discriminator 3
	ldr	r2, .L38+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r1, [r3]
	.loc 2 108 19 discriminator 3
	ldr	r3, .L38
	ldr	r3, [r3]
	.loc 2 108 26 discriminator 3
	ldr	r2, .L38+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #8
	movs	r2, #3
	strb	r2, [r3]
	.loc 2 103 40 discriminator 3
	ldr	r3, .L38
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L38
	str	r3, [r2]
.L36:
	.loc 2 103 19 discriminator 1
	ldr	r3, .L38
	ldr	r3, [r3]
	.loc 2 103 5 discriminator 1
	cmp	r3, #1
	bls	.L37
	.loc 2 110 1
	nop
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L39:
	.align	2
.L38:
	.word	i
	.word	threads
	.cfi_endproc
.LFE37:
	.size	InitThreads, .-InitThreads
	.align	1
	.global	InitSysTick
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	InitSysTick, %function
InitSysTick:
.LFB38:
	.loc 2 113 1
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
	.loc 2 114 23
	ldr	r3, .L41
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	udiv	r3, r2, r3
	mov	r0, r3
	bl	SysTick_Config
	str	r0, [r7, #12]
	.loc 2 115 1
	nop
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L42:
	.align	2
.L41:
	.word	SystemCoreClock
	.cfi_endproc
.LFE38:
	.size	InitSysTick, .-InitSysTick
	.align	1
	.global	SysTick_Handler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SysTick_Handler, %function
SysTick_Handler:
.LFB39:
	.loc 2 118 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 2 119 36
	ldr	r3, .L45
	ldr	r3, [r3]
	adds	r3, r3, #1
	.loc 2 119 18
	ldr	r2, .L45+4
	str	r3, [r2]
	.loc 2 120 22
	ldr	r3, .L45+4
	ldr	r3, [r3]
	.loc 2 120 8
	cmp	r3, #2
	bne	.L44
	.loc 2 122 22
	ldr	r3, .L45+4
	movs	r2, #0
	str	r2, [r3]
.L44:
	.loc 2 124 15
	ldr	r3, .L45+8
	ldr	r3, [r3, #4]
	ldr	r2, .L45+8
	orr	r3, r3, #268435456
	str	r3, [r2, #4]
	.loc 2 125 1
	nop
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L46:
	.align	2
.L45:
	.word	current_task_ID
	.word	next_task_ID
	.word	-536810240
	.cfi_endproc
.LFE39:
	.size	SysTick_Handler, .-SysTick_Handler
	.align	1
	.global	InitPendSv
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	InitPendSv, %function
InitPendSv:
.LFB40:
	.loc 2 128 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 2 129 5
	movs	r1, #255
	mvn	r0, #1
	bl	NVIC_SetPriority
	.loc 2 130 1
	nop
	pop	{r7, pc}
	.cfi_endproc
.LFE40:
	.size	InitPendSv, .-InitPendSv
	.align	1
	.global	PendSV_Handler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	PendSV_Handler, %function
PendSV_Handler:
.LFB41:
	.loc 2 133 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r3, r4, r7, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 2 135 5
	bl	save_software_context
	.loc 2 136 29
	ldr	r3, .L51
	ldr	r3, [r3]
	.loc 2 136 36
	ldr	r2, .L51+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #8
	movs	r2, #2
	strb	r2, [r3]
	.loc 2 137 29
	ldr	r3, .L51
	ldr	r4, [r3]
	.loc 2 137 45
	bl	__get_PSP
	mov	r1, r0
	.loc 2 137 43
	ldr	r2, .L51+4
	lsls	r3, r4, #4
	add	r3, r3, r2
	str	r1, [r3]
	.loc 2 138 49
	bl	__get_PSP
	mov	r2, r0
	.loc 2 138 29
	ldr	r3, .L51
	ldr	r3, [r3]
	.loc 2 138 49
	mov	r1, r2
	.loc 2 138 47
	ldr	r2, .L51+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r1, [r3]
	.loc 2 139 20
	ldr	r3, .L51+8
	ldr	r3, [r3]
	ldr	r2, .L51
	str	r3, [r2]
	.loc 2 141 33
	ldr	r3, .L51
	ldr	r3, [r3]
	ldr	r2, .L51+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #8
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 141 8
	cmp	r3, #0
	bne	.L50
	.loc 2 143 33
	ldr	r3, .L51
	ldr	r3, [r3]
	.loc 2 143 40
	ldr	r2, .L51+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #8
	movs	r2, #1
	strb	r2, [r3]
	.loc 2 144 9
	ldr	r3, .L51
	ldr	r3, [r3]
	ldr	r2, .L51+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r0, r3
	bl	__set_PSP
	.loc 2 147 52
	ldr	r3, .L51
	ldr	r3, [r3]
	ldr	r2, .L51+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #12
	ldr	r3, [r3]
	.loc 2 145 9
	.syntax unified
@ 145 "src/kernel.c" 1
	MOV lr, r3
@ 0 "" 2
	.loc 2 148 9
@ 148 "src/kernel.c" 1
	bx lr 		    

@ 0 "" 2
	.thumb
	.syntax unified
.L50:
	.loc 2 150 1
	nop
	pop	{r3, r4, r7, pc}
.L52:
	.align	2
.L51:
	.word	current_task_ID
	.word	threads
	.word	next_task_ID
	.cfi_endproc
.LFE41:
	.size	PendSV_Handler, .-PendSV_Handler
.Letext0:
	.file 3 "/home/witek/CODE/arm/gnu/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/home/witek/CODE/arm/gnu/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "/home/witek/CODE/arm/STM32F10x_StdPeriph_Lib_V3.5.0/Libraries/CMSIS/CM3/DeviceSupport/ST/STM32F10x/stm32f10x.h"
	.file 6 "/home/witek/CODE/arm/STM32F10x_StdPeriph_Lib_V3.5.0/Libraries/CMSIS/CM3/DeviceSupport/ST/STM32F10x/system_stm32f10x.h"
	.file 7 "./inc/kernel.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x81f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF134
	.byte	0xc
	.4byte	.LASF135
	.4byte	.LASF136
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2b
	.byte	0x18
	.4byte	0x38
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
	.4byte	.LASF6
	.byte	0x3
	.byte	0x4f
	.byte	0x19
	.4byte	0x60
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.4byte	0x75
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.uleb128 0x5
	.4byte	0x88
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.uleb128 0x5
	.4byte	0x99
	.uleb128 0x6
	.4byte	0xa5
	.uleb128 0x7
	.4byte	.LASF98
	.byte	0x5
	.byte	0x1
	.4byte	0x25
	.byte	0x5
	.byte	0xa7
	.byte	0xe
	.4byte	0x1f4
	.uleb128 0x8
	.4byte	.LASF13
	.sleb128 -14
	.uleb128 0x8
	.4byte	.LASF14
	.sleb128 -12
	.uleb128 0x8
	.4byte	.LASF15
	.sleb128 -11
	.uleb128 0x8
	.4byte	.LASF16
	.sleb128 -10
	.uleb128 0x8
	.4byte	.LASF17
	.sleb128 -5
	.uleb128 0x8
	.4byte	.LASF18
	.sleb128 -4
	.uleb128 0x8
	.4byte	.LASF19
	.sleb128 -2
	.uleb128 0x8
	.4byte	.LASF20
	.sleb128 -1
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x11
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x13
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x15
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x16
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x17
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x19
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x1a
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x1b
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x1d
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x1e
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x1f
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x21
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x22
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x23
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x25
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x26
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x27
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x29
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x2a
	.byte	0
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x1d8
	.byte	0x3
	.4byte	0xaf
	.uleb128 0xb
	.2byte	0xe04
	.byte	0x1
	.byte	0x84
	.byte	0x9
	.4byte	0x2bd
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x1
	.byte	0x86
	.byte	0x11
	.4byte	0x2cd
	.byte	0
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0x1
	.byte	0x87
	.byte	0x11
	.4byte	0x2d2
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x1
	.byte	0x88
	.byte	0x11
	.4byte	0x2cd
	.byte	0x80
	.uleb128 0xc
	.4byte	.LASF68
	.byte	0x1
	.byte	0x89
	.byte	0x11
	.4byte	0x2d2
	.byte	0xa0
	.uleb128 0xd
	.4byte	.LASF69
	.byte	0x1
	.byte	0x8a
	.byte	0x11
	.4byte	0x2cd
	.2byte	0x100
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x1
	.byte	0x8b
	.byte	0x11
	.4byte	0x2d2
	.2byte	0x120
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0x1
	.byte	0x8c
	.byte	0x11
	.4byte	0x2cd
	.2byte	0x180
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0x1
	.byte	0x8d
	.byte	0x11
	.4byte	0x2d2
	.2byte	0x1a0
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x1
	.byte	0x8e
	.byte	0x11
	.4byte	0x2cd
	.2byte	0x200
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0x1
	.byte	0x8f
	.byte	0x11
	.4byte	0x2e2
	.2byte	0x220
	.uleb128 0xe
	.ascii	"IP\000"
	.byte	0x1
	.byte	0x90
	.byte	0x11
	.4byte	0x302
	.2byte	0x300
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x1
	.byte	0x91
	.byte	0x11
	.4byte	0x307
	.2byte	0x3f0
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x1
	.byte	0x92
	.byte	0x11
	.4byte	0xa5
	.2byte	0xe00
	.byte	0
	.uleb128 0xf
	.4byte	0xa5
	.4byte	0x2cd
	.uleb128 0x10
	.4byte	0x81
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.4byte	0x2bd
	.uleb128 0xf
	.4byte	0x99
	.4byte	0x2e2
	.uleb128 0x10
	.4byte	0x81
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.4byte	0x99
	.4byte	0x2f2
	.uleb128 0x10
	.4byte	0x81
	.byte	0x37
	.byte	0
	.uleb128 0xf
	.4byte	0x94
	.4byte	0x302
	.uleb128 0x10
	.4byte	0x81
	.byte	0xef
	.byte	0
	.uleb128 0x5
	.4byte	0x2f2
	.uleb128 0xf
	.4byte	0x99
	.4byte	0x318
	.uleb128 0x11
	.4byte	0x81
	.2byte	0x283
	.byte	0
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0x1
	.byte	0x93
	.byte	0x4
	.4byte	0x201
	.uleb128 0x12
	.byte	0x74
	.byte	0x1
	.byte	0x9b
	.byte	0x9
	.4byte	0x425
	.uleb128 0xc
	.4byte	.LASF78
	.byte	0x1
	.byte	0x9d
	.byte	0x11
	.4byte	0xaa
	.byte	0
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x1
	.byte	0x9e
	.byte	0x11
	.4byte	0xa5
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x1
	.byte	0x9f
	.byte	0x11
	.4byte	0xa5
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x1
	.byte	0xa0
	.byte	0x11
	.4byte	0xa5
	.byte	0xc
	.uleb128 0x13
	.ascii	"SCR\000"
	.byte	0x1
	.byte	0xa1
	.byte	0x11
	.4byte	0xa5
	.byte	0x10
	.uleb128 0x13
	.ascii	"CCR\000"
	.byte	0x1
	.byte	0xa2
	.byte	0x11
	.4byte	0xa5
	.byte	0x14
	.uleb128 0x13
	.ascii	"SHP\000"
	.byte	0x1
	.byte	0xa3
	.byte	0x11
	.4byte	0x435
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x1
	.byte	0xa4
	.byte	0x11
	.4byte	0xa5
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x1
	.byte	0xa5
	.byte	0x11
	.4byte	0xa5
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x1
	.byte	0xa6
	.byte	0x11
	.4byte	0xa5
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x1
	.byte	0xa7
	.byte	0x11
	.4byte	0xa5
	.byte	0x30
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x1
	.byte	0xa8
	.byte	0x11
	.4byte	0xa5
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x1
	.byte	0xa9
	.byte	0x11
	.4byte	0xa5
	.byte	0x38
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x1
	.byte	0xaa
	.byte	0x11
	.4byte	0xa5
	.byte	0x3c
	.uleb128 0x13
	.ascii	"PFR\000"
	.byte	0x1
	.byte	0xab
	.byte	0x11
	.4byte	0x44f
	.byte	0x40
	.uleb128 0x13
	.ascii	"DFR\000"
	.byte	0x1
	.byte	0xac
	.byte	0x11
	.4byte	0xaa
	.byte	0x48
	.uleb128 0x13
	.ascii	"ADR\000"
	.byte	0x1
	.byte	0xad
	.byte	0x11
	.4byte	0xaa
	.byte	0x4c
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x1
	.byte	0xae
	.byte	0x11
	.4byte	0x469
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x1
	.byte	0xaf
	.byte	0x11
	.4byte	0x483
	.byte	0x60
	.byte	0
	.uleb128 0xf
	.4byte	0x94
	.4byte	0x435
	.uleb128 0x10
	.4byte	0x81
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.4byte	0x425
	.uleb128 0xf
	.4byte	0xaa
	.4byte	0x44a
	.uleb128 0x10
	.4byte	0x81
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	0x43a
	.uleb128 0x5
	.4byte	0x44a
	.uleb128 0xf
	.4byte	0xaa
	.4byte	0x464
	.uleb128 0x10
	.4byte	0x81
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	0x454
	.uleb128 0x5
	.4byte	0x464
	.uleb128 0xf
	.4byte	0xaa
	.4byte	0x47e
	.uleb128 0x10
	.4byte	0x81
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	0x46e
	.uleb128 0x5
	.4byte	0x47e
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0x1
	.byte	0xb0
	.byte	0x3
	.4byte	0x324
	.uleb128 0x14
	.byte	0x10
	.byte	0x1
	.2byte	0x16d
	.byte	0x9
	.4byte	0x4d7
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x16f
	.byte	0x11
	.4byte	0xa5
	.byte	0
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x170
	.byte	0x11
	.4byte	0xa5
	.byte	0x4
	.uleb128 0x16
	.ascii	"VAL\000"
	.byte	0x1
	.2byte	0x171
	.byte	0x11
	.4byte	0xa5
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x172
	.byte	0x11
	.4byte	0xaa
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x173
	.byte	0x3
	.4byte	0x494
	.uleb128 0x17
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x6ce
	.byte	0x15
	.4byte	0x7c
	.uleb128 0x18
	.4byte	.LASF97
	.byte	0x6
	.byte	0x35
	.byte	0x11
	.4byte	0x99
	.uleb128 0x19
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF99
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x7
	.byte	0x11
	.byte	0x6
	.4byte	0x52a
	.uleb128 0x1a
	.ascii	"NEW\000"
	.byte	0
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.byte	0x10
	.byte	0x7
	.byte	0x18
	.byte	0x9
	.4byte	0x568
	.uleb128 0xc
	.4byte	.LASF103
	.byte	0x7
	.byte	0x19
	.byte	0xe
	.4byte	0x99
	.byte	0
	.uleb128 0xc
	.4byte	.LASF104
	.byte	0x7
	.byte	0x1a
	.byte	0xf
	.4byte	0x568
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF105
	.byte	0x7
	.byte	0x1b
	.byte	0x16
	.4byte	0x4ff
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF106
	.byte	0x7
	.byte	0x1c
	.byte	0xf
	.4byte	0x568
	.byte	0xc
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.4byte	0x99
	.uleb128 0x3
	.4byte	.LASF107
	.byte	0x7
	.byte	0x1d
	.byte	0x2
	.4byte	0x52a
	.uleb128 0xf
	.4byte	0x56e
	.4byte	0x58a
	.uleb128 0x10
	.4byte	0x81
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.4byte	.LASF108
	.byte	0x7
	.byte	0x1f
	.byte	0x1b
	.4byte	0x57a
	.uleb128 0x1c
	.ascii	"i\000"
	.byte	0x7
	.byte	0x20
	.byte	0xa
	.4byte	0x99
	.uleb128 0x5
	.byte	0x3
	.4byte	i
	.uleb128 0x1d
	.4byte	.LASF109
	.byte	0x7
	.byte	0x21
	.byte	0xa
	.4byte	0x99
	.uleb128 0x5
	.byte	0x3
	.4byte	current_task_ID
	.uleb128 0x1d
	.4byte	.LASF110
	.byte	0x7
	.byte	0x22
	.byte	0xa
	.4byte	0x99
	.uleb128 0x5
	.byte	0x3
	.4byte	next_task_ID
	.uleb128 0x1d
	.4byte	.LASF111
	.byte	0x2
	.byte	0x9
	.byte	0xa
	.4byte	0x99
	.uleb128 0x5
	.byte	0x3
	.4byte	ready_to_Switch
	.uleb128 0x1d
	.4byte	.LASF112
	.byte	0x2
	.byte	0xa
	.byte	0xa
	.4byte	0x99
	.uleb128 0x5
	.byte	0x3
	.4byte	halted_id
	.uleb128 0x1e
	.4byte	.LASF113
	.byte	0x2
	.byte	0x84
	.byte	0x6
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF114
	.byte	0x2
	.byte	0x7f
	.byte	0x6
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.4byte	.LASF115
	.byte	0x2
	.byte	0x75
	.byte	0x6
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.4byte	.LASF121
	.byte	0x2
	.byte	0x70
	.byte	0x6
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x659
	.uleb128 0x21
	.4byte	.LASF123
	.byte	0x2
	.byte	0x70
	.byte	0x1b
	.4byte	0x99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.4byte	.LASF116
	.byte	0x2
	.byte	0x72
	.byte	0xe
	.4byte	0x99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x23
	.4byte	.LASF119
	.byte	0x2
	.byte	0x60
	.byte	0x6
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x68e
	.uleb128 0x22
	.4byte	.LASF117
	.byte	0x2
	.byte	0x62
	.byte	0xe
	.4byte	0x99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x22
	.4byte	.LASF118
	.byte	0x2
	.byte	0x63
	.byte	0xe
	.4byte	0x99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x24
	.4byte	.LASF127
	.byte	0x2
	.byte	0x4c
	.byte	0x6
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.4byte	.LASF120
	.byte	0x2
	.byte	0x46
	.byte	0x6
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6c5
	.uleb128 0x25
	.4byte	.LASF127
	.byte	0x2
	.byte	0x49
	.byte	0x5
	.4byte	0x75
	.uleb128 0x26
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF122
	.byte	0x2
	.byte	0x38
	.byte	0x6
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6eb
	.uleb128 0x21
	.4byte	.LASF124
	.byte	0x2
	.byte	0x38
	.byte	0x17
	.4byte	0x4fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x27
	.4byte	.LASF125
	.byte	0x2
	.byte	0x2b
	.byte	0x6
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x711
	.uleb128 0x21
	.4byte	.LASF124
	.byte	0x2
	.byte	0x2b
	.byte	0x16
	.4byte	0x4fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x23
	.4byte	.LASF126
	.byte	0x2
	.byte	0x24
	.byte	0x6
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x75a
	.uleb128 0x28
	.4byte	.LASF119
	.byte	0x2
	.byte	0x26
	.byte	0x5
	.4byte	0x75
	.4byte	0x739
	.uleb128 0x26
	.byte	0
	.uleb128 0x28
	.4byte	.LASF114
	.byte	0x2
	.byte	0x27
	.byte	0x5
	.4byte	0x75
	.4byte	0x74b
	.uleb128 0x26
	.byte	0
	.uleb128 0x25
	.4byte	.LASF121
	.byte	0x2
	.byte	0x28
	.byte	0x5
	.4byte	0x75
	.uleb128 0x26
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF128
	.byte	0x2
	.byte	0x1c
	.byte	0x6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x79e
	.uleb128 0x21
	.4byte	.LASF129
	.byte	0x2
	.byte	0x1c
	.byte	0x1d
	.4byte	0x99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.4byte	.LASF117
	.byte	0x2
	.byte	0x1f
	.byte	0xe
	.4byte	0x99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x22
	.4byte	.LASF118
	.byte	0x2
	.byte	0x20
	.byte	0xe
	.4byte	0x99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x29
	.4byte	.LASF130
	.byte	0x2
	.byte	0x15
	.byte	0x6
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x29
	.4byte	.LASF131
	.byte	0x2
	.byte	0xc
	.byte	0x6
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x69e
	.byte	0x1a
	.4byte	0x99
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ee
	.uleb128 0x2b
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x69e
	.byte	0x32
	.4byte	0x99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x632
	.byte	0x16
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2b
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x632
	.byte	0x31
	.4byte	0x1f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2b
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x632
	.byte	0x40
	.4byte	0x99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0xc
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2b
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
.LASF41:
	.ascii	"USB_LP_CAN1_RX0_IRQn\000"
.LASF119:
	.ascii	"InitThreads\000"
.LASF124:
	.ascii	"taskPointer\000"
.LASF43:
	.ascii	"CAN1_SCE_IRQn\000"
.LASF38:
	.ascii	"DMA1_Channel7_IRQn\000"
.LASF55:
	.ascii	"I2C2_ER_IRQn\000"
.LASF51:
	.ascii	"TIM4_IRQn\000"
.LASF33:
	.ascii	"DMA1_Channel2_IRQn\000"
.LASF138:
	.ascii	"NVIC_SetPriority\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF93:
	.ascii	"LOAD\000"
.LASF85:
	.ascii	"DFSR\000"
.LASF25:
	.ascii	"FLASH_IRQn\000"
.LASF94:
	.ascii	"CALIB\000"
.LASF27:
	.ascii	"EXTI0_IRQn\000"
.LASF103:
	.ascii	"stackPointer\000"
.LASF61:
	.ascii	"EXTI15_10_IRQn\000"
.LASF29:
	.ascii	"EXTI2_IRQn\000"
.LASF129:
	.ascii	"offset_from_msp\000"
.LASF19:
	.ascii	"PendSV_IRQn\000"
.LASF26:
	.ascii	"RCC_IRQn\000"
.LASF14:
	.ascii	"MemoryManagement_IRQn\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF89:
	.ascii	"MMFR\000"
.LASF65:
	.ascii	"ISER\000"
.LASF45:
	.ascii	"TIM1_BRK_IRQn\000"
.LASF68:
	.ascii	"RSERVED1\000"
.LASF56:
	.ascii	"SPI1_IRQn\000"
.LASF125:
	.ascii	"StartTask\000"
.LASF35:
	.ascii	"DMA1_Channel4_IRQn\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF101:
	.ascii	"HALTED\000"
.LASF42:
	.ascii	"CAN1_RX1_IRQn\000"
.LASF130:
	.ascii	"load_software_context\000"
.LASF40:
	.ascii	"USB_HP_CAN1_TX_IRQn\000"
.LASF64:
	.ascii	"IRQn_Type\000"
.LASF109:
	.ascii	"current_task_ID\000"
.LASF59:
	.ascii	"USART2_IRQn\000"
.LASF118:
	.ascii	"new_psp\000"
.LASF78:
	.ascii	"CPUID\000"
.LASF134:
	.ascii	"GNU C17 8.3.1 20190703 (release) [gcc-8-branch revi"
	.ascii	"sion 273027] -mcpu=cortex-m3 -mthumb -mfloat-abi=so"
	.ascii	"ft -march=armv7-m -ggdb -O0\000"
.LASF122:
	.ascii	"CreateTask\000"
.LASF137:
	.ascii	"SysTick_Config\000"
.LASF88:
	.ascii	"AFSR\000"
.LASF123:
	.ascii	"freq\000"
.LASF136:
	.ascii	"/home/witek/CODE/arm/test_gnu\000"
.LASF132:
	.ascii	"ticks\000"
.LASF54:
	.ascii	"I2C2_EV_IRQn\000"
.LASF84:
	.ascii	"HFSR\000"
.LASF37:
	.ascii	"DMA1_Channel6_IRQn\000"
.LASF81:
	.ascii	"AIRCR\000"
.LASF127:
	.ascii	"StartFirstTask\000"
.LASF50:
	.ascii	"TIM3_IRQn\000"
.LASF32:
	.ascii	"DMA1_Channel1_IRQn\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF116:
	.ascii	"status\000"
.LASF28:
	.ascii	"EXTI1_IRQn\000"
.LASF63:
	.ascii	"USBWakeUp_IRQn\000"
.LASF8:
	.ascii	"long long int\000"
.LASF21:
	.ascii	"WWDG_IRQn\000"
.LASF82:
	.ascii	"SHCSR\000"
.LASF102:
	.ascii	"DEAD\000"
.LASF115:
	.ascii	"SysTick_Handler\000"
.LASF83:
	.ascii	"CFSR\000"
.LASF92:
	.ascii	"CTRL\000"
.LASF15:
	.ascii	"BusFault_IRQn\000"
.LASF99:
	.ascii	"threadState\000"
.LASF111:
	.ascii	"ready_to_Switch\000"
.LASF31:
	.ascii	"EXTI4_IRQn\000"
.LASF22:
	.ascii	"PVD_IRQn\000"
.LASF71:
	.ascii	"ICPR\000"
.LASF34:
	.ascii	"DMA1_Channel3_IRQn\000"
.LASF100:
	.ascii	"RUNNING\000"
.LASF52:
	.ascii	"I2C1_EV_IRQn\000"
.LASF95:
	.ascii	"SysTick_Type\000"
.LASF97:
	.ascii	"SystemCoreClock\000"
.LASF98:
	.ascii	"IRQn\000"
.LASF46:
	.ascii	"TIM1_UP_IRQn\000"
.LASF76:
	.ascii	"STIR\000"
.LASF86:
	.ascii	"MMFAR\000"
.LASF24:
	.ascii	"RTC_IRQn\000"
.LASF66:
	.ascii	"RESERVED0\000"
.LASF70:
	.ascii	"RESERVED2\000"
.LASF72:
	.ascii	"RESERVED3\000"
.LASF74:
	.ascii	"RESERVED4\000"
.LASF75:
	.ascii	"RESERVED5\000"
.LASF107:
	.ascii	"ThreadControlBlock\000"
.LASF2:
	.ascii	"short int\000"
.LASF4:
	.ascii	"long int\000"
.LASF58:
	.ascii	"USART1_IRQn\000"
.LASF96:
	.ascii	"ITM_RxBuffer\000"
.LASF13:
	.ascii	"NonMaskableInt_IRQn\000"
.LASF133:
	.ascii	"priority\000"
.LASF48:
	.ascii	"TIM1_CC_IRQn\000"
.LASF131:
	.ascii	"save_software_context\000"
.LASF117:
	.ascii	"current_msp\000"
.LASF121:
	.ascii	"InitSysTick\000"
.LASF112:
	.ascii	"halted_id\000"
.LASF135:
	.ascii	"src/kernel.c\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF77:
	.ascii	"NVIC_Type\000"
.LASF91:
	.ascii	"SCB_Type\000"
.LASF87:
	.ascii	"BFAR\000"
.LASF47:
	.ascii	"TIM1_TRG_COM_IRQn\000"
.LASF80:
	.ascii	"VTOR\000"
.LASF53:
	.ascii	"I2C1_ER_IRQn\000"
.LASF120:
	.ascii	"RunOS\000"
.LASF128:
	.ascii	"setup_new_psp\000"
.LASF20:
	.ascii	"SysTick_IRQn\000"
.LASF113:
	.ascii	"PendSV_Handler\000"
.LASF79:
	.ascii	"ICSR\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF49:
	.ascii	"TIM2_IRQn\000"
.LASF108:
	.ascii	"threads\000"
.LASF105:
	.ascii	"state\000"
.LASF110:
	.ascii	"next_task_ID\000"
.LASF18:
	.ascii	"DebugMonitor_IRQn\000"
.LASF16:
	.ascii	"UsageFault_IRQn\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF6:
	.ascii	"__uint32_t\000"
.LASF106:
	.ascii	"entryPoint\000"
.LASF44:
	.ascii	"EXTI9_5_IRQn\000"
.LASF17:
	.ascii	"SVCall_IRQn\000"
.LASF114:
	.ascii	"InitPendSv\000"
.LASF67:
	.ascii	"ICER\000"
.LASF57:
	.ascii	"SPI2_IRQn\000"
.LASF73:
	.ascii	"IABR\000"
.LASF36:
	.ascii	"DMA1_Channel5_IRQn\000"
.LASF104:
	.ascii	"stackPointerAddr\000"
.LASF0:
	.ascii	"signed char\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF30:
	.ascii	"EXTI3_IRQn\000"
.LASF126:
	.ascii	"SetupKernel\000"
.LASF69:
	.ascii	"ISPR\000"
.LASF39:
	.ascii	"ADC1_2_IRQn\000"
.LASF90:
	.ascii	"ISAR\000"
.LASF60:
	.ascii	"USART3_IRQn\000"
.LASF23:
	.ascii	"TAMPER_IRQn\000"
.LASF62:
	.ascii	"RTCAlarm_IRQn\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 8-2019-q3-update) 8.3.1 20190703 (release) [gcc-8-branch revision 273027]"
