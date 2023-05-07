	.cpu cortex-m3
	.arch armv7-m
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"startup.c"
	.text
	.global	vectors
	.section	.vector_table,"a"
	.align	2
	.type	vectors, %object
	.size	vectors, 64
vectors:
	.word	_stack_ptr
	.word	Reset_Handler
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	SysTick_Handler
	.text
	.align	1
	.global	Reset_Handler
	.syntax unified
	.thumb
	.thumb_func
	.type	Reset_Handler, %function
Reset_Handler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	ldr	r3, .L6
	str	r3, [r7, #4]
	ldr	r3, .L6+4
	str	r3, [r7]
	b	.L2
.L3:
	ldr	r2, [r7, #4]
	adds	r3, r2, #4
	str	r3, [r7, #4]
	ldr	r3, [r7]
	adds	r1, r3, #4
	str	r1, [r7]
	ldr	r2, [r2]
	str	r2, [r3]
.L2:
	ldr	r3, [r7]
	ldr	r2, .L6+8
	cmp	r3, r2
	bcc	.L3
	ldr	r3, .L6+12
	str	r3, [r7]
	b	.L4
.L5:
	ldr	r3, [r7]
	adds	r2, r3, #4
	str	r2, [r7]
	movs	r2, #0
	str	r2, [r3]
.L4:
	ldr	r3, [r7]
	ldr	r2, .L6+16
	cmp	r3, r2
	bcc	.L5
	bl	main
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L7:
	.align	2
.L6:
	.word	_etext
	.word	_data
	.word	_edata
	.word	_bss
	.word	_ebss
	.size	Reset_Handler, .-Reset_Handler
	.align	1
	.global	SysTick_Handler
	.syntax unified
	.thumb
	.thumb_func
	.type	SysTick_Handler, %function
SysTick_Handler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	movs	r1, #13
	movs	r0, #3
	bl	toggleGPIO
	nop
	pop	{r7, pc}
	.size	SysTick_Handler, .-SysTick_Handler
	.ident	"GCC: (Arm GNU Toolchain 12.2.Rel1 (Build arm-12.24)) 12.2.1 20221205"
