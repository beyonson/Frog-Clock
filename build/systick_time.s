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
	.file	"systick_time.c"
	.text
	.align	1
	.global	__disable_irq
	.syntax unified
	.thumb
	.thumb_func
	.type	__disable_irq, %function
__disable_irq:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L2
	ldr	r3, [r3, #160]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #160]
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L3:
	.align	2
.L2:
	.word	-536813312
	.size	__disable_irq, .-__disable_irq
	.align	1
	.global	__enable_irq
	.syntax unified
	.thumb
	.thumb_func
	.type	__enable_irq, %function
__enable_irq:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L5
	ldr	r3, [r3, #32]
	ldr	r3, .L5
	mov	r2, #-1
	str	r2, [r3, #32]
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L6:
	.align	2
.L5:
	.word	-536813312
	.size	__enable_irq, .-__enable_irq
	.align	1
	.global	systick_init
	.syntax unified
	.thumb
	.thumb_func
	.type	systick_init, %function
systick_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L8
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, .L8
	mvn	r2, #-16777216
	str	r2, [r3, #4]
	ldr	r3, .L8
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, .L8
	movs	r2, #5
	str	r2, [r3]
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L9:
	.align	2
.L8:
	.word	-536813552
	.size	systick_init, .-systick_init
	.align	1
	.global	Delaymicro
	.syntax unified
	.thumb
	.thumb_func
	.type	Delaymicro, %function
Delaymicro:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L12
	movs	r2, #72
	str	r2, [r3, #4]
	ldr	r3, .L12
	movs	r2, #0
	str	r2, [r3, #8]
	nop
.L11:
	ldr	r3, .L12
	ldr	r3, [r3]
	and	r3, r3, #65536
	cmp	r3, #0
	beq	.L11
	nop
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L13:
	.align	2
.L12:
	.word	-536813552
	.size	Delaymicro, .-Delaymicro
	.align	1
	.global	DelayUs
	.syntax unified
	.thumb
	.thumb_func
	.type	DelayUs, %function
DelayUs:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	b	.L15
.L16:
	bl	Delaymicro
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
.L15:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L16
	nop
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	DelayUs, .-DelayUs
	.align	1
	.global	DelayMillis
	.syntax unified
	.thumb
	.thumb_func
	.type	DelayMillis, %function
DelayMillis:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L19
	ldr	r2, .L19+4
	str	r2, [r3, #4]
	ldr	r3, .L19
	movs	r2, #0
	str	r2, [r3, #8]
	nop
.L18:
	ldr	r3, .L19
	ldr	r3, [r3]
	and	r3, r3, #65536
	cmp	r3, #0
	beq	.L18
	nop
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L20:
	.align	2
.L19:
	.word	-536813552
	.word	72000
	.size	DelayMillis, .-DelayMillis
	.align	1
	.global	DelayMs
	.syntax unified
	.thumb
	.thumb_func
	.type	DelayMs, %function
DelayMs:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	b	.L22
.L23:
	bl	DelayMillis
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
.L22:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L23
	nop
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	DelayMs, .-DelayMs
	.align	1
	.global	systick_int_start
	.syntax unified
	.thumb
	.thumb_func
	.type	systick_int_start, %function
systick_int_start:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	bl	__disable_irq
	ldr	r3, .L25
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, .L25
	ldr	r2, .L25+4
	str	r2, [r3, #4]
	ldr	r3, .L25
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, .L25
	ldr	r3, [r3]
	ldr	r2, .L25
	orr	r3, r3, #7
	str	r3, [r2]
	bl	__enable_irq
	nop
	pop	{r7, pc}
.L26:
	.align	2
.L25:
	.word	-536813552
	.word	7199999
	.size	systick_int_start, .-systick_int_start
	.align	1
	.global	systick_int
	.syntax unified
	.thumb
	.thumb_func
	.type	systick_int, %function
systick_int:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.L28
	ldr	r3, [r7, #12]
	adds	r3, r3, #12
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L29
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	movs	r2, #1
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #12]
	adds	r3, r3, #10
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	bl	systick_init
	b	.L34
.L29:
	ldr	r3, [r7, #12]
	adds	r3, r3, #12
	ldrh	r2, [r3]
	subs	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3]	@ movhi
	b	.L34
.L28:
	ldr	r3, [r7, #8]
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.L31
	ldr	r3, [r7, #8]
	adds	r3, r3, #12
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L32
	ldr	r3, [r7, #8]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #8]
	adds	r3, r3, #2
	movs	r2, #1
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #8]
	adds	r3, r3, #10
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	bl	systick_init
	b	.L34
.L32:
	ldr	r3, [r7, #8]
	adds	r3, r3, #12
	ldrh	r2, [r3]
	subs	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3]	@ movhi
	b	.L34
.L31:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.L34
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L33
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	movs	r2, #1
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #4]
	adds	r3, r3, #10
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	bl	systick_init
	b	.L34
.L33:
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	ldrh	r2, [r3]
	subs	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3]	@ movhi
.L34:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	systick_int, .-systick_int
	.ident	"GCC: (Arm GNU Toolchain 12.2.Rel1 (Build arm-12.24)) 12.2.1 20221205"
