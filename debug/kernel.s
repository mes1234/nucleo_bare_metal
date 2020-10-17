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
	.file 1 "C:\\Users\\witol\\Documents\\CODE\\arm\\yaos\\STM32F10x_StdPeriph_Lib_V3.5.0\\Libraries\\CMSIS\\CM3\\CoreSupport/core_cm3.h"
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
@ 1214 "C:\Users\witol\Documents\CODE\arm\yaos\STM32F10x_StdPeriph_Lib_V3.5.0\Libraries\CMSIS\CM3\CoreSupport/core_cm3.h" 1
	isb
@ 0 "" 2
	.loc 1 1214 77
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
	.align	1
	.global	SelectNextTask
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SelectNextTask, %function
SelectNextTask:
.LFB29:
	.file 2 "src\\kernel.c"
	.loc 2 10 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 2 11 18
	ldr	r3, .L16
	ldr	r3, [r3]
	ldr	r2, .L16+4
	str	r3, [r2]
.L15:
	.loc 2 14 37
	ldr	r3, .L16+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	.loc 2 14 22
	ldr	r2, .L16+4
	str	r3, [r2]
	.loc 2 15 26
	ldr	r3, .L16+4
	ldr	r3, [r3]
	.loc 2 15 12
	cmp	r3, #5
	bne	.L14
	.loc 2 17 26
	ldr	r3, .L16+4
	movs	r2, #0
	str	r2, [r3]
.L14:
	.loc 2 19 36
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
	.loc 2 19 5
	cmp	r3, #0
	beq	.L15
	.loc 2 19 82 discriminator 1
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
	.loc 2 19 57 discriminator 1
	cmp	r3, #4
	beq	.L15
	.loc 2 19 128 discriminator 2
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
	.loc 2 19 103 discriminator 2
	cmp	r3, #2
	beq	.L15
	.loc 2 20 1
	nop
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
	.loc 2 23 1
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
	.loc 2 25 12
	ldr	r3, .L24
	movs	r2, #0
	str	r2, [r3]
	.loc 2 25 5
	b	.L19
.L23:
	.loc 2 27 24
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
	.loc 2 27 12
	cmp	r3, #0
	beq	.L20
	.loc 2 27 59 discriminator 1
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
	.loc 2 27 45 discriminator 1
	cmp	r3, #4
	bne	.L21
.L20:
	.loc 2 29 23
	ldr	r3, .L24
	ldr	r2, [r3]
	.loc 2 29 30
	ldr	r1, .L24+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #16
	movs	r2, #1
	strb	r2, [r3]
	.loc 2 30 23
	ldr	r3, .L24
	ldr	r2, [r3]
	.loc 2 30 35
	ldr	r1, .L24+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #20
	ldr	r2, [r7, #12]
	str	r2, [r3]
	.loc 2 31 60
	ldr	r3, .L24
	ldr	r2, [r3]
	ldr	r1, .L24+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3]
	.loc 2 31 27
	str	r3, [r7, #20]
	.loc 2 32 31
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #20]
	str	r2, [r3]
	.loc 2 33 31
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #20]
	str	r2, [r3, #4]
	.loc 2 34 31
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #8]
	.loc 2 35 31
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #12]
	.loc 2 36 32
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #16]
	.loc 2 37 31
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	str	r2, [r3, #24]
	.loc 2 38 31
	ldr	r2, .L24+8
	ldr	r3, [r7, #20]
	str	r2, [r3, #20]
	.loc 2 39 32
	ldr	r3, [r7, #20]
	mov	r2, #553648128
	str	r2, [r3, #28]
	.loc 2 40 13
	b	.L22
.L21:
	.loc 2 25 40 discriminator 2
	ldr	r3, .L24
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L24
	str	r3, [r2]
.L19:
	.loc 2 25 19 discriminator 1
	ldr	r3, .L24
	ldr	r3, [r3]
	.loc 2 25 5 discriminator 1
	cmp	r3, #4
	bls	.L23
	.loc 2 43 1
	nop
.L22:
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
	.loc 2 46 1
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
	.loc 2 47 23
	mov	r0, #3680
	bl	SysTick_Config
	str	r0, [r7, #4]
	.loc 2 48 5
	movs	r1, #255
	mvn	r0, #1
	bl	NVIC_SetPriority
	.loc 2 49 21
	ldr	r3, .L28
	movs	r2, #0
	str	r2, [r3]
	.loc 2 50 5
	movs	r3, #3
	.syntax unified
@ 50 "src\kernel.c" 1
	MSR control, r3
@ 0 "" 2
	.loc 2 53 5
	.thumb
	.syntax unified
	nop
	.loc 2 56 1
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
@ 61 "src\kernel.c" 1
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
	.loc 2 68 1
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
	.loc 2 69 28
	bl	__get_MSP
	str	r0, [r7, #4]
	.loc 2 72 12
	ldr	r3, .L35
	movs	r2, #0
	str	r2, [r3]
	.loc 2 72 5
	b	.L33
.L34:
	.loc 2 74 36 discriminator 3
	ldr	r3, .L35
	ldr	r3, [r3]
	adds	r3, r3, #1
	.loc 2 74 41 discriminator 3
	lsls	r3, r3, #8
	.loc 2 74 17 discriminator 3
	ldr	r2, [r7, #4]
	subs	r3, r2, r3
	str	r3, [r7]
	.loc 2 75 19 discriminator 3
	ldr	r3, .L35
	ldr	r2, [r3]
	.loc 2 75 33 discriminator 3
	ldr	r1, .L35+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #4
	ldr	r2, [r7]
	str	r2, [r3]
	.loc 2 76 50 discriminator 3
	ldr	r3, .L35
	ldr	r1, [r3]
	.loc 2 76 19 discriminator 3
	ldr	r3, .L35
	ldr	r2, [r3]
	.loc 2 76 50 discriminator 3
	ldr	r0, .L35+4
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r0
	adds	r3, r3, #4
	ldr	r1, [r3]
	.loc 2 76 38 discriminator 3
	ldr	r0, .L35+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r0
	str	r1, [r3]
	.loc 2 77 48 discriminator 3
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
	.loc 2 77 19 discriminator 3
	ldr	r3, .L35
	ldr	r2, [r3]
	.loc 2 77 48 discriminator 3
	mov	r0, r1
	.loc 2 77 36 discriminator 3
	ldr	r1, .L35+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #8
	str	r0, [r3]
	.loc 2 78 53 discriminator 3
	ldr	r3, .L35
	ldr	r2, [r3]
	ldr	r1, .L35+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r1, [r3]
	.loc 2 78 19 discriminator 3
	ldr	r3, .L35
	ldr	r2, [r3]
	.loc 2 78 53 discriminator 3
	mov	r0, r1
	.loc 2 78 41 discriminator 3
	ldr	r1, .L35+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #12
	str	r0, [r3]
	.loc 2 79 19 discriminator 3
	ldr	r3, .L35
	ldr	r2, [r3]
	.loc 2 79 26 discriminator 3
	ldr	r1, .L35+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #16
	movs	r2, #0
	strb	r2, [r3]
	.loc 2 72 40 discriminator 3
	ldr	r3, .L35
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L35
	str	r3, [r2]
.L33:
	.loc 2 72 19 discriminator 1
	ldr	r3, .L35
	ldr	r3, [r3]
	.loc 2 72 5 discriminator 1
	cmp	r3, #4
	bls	.L34
	.loc 2 81 1
	nop
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
	.loc 2 83 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 2 84 5
	.syntax unified
@ 84 "src\kernel.c" 1
	MRS   r0,  psp      
	STMDB r0!, {r4-r11} 
	
@ 0 "" 2
	.loc 2 86 34
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
	.loc 2 86 8
	cmp	r3, #4
	beq	.L38
	.loc 2 86 83 discriminator 1
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
	.loc 2 86 55 discriminator 1
	cmp	r3, #1
	beq	.L38
	.loc 2 88 9
	ldr	r3, .L41
	ldr	r2, [r3]
	.syntax unified
@ 88 "src\kernel.c" 1
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
	.loc 2 89 76
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
	.loc 2 89 33
	ldr	r3, .L41
	ldr	r2, [r3]
	.loc 2 89 76
	mov	r0, r1
	.loc 2 89 50
	ldr	r1, .L41+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #8
	str	r0, [r3]
	.loc 2 90 33
	ldr	r3, .L41
	ldr	r2, [r3]
	.loc 2 90 40
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
	.loc 2 92 21
	ldr	r3, .L41+8
	ldr	r3, [r3]
	ldr	r2, .L41
	str	r3, [r2]
	.loc 2 94 33
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
	.loc 2 94 8
	cmp	r3, #3
	bne	.L39
	.loc 2 96 9
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
@ 96 "src\kernel.c" 1
	msr psp, r3 
	
@ 0 "" 2
	.loc 2 97 33
	.thumb
	.syntax unified
	ldr	r3, .L41
	ldr	r2, [r3]
	.loc 2 97 40
	ldr	r1, .L41+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #16
	movs	r2, #2
	strb	r2, [r3]
	.loc 2 98 9
	.syntax unified
@ 98 "src\kernel.c" 1
	MRS   r0,  psp      
	LDMIA r0!, {r4-r11} 
	
@ 0 "" 2
	.loc 2 99 9
	.thumb
	.syntax unified
	bl	__ISB
	.loc 2 100 9
	b	.L37
.L39:
	.loc 2 103 33
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
	.loc 2 103 8
	cmp	r3, #1
	bne	.L37
	.loc 2 105 9
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
@ 105 "src\kernel.c" 1
	msr psp, r3 
	
@ 0 "" 2
	.loc 2 106 33
	.thumb
	.syntax unified
	ldr	r3, .L41
	ldr	r2, [r3]
	.loc 2 106 40
	ldr	r1, .L41+4
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #16
	movs	r2, #2
	strb	r2, [r3]
	.loc 2 107 9
	nop
.L37:
	.loc 2 109 1
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
	.loc 2 111 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 2 112 5
	bl	SelectNextTask
	.loc 2 113 5
	ldr	r3, .L44
	ldr	r3, [r3, #4]
	ldr	r2, .L44
	orr	r3, r3, #268435456
	str	r3, [r2, #4]
	.loc 2 114 1
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
	.loc 2 117 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 2 119 18
	bl	GetSvcNumber
	mov	r3, r0
	.loc 2 119 16
	ldr	r2, .L54
	str	r3, [r2]
	.loc 2 120 5
	ldr	r3, .L54
	ldr	r3, [r3]
	cmp	r3, #110
	beq	.L47
	cmp	r3, #110
	bhi	.L53
	cmp	r3, #109
	beq	.L49
	cmp	r3, #109
	bhi	.L53
	cmp	r3, #0
	beq	.L50
	cmp	r3, #1
	beq	.L51
	.loc 2 141 9
	b	.L53
.L50:
	.loc 2 124 33
	ldr	r3, .L54+4
	ldr	r2, [r3]
	.loc 2 124 40
	ldr	r1, .L54+8
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #16
	movs	r2, #4
	strb	r2, [r3]
	.loc 2 125 9
	bl	SelectNextTask
	.loc 2 126 9
	ldr	r3, .L54+12
	ldr	r3, [r3, #4]
	ldr	r2, .L54+12
	orr	r3, r3, #268435456
	str	r3, [r2, #4]
	.loc 2 127 9
	b	.L52
.L51:
	.loc 2 130 9
	bl	SelectNextTask
	.loc 2 131 9
	ldr	r3, .L54+12
	ldr	r3, [r3, #4]
	ldr	r2, .L54+12
	orr	r3, r3, #268435456
	str	r3, [r2, #4]
	.loc 2 132 9
	b	.L52
.L49:
	.loc 2 135 9
	movs	r2, #0
	movs	r1, #32
	ldr	r0, .L54+16
	bl	GPIO_WriteBit
	.loc 2 136 9
	b	.L52
.L47:
	.loc 2 139 9
	movs	r2, #1
	movs	r1, #32
	ldr	r0, .L54+16
	bl	GPIO_WriteBit
.L53:
	.loc 2 141 9
	nop
.L52:
	.loc 2 143 1
	nop
	pop	{r7, pc}
.L55:
	.align	2
.L54:
	.word	svc_number
	.word	current_task_ID
	.word	threads
	.word	-536810240
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
	.loc 2 146 1
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
	.loc 2 147 15
	movs	r3, #0
	str	r3, [r7, #4]
	.loc 2 148 5
	.syntax unified
@ 148 "src\kernel.c" 1
	MRS R0, PSP
	MOV r3, R0
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #4]
	.loc 2 151 27
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	.loc 2 151 31
	ldr	r3, [r3]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 152 1
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
.Letext0:
	.file 3 "c:\\program files (x86)\\gnu arm embedded toolchain\\9 2020-q2-update\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 4 "c:\\program files (x86)\\gnu arm embedded toolchain\\9 2020-q2-update\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 5 "C:\\Users\\witol\\Documents\\CODE\\arm\\yaos\\STM32F10x_StdPeriph_Lib_V3.5.0\\Libraries\\CMSIS\\CM3\\DeviceSupport\\ST\\STM32F10x/stm32f10x.h"
	.file 6 "C:\\Users\\witol\\Documents\\CODE\\arm\\yaos\\STM32F10x_StdPeriph_Lib_V3.5.0\\Libraries\\CMSIS\\CM3\\DeviceSupport\\ST\\STM32F10x/system_stm32f10x.h"
	.file 7 ".\\inc/kernel.h"
	.file 8 "C:\\Users\\witol\\Documents\\CODE\\arm\\yaos\\STM32F10x_StdPeriph_Lib_V3.5.0\\Libraries\\STM32F10x_StdPeriph_Driver\\inc/stm32f10x_gpio.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x904
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF145
	.byte	0xc
	.4byte	.LASF146
	.4byte	.LASF147
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
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x60
	.uleb128 0x5
	.4byte	0xb1
	.uleb128 0x6
	.4byte	0xbd
	.uleb128 0x7
	.4byte	.LASF105
	.byte	0x5
	.byte	0x1
	.4byte	0x25
	.byte	0x5
	.byte	0xa7
	.byte	0xe
	.4byte	0x20c
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
	.4byte	0xc7
	.uleb128 0xb
	.2byte	0xe04
	.byte	0x1
	.byte	0x84
	.byte	0x9
	.4byte	0x2d5
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x1
	.byte	0x86
	.byte	0x11
	.4byte	0x2e5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF68
	.byte	0x1
	.byte	0x87
	.byte	0x11
	.4byte	0x2ea
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0x1
	.byte	0x88
	.byte	0x11
	.4byte	0x2e5
	.byte	0x80
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0x1
	.byte	0x89
	.byte	0x11
	.4byte	0x2ea
	.byte	0xa0
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0x1
	.byte	0x8a
	.byte	0x11
	.4byte	0x2e5
	.2byte	0x100
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0x1
	.byte	0x8b
	.byte	0x11
	.4byte	0x2ea
	.2byte	0x120
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x1
	.byte	0x8c
	.byte	0x11
	.4byte	0x2e5
	.2byte	0x180
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0x1
	.byte	0x8d
	.byte	0x11
	.4byte	0x2ea
	.2byte	0x1a0
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x1
	.byte	0x8e
	.byte	0x11
	.4byte	0x2e5
	.2byte	0x200
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x1
	.byte	0x8f
	.byte	0x11
	.4byte	0x2fa
	.2byte	0x220
	.uleb128 0xe
	.ascii	"IP\000"
	.byte	0x1
	.byte	0x90
	.byte	0x11
	.4byte	0x31a
	.2byte	0x300
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x1
	.byte	0x91
	.byte	0x11
	.4byte	0x31f
	.2byte	0x3f0
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0x1
	.byte	0x92
	.byte	0x11
	.4byte	0xbd
	.2byte	0xe00
	.byte	0
	.uleb128 0xf
	.4byte	0xbd
	.4byte	0x2e5
	.uleb128 0x10
	.4byte	0x8d
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.4byte	0x2d5
	.uleb128 0xf
	.4byte	0xb1
	.4byte	0x2fa
	.uleb128 0x10
	.4byte	0x8d
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.4byte	0xb1
	.4byte	0x30a
	.uleb128 0x10
	.4byte	0x8d
	.byte	0x37
	.byte	0
	.uleb128 0xf
	.4byte	0xa0
	.4byte	0x31a
	.uleb128 0x10
	.4byte	0x8d
	.byte	0xef
	.byte	0
	.uleb128 0x5
	.4byte	0x30a
	.uleb128 0xf
	.4byte	0xb1
	.4byte	0x330
	.uleb128 0x11
	.4byte	0x8d
	.2byte	0x283
	.byte	0
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0x1
	.byte	0x93
	.byte	0x4
	.4byte	0x219
	.uleb128 0x12
	.byte	0x74
	.byte	0x1
	.byte	0x9b
	.byte	0x9
	.4byte	0x43d
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x1
	.byte	0x9d
	.byte	0x11
	.4byte	0xc2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x1
	.byte	0x9e
	.byte	0x11
	.4byte	0xbd
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x1
	.byte	0x9f
	.byte	0x11
	.4byte	0xbd
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x1
	.byte	0xa0
	.byte	0x11
	.4byte	0xbd
	.byte	0xc
	.uleb128 0x13
	.ascii	"SCR\000"
	.byte	0x1
	.byte	0xa1
	.byte	0x11
	.4byte	0xbd
	.byte	0x10
	.uleb128 0x13
	.ascii	"CCR\000"
	.byte	0x1
	.byte	0xa2
	.byte	0x11
	.4byte	0xbd
	.byte	0x14
	.uleb128 0x13
	.ascii	"SHP\000"
	.byte	0x1
	.byte	0xa3
	.byte	0x11
	.4byte	0x44d
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x1
	.byte	0xa4
	.byte	0x11
	.4byte	0xbd
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x1
	.byte	0xa5
	.byte	0x11
	.4byte	0xbd
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x1
	.byte	0xa6
	.byte	0x11
	.4byte	0xbd
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x1
	.byte	0xa7
	.byte	0x11
	.4byte	0xbd
	.byte	0x30
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x1
	.byte	0xa8
	.byte	0x11
	.4byte	0xbd
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x1
	.byte	0xa9
	.byte	0x11
	.4byte	0xbd
	.byte	0x38
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x1
	.byte	0xaa
	.byte	0x11
	.4byte	0xbd
	.byte	0x3c
	.uleb128 0x13
	.ascii	"PFR\000"
	.byte	0x1
	.byte	0xab
	.byte	0x11
	.4byte	0x467
	.byte	0x40
	.uleb128 0x13
	.ascii	"DFR\000"
	.byte	0x1
	.byte	0xac
	.byte	0x11
	.4byte	0xc2
	.byte	0x48
	.uleb128 0x13
	.ascii	"ADR\000"
	.byte	0x1
	.byte	0xad
	.byte	0x11
	.4byte	0xc2
	.byte	0x4c
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x1
	.byte	0xae
	.byte	0x11
	.4byte	0x481
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x1
	.byte	0xaf
	.byte	0x11
	.4byte	0x49b
	.byte	0x60
	.byte	0
	.uleb128 0xf
	.4byte	0xa0
	.4byte	0x44d
	.uleb128 0x10
	.4byte	0x8d
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.4byte	0x43d
	.uleb128 0xf
	.4byte	0xc2
	.4byte	0x462
	.uleb128 0x10
	.4byte	0x8d
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	0x452
	.uleb128 0x5
	.4byte	0x462
	.uleb128 0xf
	.4byte	0xc2
	.4byte	0x47c
	.uleb128 0x10
	.4byte	0x8d
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	0x46c
	.uleb128 0x5
	.4byte	0x47c
	.uleb128 0xf
	.4byte	0xc2
	.4byte	0x496
	.uleb128 0x10
	.4byte	0x8d
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	0x486
	.uleb128 0x5
	.4byte	0x496
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0x1
	.byte	0xb0
	.byte	0x3
	.4byte	0x33c
	.uleb128 0x14
	.byte	0x10
	.byte	0x1
	.2byte	0x16d
	.byte	0x9
	.4byte	0x4ef
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x16f
	.byte	0x11
	.4byte	0xbd
	.byte	0
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x170
	.byte	0x11
	.4byte	0xbd
	.byte	0x4
	.uleb128 0x16
	.ascii	"VAL\000"
	.byte	0x1
	.2byte	0x171
	.byte	0x11
	.4byte	0xbd
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x172
	.byte	0x11
	.4byte	0xc2
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x173
	.byte	0x3
	.4byte	0x4ac
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
	.4byte	0xb1
	.uleb128 0x14
	.byte	0x1c
	.byte	0x5
	.2byte	0x3e9
	.byte	0x9
	.4byte	0x582
	.uleb128 0x16
	.ascii	"CRL\000"
	.byte	0x5
	.2byte	0x3eb
	.byte	0x11
	.4byte	0xbd
	.byte	0
	.uleb128 0x16
	.ascii	"CRH\000"
	.byte	0x5
	.2byte	0x3ec
	.byte	0x11
	.4byte	0xbd
	.byte	0x4
	.uleb128 0x16
	.ascii	"IDR\000"
	.byte	0x5
	.2byte	0x3ed
	.byte	0x11
	.4byte	0xbd
	.byte	0x8
	.uleb128 0x16
	.ascii	"ODR\000"
	.byte	0x5
	.2byte	0x3ee
	.byte	0x11
	.4byte	0xbd
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x5
	.2byte	0x3ef
	.byte	0x11
	.4byte	0xbd
	.byte	0x10
	.uleb128 0x16
	.ascii	"BRR\000"
	.byte	0x5
	.2byte	0x3f0
	.byte	0x11
	.4byte	0xbd
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x3f1
	.byte	0x11
	.4byte	0xbd
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x3f2
	.byte	0x3
	.4byte	0x515
	.uleb128 0x19
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x8
	.byte	0x6d
	.byte	0x1
	.4byte	0x5aa
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF106
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x7
	.byte	0x1b
	.byte	0x6
	.4byte	0x5db
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0
	.uleb128 0x1a
	.ascii	"NEW\000"
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.byte	0x18
	.byte	0x7
	.byte	0x23
	.byte	0x9
	.4byte	0x633
	.uleb128 0xc
	.4byte	.LASF111
	.byte	0x7
	.byte	0x25
	.byte	0xc
	.4byte	0xb1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF112
	.byte	0x7
	.byte	0x26
	.byte	0xc
	.4byte	0xb1
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF113
	.byte	0x7
	.byte	0x27
	.byte	0xd
	.4byte	0x633
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF114
	.byte	0x7
	.byte	0x28
	.byte	0xd
	.4byte	0x633
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF115
	.byte	0x7
	.byte	0x29
	.byte	0x14
	.4byte	0x5aa
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF116
	.byte	0x7
	.byte	0x2a
	.byte	0xd
	.4byte	0x633
	.byte	0x14
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x3
	.4byte	.LASF117
	.byte	0x7
	.byte	0x2b
	.byte	0x3
	.4byte	0x5db
	.uleb128 0x12
	.byte	0x20
	.byte	0x7
	.byte	0x2e
	.byte	0x9
	.4byte	0x6b1
	.uleb128 0x13
	.ascii	"r0\000"
	.byte	0x7
	.byte	0x30
	.byte	0xc
	.4byte	0xb1
	.byte	0
	.uleb128 0x13
	.ascii	"r1\000"
	.byte	0x7
	.byte	0x31
	.byte	0xc
	.4byte	0xb1
	.byte	0x4
	.uleb128 0x13
	.ascii	"r2\000"
	.byte	0x7
	.byte	0x32
	.byte	0xc
	.4byte	0xb1
	.byte	0x8
	.uleb128 0x13
	.ascii	"r3\000"
	.byte	0x7
	.byte	0x33
	.byte	0xc
	.4byte	0xb1
	.byte	0xc
	.uleb128 0x13
	.ascii	"r12\000"
	.byte	0x7
	.byte	0x34
	.byte	0xc
	.4byte	0xb1
	.byte	0x10
	.uleb128 0x13
	.ascii	"lr\000"
	.byte	0x7
	.byte	0x35
	.byte	0xc
	.4byte	0xb1
	.byte	0x14
	.uleb128 0x13
	.ascii	"pc\000"
	.byte	0x7
	.byte	0x36
	.byte	0xc
	.4byte	0xb1
	.byte	0x18
	.uleb128 0x13
	.ascii	"psr\000"
	.byte	0x7
	.byte	0x37
	.byte	0xc
	.4byte	0xb1
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF118
	.byte	0x7
	.byte	0x38
	.byte	0x3
	.4byte	0x645
	.uleb128 0xf
	.4byte	0x639
	.4byte	0x6cd
	.uleb128 0x10
	.4byte	0x8d
	.byte	0x4
	.byte	0
	.uleb128 0x18
	.4byte	.LASF119
	.byte	0x7
	.byte	0x3a
	.byte	0x1b
	.4byte	0x6bd
	.uleb128 0x1c
	.ascii	"i\000"
	.byte	0x7
	.byte	0x3b
	.byte	0xa
	.4byte	0xb1
	.uleb128 0x5
	.byte	0x3
	.4byte	i
	.uleb128 0x1d
	.4byte	.LASF120
	.byte	0x7
	.byte	0x3c
	.byte	0xa
	.4byte	0xb1
	.uleb128 0x5
	.byte	0x3
	.4byte	current_task_ID
	.uleb128 0x1d
	.4byte	.LASF121
	.byte	0x7
	.byte	0x3d
	.byte	0xa
	.4byte	0xb1
	.uleb128 0x5
	.byte	0x3
	.4byte	next_task_ID
	.uleb128 0x1d
	.4byte	.LASF122
	.byte	0x7
	.byte	0x3e
	.byte	0xa
	.4byte	0xb1
	.uleb128 0x5
	.byte	0x3
	.4byte	task_id_adder
	.uleb128 0x1d
	.4byte	.LASF123
	.byte	0x7
	.byte	0x3f
	.byte	0xa
	.4byte	0xb1
	.uleb128 0x5
	.byte	0x3
	.4byte	shared_value
	.uleb128 0x1d
	.4byte	.LASF124
	.byte	0x7
	.byte	0x40
	.byte	0xa
	.4byte	0xb1
	.uleb128 0x5
	.byte	0x3
	.4byte	svc_number
	.uleb128 0x1e
	.4byte	.LASF135
	.byte	0x2
	.byte	0x91
	.byte	0xa
	.4byte	0xb1
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x76d
	.uleb128 0x1f
	.4byte	.LASF127
	.byte	0x2
	.byte	0x93
	.byte	0xf
	.4byte	0x633
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x20
	.4byte	.LASF130
	.byte	0x2
	.byte	0x74
	.byte	0x6
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.4byte	.LASF125
	.byte	0x2
	.byte	0x6e
	.byte	0x6
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.4byte	.LASF126
	.byte	0x2
	.byte	0x52
	.byte	0x6
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.4byte	.LASF132
	.byte	0x2
	.byte	0x43
	.byte	0x6
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7d8
	.uleb128 0x1f
	.4byte	.LASF128
	.byte	0x2
	.byte	0x45
	.byte	0xe
	.4byte	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1f
	.4byte	.LASF129
	.byte	0x2
	.byte	0x46
	.byte	0xe
	.4byte	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x23
	.4byte	.LASF131
	.byte	0x2
	.byte	0x3b
	.byte	0x6
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.4byte	.LASF133
	.byte	0x2
	.byte	0x2d
	.byte	0x6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x810
	.uleb128 0x1f
	.4byte	.LASF134
	.byte	0x2
	.byte	0x2f
	.byte	0xe
	.4byte	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x24
	.4byte	.LASF136
	.byte	0x2
	.byte	0x16
	.byte	0x6
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x863
	.uleb128 0x25
	.4byte	.LASF137
	.byte	0x2
	.byte	0x16
	.byte	0x17
	.4byte	0x863
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.4byte	.LASF138
	.byte	0x2
	.byte	0x16
	.byte	0x27
	.4byte	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.4byte	.LASF139
	.byte	0x2
	.byte	0x16
	.byte	0x33
	.4byte	0x865
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.4byte	.LASF140
	.byte	0x2
	.byte	0x18
	.byte	0x17
	.4byte	0x878
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x26
	.byte	0x4
	.uleb128 0x1b
	.byte	0x4
	.4byte	0x86b
	.uleb128 0x1b
	.byte	0x4
	.4byte	0x871
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF141
	.uleb128 0x1b
	.byte	0x4
	.4byte	0x6b1
	.uleb128 0x23
	.4byte	.LASF142
	.byte	0x2
	.byte	0x9
	.byte	0x6
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x69e
	.byte	0x1a
	.4byte	0xb1
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8bc
	.uleb128 0x28
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x69e
	.byte	0x32
	.4byte	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x29
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x632
	.byte	0x16
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8f4
	.uleb128 0x28
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x632
	.byte	0x31
	.4byte	0x20c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x28
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x632
	.byte	0x40
	.4byte	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF150
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF43:
	.ascii	"USB_LP_CAN1_RX0_IRQn\000"
.LASF99:
	.ascii	"SystemCoreClock\000"
.LASF100:
	.ascii	"BSRR\000"
.LASF137:
	.ascii	"taskPointer\000"
.LASF45:
	.ascii	"CAN1_SCE_IRQn\000"
.LASF40:
	.ascii	"DMA1_Channel7_IRQn\000"
.LASF57:
	.ascii	"I2C2_ER_IRQn\000"
.LASF103:
	.ascii	"Bit_RESET\000"
.LASF53:
	.ascii	"TIM4_IRQn\000"
.LASF35:
	.ascii	"DMA1_Channel2_IRQn\000"
.LASF118:
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
.LASF112:
	.ascii	"stackPointer\000"
.LASF150:
	.ascii	"__ISB\000"
.LASF63:
	.ascii	"EXTI15_10_IRQn\000"
.LASF122:
	.ascii	"task_id_adder\000"
.LASF135:
	.ascii	"GetSvcNumber\000"
.LASF21:
	.ascii	"PendSV_IRQn\000"
.LASF28:
	.ascii	"RCC_IRQn\000"
.LASF16:
	.ascii	"MemoryManagement_IRQn\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF91:
	.ascii	"MMFR\000"
.LASF67:
	.ascii	"ISER\000"
.LASF47:
	.ascii	"TIM1_BRK_IRQn\000"
.LASF70:
	.ascii	"RSERVED1\000"
.LASF58:
	.ascii	"SPI1_IRQn\000"
.LASF127:
	.ascii	"result\000"
.LASF37:
	.ascii	"DMA1_Channel4_IRQn\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF140:
	.ascii	"process_frame\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF44:
	.ascii	"CAN1_RX1_IRQn\000"
.LASF42:
	.ascii	"USB_HP_CAN1_TX_IRQn\000"
.LASF66:
	.ascii	"IRQn_Type\000"
.LASF120:
	.ascii	"current_task_ID\000"
.LASF113:
	.ascii	"stackPointerAdd\000"
.LASF61:
	.ascii	"USART2_IRQn\000"
.LASF129:
	.ascii	"new_psp\000"
.LASF80:
	.ascii	"CPUID\000"
.LASF136:
	.ascii	"CreateTask\000"
.LASF138:
	.ascii	"argc\000"
.LASF148:
	.ascii	"SysTick_Config\000"
.LASF90:
	.ascii	"AFSR\000"
.LASF107:
	.ascii	"FREE_SLOT\000"
.LASF130:
	.ascii	"SVC_Handler\000"
.LASF142:
	.ascii	"SelectNextTask\000"
.LASF31:
	.ascii	"EXTI2_IRQn\000"
.LASF143:
	.ascii	"ticks\000"
.LASF56:
	.ascii	"I2C2_EV_IRQn\000"
.LASF86:
	.ascii	"HFSR\000"
.LASF141:
	.ascii	"char\000"
.LASF39:
	.ascii	"DMA1_Channel6_IRQn\000"
.LASF83:
	.ascii	"AIRCR\000"
.LASF52:
	.ascii	"TIM3_IRQn\000"
.LASF34:
	.ascii	"DMA1_Channel1_IRQn\000"
.LASF147:
	.ascii	"C:\\Users\\witol\\Documents\\CODE\\arm\\yaos\\nucle"
	.ascii	"o_bare_metal\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF134:
	.ascii	"status\000"
.LASF30:
	.ascii	"EXTI1_IRQn\000"
.LASF145:
	.ascii	"GNU C17 9.3.1 20200408 (release) -mcpu=cortex-m3 -m"
	.ascii	"thumb -mfloat-abi=soft -march=armv7-m -ggdb -O0\000"
.LASF132:
	.ascii	"InitThreads\000"
.LASF65:
	.ascii	"USBWakeUp_IRQn\000"
.LASF9:
	.ascii	"long long int\000"
.LASF23:
	.ascii	"WWDG_IRQn\000"
.LASF84:
	.ascii	"SHCSR\000"
.LASF114:
	.ascii	"stackPointerCleanAdd\000"
.LASF125:
	.ascii	"SysTick_Handler\000"
.LASF85:
	.ascii	"CFSR\000"
.LASF109:
	.ascii	"HALTED\000"
.LASF94:
	.ascii	"CTRL\000"
.LASF17:
	.ascii	"BusFault_IRQn\000"
.LASF110:
	.ascii	"COMPLETED\000"
.LASF106:
	.ascii	"threadState\000"
.LASF124:
	.ascii	"svc_number\000"
.LASF33:
	.ascii	"EXTI4_IRQn\000"
.LASF149:
	.ascii	"NVIC_SetPriority\000"
.LASF24:
	.ascii	"PVD_IRQn\000"
.LASF104:
	.ascii	"Bit_SET\000"
.LASF73:
	.ascii	"ICPR\000"
.LASF123:
	.ascii	"shared_value\000"
.LASF36:
	.ascii	"DMA1_Channel3_IRQn\000"
.LASF108:
	.ascii	"RUNNING\000"
.LASF54:
	.ascii	"I2C1_EV_IRQn\000"
.LASF97:
	.ascii	"SysTick_Type\000"
.LASF139:
	.ascii	"argv\000"
.LASF13:
	.ascii	"uint16_t\000"
.LASF105:
	.ascii	"IRQn\000"
.LASF48:
	.ascii	"TIM1_UP_IRQn\000"
.LASF78:
	.ascii	"STIR\000"
.LASF88:
	.ascii	"MMFAR\000"
.LASF26:
	.ascii	"RTC_IRQn\000"
.LASF68:
	.ascii	"RESERVED0\000"
.LASF72:
	.ascii	"RESERVED2\000"
.LASF74:
	.ascii	"RESERVED3\000"
.LASF76:
	.ascii	"RESERVED4\000"
.LASF77:
	.ascii	"RESERVED5\000"
.LASF117:
	.ascii	"ThreadControlBlock\000"
.LASF2:
	.ascii	"short int\000"
.LASF6:
	.ascii	"long int\000"
.LASF60:
	.ascii	"USART1_IRQn\000"
.LASF98:
	.ascii	"ITM_RxBuffer\000"
.LASF15:
	.ascii	"NonMaskableInt_IRQn\000"
.LASF144:
	.ascii	"priority\000"
.LASF50:
	.ascii	"TIM1_CC_IRQn\000"
.LASF128:
	.ascii	"current_msp\000"
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
.LASF102:
	.ascii	"GPIO_TypeDef\000"
.LASF146:
	.ascii	"src\\kernel.c\000"
.LASF82:
	.ascii	"VTOR\000"
.LASF55:
	.ascii	"I2C1_ER_IRQn\000"
.LASF133:
	.ascii	"RunOS\000"
.LASF22:
	.ascii	"SysTick_IRQn\000"
.LASF126:
	.ascii	"PendSV_Handler\000"
.LASF81:
	.ascii	"ICSR\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF51:
	.ascii	"TIM2_IRQn\000"
.LASF119:
	.ascii	"threads\000"
.LASF111:
	.ascii	"stackPointerClean\000"
.LASF115:
	.ascii	"state\000"
.LASF121:
	.ascii	"next_task_ID\000"
.LASF20:
	.ascii	"DebugMonitor_IRQn\000"
.LASF18:
	.ascii	"UsageFault_IRQn\000"
.LASF131:
	.ascii	"CloseThread\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF116:
	.ascii	"entryPoint\000"
.LASF46:
	.ascii	"EXTI9_5_IRQn\000"
.LASF19:
	.ascii	"SVCall_IRQn\000"
.LASF69:
	.ascii	"ICER\000"
.LASF59:
	.ascii	"SPI2_IRQn\000"
.LASF75:
	.ascii	"IABR\000"
.LASF38:
	.ascii	"DMA1_Channel5_IRQn\000"
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
.LASF62:
	.ascii	"USART3_IRQn\000"
.LASF25:
	.ascii	"TAMPER_IRQn\000"
.LASF101:
	.ascii	"LCKR\000"
.LASF64:
	.ascii	"RTCAlarm_IRQn\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 9-2020-q2-update) 9.3.1 20200408 (release)"
