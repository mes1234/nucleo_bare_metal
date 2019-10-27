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
	.file 2 "src/kernel.c"
	.loc 2 11 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 2 12 19
	ldr	r3, .L15
	movs	r2, #1
	str	r2, [r3]
.L14:
	.loc 2 16 40
	ldr	r3, .L15+4
	ldr	r2, [r3]
	ldr	r3, .L15
	ldr	r3, [r3]
	add	r3, r3, r2
	.loc 2 16 22
	ldr	r2, .L15+8
	str	r3, [r2]
	.loc 2 17 26
	ldr	r3, .L15+8
	ldr	r3, [r3]
	.loc 2 17 12
	cmp	r3, #5
	bne	.L13
	.loc 2 19 26
	ldr	r3, .L15+8
	movs	r2, #0
	str	r2, [r3]
	.loc 2 20 27
	ldr	r3, .L15
	movs	r2, #1
	str	r2, [r3]
.L13:
	.loc 2 22 22
	ldr	r3, .L15
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L15
	str	r3, [r2]
	.loc 2 23 35
	ldr	r3, .L15+8
	ldr	r3, [r3]
	ldr	r2, .L15+12
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #8
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 23 5
	cmp	r3, #3
	beq	.L14
	.loc 2 24 1
	nop
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L16:
	.align	2
.L15:
	.word	task_id_adder
	.word	current_task_ID
	.word	next_task_ID
	.word	threads
	.cfi_endproc
.LFE29:
	.size	SelectNextTask, .-SelectNextTask
	.align	1
	.global	ContexSwitch
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	ContexSwitch, %function
ContexSwitch:
.LFB30:
	.loc 2 27 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 2 29 33
	ldr	r3, .L23
	ldr	r3, [r3]
	ldr	r2, .L23+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #8
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 29 8
	cmp	r3, #1
	bne	.L18
	.loc 2 31 9
	.syntax unified
@ 31 "src/kernel.c" 1
	MRS   r0,  psp      
	STMDB r0!, {r4-r11} 
	
@ 0 "" 2
	.thumb
	.syntax unified
.L18:
	.loc 2 36 33
	ldr	r3, .L23
	ldr	r3, [r3]
	ldr	r2, .L23+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #8
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 36 8
	cmp	r3, #1
	bne	.L19
	.loc 2 39 53
	ldr	r3, .L23
	ldr	r3, [r3]
	.loc 2 38 9
	.syntax unified
@ 38 "src/kernel.c" 1
	mrs r2, psp
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r1, .L23+4
	lsls	r3, r3, #4
	add	r3, r3, r1
	str	r2, [r3]
	.loc 2 41 52
	bl	__get_PSP
	mov	r2, r0
	.loc 2 41 33
	ldr	r3, .L23
	ldr	r3, [r3]
	.loc 2 41 52
	mov	r1, r2
	.loc 2 41 50
	ldr	r2, .L23+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r1, [r3]
	.loc 2 42 33
	ldr	r3, .L23
	ldr	r3, [r3]
	.loc 2 42 40
	ldr	r2, .L23+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #8
	movs	r2, #2
	strb	r2, [r3]
	.loc 2 43 25
	ldr	r3, .L23+8
	ldr	r3, [r3]
	ldr	r2, .L23
	str	r3, [r2]
.L19:
	.loc 2 47 33
	ldr	r3, .L23
	ldr	r3, [r3]
	ldr	r2, .L23+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #8
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 47 8
	cmp	r3, #0
	bne	.L20
	.loc 2 49 9
	ldr	r3, .L23
	ldr	r3, [r3]
	ldr	r2, .L23+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r0, r3
	bl	__set_PSP
	.loc 2 50 33
	ldr	r3, .L23
	ldr	r3, [r3]
	.loc 2 50 40
	ldr	r2, .L23+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #8
	movs	r2, #1
	strb	r2, [r3]
.L20:
	.loc 2 54 33
	ldr	r3, .L23
	ldr	r3, [r3]
	ldr	r2, .L23+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #8
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 54 8
	cmp	r3, #2
	bne	.L22
	.loc 2 56 9
	ldr	r3, .L23
	ldr	r3, [r3]
	ldr	r2, .L23+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r0, r3
	bl	__set_PSP
	.loc 2 57 33
	ldr	r3, .L23
	ldr	r3, [r3]
	.loc 2 57 40
	ldr	r2, .L23+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #8
	movs	r2, #1
	strb	r2, [r3]
	.loc 2 58 9
	.syntax unified
@ 58 "src/kernel.c" 1
	LDMIA r0!, {r4-r11}  
	
@ 0 "" 2
	.thumb
	.syntax unified
.L22:
	.loc 2 60 1
	nop
	pop	{r7, pc}
.L24:
	.align	2
.L23:
	.word	current_task_ID
	.word	threads
	.word	next_task_ID
	.cfi_endproc
.LFE30:
	.size	ContexSwitch, .-ContexSwitch
	.align	1
	.global	Sleep
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	Sleep, %function
Sleep:
.LFB31:
	.loc 2 63 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 2 64 5
	.syntax unified
@ 64 "src/kernel.c" 1
	svc #111
@ 0 "" 2
	.loc 2 65 1
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
.LFE31:
	.size	Sleep, .-Sleep
	.align	1
	.global	CreateTask
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	CreateTask, %function
CreateTask:
.LFB32:
	.loc 2 68 1
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
	.loc 2 70 12
	ldr	r3, .L31
	movs	r2, #0
	str	r2, [r3]
	.loc 2 70 5
	b	.L27
.L30:
	.loc 2 72 23
	ldr	r3, .L31
	ldr	r3, [r3]
	ldr	r2, .L31+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #8
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 72 12
	cmp	r3, #3
	bne	.L28
	.loc 2 74 23
	ldr	r3, .L31
	ldr	r3, [r3]
	.loc 2 74 30
	ldr	r2, .L31+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #8
	movs	r2, #0
	strb	r2, [r3]
	.loc 2 75 23
	ldr	r3, .L31
	ldr	r3, [r3]
	.loc 2 75 35
	ldr	r2, .L31+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #12
	ldr	r2, [r7, #4]
	str	r2, [r3]
	.loc 2 76 60
	ldr	r3, .L31
	ldr	r3, [r3]
	ldr	r2, .L31+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r3, [r3]
	.loc 2 76 27
	str	r3, [r7, #12]
	.loc 2 77 31
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3]
	.loc 2 78 31
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #4]
	.loc 2 79 31
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #8]
	.loc 2 80 31
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #12]
	.loc 2 81 32
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #16]
	.loc 2 82 31
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	.loc 2 83 31
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	str	r2, [r3, #20]
	.loc 2 84 32
	ldr	r3, [r7, #12]
	mov	r2, #553648128
	str	r2, [r3, #28]
	.loc 2 85 13
	b	.L29
.L28:
	.loc 2 70 40 discriminator 2
	ldr	r3, .L31
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L31
	str	r3, [r2]
.L27:
	.loc 2 70 19 discriminator 1
	ldr	r3, .L31
	ldr	r3, [r3]
	.loc 2 70 5 discriminator 1
	cmp	r3, #4
	bls	.L30
.L29:
	.loc 2 88 1
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
.L32:
	.align	2
.L31:
	.word	i
	.word	threads
	.cfi_endproc
.LFE32:
	.size	CreateTask, .-CreateTask
	.align	1
	.global	RunOS
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	RunOS, %function
RunOS:
.LFB33:
	.loc 2 91 1
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
	.loc 2 92 23
	ldr	r0, .L34
	bl	SysTick_Config
	str	r0, [r7, #4]
	.loc 2 93 5
	movs	r1, #255
	mvn	r0, #1
	bl	NVIC_SetPriority
	.loc 2 94 21
	ldr	r3, .L34+4
	movs	r2, #0
	str	r2, [r3]
	.loc 2 95 5
	movs	r0, #3
	bl	__set_CONTROL
	.loc 2 96 1
	nop
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L35:
	.align	2
.L34:
	.word	196607
	.word	current_task_ID
	.cfi_endproc
.LFE33:
	.size	RunOS, .-RunOS
	.align	1
	.global	InitThreads
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	InitThreads, %function
InitThreads:
.LFB34:
	.loc 2 99 1
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
	.loc 2 101 28
	bl	__get_MSP
	str	r0, [r7, #4]
	.loc 2 104 12
	ldr	r3, .L39
	movs	r2, #0
	str	r2, [r3]
	.loc 2 104 5
	b	.L37
.L38:
	.loc 2 106 41 discriminator 3
	ldr	r3, .L39
	ldr	r3, [r3]
	adds	r3, r3, #1
	lsls	r3, r3, #12
	.loc 2 106 17 discriminator 3
	ldr	r2, [r7, #4]
	subs	r3, r2, r3
	str	r3, [r7]
	.loc 2 107 19 discriminator 3
	ldr	r3, .L39
	ldr	r3, [r3]
	.loc 2 107 33 discriminator 3
	ldr	r2, .L39+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r7]
	str	r2, [r3]
	.loc 2 108 48 discriminator 3
	ldr	r3, .L39
	ldr	r3, [r3]
	ldr	r2, .L39+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r3]
	.loc 2 108 19 discriminator 3
	ldr	r3, .L39
	ldr	r3, [r3]
	.loc 2 108 48 discriminator 3
	mov	r1, r2
	.loc 2 108 36 discriminator 3
	ldr	r2, .L39+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r1, [r3]
	.loc 2 109 19 discriminator 3
	ldr	r3, .L39
	ldr	r3, [r3]
	.loc 2 109 26 discriminator 3
	ldr	r2, .L39+4
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #8
	movs	r2, #3
	strb	r2, [r3]
	.loc 2 104 40 discriminator 3
	ldr	r3, .L39
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L39
	str	r3, [r2]
.L37:
	.loc 2 104 19 discriminator 1
	ldr	r3, .L39
	ldr	r3, [r3]
	.loc 2 104 5 discriminator 1
	cmp	r3, #4
	bls	.L38
	.loc 2 111 1
	nop
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L40:
	.align	2
.L39:
	.word	i
	.word	threads
	.cfi_endproc
.LFE34:
	.size	InitThreads, .-InitThreads
	.align	1
	.global	PendSV_Handler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	PendSV_Handler, %function
PendSV_Handler:
.LFB35:
	.loc 2 113 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 2 114 5
	bl	SelectNextTask
	.loc 2 115 5
	bl	ContexSwitch
	.loc 2 116 1
	nop
	pop	{r7, pc}
	.cfi_endproc
.LFE35:
	.size	PendSV_Handler, .-PendSV_Handler
	.align	1
	.global	SysTick_Handler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SysTick_Handler, %function
SysTick_Handler:
.LFB36:
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
	.loc 2 121 5
	ldr	r3, .L43
	ldr	r3, [r3, #4]
	ldr	r2, .L43
	orr	r3, r3, #268435456
	str	r3, [r2, #4]
	.loc 2 122 1
	nop
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L44:
	.align	2
.L43:
	.word	-536810240
	.cfi_endproc
.LFE36:
	.size	SysTick_Handler, .-SysTick_Handler
	.align	1
	.global	SVC_Handler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SVC_Handler, %function
SVC_Handler:
.LFB37:
	.loc 2 125 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 2 126 17
	bl	Get_SVC_Number
	mov	r2, r0
	.loc 2 126 15
	ldr	r3, .L46
	str	r2, [r3]
	.loc 2 127 5
	ldr	r3, .L46+4
	ldr	r3, [r3, #4]
	ldr	r2, .L46+4
	orr	r3, r3, #268435456
	str	r3, [r2, #4]
	.loc 2 129 1
	nop
	pop	{r7, pc}
.L47:
	.align	2
.L46:
	.word	svc_number
	.word	-536810240
	.cfi_endproc
.LFE37:
	.size	SVC_Handler, .-SVC_Handler
	.align	1
	.global	Get_SVC_Number
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	Get_SVC_Number, %function
Get_SVC_Number:
.LFB38:
	.loc 2 132 1
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
	.loc 2 133 15
	movs	r3, #0
	str	r3, [r7, #4]
	.loc 2 134 5
	.syntax unified
@ 134 "src/kernel.c" 1
	MRS R0, PSP
	MOV r3, R0
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #4]
	.loc 2 137 28
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	.loc 2 137 32
	ldr	r3, [r3]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 138 1
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
.LFE38:
	.size	Get_SVC_Number, .-Get_SVC_Number
.Letext0:
	.file 3 "/home/witek/CODE/arm/gnu/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/home/witek/CODE/arm/gnu/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "/home/witek/CODE/arm/STM32F10x_StdPeriph_Lib_V3.5.0/Libraries/CMSIS/CM3/DeviceSupport/ST/STM32F10x/stm32f10x.h"
	.file 6 "/home/witek/CODE/arm/STM32F10x_StdPeriph_Lib_V3.5.0/Libraries/CMSIS/CM3/DeviceSupport/ST/STM32F10x/system_stm32f10x.h"
	.file 7 "./inc/kernel.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x801
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF133
	.byte	0xc
	.4byte	.LASF134
	.4byte	.LASF135
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
	.uleb128 0x7
	.4byte	.LASF99
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x7
	.byte	0xe
	.byte	0x6
	.4byte	0x528
	.uleb128 0x19
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
	.byte	0x14
	.byte	0x9
	.4byte	0x566
	.uleb128 0xc
	.4byte	.LASF103
	.byte	0x7
	.byte	0x15
	.byte	0xe
	.4byte	0x99
	.byte	0
	.uleb128 0xc
	.4byte	.LASF104
	.byte	0x7
	.byte	0x16
	.byte	0xf
	.4byte	0x566
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF105
	.byte	0x7
	.byte	0x17
	.byte	0x16
	.4byte	0x4fd
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF106
	.byte	0x7
	.byte	0x18
	.byte	0xf
	.4byte	0x566
	.byte	0xc
	.byte	0
	.uleb128 0x1a
	.byte	0x4
	.4byte	0x99
	.uleb128 0x3
	.4byte	.LASF107
	.byte	0x7
	.byte	0x19
	.byte	0x2
	.4byte	0x528
	.uleb128 0x12
	.byte	0x20
	.byte	0x7
	.byte	0x1d
	.byte	0x9
	.4byte	0x5e4
	.uleb128 0x13
	.ascii	"r0\000"
	.byte	0x7
	.byte	0x1e
	.byte	0xc
	.4byte	0x99
	.byte	0
	.uleb128 0x13
	.ascii	"r1\000"
	.byte	0x7
	.byte	0x1f
	.byte	0xc
	.4byte	0x99
	.byte	0x4
	.uleb128 0x13
	.ascii	"r2\000"
	.byte	0x7
	.byte	0x20
	.byte	0xc
	.4byte	0x99
	.byte	0x8
	.uleb128 0x13
	.ascii	"r3\000"
	.byte	0x7
	.byte	0x21
	.byte	0xc
	.4byte	0x99
	.byte	0xc
	.uleb128 0x13
	.ascii	"r12\000"
	.byte	0x7
	.byte	0x22
	.byte	0xc
	.4byte	0x99
	.byte	0x10
	.uleb128 0x13
	.ascii	"lr\000"
	.byte	0x7
	.byte	0x23
	.byte	0xc
	.4byte	0x99
	.byte	0x14
	.uleb128 0x13
	.ascii	"pc\000"
	.byte	0x7
	.byte	0x24
	.byte	0xc
	.4byte	0x99
	.byte	0x18
	.uleb128 0x13
	.ascii	"psr\000"
	.byte	0x7
	.byte	0x25
	.byte	0xc
	.4byte	0x99
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF108
	.byte	0x7
	.byte	0x26
	.byte	0x3
	.4byte	0x578
	.uleb128 0xf
	.4byte	0x56c
	.4byte	0x600
	.uleb128 0x10
	.4byte	0x81
	.byte	0x4
	.byte	0
	.uleb128 0x18
	.4byte	.LASF109
	.byte	0x7
	.byte	0x28
	.byte	0x1b
	.4byte	0x5f0
	.uleb128 0x1b
	.ascii	"i\000"
	.byte	0x7
	.byte	0x29
	.byte	0xa
	.4byte	0x99
	.uleb128 0x5
	.byte	0x3
	.4byte	i
	.uleb128 0x1c
	.4byte	.LASF110
	.byte	0x7
	.byte	0x2a
	.byte	0xa
	.4byte	0x99
	.uleb128 0x5
	.byte	0x3
	.4byte	current_task_ID
	.uleb128 0x1c
	.4byte	.LASF111
	.byte	0x7
	.byte	0x2b
	.byte	0xa
	.4byte	0x99
	.uleb128 0x5
	.byte	0x3
	.4byte	next_task_ID
	.uleb128 0x1c
	.4byte	.LASF112
	.byte	0x7
	.byte	0x2c
	.byte	0xa
	.4byte	0x99
	.uleb128 0x5
	.byte	0x3
	.4byte	task_id_adder
	.uleb128 0x1c
	.4byte	.LASF113
	.byte	0x7
	.byte	0x2d
	.byte	0xa
	.4byte	0x99
	.uleb128 0x5
	.byte	0x3
	.4byte	shared_value
	.uleb128 0x1c
	.4byte	.LASF114
	.byte	0x7
	.byte	0x2e
	.byte	0xa
	.4byte	0x99
	.uleb128 0x5
	.byte	0x3
	.4byte	svc_number
	.uleb128 0x1d
	.4byte	.LASF123
	.byte	0x2
	.byte	0x83
	.byte	0xa
	.4byte	0x99
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a0
	.uleb128 0x1e
	.4byte	.LASF117
	.byte	0x2
	.byte	0x85
	.byte	0xf
	.4byte	0x566
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF126
	.byte	0x2
	.byte	0x7c
	.byte	0x6
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.4byte	.LASF115
	.byte	0x2
	.byte	0x75
	.byte	0x6
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.4byte	.LASF116
	.byte	0x2
	.byte	0x70
	.byte	0x6
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.4byte	.LASF120
	.byte	0x2
	.byte	0x62
	.byte	0x6
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x70b
	.uleb128 0x1e
	.4byte	.LASF118
	.byte	0x2
	.byte	0x65
	.byte	0xe
	.4byte	0x99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1e
	.4byte	.LASF119
	.byte	0x2
	.byte	0x66
	.byte	0xe
	.4byte	0x99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x22
	.4byte	.LASF121
	.byte	0x2
	.byte	0x5a
	.byte	0x6
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x731
	.uleb128 0x1e
	.4byte	.LASF122
	.byte	0x2
	.byte	0x5c
	.byte	0xe
	.4byte	0x99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x23
	.4byte	.LASF124
	.byte	0x2
	.byte	0x43
	.byte	0x6
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x766
	.uleb128 0x24
	.4byte	.LASF130
	.byte	0x2
	.byte	0x43
	.byte	0x17
	.4byte	0x766
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.4byte	.LASF125
	.byte	0x2
	.byte	0x45
	.byte	0x17
	.4byte	0x768
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x25
	.byte	0x4
	.uleb128 0x1a
	.byte	0x4
	.4byte	0x5e4
	.uleb128 0x26
	.4byte	.LASF127
	.byte	0x2
	.byte	0x3e
	.byte	0x6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.4byte	.LASF128
	.byte	0x2
	.byte	0x1a
	.byte	0x6
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.4byte	.LASF129
	.byte	0x2
	.byte	0xa
	.byte	0x6
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x69e
	.byte	0x1a
	.4byte	0x99
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7d0
	.uleb128 0x28
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x69e
	.byte	0x32
	.4byte	0x99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x29
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x632
	.byte	0x16
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x632
	.byte	0x31
	.4byte	0x1f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x28
	.4byte	.LASF132
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
.LASF130:
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
.LASF108:
	.ascii	"hw_stack_frame_t\000"
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
.LASF127:
	.ascii	"Sleep\000"
.LASF112:
	.ascii	"task_id_adder\000"
.LASF29:
	.ascii	"EXTI2_IRQn\000"
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
.LASF117:
	.ascii	"result\000"
.LASF35:
	.ascii	"DMA1_Channel4_IRQn\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF101:
	.ascii	"HALTED\000"
.LASF125:
	.ascii	"process_frame\000"
.LASF42:
	.ascii	"CAN1_RX1_IRQn\000"
.LASF40:
	.ascii	"USB_HP_CAN1_TX_IRQn\000"
.LASF64:
	.ascii	"IRQn_Type\000"
.LASF110:
	.ascii	"current_task_ID\000"
.LASF104:
	.ascii	"stackPointerAdd\000"
.LASF59:
	.ascii	"USART2_IRQn\000"
.LASF119:
	.ascii	"new_psp\000"
.LASF78:
	.ascii	"CPUID\000"
.LASF133:
	.ascii	"GNU C17 8.3.1 20190703 (release) [gcc-8-branch revi"
	.ascii	"sion 273027] -mcpu=cortex-m3 -mthumb -mfloat-abi=so"
	.ascii	"ft -march=armv7-m -ggdb -O0\000"
.LASF124:
	.ascii	"CreateTask\000"
.LASF136:
	.ascii	"SysTick_Config\000"
.LASF88:
	.ascii	"AFSR\000"
.LASF126:
	.ascii	"SVC_Handler\000"
.LASF129:
	.ascii	"SelectNextTask\000"
.LASF128:
	.ascii	"ContexSwitch\000"
.LASF135:
	.ascii	"/home/witek/CODE/arm/test_gnu\000"
.LASF131:
	.ascii	"ticks\000"
.LASF54:
	.ascii	"I2C2_EV_IRQn\000"
.LASF84:
	.ascii	"HFSR\000"
.LASF37:
	.ascii	"DMA1_Channel6_IRQn\000"
.LASF81:
	.ascii	"AIRCR\000"
.LASF50:
	.ascii	"TIM3_IRQn\000"
.LASF32:
	.ascii	"DMA1_Channel1_IRQn\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF122:
	.ascii	"status\000"
.LASF28:
	.ascii	"EXTI1_IRQn\000"
.LASF120:
	.ascii	"InitThreads\000"
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
.LASF114:
	.ascii	"svc_number\000"
.LASF31:
	.ascii	"EXTI4_IRQn\000"
.LASF137:
	.ascii	"NVIC_SetPriority\000"
.LASF22:
	.ascii	"PVD_IRQn\000"
.LASF71:
	.ascii	"ICPR\000"
.LASF113:
	.ascii	"shared_value\000"
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
.LASF132:
	.ascii	"priority\000"
.LASF48:
	.ascii	"TIM1_CC_IRQn\000"
.LASF118:
	.ascii	"current_msp\000"
.LASF134:
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
.LASF123:
	.ascii	"Get_SVC_Number\000"
.LASF80:
	.ascii	"VTOR\000"
.LASF53:
	.ascii	"I2C1_ER_IRQn\000"
.LASF121:
	.ascii	"RunOS\000"
.LASF20:
	.ascii	"SysTick_IRQn\000"
.LASF116:
	.ascii	"PendSV_Handler\000"
.LASF79:
	.ascii	"ICSR\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF49:
	.ascii	"TIM2_IRQn\000"
.LASF109:
	.ascii	"threads\000"
.LASF105:
	.ascii	"state\000"
.LASF111:
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
.LASF67:
	.ascii	"ICER\000"
.LASF57:
	.ascii	"SPI2_IRQn\000"
.LASF73:
	.ascii	"IABR\000"
.LASF36:
	.ascii	"DMA1_Channel5_IRQn\000"
.LASF0:
	.ascii	"signed char\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF30:
	.ascii	"EXTI3_IRQn\000"
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
