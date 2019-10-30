	.cpu cortex-m3
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 1
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"kernel.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	1
	.global	CloseThread
	.arch armv7-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	CloseThread, %function
CloseThread:
.LFB32:
	.file 1 "src/kernel.c"
	.loc 1 63 1 view -0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 64 5 view .LVU1
	.syntax unified
@ 64 "src/kernel.c" 1
	svc #0
@ 0 "" 2
	.thumb
	.syntax unified
.L2:
	.loc 1 65 5 discriminator 1 view .LVU2
	.loc 1 67 5 discriminator 1 view .LVU3
	b	.L2
	.cfi_endproc
.LFE32:
	.size	CloseThread, .-CloseThread
	.align	1
	.global	SelectNextTask
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SelectNextTask, %function
SelectNextTask:
.LFB29:
	.loc 1 10 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 11 5 view .LVU5
	.loc 1 15 40 is_stmt 0 view .LVU6
	ldr	r3, .L9
	ldr	r4, [r3]
	movs	r3, #1
	.loc 1 18 26 view .LVU7
	movs	r5, #0
	.loc 1 22 36 view .LVU8
	ldr	r0, .L9+4
.L5:
	.loc 1 13 5 is_stmt 1 view .LVU9
	.loc 1 15 9 view .LVU10
	.loc 1 15 40 is_stmt 0 view .LVU11
	adds	r2, r4, r3
	.loc 1 16 9 is_stmt 1 view .LVU12
	.loc 1 16 12 is_stmt 0 view .LVU13
	cmp	r2, #5
	.loc 1 18 26 view .LVU14
	itt	eq
	moveq	r2, r5
	.loc 1 19 27 view .LVU15
	moveq	r3, #1
	.loc 1 21 9 is_stmt 1 view .LVU16
	.loc 1 21 22 is_stmt 0 view .LVU17
	adds	r3, r3, #1
	.loc 1 22 36 view .LVU18
	add	r1, r0, r2, lsl #4
	.loc 1 22 5 view .LVU19
	ldrb	r1, [r1, #8]	@ zero_extendqisi2
	tst	r1, #251
	beq	.L5
	ldr	r1, .L9+8
	str	r3, [r1]
	ldr	r3, .L9+12
	str	r2, [r3]
	.loc 1 23 1 view .LVU20
	pop	{r4, r5}
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.L10:
	.align	2
.L9:
	.word	current_task_ID
	.word	threads
	.word	task_id_adder
	.word	next_task_ID
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
.LVL0:
.LFB30:
	.loc 1 26 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 26 1 is_stmt 0 view .LVU22
	push	{r4, r5}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 27 5 is_stmt 1 view .LVU23
	.loc 1 28 5 view .LVU24
	.loc 1 28 12 is_stmt 0 view .LVU25
	ldr	r3, .L24
	movs	r2, #0
	str	r2, [r3]
	.loc 1 30 9 is_stmt 1 view .LVU26
	.loc 1 30 24 is_stmt 0 view .LVU27
	ldr	r3, .L24+4
	.loc 1 30 12 view .LVU28
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	tst	r3, #251
	beq	.L22
	.loc 1 28 40 view .LVU29
	movs	r3, #1
	ldr	r2, .L24
	str	r3, [r2]
	ldr	r2, .L24+4
	movs	r4, #0
	mov	r5, r3
.L17:
	.loc 1 30 9 is_stmt 1 view .LVU30
	.loc 1 30 12 is_stmt 0 view .LVU31
	ldrb	r1, [r2, #24]	@ zero_extendqisi2
	tst	r1, #251
	beq	.L23
	.loc 1 28 40 discriminator 2 view .LVU32
	adds	r3, r3, #1
	adds	r2, r2, #16
	mov	r4, r5
	.loc 1 28 5 discriminator 2 view .LVU33
	cmp	r3, #5
	bne	.L17
	ldr	r3, .L24
	movs	r2, #5
	str	r2, [r3]
	.loc 1 46 1 view .LVU34
	b	.L11
.L23:
	cbz	r4, .L12
	ldr	r2, .L24
	str	r3, [r2]
.L12:
	.loc 1 32 13 is_stmt 1 view .LVU35
	.loc 1 32 30 is_stmt 0 view .LVU36
	ldr	r2, .L24+4
	lsls	r3, r3, #4
	adds	r1, r2, r3
	movs	r4, #1
	strb	r4, [r1, #8]
	.loc 1 33 13 is_stmt 1 view .LVU37
	.loc 1 33 35 is_stmt 0 view .LVU38
	str	r0, [r1, #12]
	.loc 1 34 13 is_stmt 1 view .LVU39
	.loc 1 34 27 is_stmt 0 view .LVU40
	ldr	r3, [r2, r3]
.LVL1:
	.loc 1 35 13 is_stmt 1 view .LVU41
	.loc 1 35 31 is_stmt 0 view .LVU42
	movs	r2, #0
	str	r2, [r3]
	.loc 1 36 13 is_stmt 1 view .LVU43
	.loc 1 36 31 is_stmt 0 view .LVU44
	str	r2, [r3, #4]
	.loc 1 37 13 is_stmt 1 view .LVU45
	.loc 1 37 31 is_stmt 0 view .LVU46
	str	r2, [r3, #8]
	.loc 1 38 13 is_stmt 1 view .LVU47
	.loc 1 38 31 is_stmt 0 view .LVU48
	str	r2, [r3, #12]
	.loc 1 39 13 is_stmt 1 view .LVU49
	.loc 1 39 32 is_stmt 0 view .LVU50
	str	r2, [r3, #16]
	.loc 1 40 13 is_stmt 1 view .LVU51
	.loc 1 40 31 is_stmt 0 view .LVU52
	str	r0, [r3, #24]
	.loc 1 41 13 is_stmt 1 view .LVU53
	.loc 1 41 31 is_stmt 0 view .LVU54
	ldr	r2, .L24+8
	str	r2, [r3, #20]
	.loc 1 42 13 is_stmt 1 view .LVU55
	.loc 1 42 32 is_stmt 0 view .LVU56
	mov	r2, #553648128
	str	r2, [r3, #28]
	.loc 1 43 13 is_stmt 1 view .LVU57
.LVL2:
.L11:
	.loc 1 46 1 is_stmt 0 view .LVU58
	pop	{r4, r5}
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.L22:
	.cfi_restore_state
	.loc 1 28 19 view .LVU59
	movs	r3, #0
	b	.L12
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
	.loc 1 49 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 50 5 view .LVU61
.LVL3:
.LBB14:
.LBI14:
	.file 2 "/home/witek/CODE/arm/STM32F10x_StdPeriph_Lib_V3.5.0/Libraries/CMSIS/CM3/CoreSupport/core_cm3.h"
	.loc 2 1694 26 view .LVU62
.LBB15:
	.loc 2 1696 3 view .LVU63
	.loc 2 1698 3 view .LVU64
	.loc 2 1698 18 is_stmt 0 view .LVU65
	ldr	r3, .L28
	ldr	r2, .L28+4
	str	r2, [r3, #4]
	.loc 2 1699 3 is_stmt 1 view .LVU66
.LVL4:
.LBB16:
.LBI16:
	.loc 2 1586 22 view .LVU67
.LBB17:
	.loc 2 1588 3 view .LVU68
	.loc 2 1589 5 view .LVU69
	.loc 2 1589 42 is_stmt 0 view .LVU70
	ldr	r1, .L28+8
	movs	r0, #240
	strb	r0, [r1, #35]
.LVL5:
	.loc 2 1589 42 view .LVU71
.LBE17:
.LBE16:
	.loc 2 1700 3 is_stmt 1 view .LVU72
	.loc 2 1700 18 is_stmt 0 view .LVU73
	movs	r2, #0
	str	r2, [r3, #8]
	.loc 2 1701 3 is_stmt 1 view .LVU74
	.loc 2 1701 18 is_stmt 0 view .LVU75
	movs	r4, #7
	str	r4, [r3]
	.loc 2 1704 3 is_stmt 1 view .LVU76
.LVL6:
	.loc 2 1704 3 is_stmt 0 view .LVU77
.LBE15:
.LBE14:
	.loc 1 51 5 is_stmt 1 view .LVU78
.LBB18:
.LBI18:
	.loc 2 1586 22 view .LVU79
.LBB19:
	.loc 2 1588 3 view .LVU80
	.loc 2 1589 5 view .LVU81
	.loc 2 1589 42 is_stmt 0 view .LVU82
	strb	r0, [r1, #34]
.LVL7:
	.loc 2 1589 42 view .LVU83
.LBE19:
.LBE18:
	.loc 1 52 5 is_stmt 1 view .LVU84
	.loc 1 52 21 is_stmt 0 view .LVU85
	ldr	r3, .L28+12
	str	r2, [r3]
	.loc 1 53 5 is_stmt 1 view .LVU86
	.loc 1 53 49 is_stmt 0 view .LVU87
	ldr	r3, .L28+16
	.loc 1 53 12 view .LVU88
	ldr	r2, [r3, #12]
.LVL8:
	.loc 1 54 5 is_stmt 1 view .LVU89
	ldr	r1, [r3]
	.syntax unified
@ 54 "src/kernel.c" 1
	msr psp, r1 
	
@ 0 "" 2
	.loc 1 54 50 view .LVU90
	.loc 1 55 5 view .LVU91
	.loc 1 55 36 is_stmt 0 view .LVU92
	.thumb
	.syntax unified
	movs	r1, #2
	strb	r1, [r3, #8]
	.loc 1 56 5 is_stmt 1 view .LVU93
	movs	r3, #3
	.syntax unified
@ 56 "src/kernel.c" 1
	MSR control, r3
@ 0 "" 2
	.loc 1 59 5 view .LVU94
	.thumb
	.syntax unified
.LBB20:
.LBI20:
	.loc 2 1214 22 view .LVU95
.LBB21:
	.loc 2 1214 53 view .LVU96
	.syntax unified
@ 1214 "/home/witek/CODE/arm/STM32F10x_StdPeriph_Lib_V3.5.0/Libraries/CMSIS/CM3/CoreSupport/core_cm3.h" 1
	isb
@ 0 "" 2
	.thumb
	.syntax unified
.LBE21:
.LBE20:
	.loc 1 60 5 view .LVU97
	blx	r2
.LVL9:
	.loc 1 61 1 is_stmt 0 view .LVU98
	pop	{r4, pc}
.L29:
	.align	2
.L28:
	.word	-536813552
	.word	367999
	.word	-536810240
	.word	current_task_ID
	.word	threads
	.cfi_endproc
.LFE31:
	.size	RunOS, .-RunOS
	.align	1
	.global	InitThreads
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	InitThreads, %function
InitThreads:
.LFB33:
	.loc 1 71 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 72 5 view .LVU100
	.loc 1 72 28 is_stmt 0 view .LVU101
	bl	__get_MSP
.LVL10:
	.loc 1 73 5 is_stmt 1 view .LVU102
	.loc 1 75 5 view .LVU103
	sub	r2, r0, #4096
	ldr	r3, .L34
	sub	r0, r0, #24576
.LVL11:
	.loc 1 80 26 is_stmt 0 view .LVU104
	movs	r1, #0
.L31:
	.loc 1 77 9 is_stmt 1 discriminator 3 view .LVU105
.LVL12:
	.loc 1 78 9 discriminator 3 view .LVU106
	.loc 1 78 33 is_stmt 0 discriminator 3 view .LVU107
	str	r2, [r3]
	.loc 1 79 9 is_stmt 1 discriminator 3 view .LVU108
	.loc 1 79 36 is_stmt 0 discriminator 3 view .LVU109
	str	r2, [r3, #4]
	.loc 1 80 9 is_stmt 1 discriminator 3 view .LVU110
	.loc 1 80 26 is_stmt 0 discriminator 3 view .LVU111
	strb	r1, [r3, #8]
	sub	r2, r2, #4096
.LVL13:
	.loc 1 80 26 discriminator 3 view .LVU112
	adds	r3, r3, #16
.LVL14:
	.loc 1 75 5 discriminator 3 view .LVU113
	cmp	r2, r0
	bne	.L31
	ldr	r3, .L34+4
.LVL15:
	.loc 1 75 5 discriminator 3 view .LVU114
	movs	r2, #5
.LVL16:
	.loc 1 75 5 discriminator 3 view .LVU115
	str	r2, [r3]
	.loc 1 82 1 view .LVU116
	pop	{r3, pc}
.L35:
	.align	2
.L34:
	.word	threads
	.word	i
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
	.loc 1 84 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 85 5 view .LVU118
	.syntax unified
@ 85 "src/kernel.c" 1
	MRS   r0,  psp      
	STMDB r0!, {r4-r11} 
	
@ 0 "" 2
	.loc 1 85 26 view .LVU119
	.loc 1 87 5 view .LVU120
	.loc 1 87 33 is_stmt 0 view .LVU121
	.thumb
	.syntax unified
	ldr	r3, .L42
	ldr	r2, [r3]
	ldr	r3, .L42+4
	add	r3, r3, r2, lsl #4
	.loc 1 87 8 view .LVU122
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	cmp	r3, #4
	beq	.L37
	.loc 1 89 9 is_stmt 1 view .LVU123
	.syntax unified
@ 89 "src/kernel.c" 1
	mrs r1, psp 
	
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r3, .L42+4
	lsls	r2, r2, #4
	str	r1, [r3, r2]
	.loc 1 89 54 view .LVU124
	.loc 1 90 9 view .LVU125
	.loc 1 90 40 is_stmt 0 view .LVU126
	ldr	r2, .L42
	ldr	r2, [r2]
	add	r3, r3, r2, lsl #4
	movs	r2, #3
	strb	r2, [r3, #8]
.L37:
	.loc 1 92 5 is_stmt 1 view .LVU127
	.loc 1 92 21 is_stmt 0 view .LVU128
	ldr	r3, .L42+8
	ldr	r3, [r3]
	ldr	r2, .L42
	str	r3, [r2]
	.loc 1 94 5 is_stmt 1 view .LVU129
	.loc 1 94 33 is_stmt 0 view .LVU130
	ldr	r2, .L42+4
	add	r2, r2, r3, lsl #4
	ldrb	r2, [r2, #8]	@ zero_extendqisi2
	.loc 1 94 8 view .LVU131
	cmp	r2, #3
	beq	.L40
	.loc 1 103 5 is_stmt 1 view .LVU132
	.loc 1 103 8 is_stmt 0 view .LVU133
	cmp	r2, #1
	beq	.L41
.L36:
	.loc 1 109 1 view .LVU134
	bx	lr
.L40:
	.loc 1 96 9 is_stmt 1 view .LVU135
	ldr	r2, .L42+4
	lsls	r3, r3, #4
	adds	r1, r2, r3
	ldr	r3, [r2, r3]
	.syntax unified
@ 96 "src/kernel.c" 1
	msr psp, r3 
	
@ 0 "" 2
	.loc 1 96 54 view .LVU136
	.loc 1 97 9 view .LVU137
	.loc 1 97 40 is_stmt 0 view .LVU138
	.thumb
	.syntax unified
	movs	r3, #2
	strb	r3, [r1, #8]
	.loc 1 98 9 is_stmt 1 view .LVU139
	.syntax unified
@ 98 "src/kernel.c" 1
	MRS   r0,  psp      
	LDMIA r0!, {r4-r11} 
	
@ 0 "" 2
	.loc 1 98 31 view .LVU140
	.loc 1 99 9 view .LVU141
	.thumb
	.syntax unified
.LBB22:
.LBI22:
	.loc 2 1214 22 view .LVU142
.LBB23:
	.loc 2 1214 53 view .LVU143
	.syntax unified
@ 1214 "/home/witek/CODE/arm/STM32F10x_StdPeriph_Lib_V3.5.0/Libraries/CMSIS/CM3/CoreSupport/core_cm3.h" 1
	isb
@ 0 "" 2
	.thumb
	.syntax unified
.LBE23:
.LBE22:
	.loc 1 100 9 view .LVU144
	bx	lr
.L41:
	.loc 1 105 9 view .LVU145
	ldr	r2, .L42+4
	lsls	r3, r3, #4
	adds	r1, r2, r3
	ldr	r3, [r2, r3]
	.syntax unified
@ 105 "src/kernel.c" 1
	msr psp, r3 
	
@ 0 "" 2
	.loc 1 105 54 view .LVU146
	.loc 1 106 9 view .LVU147
	.loc 1 106 40 is_stmt 0 view .LVU148
	.thumb
	.syntax unified
	movs	r3, #2
	strb	r3, [r1, #8]
	.loc 1 107 9 is_stmt 1 view .LVU149
	b	.L36
.L43:
	.align	2
.L42:
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
	.loc 1 111 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 112 5 view .LVU151
	bl	SelectNextTask
.LVL17:
	.loc 1 113 5 view .LVU152
	ldr	r2, .L46
	ldr	r3, [r2, #4]
	orr	r3, r3, #268435456
	str	r3, [r2, #4]
	.loc 1 113 28 view .LVU153
	.loc 1 114 1 is_stmt 0 view .LVU154
	pop	{r3, pc}
.L47:
	.align	2
.L46:
	.word	-536810240
	.cfi_endproc
.LFE35:
	.size	SysTick_Handler, .-SysTick_Handler
	.align	1
	.global	GetSvcNumber
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	GetSvcNumber, %function
GetSvcNumber:
.LFB37:
	.loc 1 146 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 147 5 view .LVU156
.LVL18:
	.loc 1 148 5 view .LVU157
	.syntax unified
@ 148 "src/kernel.c" 1
	MRS R0, PSP
	MOV r3, R0
@ 0 "" 2
.LVL19:
	.loc 1 151 5 view .LVU158
	.loc 1 151 31 is_stmt 0 view .LVU159
	.thumb
	.syntax unified
	ldr	r3, [r3, #24]
.LVL20:
	.loc 1 152 1 view .LVU160
	ldrb	r0, [r3, #-2]	@ zero_extendqisi2
	bx	lr
	.cfi_endproc
.LFE37:
	.size	GetSvcNumber, .-GetSvcNumber
	.align	1
	.global	SVC_Handler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SVC_Handler, %function
SVC_Handler:
.LFB36:
	.loc 1 117 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 119 5 view .LVU162
	.loc 1 119 18 is_stmt 0 view .LVU163
	bl	GetSvcNumber
.LVL21:
	.loc 1 119 16 view .LVU164
	ldr	r3, .L56
	str	r0, [r3]
	.loc 1 120 5 is_stmt 1 view .LVU165
	cmp	r0, #1
	beq	.L50
	cbz	r0, .L51
	cmp	r0, #109
	beq	.L52
	cmp	r0, #110
	beq	.L53
.L49:
	.loc 1 143 1 is_stmt 0 view .LVU166
	pop	{r3, pc}
.L51:
	.loc 1 124 9 is_stmt 1 view .LVU167
	.loc 1 124 40 is_stmt 0 view .LVU168
	ldr	r3, .L56+4
	ldr	r2, [r3]
	ldr	r3, .L56+8
	add	r3, r3, r2, lsl #4
	movs	r2, #4
	strb	r2, [r3, #8]
	.loc 1 125 9 is_stmt 1 view .LVU169
	bl	SelectNextTask
.LVL22:
	.loc 1 126 9 view .LVU170
	ldr	r2, .L56+12
	ldr	r3, [r2, #4]
	orr	r3, r3, #268435456
	str	r3, [r2, #4]
	.loc 1 126 32 view .LVU171
	.loc 1 127 9 view .LVU172
	b	.L49
.L50:
	.loc 1 130 9 view .LVU173
	bl	SelectNextTask
.LVL23:
	.loc 1 131 9 view .LVU174
	ldr	r2, .L56+12
	ldr	r3, [r2, #4]
	orr	r3, r3, #268435456
	str	r3, [r2, #4]
	.loc 1 131 32 view .LVU175
	.loc 1 132 9 view .LVU176
	b	.L49
.L52:
	.loc 1 135 9 view .LVU177
	movs	r2, #0
	movs	r1, #32
	ldr	r0, .L56+16
	bl	GPIO_WriteBit
.LVL24:
	.loc 1 136 9 view .LVU178
	b	.L49
.L53:
	.loc 1 139 9 view .LVU179
	movs	r2, #1
	movs	r1, #32
	ldr	r0, .L56+16
	bl	GPIO_WriteBit
.LVL25:
	.loc 1 143 1 is_stmt 0 view .LVU180
	b	.L49
.L57:
	.align	2
.L56:
	.word	svc_number
	.word	current_task_ID
	.word	threads
	.word	-536810240
	.word	1073809408
	.cfi_endproc
.LFE36:
	.size	SVC_Handler, .-SVC_Handler
	.comm	svc_number,4,4
	.comm	shared_value,4,4
	.comm	task_id_adder,4,4
	.comm	next_task_ID,4,4
	.comm	current_task_ID,4,4
	.comm	i,4,4
.Letext0:
	.file 3 "/home/witek/CODE/arm/gnu/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/home/witek/CODE/arm/gnu/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "/home/witek/CODE/arm/STM32F10x_StdPeriph_Lib_V3.5.0/Libraries/CMSIS/CM3/DeviceSupport/ST/STM32F10x/stm32f10x.h"
	.file 6 "/home/witek/CODE/arm/STM32F10x_StdPeriph_Lib_V3.5.0/Libraries/CMSIS/CM3/DeviceSupport/ST/STM32F10x/system_stm32f10x.h"
	.file 7 "./inc/kernel.h"
	.file 8 "/home/witek/CODE/arm/STM32F10x_StdPeriph_Lib_V3.5.0/Libraries/STM32F10x_StdPeriph_Driver/inc/stm32f10x_gpio.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xa13
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF141
	.byte	0xc
	.4byte	.LASF142
	.4byte	.LASF143
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
	.byte	0x2
	.byte	0x84
	.byte	0x9
	.4byte	0x2d5
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x2
	.byte	0x86
	.byte	0x11
	.4byte	0x2e5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF68
	.byte	0x2
	.byte	0x87
	.byte	0x11
	.4byte	0x2ea
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0x2
	.byte	0x88
	.byte	0x11
	.4byte	0x2e5
	.byte	0x80
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0x2
	.byte	0x89
	.byte	0x11
	.4byte	0x2ea
	.byte	0xa0
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0x2
	.byte	0x8a
	.byte	0x11
	.4byte	0x2e5
	.2byte	0x100
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0x2
	.byte	0x8b
	.byte	0x11
	.4byte	0x2ea
	.2byte	0x120
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x2
	.byte	0x8c
	.byte	0x11
	.4byte	0x2e5
	.2byte	0x180
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0x2
	.byte	0x8d
	.byte	0x11
	.4byte	0x2ea
	.2byte	0x1a0
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x2
	.byte	0x8e
	.byte	0x11
	.4byte	0x2e5
	.2byte	0x200
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x2
	.byte	0x8f
	.byte	0x11
	.4byte	0x2fa
	.2byte	0x220
	.uleb128 0xe
	.ascii	"IP\000"
	.byte	0x2
	.byte	0x90
	.byte	0x11
	.4byte	0x31a
	.2byte	0x300
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x2
	.byte	0x91
	.byte	0x11
	.4byte	0x31f
	.2byte	0x3f0
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0x2
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
	.byte	0x2
	.byte	0x93
	.byte	0x4
	.4byte	0x219
	.uleb128 0x12
	.byte	0x74
	.byte	0x2
	.byte	0x9b
	.byte	0x9
	.4byte	0x43d
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x2
	.byte	0x9d
	.byte	0x11
	.4byte	0xc2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x2
	.byte	0x9e
	.byte	0x11
	.4byte	0xbd
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x2
	.byte	0x9f
	.byte	0x11
	.4byte	0xbd
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x2
	.byte	0xa0
	.byte	0x11
	.4byte	0xbd
	.byte	0xc
	.uleb128 0x13
	.ascii	"SCR\000"
	.byte	0x2
	.byte	0xa1
	.byte	0x11
	.4byte	0xbd
	.byte	0x10
	.uleb128 0x13
	.ascii	"CCR\000"
	.byte	0x2
	.byte	0xa2
	.byte	0x11
	.4byte	0xbd
	.byte	0x14
	.uleb128 0x13
	.ascii	"SHP\000"
	.byte	0x2
	.byte	0xa3
	.byte	0x11
	.4byte	0x44d
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x2
	.byte	0xa4
	.byte	0x11
	.4byte	0xbd
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x2
	.byte	0xa5
	.byte	0x11
	.4byte	0xbd
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x2
	.byte	0xa6
	.byte	0x11
	.4byte	0xbd
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x2
	.byte	0xa7
	.byte	0x11
	.4byte	0xbd
	.byte	0x30
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x2
	.byte	0xa8
	.byte	0x11
	.4byte	0xbd
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x2
	.byte	0xa9
	.byte	0x11
	.4byte	0xbd
	.byte	0x38
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x2
	.byte	0xaa
	.byte	0x11
	.4byte	0xbd
	.byte	0x3c
	.uleb128 0x13
	.ascii	"PFR\000"
	.byte	0x2
	.byte	0xab
	.byte	0x11
	.4byte	0x467
	.byte	0x40
	.uleb128 0x13
	.ascii	"DFR\000"
	.byte	0x2
	.byte	0xac
	.byte	0x11
	.4byte	0xc2
	.byte	0x48
	.uleb128 0x13
	.ascii	"ADR\000"
	.byte	0x2
	.byte	0xad
	.byte	0x11
	.4byte	0xc2
	.byte	0x4c
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x2
	.byte	0xae
	.byte	0x11
	.4byte	0x481
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x2
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
	.byte	0x2
	.byte	0xb0
	.byte	0x3
	.4byte	0x33c
	.uleb128 0x14
	.byte	0x10
	.byte	0x2
	.2byte	0x16d
	.byte	0x9
	.4byte	0x4ef
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x2
	.2byte	0x16f
	.byte	0x11
	.4byte	0xbd
	.byte	0
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x2
	.2byte	0x170
	.byte	0x11
	.4byte	0xbd
	.byte	0x4
	.uleb128 0x16
	.ascii	"VAL\000"
	.byte	0x2
	.2byte	0x171
	.byte	0x11
	.4byte	0xbd
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x2
	.2byte	0x172
	.byte	0x11
	.4byte	0xc2
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.4byte	.LASF97
	.byte	0x2
	.2byte	0x173
	.byte	0x3
	.4byte	0x4ac
	.uleb128 0x17
	.4byte	.LASF98
	.byte	0x2
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
	.byte	0x1a
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
	.byte	0x10
	.byte	0x7
	.byte	0x22
	.byte	0x9
	.4byte	0x619
	.uleb128 0xc
	.4byte	.LASF111
	.byte	0x7
	.byte	0x24
	.byte	0xc
	.4byte	0xb1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF112
	.byte	0x7
	.byte	0x25
	.byte	0xd
	.4byte	0x619
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF113
	.byte	0x7
	.byte	0x26
	.byte	0x14
	.4byte	0x5aa
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF114
	.byte	0x7
	.byte	0x27
	.byte	0xd
	.4byte	0x619
	.byte	0xc
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x3
	.4byte	.LASF115
	.byte	0x7
	.byte	0x28
	.byte	0x3
	.4byte	0x5db
	.uleb128 0x12
	.byte	0x20
	.byte	0x7
	.byte	0x2b
	.byte	0x9
	.4byte	0x697
	.uleb128 0x13
	.ascii	"r0\000"
	.byte	0x7
	.byte	0x2d
	.byte	0xc
	.4byte	0xb1
	.byte	0
	.uleb128 0x13
	.ascii	"r1\000"
	.byte	0x7
	.byte	0x2e
	.byte	0xc
	.4byte	0xb1
	.byte	0x4
	.uleb128 0x13
	.ascii	"r2\000"
	.byte	0x7
	.byte	0x2f
	.byte	0xc
	.4byte	0xb1
	.byte	0x8
	.uleb128 0x13
	.ascii	"r3\000"
	.byte	0x7
	.byte	0x30
	.byte	0xc
	.4byte	0xb1
	.byte	0xc
	.uleb128 0x13
	.ascii	"r12\000"
	.byte	0x7
	.byte	0x31
	.byte	0xc
	.4byte	0xb1
	.byte	0x10
	.uleb128 0x13
	.ascii	"lr\000"
	.byte	0x7
	.byte	0x32
	.byte	0xc
	.4byte	0xb1
	.byte	0x14
	.uleb128 0x13
	.ascii	"pc\000"
	.byte	0x7
	.byte	0x33
	.byte	0xc
	.4byte	0xb1
	.byte	0x18
	.uleb128 0x13
	.ascii	"psr\000"
	.byte	0x7
	.byte	0x34
	.byte	0xc
	.4byte	0xb1
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF116
	.byte	0x7
	.byte	0x35
	.byte	0x3
	.4byte	0x62b
	.uleb128 0xf
	.4byte	0x61f
	.4byte	0x6b3
	.uleb128 0x10
	.4byte	0x8d
	.byte	0x4
	.byte	0
	.uleb128 0x18
	.4byte	.LASF117
	.byte	0x7
	.byte	0x37
	.byte	0x1b
	.4byte	0x6a3
	.uleb128 0x1c
	.ascii	"i\000"
	.byte	0x7
	.byte	0x38
	.byte	0xa
	.4byte	0xb1
	.uleb128 0x5
	.byte	0x3
	.4byte	i
	.uleb128 0x1d
	.4byte	.LASF118
	.byte	0x7
	.byte	0x39
	.byte	0xa
	.4byte	0xb1
	.uleb128 0x5
	.byte	0x3
	.4byte	current_task_ID
	.uleb128 0x1d
	.4byte	.LASF119
	.byte	0x7
	.byte	0x3a
	.byte	0xa
	.4byte	0xb1
	.uleb128 0x5
	.byte	0x3
	.4byte	next_task_ID
	.uleb128 0x1d
	.4byte	.LASF120
	.byte	0x7
	.byte	0x3b
	.byte	0xa
	.4byte	0xb1
	.uleb128 0x5
	.byte	0x3
	.4byte	task_id_adder
	.uleb128 0x1d
	.4byte	.LASF121
	.byte	0x7
	.byte	0x3c
	.byte	0xa
	.4byte	0xb1
	.uleb128 0x5
	.byte	0x3
	.4byte	shared_value
	.uleb128 0x1d
	.4byte	.LASF122
	.byte	0x7
	.byte	0x3d
	.byte	0xa
	.4byte	0xb1
	.uleb128 0x5
	.byte	0x3
	.4byte	svc_number
	.uleb128 0x1e
	.4byte	.LASF124
	.byte	0x1
	.byte	0x91
	.byte	0xa
	.4byte	0xb1
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x758
	.uleb128 0x1f
	.4byte	.LASF123
	.byte	0x1
	.byte	0x93
	.byte	0xf
	.4byte	0x619
	.4byte	.LLST9
	.4byte	.LVUS9
	.byte	0
	.uleb128 0x20
	.4byte	.LASF127
	.byte	0x1
	.byte	0x74
	.byte	0x6
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ca
	.uleb128 0x21
	.4byte	.LVL21
	.4byte	0x729
	.uleb128 0x21
	.4byte	.LVL22
	.4byte	0x997
	.uleb128 0x21
	.4byte	.LVL23
	.4byte	0x997
	.uleb128 0x22
	.4byte	.LVL24
	.4byte	0x9fc
	.4byte	0x7ab
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0xc
	.4byte	0x40010800
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL25
	.4byte	0x9fc
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0xc
	.4byte	0x40010800
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF125
	.byte	0x1
	.byte	0x6e
	.byte	0x6
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ea
	.uleb128 0x21
	.4byte	.LVL17
	.4byte	0x997
	.byte	0
	.uleb128 0x25
	.4byte	.LASF126
	.byte	0x1
	.byte	0x53
	.byte	0x6
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x816
	.uleb128 0x26
	.4byte	0x9f2
	.4byte	.LBI22
	.byte	.LVU142
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x1
	.byte	0x63
	.byte	0x9
	.byte	0
	.uleb128 0x20
	.4byte	.LASF128
	.byte	0x1
	.byte	0x46
	.byte	0x6
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x85e
	.uleb128 0x1f
	.4byte	.LASF129
	.byte	0x1
	.byte	0x48
	.byte	0xe
	.4byte	0xb1
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x1f
	.4byte	.LASF130
	.byte	0x1
	.byte	0x49
	.byte	0xe
	.4byte	0xb1
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x21
	.4byte	.LVL10
	.4byte	0xa09
	.byte	0
	.uleb128 0x27
	.4byte	.LASF135
	.byte	0x1
	.byte	0x3e
	.byte	0x6
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.4byte	.LASF131
	.byte	0x1
	.byte	0x30
	.byte	0x6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x949
	.uleb128 0x29
	.4byte	.LASF144
	.byte	0x1
	.byte	0x32
	.byte	0xe
	.4byte	0xb1
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF132
	.byte	0x1
	.byte	0x35
	.byte	0xc
	.4byte	0x950
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x2a
	.4byte	0x9a9
	.4byte	.LBI14
	.byte	.LVU62
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x1
	.byte	0x32
	.byte	0x17
	.4byte	0x8ff
	.uleb128 0x2b
	.4byte	0x9bb
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x2c
	.4byte	0x9c9
	.4byte	.LBI16
	.byte	.LVU67
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x2
	.2byte	0x6a3
	.byte	0x3
	.uleb128 0x2b
	.4byte	0x9e4
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x2b
	.4byte	0x9d7
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	0x9c9
	.4byte	.LBI18
	.byte	.LVU79
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.byte	0x33
	.byte	0x5
	.4byte	0x933
	.uleb128 0x2b
	.4byte	0x9e4
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x2b
	.4byte	0x9d7
	.4byte	.LLST6
	.4byte	.LVUS6
	.byte	0
	.uleb128 0x26
	.4byte	0x9f2
	.4byte	.LBI20
	.byte	.LVU95
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.byte	0x3b
	.byte	0x5
	.byte	0
	.uleb128 0x2d
	.4byte	0x950
	.uleb128 0x2e
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.4byte	0x949
	.uleb128 0x25
	.4byte	.LASF133
	.byte	0x1
	.byte	0x19
	.byte	0x6
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x98f
	.uleb128 0x2f
	.4byte	.LASF145
	.byte	0x1
	.byte	0x19
	.byte	0x17
	.4byte	0x98f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1f
	.4byte	.LASF134
	.byte	0x1
	.byte	0x1b
	.byte	0x17
	.4byte	0x991
	.4byte	.LLST0
	.4byte	.LVUS0
	.byte	0
	.uleb128 0x30
	.byte	0x4
	.uleb128 0x1b
	.byte	0x4
	.4byte	0x697
	.uleb128 0x27
	.4byte	.LASF136
	.byte	0x1
	.byte	0x9
	.byte	0x6
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x31
	.4byte	.LASF146
	.byte	0x2
	.2byte	0x69e
	.byte	0x1a
	.4byte	0xb1
	.byte	0x3
	.4byte	0x9c9
	.uleb128 0x32
	.4byte	.LASF137
	.byte	0x2
	.2byte	0x69e
	.byte	0x32
	.4byte	0xb1
	.byte	0
	.uleb128 0x33
	.4byte	.LASF147
	.byte	0x2
	.2byte	0x632
	.byte	0x16
	.byte	0x3
	.4byte	0x9f2
	.uleb128 0x32
	.4byte	.LASF105
	.byte	0x2
	.2byte	0x632
	.byte	0x31
	.4byte	0x20c
	.uleb128 0x32
	.4byte	.LASF138
	.byte	0x2
	.2byte	0x632
	.byte	0x40
	.4byte	0xb1
	.byte	0
	.uleb128 0x34
	.4byte	.LASF148
	.byte	0x2
	.2byte	0x4be
	.byte	0x16
	.byte	0x3
	.uleb128 0x35
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0x8
	.2byte	0x167
	.byte	0x6
	.uleb128 0x35
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0x2
	.2byte	0x4df
	.byte	0x11
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x26
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x29
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS9:
	.uleb128 .LVU157
	.uleb128 .LVU158
	.uleb128 .LVU158
	.uleb128 .LVU160
.LLST9:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU102
	.uleb128 .LVU104
	.uleb128 .LVU104
	.uleb128 0
.LLST7:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE33-.Ltext0
	.2byte	0x5
	.byte	0x70
	.sleb128 24576
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU106
	.uleb128 .LVU112
	.uleb128 .LVU112
	.uleb128 .LVU113
	.uleb128 .LVU113
	.uleb128 .LVU114
	.uleb128 .LVU114
	.uleb128 .LVU115
.LLST8:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 -16
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x4
	.byte	0x72
	.sleb128 4096
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU89
	.uleb128 .LVU98
.LLST1:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU62
	.uleb128 .LVU77
.LLST2:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x59d80
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU67
	.uleb128 .LVU71
.LLST3:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU67
	.uleb128 .LVU71
.LLST4:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU79
	.uleb128 .LVU83
.LLST5:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU79
	.uleb128 .LVU83
.LLST6:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xfe
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 .LVU41
	.uleb128 .LVU58
.LLST0:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
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
.LASF145:
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
.LASF116:
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
.LASF111:
	.ascii	"stackPointer\000"
.LASF148:
	.ascii	"__ISB\000"
.LASF63:
	.ascii	"EXTI15_10_IRQn\000"
.LASF120:
	.ascii	"task_id_adder\000"
.LASF31:
	.ascii	"EXTI2_IRQn\000"
.LASF124:
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
.LASF123:
	.ascii	"result\000"
.LASF37:
	.ascii	"DMA1_Channel4_IRQn\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF134:
	.ascii	"process_frame\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF44:
	.ascii	"CAN1_RX1_IRQn\000"
.LASF42:
	.ascii	"USB_HP_CAN1_TX_IRQn\000"
.LASF66:
	.ascii	"IRQn_Type\000"
.LASF118:
	.ascii	"current_task_ID\000"
.LASF112:
	.ascii	"stackPointerAdd\000"
.LASF61:
	.ascii	"USART2_IRQn\000"
.LASF130:
	.ascii	"new_psp\000"
.LASF80:
	.ascii	"CPUID\000"
.LASF133:
	.ascii	"CreateTask\000"
.LASF146:
	.ascii	"SysTick_Config\000"
.LASF90:
	.ascii	"AFSR\000"
.LASF107:
	.ascii	"FREE_SLOT\000"
.LASF127:
	.ascii	"SVC_Handler\000"
.LASF136:
	.ascii	"SelectNextTask\000"
.LASF143:
	.ascii	"/home/witek/CODE/arm/test_gnu\000"
.LASF137:
	.ascii	"ticks\000"
.LASF56:
	.ascii	"I2C2_EV_IRQn\000"
.LASF86:
	.ascii	"HFSR\000"
.LASF39:
	.ascii	"DMA1_Channel6_IRQn\000"
.LASF83:
	.ascii	"AIRCR\000"
.LASF52:
	.ascii	"TIM3_IRQn\000"
.LASF34:
	.ascii	"DMA1_Channel1_IRQn\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF144:
	.ascii	"status\000"
.LASF30:
	.ascii	"EXTI1_IRQn\000"
.LASF141:
	.ascii	"GNU C17 8.3.1 20190703 (release) [gcc-8-branch revi"
	.ascii	"sion 273027] -mcpu=cortex-m3 -mthumb -mfloat-abi=so"
	.ascii	"ft -march=armv7-m -ggdb -O\000"
.LASF128:
	.ascii	"InitThreads\000"
.LASF65:
	.ascii	"USBWakeUp_IRQn\000"
.LASF9:
	.ascii	"long long int\000"
.LASF23:
	.ascii	"WWDG_IRQn\000"
.LASF84:
	.ascii	"SHCSR\000"
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
.LASF122:
	.ascii	"svc_number\000"
.LASF33:
	.ascii	"EXTI4_IRQn\000"
.LASF147:
	.ascii	"NVIC_SetPriority\000"
.LASF24:
	.ascii	"PVD_IRQn\000"
.LASF104:
	.ascii	"Bit_SET\000"
.LASF73:
	.ascii	"ICPR\000"
.LASF121:
	.ascii	"shared_value\000"
.LASF36:
	.ascii	"DMA1_Channel3_IRQn\000"
.LASF108:
	.ascii	"RUNNING\000"
.LASF132:
	.ascii	"starter\000"
.LASF54:
	.ascii	"I2C1_EV_IRQn\000"
.LASF97:
	.ascii	"SysTick_Type\000"
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
.LASF115:
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
.LASF138:
	.ascii	"priority\000"
.LASF50:
	.ascii	"TIM1_CC_IRQn\000"
.LASF129:
	.ascii	"current_msp\000"
.LASF139:
	.ascii	"GPIO_WriteBit\000"
.LASF142:
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
.LASF102:
	.ascii	"GPIO_TypeDef\000"
.LASF82:
	.ascii	"VTOR\000"
.LASF55:
	.ascii	"I2C1_ER_IRQn\000"
.LASF131:
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
.LASF117:
	.ascii	"threads\000"
.LASF140:
	.ascii	"__get_MSP\000"
.LASF113:
	.ascii	"state\000"
.LASF119:
	.ascii	"next_task_ID\000"
.LASF20:
	.ascii	"DebugMonitor_IRQn\000"
.LASF18:
	.ascii	"UsageFault_IRQn\000"
.LASF135:
	.ascii	"CloseThread\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF114:
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
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 8-2019-q3-update) 8.3.1 20190703 (release) [gcc-8-branch revision 273027]"
