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
	.type	__ISB, %function
__ISB:
.LFB8:
	.file 1 "/home/witek/CODE/arm/STM32F10x_StdPeriph_Lib_V3.5.0/Libraries/CMSIS/CM3/CoreSupport/core_cm3.h"
	.loc 1 1214 51
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 1214 53
	.syntax unified
@ 1214 "/home/witek/CODE/arm/STM32F10x_StdPeriph_Lib_V3.5.0/Libraries/CMSIS/CM3/CoreSupport/core_cm3.h" 1
	isb
@ 0 "" 2
	.loc 1 1214 1
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
.LFE8:
	.size	__ISB, .-__ISB
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	NVIC_SetPriority, %function
NVIC_SetPriority:
.LFB20:
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
	bge	.L3
	.loc 1 1589 55
	ldr	r3, [r7]
	uxtb	r2, r3
	.loc 1 1589 8
	ldr	r1, .L6
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
	b	.L5
.L3:
	.loc 1 1591 45
	ldr	r3, [r7]
	uxtb	r2, r3
	.loc 1 1591 9
	ldr	r1, .L6+4
	.loc 1 1591 14
	ldrsb	r3, [r7, #7]
	.loc 1 1591 45
	lsls	r2, r2, #4
	uxtb	r2, r2
	.loc 1 1591 32
	add	r3, r3, r1
	strb	r2, [r3, #768]
.L5:
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
.L7:
	.align	2
.L6:
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
	bcc	.L9
	.loc 1 1696 48 discriminator 1
	movs	r3, #1
	b	.L10
.L9:
	.loc 1 1698 27
	ldr	r3, [r7, #4]
	bic	r3, r3, #-16777216
	.loc 1 1698 10
	ldr	r2, .L11
	.loc 1 1698 54
	subs	r3, r3, #1
	.loc 1 1698 18
	str	r3, [r2, #4]
	.loc 1 1699 3
	movs	r1, #15
	mov	r0, #-1
	bl	NVIC_SetPriority
	.loc 1 1700 10
	ldr	r3, .L11
	.loc 1 1700 18
	movs	r2, #0
	str	r2, [r3, #8]
	.loc 1 1701 10
	ldr	r3, .L11
	.loc 1 1701 18
	movs	r2, #7
	str	r2, [r3]
	.loc 1 1704 10
	movs	r3, #0
.L10:
	.loc 1 1705 1
	mov	r0, r3
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L12:
	.align	2
.L11:
	.word	-536813552
	.cfi_endproc
.LFE24:
	.size	SysTick_Config, .-SysTick_Config
	.comm	i,4,4
	.comm	current_task_ID,4,4
	.comm	next_task_ID,4,4
	.comm	task_id_adder,4,4
	.comm	shared_value,4,4
	.comm	svc_number,4,4
	.comm	PrintBuf,4,4
	.align	1
	.global	SelectNextTask
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SelectNextTask, %function
SelectNextTask:
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
	.loc 2 14 18
	ldr	r3, .L16
	ldr	r3, [r3]
	ldr	r2, .L16+4
	str	r3, [r2]
.L15:
	.loc 2 17 37
	ldr	r3, .L16+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	.loc 2 17 22
	ldr	r2, .L16+4
	str	r3, [r2]
	.loc 2 18 26
	ldr	r3, .L16+4
	ldr	r3, [r3]
	.loc 2 18 12
	cmp	r3, #5
	bne	.L14
	.loc 2 20 26
	ldr	r3, .L16+4
	movs	r2, #0
	str	r2, [r3]
.L14:
	.loc 2 22 36
	ldr	r3, .L16+4
	ldr	r2, [r3]
	ldr	r1, .L16+8
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #16
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 22 5
	cmp	r3, #0
	beq	.L15
	.loc 2 22 82 discriminator 1
	ldr	r3, .L16+4
	ldr	r2, [r3]
	ldr	r1, .L16+8
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #16
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 22 57 discriminator 1
	cmp	r3, #4
	beq	.L15
	.loc 2 22 128 discriminator 2
	ldr	r3, .L16+4
	ldr	r2, [r3]
	ldr	r1, .L16+8
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #16
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 22 103 discriminator 2
	cmp	r3, #2
	beq	.L15
	.loc 2 23 1
	nop
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L17:
	.align	2
.L16:
	.word	current_task_ID
	.word	next_task_ID
	.word	threads
	.cfi_endproc
.LFE29:
	.size	SelectNextTask, .-SelectNextTask
	.align	1
	.global	CreateTask
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	CreateTask, %function
CreateTask:
.LFB30:
	.loc 2 26 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 2 28 12
	ldr	r3, .L24
	movs	r2, #0
	str	r2, [r3]
	.loc 2 28 5
	b	.L19
.L23:
	.loc 2 30 24
	ldr	r3, .L24
	ldr	r2, [r3]
	ldr	r1, .L24+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #16
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 30 12
	cmp	r3, #0
	beq	.L20
	.loc 2 30 59 discriminator 1
	ldr	r3, .L24
	ldr	r2, [r3]
	ldr	r1, .L24+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #16
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 30 45 discriminator 1
	cmp	r3, #4
	bne	.L21
.L20:
	.loc 2 32 23
	ldr	r3, .L24
	ldr	r2, [r3]
	.loc 2 32 30
	ldr	r1, .L24+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #16
	movs	r2, #1
	strb	r2, [r3]
	.loc 2 33 23
	ldr	r3, .L24
	ldr	r2, [r3]
	.loc 2 33 35
	ldr	r1, .L24+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #20
	ldr	r2, [r7, #12]
	str	r2, [r3]
	.loc 2 34 60
	ldr	r3, .L24
	ldr	r2, [r3]
	ldr	r1, .L24+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3]
	.loc 2 34 27
	str	r3, [r7, #20]
	.loc 2 35 31
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #20]
	str	r2, [r3]
	.loc 2 36 31
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #20]
	str	r2, [r3, #4]
	.loc 2 37 31
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #8]
	.loc 2 38 31
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #12]
	.loc 2 39 32
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #16]
	.loc 2 40 31
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	str	r2, [r3, #24]
	.loc 2 41 31
	ldr	r2, .L24+8
	ldr	r3, [r7, #20]
	str	r2, [r3, #20]
	.loc 2 42 32
	ldr	r3, [r7, #20]
	mov	r2, #553648128
	str	r2, [r3, #28]
	.loc 2 43 13
	b	.L22
.L21:
	.loc 2 28 40 discriminator 2
	ldr	r3, .L24
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L24
	str	r3, [r2]
.L19:
	.loc 2 28 19 discriminator 1
	ldr	r3, .L24
	ldr	r3, [r3]
	.loc 2 28 5 discriminator 1
	cmp	r3, #4
	bls	.L23
.L22:
	.loc 2 46 1
	nop
	adds	r7, r7, #28
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
	.word	CloseThread
	.cfi_endproc
.LFE30:
	.size	CreateTask, .-CreateTask
	.align	1
	.global	RunOS
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	RunOS, %function
RunOS:
.LFB31:
	.loc 2 49 1
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
	.loc 2 50 23
	movw	r0, #36000
	bl	SysTick_Config
	str	r0, [r7, #4]
	.loc 2 51 5
	movs	r1, #255
	mvn	r0, #1
	bl	NVIC_SetPriority
	.loc 2 52 21
	ldr	r3, .L28
	movs	r2, #0
	str	r2, [r3]
	.loc 2 53 5
	movs	r3, #3
	.syntax unified
@ 53 "src/kernel.c" 1
	MSR control, r3
@ 0 "" 2
	.loc 2 56 5
	.thumb
	.syntax unified
	nop
	.loc 2 57 1
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L29:
	.align	2
.L28:
	.word	current_task_ID
	.cfi_endproc
.LFE31:
	.size	RunOS, .-RunOS
	.align	1
	.global	CloseThread
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	CloseThread, %function
CloseThread:
.LFB32:
	.loc 2 60 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 2 61 5
	.syntax unified
@ 61 "src/kernel.c" 1
	svc #0
@ 0 "" 2
	.thumb
	.syntax unified
.L31:
	.loc 2 62 11 discriminator 1
	b	.L31
	.cfi_endproc
.LFE32:
	.size	CloseThread, .-CloseThread
	.align	1
	.global	InitThreads
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	InitThreads, %function
InitThreads:
.LFB33:
	.loc 2 69 1
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
	.loc 2 70 28
	bl	__get_MSP
	str	r0, [r7, #4]
	.loc 2 73 12
	ldr	r3, .L35
	movs	r2, #0
	str	r2, [r3]
	.loc 2 73 5
	b	.L33
.L34:
	.loc 2 75 41 discriminator 3
	ldr	r3, .L35
	ldr	r3, [r3]
	adds	r3, r3, #1
	lsls	r3, r3, #8
	.loc 2 75 17 discriminator 3
	ldr	r2, [r7, #4]
	subs	r3, r2, r3
	str	r3, [r7]
	.loc 2 76 19 discriminator 3
	ldr	r3, .L35
	ldr	r2, [r3]
	.loc 2 76 33 discriminator 3
	ldr	r1, .L35+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #4
	ldr	r2, [r7]
	str	r2, [r3]
	.loc 2 77 50 discriminator 3
	ldr	r3, .L35
	ldr	r1, [r3]
	.loc 2 77 19 discriminator 3
	ldr	r3, .L35
	ldr	r2, [r3]
	.loc 2 77 50 discriminator 3
	ldr	r0, .L35+4
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r0
	adds	r3, r3, #4
	ldr	r1, [r3]
	.loc 2 77 38 discriminator 3
	ldr	r0, .L35+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r0
	str	r1, [r3]
	.loc 2 78 48 discriminator 3
	ldr	r3, .L35
	ldr	r2, [r3]
	ldr	r1, .L35+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #4
	ldr	r1, [r3]
	.loc 2 78 19 discriminator 3
	ldr	r3, .L35
	ldr	r2, [r3]
	.loc 2 78 48 discriminator 3
	mov	r0, r1
	.loc 2 78 36 discriminator 3
	ldr	r1, .L35+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #8
	str	r0, [r3]
	.loc 2 79 53 discriminator 3
	ldr	r3, .L35
	ldr	r2, [r3]
	ldr	r1, .L35+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r1, [r3]
	.loc 2 79 19 discriminator 3
	ldr	r3, .L35
	ldr	r2, [r3]
	.loc 2 79 53 discriminator 3
	mov	r0, r1
	.loc 2 79 41 discriminator 3
	ldr	r1, .L35+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #12
	str	r0, [r3]
	.loc 2 80 19 discriminator 3
	ldr	r3, .L35
	ldr	r2, [r3]
	.loc 2 80 26 discriminator 3
	ldr	r1, .L35+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #16
	movs	r2, #0
	strb	r2, [r3]
	.loc 2 73 40 discriminator 3
	ldr	r3, .L35
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L35
	str	r3, [r2]
.L33:
	.loc 2 73 19 discriminator 1
	ldr	r3, .L35
	ldr	r3, [r3]
	.loc 2 73 5 discriminator 1
	cmp	r3, #4
	bls	.L34
	.loc 2 82 1
	nop
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L36:
	.align	2
.L35:
	.word	i
	.word	threads
	.cfi_endproc
.LFE33:
	.size	InitThreads, .-InitThreads
	.align	1
	.global	PendSV_Handler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	PendSV_Handler, %function
PendSV_Handler:
.LFB34:
	.loc 2 84 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 2 85 5
	.syntax unified
@ 85 "src/kernel.c" 1
	MRS   r0,  psp      
	STMDB r0!, {r4-r11} 
	
@ 0 "" 2
	.loc 2 87 34
	.thumb
	.syntax unified
	ldr	r3, .L41
	ldr	r2, [r3]
	ldr	r1, .L41+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #16
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 87 8
	cmp	r3, #4
	beq	.L38
	.loc 2 87 83 discriminator 1
	ldr	r3, .L41
	ldr	r2, [r3]
	ldr	r1, .L41+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #16
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 87 55 discriminator 1
	cmp	r3, #1
	beq	.L38
	.loc 2 89 9
	ldr	r3, .L41
	ldr	r2, [r3]
	.syntax unified
@ 89 "src/kernel.c" 1
	mrs r1, psp 
	
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r0, .L41+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r0
	adds	r3, r3, #4
	str	r1, [r3]
	.loc 2 90 76
	ldr	r3, .L41
	ldr	r2, [r3]
	ldr	r1, .L41+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #4
	ldr	r1, [r3]
	.loc 2 90 33
	ldr	r3, .L41
	ldr	r2, [r3]
	.loc 2 90 76
	mov	r0, r1
	.loc 2 90 50
	ldr	r1, .L41+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #8
	str	r0, [r3]
	.loc 2 91 33
	ldr	r3, .L41
	ldr	r2, [r3]
	.loc 2 91 40
	ldr	r1, .L41+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #16
	movs	r2, #3
	strb	r2, [r3]
.L38:
	.loc 2 93 21
	ldr	r3, .L41+8
	ldr	r3, [r3]
	ldr	r2, .L41
	str	r3, [r2]
	.loc 2 95 33
	ldr	r3, .L41
	ldr	r2, [r3]
	ldr	r1, .L41+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #16
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 95 8
	cmp	r3, #3
	bne	.L39
	.loc 2 97 9
	ldr	r3, .L41
	ldr	r2, [r3]
	ldr	r1, .L41+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #4
	ldr	r3, [r3]
	.syntax unified
@ 97 "src/kernel.c" 1
	msr psp, r3 
	
@ 0 "" 2
	.loc 2 98 33
	.thumb
	.syntax unified
	ldr	r3, .L41
	ldr	r2, [r3]
	.loc 2 98 40
	ldr	r1, .L41+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #16
	movs	r2, #2
	strb	r2, [r3]
	.loc 2 99 9
	.syntax unified
@ 99 "src/kernel.c" 1
	MRS   r0,  psp      
	LDMIA r0!, {r4-r11} 
	
@ 0 "" 2
	.loc 2 100 9
	.thumb
	.syntax unified
	bl	__ISB
	.loc 2 101 9
	b	.L37
.L39:
	.loc 2 104 33
	ldr	r3, .L41
	ldr	r2, [r3]
	ldr	r1, .L41+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #16
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 104 8
	cmp	r3, #1
	bne	.L37
	.loc 2 106 9
	ldr	r3, .L41
	ldr	r2, [r3]
	ldr	r1, .L41+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3]
	.syntax unified
@ 106 "src/kernel.c" 1
	msr psp, r3 
	
@ 0 "" 2
	.loc 2 107 33
	.thumb
	.syntax unified
	ldr	r3, .L41
	ldr	r2, [r3]
	.loc 2 107 40
	ldr	r1, .L41+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #16
	movs	r2, #2
	strb	r2, [r3]
	.loc 2 108 9
	nop
.L37:
	.loc 2 110 1
	pop	{r7, pc}
.L42:
	.align	2
.L41:
	.word	current_task_ID
	.word	threads
	.word	next_task_ID
	.cfi_endproc
.LFE34:
	.size	PendSV_Handler, .-PendSV_Handler
	.align	1
	.global	SysTick_Handler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SysTick_Handler, %function
SysTick_Handler:
.LFB35:
	.loc 2 112 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 2 113 5
	bl	SelectNextTask
	.loc 2 114 5
	ldr	r3, .L44
	ldr	r3, [r3, #4]
	ldr	r2, .L44
	orr	r3, r3, #268435456
	str	r3, [r2, #4]
	.loc 2 115 1
	nop
	pop	{r7, pc}
.L45:
	.align	2
.L44:
	.word	-536810240
	.cfi_endproc
.LFE35:
	.size	SysTick_Handler, .-SysTick_Handler
	.align	1
	.global	SVC_Handler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SVC_Handler, %function
SVC_Handler:
.LFB36:
	.loc 2 118 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 2 120 18
	bl	GetSvcNumber
	mov	r2, r0
	.loc 2 120 16
	ldr	r3, .L55
	str	r2, [r3]
	.loc 2 121 5
	ldr	r3, .L55
	ldr	r3, [r3]
	cmp	r3, #109
	beq	.L47
	cmp	r3, #109
	bhi	.L48
	cmp	r3, #0
	beq	.L49
	cmp	r3, #1
	beq	.L50
.LBB2:
	.loc 2 148 9
	b	.L54
.L48:
.LBE2:
	.loc 2 121 5
	cmp	r3, #110
	beq	.L52
	cmp	r3, #112
	beq	.L53
.LBB3:
	.loc 2 148 9
	b	.L54
.L49:
	.loc 2 125 33
	ldr	r3, .L55+4
	ldr	r2, [r3]
	.loc 2 125 40
	ldr	r1, .L55+8
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #16
	movs	r2, #4
	strb	r2, [r3]
	.loc 2 126 9
	bl	SelectNextTask
	.loc 2 128 9
	bl	PendSV_Handler
	.loc 2 129 9
	b	.L54
.L50:
	.loc 2 132 9
	bl	SelectNextTask
	.loc 2 133 9
	bl	PendSV_Handler
	.loc 2 135 9
	b	.L54
.L47:
	.loc 2 138 9
	movs	r2, #0
	movs	r1, #32
	ldr	r0, .L55+12
	bl	GPIO_WriteBit
	.loc 2 139 9
	b	.L54
.L52:
	.loc 2 142 9
	movs	r2, #1
	movs	r1, #32
	ldr	r0, .L55+12
	bl	GPIO_WriteBit
	.loc 2 143 9
	b	.L54
.L53:
	.loc 2 145 9
	bl	start_uart
	.loc 2 146 9
	nop
.L54:
.LBE3:
	.loc 2 150 1
	nop
	pop	{r7, pc}
.L56:
	.align	2
.L55:
	.word	svc_number
	.word	current_task_ID
	.word	threads
	.word	1073809408
	.cfi_endproc
.LFE36:
	.size	SVC_Handler, .-SVC_Handler
	.align	1
	.global	GetSvcNumber
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	GetSvcNumber, %function
GetSvcNumber:
.LFB37:
	.loc 2 153 1
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
	.loc 2 154 15
	movs	r3, #0
	str	r3, [r7, #4]
	.loc 2 155 5
	.syntax unified
@ 155 "src/kernel.c" 1
	MRS R0, PSP
	MOV r3, R0
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #4]
	.loc 2 158 27
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	.loc 2 158 31
	ldr	r3, [r3]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 159 1
	mov	r0, r3
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
.LFE37:
	.size	GetSvcNumber, .-GetSvcNumber
	.align	1
	.global	start_uart
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	start_uart, %function
start_uart:
.LFB38:
	.loc 2 168 1
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
	.loc 2 169 5
	movs	r1, #1
	movs	r0, #1
	bl	RCC_APB2PeriphClockCmd
	.loc 2 170 5
	movs	r1, #1
	mov	r0, #131072
	bl	RCC_APB1PeriphClockCmd
	.loc 2 173 5
	add	r3, r7, #20
	mov	r0, r3
	bl	GPIO_StructInit
	.loc 2 174 19
	movs	r3, #4
	strh	r3, [r7, #20]	@ movhi
	.loc 2 175 20
	movs	r3, #24
	strb	r3, [r7, #23]
	.loc 2 176 5
	add	r3, r7, #20
	mov	r1, r3
	ldr	r0, .L61
	bl	GPIO_Init
	.loc 2 178 19
	movs	r3, #8
	strh	r3, [r7, #20]	@ movhi
	.loc 2 179 20
	movs	r3, #4
	strb	r3, [r7, #23]
	.loc 2 180 5
	add	r3, r7, #20
	mov	r1, r3
	ldr	r0, .L61
	bl	GPIO_Init
	.loc 2 184 5
	adds	r3, r7, #4
	mov	r0, r3
	bl	USART_StructInit
	.loc 2 185 25
	mov	r3, #115200
	str	r3, [r7, #4]
	.loc 2 186 5
	adds	r3, r7, #4
	mov	r1, r3
	ldr	r0, .L61+4
	bl	USART_Init
	.loc 2 188 5
	movs	r1, #1
	ldr	r0, .L61+4
	bl	USART_Cmd
	.loc 2 189 5
	nop
	.loc 2 190 1
	adds	r7, r7, #24
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L62:
	.align	2
.L61:
	.word	1073809408
	.word	1073759232
	.cfi_endproc
.LFE38:
	.size	start_uart, .-start_uart
.Letext0:
	.file 3 "/home/witek/CODE/arm/gnu/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/home/witek/CODE/arm/gnu/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "/home/witek/CODE/arm/STM32F10x_StdPeriph_Lib_V3.5.0/Libraries/CMSIS/CM3/DeviceSupport/ST/STM32F10x/stm32f10x.h"
	.file 6 "/home/witek/CODE/arm/STM32F10x_StdPeriph_Lib_V3.5.0/Libraries/CMSIS/CM3/DeviceSupport/ST/STM32F10x/system_stm32f10x.h"
	.file 7 "/home/witek/CODE/arm/STM32F10x_StdPeriph_Lib_V3.5.0/Libraries/STM32F10x_StdPeriph_Driver/inc/stm32f10x_gpio.h"
	.file 8 "/home/witek/CODE/arm/STM32F10x_StdPeriph_Lib_V3.5.0/Libraries/STM32F10x_StdPeriph_Driver/inc/stm32f10x_usart.h"
	.file 9 "./inc/kernel.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xb78
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF179
	.byte	0xc
	.4byte	.LASF180
	.4byte	.LASF181
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x39
	.byte	0x19
	.4byte	0x52
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4f
	.byte	0x19
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.4byte	0x81
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.uleb128 0x5
	.4byte	0x94
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.uleb128 0x5
	.4byte	0xa5
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x60
	.uleb128 0x5
	.4byte	0xb6
	.uleb128 0x6
	.4byte	0xc2
	.uleb128 0x7
	.4byte	.LASF135
	.byte	0x5
	.byte	0x1
	.4byte	0x25
	.byte	0x5
	.byte	0xa7
	.byte	0xe
	.4byte	0x211
	.uleb128 0x8
	.4byte	.LASF15
	.sleb128 -14
	.uleb128 0x8
	.4byte	.LASF16
	.sleb128 -12
	.uleb128 0x8
	.4byte	.LASF17
	.sleb128 -11
	.uleb128 0x8
	.4byte	.LASF18
	.sleb128 -10
	.uleb128 0x8
	.4byte	.LASF19
	.sleb128 -5
	.uleb128 0x8
	.4byte	.LASF20
	.sleb128 -4
	.uleb128 0x8
	.4byte	.LASF21
	.sleb128 -2
	.uleb128 0x8
	.4byte	.LASF22
	.sleb128 -1
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x11
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x13
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x15
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x16
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x17
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x19
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x1a
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x1b
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x1d
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x1e
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x1f
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x21
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x22
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x23
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x25
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x26
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x27
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x29
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x2a
	.byte	0
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x1d8
	.byte	0x3
	.4byte	0xcc
	.uleb128 0xb
	.2byte	0xe04
	.byte	0x1
	.byte	0x84
	.byte	0x9
	.4byte	0x2da
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x1
	.byte	0x86
	.byte	0x11
	.4byte	0x2ea
	.byte	0
	.uleb128 0xc
	.4byte	.LASF68
	.byte	0x1
	.byte	0x87
	.byte	0x11
	.4byte	0x2ef
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0x1
	.byte	0x88
	.byte	0x11
	.4byte	0x2ea
	.byte	0x80
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0x1
	.byte	0x89
	.byte	0x11
	.4byte	0x2ef
	.byte	0xa0
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0x1
	.byte	0x8a
	.byte	0x11
	.4byte	0x2ea
	.2byte	0x100
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0x1
	.byte	0x8b
	.byte	0x11
	.4byte	0x2ef
	.2byte	0x120
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x1
	.byte	0x8c
	.byte	0x11
	.4byte	0x2ea
	.2byte	0x180
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0x1
	.byte	0x8d
	.byte	0x11
	.4byte	0x2ef
	.2byte	0x1a0
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x1
	.byte	0x8e
	.byte	0x11
	.4byte	0x2ea
	.2byte	0x200
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x1
	.byte	0x8f
	.byte	0x11
	.4byte	0x2ff
	.2byte	0x220
	.uleb128 0xe
	.ascii	"IP\000"
	.byte	0x1
	.byte	0x90
	.byte	0x11
	.4byte	0x31f
	.2byte	0x300
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x1
	.byte	0x91
	.byte	0x11
	.4byte	0x324
	.2byte	0x3f0
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0x1
	.byte	0x92
	.byte	0x11
	.4byte	0xc2
	.2byte	0xe00
	.byte	0
	.uleb128 0xf
	.4byte	0xc2
	.4byte	0x2ea
	.uleb128 0x10
	.4byte	0x8d
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.4byte	0x2da
	.uleb128 0xf
	.4byte	0xb6
	.4byte	0x2ff
	.uleb128 0x10
	.4byte	0x8d
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.4byte	0xb6
	.4byte	0x30f
	.uleb128 0x10
	.4byte	0x8d
	.byte	0x37
	.byte	0
	.uleb128 0xf
	.4byte	0xa0
	.4byte	0x31f
	.uleb128 0x10
	.4byte	0x8d
	.byte	0xef
	.byte	0
	.uleb128 0x5
	.4byte	0x30f
	.uleb128 0xf
	.4byte	0xb6
	.4byte	0x335
	.uleb128 0x11
	.4byte	0x8d
	.2byte	0x283
	.byte	0
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0x1
	.byte	0x93
	.byte	0x4
	.4byte	0x21e
	.uleb128 0x12
	.byte	0x74
	.byte	0x1
	.byte	0x9b
	.byte	0x9
	.4byte	0x442
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x1
	.byte	0x9d
	.byte	0x11
	.4byte	0xc7
	.byte	0
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x1
	.byte	0x9e
	.byte	0x11
	.4byte	0xc2
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x1
	.byte	0x9f
	.byte	0x11
	.4byte	0xc2
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x1
	.byte	0xa0
	.byte	0x11
	.4byte	0xc2
	.byte	0xc
	.uleb128 0x13
	.ascii	"SCR\000"
	.byte	0x1
	.byte	0xa1
	.byte	0x11
	.4byte	0xc2
	.byte	0x10
	.uleb128 0x13
	.ascii	"CCR\000"
	.byte	0x1
	.byte	0xa2
	.byte	0x11
	.4byte	0xc2
	.byte	0x14
	.uleb128 0x13
	.ascii	"SHP\000"
	.byte	0x1
	.byte	0xa3
	.byte	0x11
	.4byte	0x452
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x1
	.byte	0xa4
	.byte	0x11
	.4byte	0xc2
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x1
	.byte	0xa5
	.byte	0x11
	.4byte	0xc2
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x1
	.byte	0xa6
	.byte	0x11
	.4byte	0xc2
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x1
	.byte	0xa7
	.byte	0x11
	.4byte	0xc2
	.byte	0x30
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x1
	.byte	0xa8
	.byte	0x11
	.4byte	0xc2
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x1
	.byte	0xa9
	.byte	0x11
	.4byte	0xc2
	.byte	0x38
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x1
	.byte	0xaa
	.byte	0x11
	.4byte	0xc2
	.byte	0x3c
	.uleb128 0x13
	.ascii	"PFR\000"
	.byte	0x1
	.byte	0xab
	.byte	0x11
	.4byte	0x46c
	.byte	0x40
	.uleb128 0x13
	.ascii	"DFR\000"
	.byte	0x1
	.byte	0xac
	.byte	0x11
	.4byte	0xc7
	.byte	0x48
	.uleb128 0x13
	.ascii	"ADR\000"
	.byte	0x1
	.byte	0xad
	.byte	0x11
	.4byte	0xc7
	.byte	0x4c
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x1
	.byte	0xae
	.byte	0x11
	.4byte	0x486
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x1
	.byte	0xaf
	.byte	0x11
	.4byte	0x4a0
	.byte	0x60
	.byte	0
	.uleb128 0xf
	.4byte	0xa0
	.4byte	0x452
	.uleb128 0x10
	.4byte	0x8d
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.4byte	0x442
	.uleb128 0xf
	.4byte	0xc7
	.4byte	0x467
	.uleb128 0x10
	.4byte	0x8d
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	0x457
	.uleb128 0x5
	.4byte	0x467
	.uleb128 0xf
	.4byte	0xc7
	.4byte	0x481
	.uleb128 0x10
	.4byte	0x8d
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	0x471
	.uleb128 0x5
	.4byte	0x481
	.uleb128 0xf
	.4byte	0xc7
	.4byte	0x49b
	.uleb128 0x10
	.4byte	0x8d
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	0x48b
	.uleb128 0x5
	.4byte	0x49b
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0x1
	.byte	0xb0
	.byte	0x3
	.4byte	0x341
	.uleb128 0x14
	.byte	0x10
	.byte	0x1
	.2byte	0x16d
	.byte	0x9
	.4byte	0x4f4
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x16f
	.byte	0x11
	.4byte	0xc2
	.byte	0
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x170
	.byte	0x11
	.4byte	0xc2
	.byte	0x4
	.uleb128 0x16
	.ascii	"VAL\000"
	.byte	0x1
	.2byte	0x171
	.byte	0x11
	.4byte	0xc2
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x172
	.byte	0x11
	.4byte	0xc7
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x173
	.byte	0x3
	.4byte	0x4b1
	.uleb128 0x17
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x6ce
	.byte	0x15
	.4byte	0x88
	.uleb128 0x18
	.4byte	.LASF99
	.byte	0x6
	.byte	0x35
	.byte	0x11
	.4byte	0xb6
	.uleb128 0x19
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x5
	.2byte	0x209
	.byte	0xe
	.4byte	0x536
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.byte	0x1c
	.byte	0x5
	.2byte	0x3e9
	.byte	0x9
	.4byte	0x5a3
	.uleb128 0x16
	.ascii	"CRL\000"
	.byte	0x5
	.2byte	0x3eb
	.byte	0x11
	.4byte	0xc2
	.byte	0
	.uleb128 0x16
	.ascii	"CRH\000"
	.byte	0x5
	.2byte	0x3ec
	.byte	0x11
	.4byte	0xc2
	.byte	0x4
	.uleb128 0x16
	.ascii	"IDR\000"
	.byte	0x5
	.2byte	0x3ed
	.byte	0x11
	.4byte	0xc2
	.byte	0x8
	.uleb128 0x16
	.ascii	"ODR\000"
	.byte	0x5
	.2byte	0x3ee
	.byte	0x11
	.4byte	0xc2
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x3ef
	.byte	0x11
	.4byte	0xc2
	.byte	0x10
	.uleb128 0x16
	.ascii	"BRR\000"
	.byte	0x5
	.2byte	0x3f0
	.byte	0x11
	.4byte	0xc2
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x3f1
	.byte	0x11
	.4byte	0xc2
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.4byte	.LASF104
	.byte	0x5
	.2byte	0x3f2
	.byte	0x3
	.4byte	0x536
	.uleb128 0x14
	.byte	0x1c
	.byte	0x5
	.2byte	0x4d2
	.byte	0x9
	.4byte	0x67d
	.uleb128 0x16
	.ascii	"SR\000"
	.byte	0x5
	.2byte	0x4d4
	.byte	0x11
	.4byte	0xb1
	.byte	0
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x4d5
	.byte	0xd
	.4byte	0xa5
	.byte	0x2
	.uleb128 0x16
	.ascii	"DR\000"
	.byte	0x5
	.2byte	0x4d6
	.byte	0x11
	.4byte	0xb1
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x5
	.2byte	0x4d7
	.byte	0xd
	.4byte	0xa5
	.byte	0x6
	.uleb128 0x16
	.ascii	"BRR\000"
	.byte	0x5
	.2byte	0x4d8
	.byte	0x11
	.4byte	0xb1
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x4d9
	.byte	0xd
	.4byte	0xa5
	.byte	0xa
	.uleb128 0x16
	.ascii	"CR1\000"
	.byte	0x5
	.2byte	0x4da
	.byte	0x11
	.4byte	0xb1
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x4db
	.byte	0xd
	.4byte	0xa5
	.byte	0xe
	.uleb128 0x16
	.ascii	"CR2\000"
	.byte	0x5
	.2byte	0x4dc
	.byte	0x11
	.4byte	0xb1
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x4dd
	.byte	0xd
	.4byte	0xa5
	.byte	0x12
	.uleb128 0x16
	.ascii	"CR3\000"
	.byte	0x5
	.2byte	0x4de
	.byte	0x11
	.4byte	0xb1
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x4df
	.byte	0xd
	.4byte	0xa5
	.byte	0x16
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x5
	.2byte	0x4e0
	.byte	0x11
	.4byte	0xb1
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x5
	.2byte	0x4e1
	.byte	0xd
	.4byte	0xa5
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.4byte	.LASF108
	.byte	0x5
	.2byte	0x4e2
	.byte	0x3
	.4byte	0x5b0
	.uleb128 0x1a
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x7
	.byte	0x3b
	.byte	0x1
	.4byte	0x6ab
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0x7
	.byte	0x3f
	.byte	0x2
	.4byte	0x68a
	.uleb128 0x1a
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x7
	.byte	0x48
	.byte	0x1
	.4byte	0x6f6
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0x48
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF119
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF120
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF121
	.byte	0x7
	.byte	0x50
	.byte	0x2
	.4byte	0x6b7
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.byte	0x5b
	.byte	0x9
	.4byte	0x733
	.uleb128 0xc
	.4byte	.LASF122
	.byte	0x7
	.byte	0x5d
	.byte	0xc
	.4byte	0xa5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF123
	.byte	0x7
	.byte	0x60
	.byte	0x15
	.4byte	0x6ab
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF124
	.byte	0x7
	.byte	0x63
	.byte	0x14
	.4byte	0x6f6
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF125
	.byte	0x7
	.byte	0x65
	.byte	0x2
	.4byte	0x702
	.uleb128 0x1a
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x7
	.byte	0x6d
	.byte	0x1
	.4byte	0x75a
	.uleb128 0x9
	.4byte	.LASF126
	.byte	0
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.byte	0x10
	.byte	0x8
	.byte	0x32
	.byte	0x9
	.4byte	0x7b2
	.uleb128 0xc
	.4byte	.LASF128
	.byte	0x8
	.byte	0x34
	.byte	0xc
	.4byte	0xb6
	.byte	0
	.uleb128 0xc
	.4byte	.LASF129
	.byte	0x8
	.byte	0x39
	.byte	0xc
	.4byte	0xa5
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF130
	.byte	0x8
	.byte	0x3c
	.byte	0xc
	.4byte	0xa5
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF131
	.byte	0x8
	.byte	0x3f
	.byte	0xc
	.4byte	0xa5
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF132
	.byte	0x8
	.byte	0x46
	.byte	0xc
	.4byte	0xa5
	.byte	0xa
	.uleb128 0xc
	.4byte	.LASF133
	.byte	0x8
	.byte	0x49
	.byte	0xc
	.4byte	0xa5
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF134
	.byte	0x8
	.byte	0x4c
	.byte	0x3
	.4byte	0x75a
	.uleb128 0x7
	.4byte	.LASF136
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x9
	.byte	0x1d
	.byte	0x6
	.4byte	0x7ef
	.uleb128 0x9
	.4byte	.LASF137
	.byte	0
	.uleb128 0x1b
	.ascii	"NEW\000"
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF138
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF139
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF140
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.byte	0x18
	.byte	0x9
	.byte	0x25
	.byte	0x9
	.4byte	0x847
	.uleb128 0xc
	.4byte	.LASF141
	.byte	0x9
	.byte	0x27
	.byte	0xc
	.4byte	0xb6
	.byte	0
	.uleb128 0xc
	.4byte	.LASF142
	.byte	0x9
	.byte	0x28
	.byte	0xc
	.4byte	0xb6
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF143
	.byte	0x9
	.byte	0x29
	.byte	0xd
	.4byte	0x847
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF144
	.byte	0x9
	.byte	0x2a
	.byte	0xd
	.4byte	0x847
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF145
	.byte	0x9
	.byte	0x2b
	.byte	0x14
	.4byte	0x7be
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF146
	.byte	0x9
	.byte	0x2c
	.byte	0xd
	.4byte	0x847
	.byte	0x14
	.byte	0
	.uleb128 0x1c
	.byte	0x4
	.4byte	0xb6
	.uleb128 0x3
	.4byte	.LASF147
	.byte	0x9
	.byte	0x2d
	.byte	0x3
	.4byte	0x7ef
	.uleb128 0x12
	.byte	0x20
	.byte	0x9
	.byte	0x30
	.byte	0x9
	.4byte	0x8c5
	.uleb128 0x13
	.ascii	"r0\000"
	.byte	0x9
	.byte	0x32
	.byte	0xc
	.4byte	0xb6
	.byte	0
	.uleb128 0x13
	.ascii	"r1\000"
	.byte	0x9
	.byte	0x33
	.byte	0xc
	.4byte	0xb6
	.byte	0x4
	.uleb128 0x13
	.ascii	"r2\000"
	.byte	0x9
	.byte	0x34
	.byte	0xc
	.4byte	0xb6
	.byte	0x8
	.uleb128 0x13
	.ascii	"r3\000"
	.byte	0x9
	.byte	0x35
	.byte	0xc
	.4byte	0xb6
	.byte	0xc
	.uleb128 0x13
	.ascii	"r12\000"
	.byte	0x9
	.byte	0x36
	.byte	0xc
	.4byte	0xb6
	.byte	0x10
	.uleb128 0x13
	.ascii	"lr\000"
	.byte	0x9
	.byte	0x37
	.byte	0xc
	.4byte	0xb6
	.byte	0x14
	.uleb128 0x13
	.ascii	"pc\000"
	.byte	0x9
	.byte	0x38
	.byte	0xc
	.4byte	0xb6
	.byte	0x18
	.uleb128 0x13
	.ascii	"psr\000"
	.byte	0x9
	.byte	0x39
	.byte	0xc
	.4byte	0xb6
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF148
	.byte	0x9
	.byte	0x3a
	.byte	0x3
	.4byte	0x859
	.uleb128 0xf
	.4byte	0x84d
	.4byte	0x8e1
	.uleb128 0x10
	.4byte	0x8d
	.byte	0x4
	.byte	0
	.uleb128 0x18
	.4byte	.LASF149
	.byte	0x9
	.byte	0x3c
	.byte	0x1b
	.4byte	0x8d1
	.uleb128 0x1d
	.ascii	"i\000"
	.byte	0x9
	.byte	0x3d
	.byte	0xa
	.4byte	0xb6
	.uleb128 0x5
	.byte	0x3
	.4byte	i
	.uleb128 0x1e
	.4byte	.LASF150
	.byte	0x9
	.byte	0x3e
	.byte	0xa
	.4byte	0xb6
	.uleb128 0x5
	.byte	0x3
	.4byte	current_task_ID
	.uleb128 0x1e
	.4byte	.LASF151
	.byte	0x9
	.byte	0x3f
	.byte	0xa
	.4byte	0xb6
	.uleb128 0x5
	.byte	0x3
	.4byte	next_task_ID
	.uleb128 0x1e
	.4byte	.LASF152
	.byte	0x9
	.byte	0x40
	.byte	0xa
	.4byte	0xb6
	.uleb128 0x5
	.byte	0x3
	.4byte	task_id_adder
	.uleb128 0x1e
	.4byte	.LASF153
	.byte	0x9
	.byte	0x41
	.byte	0xa
	.4byte	0xb6
	.uleb128 0x5
	.byte	0x3
	.4byte	shared_value
	.uleb128 0x1e
	.4byte	.LASF154
	.byte	0x9
	.byte	0x42
	.byte	0xa
	.4byte	0xb6
	.uleb128 0x5
	.byte	0x3
	.4byte	svc_number
	.uleb128 0x1e
	.4byte	.LASF155
	.byte	0x2
	.byte	0xa
	.byte	0x7
	.4byte	0x969
	.uleb128 0x5
	.byte	0x3
	.4byte	PrintBuf
	.uleb128 0x1c
	.byte	0x4
	.4byte	0x96f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF156
	.uleb128 0x1f
	.4byte	.LASF160
	.byte	0x2
	.byte	0xa7
	.byte	0x6
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9ab
	.uleb128 0x20
	.4byte	.LASF157
	.byte	0x2
	.byte	0xab
	.byte	0x16
	.4byte	0x733
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x20
	.4byte	.LASF158
	.byte	0x2
	.byte	0xb6
	.byte	0x17
	.4byte	0x7b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x21
	.4byte	.LASF169
	.byte	0x2
	.byte	0x98
	.byte	0xa
	.4byte	0xb6
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d5
	.uleb128 0x20
	.4byte	.LASF159
	.byte	0x2
	.byte	0x9a
	.byte	0xf
	.4byte	0x847
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF161
	.byte	0x2
	.byte	0x75
	.byte	0x6
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa00
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x23
	.4byte	.LASF160
	.byte	0x2
	.byte	0x91
	.byte	0x9
	.4byte	0x81
	.uleb128 0x24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF162
	.byte	0x2
	.byte	0x6f
	.byte	0x6
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.4byte	.LASF163
	.byte	0x2
	.byte	0x53
	.byte	0x6
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.4byte	.LASF164
	.byte	0x2
	.byte	0x44
	.byte	0x6
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa59
	.uleb128 0x20
	.4byte	.LASF165
	.byte	0x2
	.byte	0x46
	.byte	0xe
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x20
	.4byte	.LASF166
	.byte	0x2
	.byte	0x47
	.byte	0xe
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x26
	.4byte	.LASF175
	.byte	0x2
	.byte	0x3b
	.byte	0x6
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.4byte	.LASF167
	.byte	0x2
	.byte	0x30
	.byte	0x6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa91
	.uleb128 0x20
	.4byte	.LASF168
	.byte	0x2
	.byte	0x32
	.byte	0xe
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x27
	.4byte	.LASF170
	.byte	0x2
	.byte	0x19
	.byte	0x6
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xae4
	.uleb128 0x28
	.4byte	.LASF171
	.byte	0x2
	.byte	0x19
	.byte	0x17
	.4byte	0xae4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.4byte	.LASF172
	.byte	0x2
	.byte	0x19
	.byte	0x28
	.4byte	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.4byte	.LASF173
	.byte	0x2
	.byte	0x19
	.byte	0x34
	.4byte	0xae6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.4byte	.LASF174
	.byte	0x2
	.byte	0x1b
	.byte	0x17
	.4byte	0xaec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x29
	.byte	0x4
	.uleb128 0x1c
	.byte	0x4
	.4byte	0x969
	.uleb128 0x1c
	.byte	0x4
	.4byte	0x8c5
	.uleb128 0x26
	.4byte	.LASF176
	.byte	0x2
	.byte	0xc
	.byte	0x6
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x69e
	.byte	0x1a
	.4byte	0xb6
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb30
	.uleb128 0x2b
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x69e
	.byte	0x32
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x632
	.byte	0x16
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb68
	.uleb128 0x2b
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x632
	.byte	0x31
	.4byte	0x211
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2b
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x632
	.byte	0x40
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x4be
	.byte	0x16
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1a
	.uleb128 0x4
	.byte	0x1
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
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x29
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB2-.Ltext0
	.4byte	.LBE2-.Ltext0
	.4byte	.LBB3-.Ltext0
	.4byte	.LBE3-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF43:
	.ascii	"USB_LP_CAN1_RX0_IRQn\000"
.LASF99:
	.ascii	"SystemCoreClock\000"
.LASF102:
	.ascii	"BSRR\000"
.LASF158:
	.ascii	"uart\000"
.LASF124:
	.ascii	"GPIO_Mode\000"
.LASF45:
	.ascii	"CAN1_SCE_IRQn\000"
.LASF40:
	.ascii	"DMA1_Channel7_IRQn\000"
.LASF57:
	.ascii	"I2C2_ER_IRQn\000"
.LASF126:
	.ascii	"Bit_RESET\000"
.LASF53:
	.ascii	"TIM4_IRQn\000"
.LASF35:
	.ascii	"DMA1_Channel2_IRQn\000"
.LASF148:
	.ascii	"hw_stack_frame_t\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF95:
	.ascii	"LOAD\000"
.LASF87:
	.ascii	"DFSR\000"
.LASF27:
	.ascii	"FLASH_IRQn\000"
.LASF96:
	.ascii	"CALIB\000"
.LASF29:
	.ascii	"EXTI0_IRQn\000"
.LASF142:
	.ascii	"stackPointer\000"
.LASF121:
	.ascii	"GPIOMode_TypeDef\000"
.LASF184:
	.ascii	"__ISB\000"
.LASF63:
	.ascii	"EXTI15_10_IRQn\000"
.LASF130:
	.ascii	"USART_StopBits\000"
.LASF152:
	.ascii	"task_id_adder\000"
.LASF31:
	.ascii	"EXTI2_IRQn\000"
.LASF169:
	.ascii	"GetSvcNumber\000"
.LASF21:
	.ascii	"PendSV_IRQn\000"
.LASF28:
	.ascii	"RCC_IRQn\000"
.LASF106:
	.ascii	"GTPR\000"
.LASF16:
	.ascii	"MemoryManagement_IRQn\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF128:
	.ascii	"USART_BaudRate\000"
.LASF155:
	.ascii	"PrintBuf\000"
.LASF91:
	.ascii	"MMFR\000"
.LASF147:
	.ascii	"ThreadControlBlock\000"
.LASF67:
	.ascii	"ISER\000"
.LASF47:
	.ascii	"TIM1_BRK_IRQn\000"
.LASF70:
	.ascii	"RSERVED1\000"
.LASF58:
	.ascii	"SPI1_IRQn\000"
.LASF159:
	.ascii	"result\000"
.LASF37:
	.ascii	"DMA1_Channel4_IRQn\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF174:
	.ascii	"process_frame\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF44:
	.ascii	"CAN1_RX1_IRQn\000"
.LASF129:
	.ascii	"USART_WordLength\000"
.LASF115:
	.ascii	"GPIO_Mode_IPD\000"
.LASF116:
	.ascii	"GPIO_Mode_IPU\000"
.LASF42:
	.ascii	"USB_HP_CAN1_TX_IRQn\000"
.LASF66:
	.ascii	"IRQn_Type\000"
.LASF160:
	.ascii	"start_uart\000"
.LASF150:
	.ascii	"current_task_ID\000"
.LASF143:
	.ascii	"stackPointerAdd\000"
.LASF61:
	.ascii	"USART2_IRQn\000"
.LASF166:
	.ascii	"new_psp\000"
.LASF133:
	.ascii	"USART_HardwareFlowControl\000"
.LASF80:
	.ascii	"CPUID\000"
.LASF179:
	.ascii	"GNU C17 8.3.1 20190703 (release) [gcc-8-branch revi"
	.ascii	"sion 273027] -mcpu=cortex-m3 -mthumb -mfloat-abi=so"
	.ascii	"ft -march=armv7-m -ggdb -O0\000"
.LASF170:
	.ascii	"CreateTask\000"
.LASF172:
	.ascii	"argc\000"
.LASF182:
	.ascii	"SysTick_Config\000"
.LASF117:
	.ascii	"GPIO_Mode_Out_OD\000"
.LASF90:
	.ascii	"AFSR\000"
.LASF137:
	.ascii	"FREE_SLOT\000"
.LASF161:
	.ascii	"SVC_Handler\000"
.LASF108:
	.ascii	"USART_TypeDef\000"
.LASF176:
	.ascii	"SelectNextTask\000"
.LASF181:
	.ascii	"/home/witek/CODE/arm/test_gnu\000"
.LASF177:
	.ascii	"ticks\000"
.LASF56:
	.ascii	"I2C2_EV_IRQn\000"
.LASF86:
	.ascii	"HFSR\000"
.LASF118:
	.ascii	"GPIO_Mode_Out_PP\000"
.LASF156:
	.ascii	"char\000"
.LASF39:
	.ascii	"DMA1_Channel6_IRQn\000"
.LASF157:
	.ascii	"gpio\000"
.LASF100:
	.ascii	"DISABLE\000"
.LASF83:
	.ascii	"AIRCR\000"
.LASF52:
	.ascii	"TIM3_IRQn\000"
.LASF34:
	.ascii	"DMA1_Channel1_IRQn\000"
.LASF132:
	.ascii	"USART_Mode\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF168:
	.ascii	"status\000"
.LASF30:
	.ascii	"EXTI1_IRQn\000"
.LASF164:
	.ascii	"InitThreads\000"
.LASF65:
	.ascii	"USBWakeUp_IRQn\000"
.LASF9:
	.ascii	"long long int\000"
.LASF23:
	.ascii	"WWDG_IRQn\000"
.LASF84:
	.ascii	"SHCSR\000"
.LASF144:
	.ascii	"stackPointerCleanAdd\000"
.LASF162:
	.ascii	"SysTick_Handler\000"
.LASF85:
	.ascii	"CFSR\000"
.LASF139:
	.ascii	"HALTED\000"
.LASF94:
	.ascii	"CTRL\000"
.LASF17:
	.ascii	"BusFault_IRQn\000"
.LASF140:
	.ascii	"COMPLETED\000"
.LASF136:
	.ascii	"threadState\000"
.LASF154:
	.ascii	"svc_number\000"
.LASF33:
	.ascii	"EXTI4_IRQn\000"
.LASF183:
	.ascii	"NVIC_SetPriority\000"
.LASF24:
	.ascii	"PVD_IRQn\000"
.LASF127:
	.ascii	"Bit_SET\000"
.LASF73:
	.ascii	"ICPR\000"
.LASF153:
	.ascii	"shared_value\000"
.LASF36:
	.ascii	"DMA1_Channel3_IRQn\000"
.LASF138:
	.ascii	"RUNNING\000"
.LASF119:
	.ascii	"GPIO_Mode_AF_OD\000"
.LASF54:
	.ascii	"I2C1_EV_IRQn\000"
.LASF97:
	.ascii	"SysTick_Type\000"
.LASF173:
	.ascii	"argv\000"
.LASF13:
	.ascii	"uint16_t\000"
.LASF135:
	.ascii	"IRQn\000"
.LASF48:
	.ascii	"TIM1_UP_IRQn\000"
.LASF109:
	.ascii	"GPIO_Speed_10MHz\000"
.LASF78:
	.ascii	"STIR\000"
.LASF88:
	.ascii	"MMFAR\000"
.LASF26:
	.ascii	"RTC_IRQn\000"
.LASF68:
	.ascii	"RESERVED0\000"
.LASF105:
	.ascii	"RESERVED1\000"
.LASF72:
	.ascii	"RESERVED2\000"
.LASF74:
	.ascii	"RESERVED3\000"
.LASF76:
	.ascii	"RESERVED4\000"
.LASF77:
	.ascii	"RESERVED5\000"
.LASF107:
	.ascii	"RESERVED6\000"
.LASF2:
	.ascii	"short int\000"
.LASF120:
	.ascii	"GPIO_Mode_AF_PP\000"
.LASF6:
	.ascii	"long int\000"
.LASF60:
	.ascii	"USART1_IRQn\000"
.LASF123:
	.ascii	"GPIO_Speed\000"
.LASF98:
	.ascii	"ITM_RxBuffer\000"
.LASF15:
	.ascii	"NonMaskableInt_IRQn\000"
.LASF171:
	.ascii	"taskPointer\000"
.LASF178:
	.ascii	"priority\000"
.LASF122:
	.ascii	"GPIO_Pin\000"
.LASF50:
	.ascii	"TIM1_CC_IRQn\000"
.LASF165:
	.ascii	"current_msp\000"
.LASF180:
	.ascii	"src/kernel.c\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF79:
	.ascii	"NVIC_Type\000"
.LASF93:
	.ascii	"SCB_Type\000"
.LASF89:
	.ascii	"BFAR\000"
.LASF49:
	.ascii	"TIM1_TRG_COM_IRQn\000"
.LASF104:
	.ascii	"GPIO_TypeDef\000"
.LASF82:
	.ascii	"VTOR\000"
.LASF55:
	.ascii	"I2C1_ER_IRQn\000"
.LASF167:
	.ascii	"RunOS\000"
.LASF22:
	.ascii	"SysTick_IRQn\000"
.LASF163:
	.ascii	"PendSV_Handler\000"
.LASF101:
	.ascii	"ENABLE\000"
.LASF81:
	.ascii	"ICSR\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF51:
	.ascii	"TIM2_IRQn\000"
.LASF149:
	.ascii	"threads\000"
.LASF146:
	.ascii	"entryPoint\000"
.LASF141:
	.ascii	"stackPointerClean\000"
.LASF145:
	.ascii	"state\000"
.LASF151:
	.ascii	"next_task_ID\000"
.LASF20:
	.ascii	"DebugMonitor_IRQn\000"
.LASF18:
	.ascii	"UsageFault_IRQn\000"
.LASF125:
	.ascii	"GPIO_InitTypeDef\000"
.LASF175:
	.ascii	"CloseThread\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF113:
	.ascii	"GPIO_Mode_AIN\000"
.LASF111:
	.ascii	"GPIO_Speed_50MHz\000"
.LASF46:
	.ascii	"EXTI9_5_IRQn\000"
.LASF19:
	.ascii	"SVCall_IRQn\000"
.LASF110:
	.ascii	"GPIO_Speed_2MHz\000"
.LASF69:
	.ascii	"ICER\000"
.LASF134:
	.ascii	"USART_InitTypeDef\000"
.LASF59:
	.ascii	"SPI2_IRQn\000"
.LASF75:
	.ascii	"IABR\000"
.LASF38:
	.ascii	"DMA1_Channel5_IRQn\000"
.LASF131:
	.ascii	"USART_Parity\000"
.LASF112:
	.ascii	"GPIOSpeed_TypeDef\000"
.LASF0:
	.ascii	"signed char\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF32:
	.ascii	"EXTI3_IRQn\000"
.LASF71:
	.ascii	"ISPR\000"
.LASF41:
	.ascii	"ADC1_2_IRQn\000"
.LASF92:
	.ascii	"ISAR\000"
.LASF114:
	.ascii	"GPIO_Mode_IN_FLOATING\000"
.LASF62:
	.ascii	"USART3_IRQn\000"
.LASF25:
	.ascii	"TAMPER_IRQn\000"
.LASF103:
	.ascii	"LCKR\000"
.LASF64:
	.ascii	"RTCAlarm_IRQn\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 8-2019-q3-update) 8.3.1 20190703 (release) [gcc-8-branch revision 273027]"
