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
	.file	"i2c_drive.c"
	.text
	.align	1
	.global	i2c_init
	.syntax unified
	.thumb
	.thumb_func
	.type	i2c_init, %function
i2c_init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	mov	r2, r1
	strb	r3, [r7, #7]
	mov	r3, r2	@ movhi
	strh	r3, [r7, #4]	@ movhi
	ldr	r3, .L5
	ldr	r3, [r3, #24]
	ldr	r2, .L5
	orr	r3, r3, #1
	str	r3, [r2, #24]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L2
	ldr	r3, .L5
	ldr	r3, [r3, #28]
	ldr	r2, .L5
	orr	r3, r3, #2097152
	str	r3, [r2, #28]
	movs	r3, #3
	movs	r2, #3
	movs	r1, #6
	movs	r0, #2
	bl	initGPIO
	movs	r3, #3
	movs	r2, #3
	movs	r1, #7
	movs	r0, #2
	bl	initGPIO
	ldr	r3, .L5+4
	ldr	r3, [r3]
	ldr	r2, .L5+4
	orr	r3, r3, #32768
	str	r3, [r2]
	ldr	r3, .L5+4
	ldr	r3, [r3]
	ldr	r2, .L5+4
	bic	r3, r3, #32768
	str	r3, [r2]
	ldr	r3, .L5+4
	movs	r2, #8
	str	r2, [r3, #4]
	ldr	r2, .L5+4
	ldrh	r3, [r7, #4]
	str	r3, [r2, #28]
	ldr	r3, .L5+4
	movs	r2, #9
	str	r2, [r3, #32]
	ldr	r3, .L5+4
	ldr	r3, [r3]
	ldr	r2, .L5+4
	orr	r3, r3, #1
	str	r3, [r2]
	b	.L4
.L2:
	ldr	r3, .L5
	ldr	r3, [r3, #28]
	ldr	r2, .L5
	orr	r3, r3, #4194304
	str	r3, [r2, #28]
	movs	r3, #3
	movs	r2, #3
	movs	r1, #10
	movs	r0, #2
	bl	initGPIO
	movs	r3, #3
	movs	r2, #3
	movs	r1, #11
	movs	r0, #2
	bl	initGPIO
	ldr	r3, .L5+8
	ldr	r3, [r3]
	ldr	r2, .L5+8
	orr	r3, r3, #32768
	str	r3, [r2]
	ldr	r3, .L5+8
	ldr	r3, [r3]
	ldr	r2, .L5+8
	bic	r3, r3, #32768
	str	r3, [r2]
	ldr	r3, .L5+8
	movs	r2, #8
	str	r2, [r3, #4]
	ldr	r2, .L5+8
	ldrh	r3, [r7, #4]
	str	r3, [r2, #28]
	ldr	r3, .L5+8
	movs	r2, #9
	str	r2, [r3, #32]
	ldr	r3, .L5+8
	ldr	r3, [r3]
	ldr	r2, .L5+8
	orr	r3, r3, #1
	str	r3, [r2]
.L4:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L6:
	.align	2
.L5:
	.word	1073876992
	.word	1073764351
	.word	1073765375
	.size	i2c_init, .-i2c_init
	.align	1
	.global	i2c_add
	.syntax unified
	.thumb
	.thumb_func
	.type	i2c_add, %function
i2c_add:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	mov	r3, r1
	strb	r3, [r7, #6]
	mov	r3, r2
	strb	r3, [r7, #5]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L8
	ldrb	r2, [r7, #6]
	ldrb	r3, [r7, #5]
	orrs	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, .L20
	str	r2, [r3, #16]
	nop
.L9:
	ldr	r3, .L20
	ldr	r3, [r3, #20]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L9
	b	.L10
.L12:
	ldr	r3, .L20
	ldr	r3, [r3, #20]
	str	r3, [r7, #12]
	ldr	r3, .L20
	ldr	r3, [r3, #24]
	str	r3, [r7, #12]
	ldr	r3, .L20
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L17
.L10:
	ldr	r3, .L20
	ldr	r3, [r3, #20]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L12
	b	.L18
.L8:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L18
	ldrb	r2, [r7, #6]
	ldrb	r3, [r7, #5]
	orrs	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, .L20+4
	str	r2, [r3, #16]
	nop
.L14:
	ldr	r3, .L20+4
	ldr	r3, [r3, #20]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L14
	b	.L15
.L16:
	ldr	r3, .L20+4
	ldr	r3, [r3, #20]
	str	r3, [r7, #12]
	ldr	r3, .L20+4
	ldr	r3, [r3, #24]
	str	r3, [r7, #12]
	ldr	r3, .L20+4
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L19
.L15:
	ldr	r3, .L20+4
	ldr	r3, [r3, #20]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L16
	b	.L18
.L17:
	nop
	b	.L18
.L19:
	nop
.L18:
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L21:
	.align	2
.L20:
	.word	1073764351
	.word	1073765375
	.size	i2c_add, .-i2c_add
	.align	1
	.global	i2c_start
	.syntax unified
	.thumb
	.thumb_func
	.type	i2c_start, %function
i2c_start:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L23
	ldr	r3, .L28
	ldr	r3, [r3]
	ldr	r2, .L28
	orr	r3, r3, #256
	str	r3, [r2]
	nop
.L24:
	ldr	r3, .L28
	ldr	r3, [r3, #20]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L24
	b	.L27
.L23:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L27
	ldr	r3, .L28+4
	ldr	r3, [r3]
	ldr	r2, .L28+4
	orr	r3, r3, #256
	str	r3, [r2]
	nop
.L26:
	ldr	r3, .L28+4
	ldr	r3, [r3, #20]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L26
.L27:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L29:
	.align	2
.L28:
	.word	1073764351
	.word	1073765375
	.size	i2c_start, .-i2c_start
	.align	1
	.global	i2c_data
	.syntax unified
	.thumb
	.thumb_func
	.type	i2c_data, %function
i2c_data:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	mov	r2, r1
	strb	r3, [r7, #7]
	mov	r3, r2
	strb	r3, [r7, #6]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L31
	nop
.L32:
	ldr	r3, .L38
	ldr	r3, [r3, #20]
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L32
	ldr	r2, .L38
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	str	r3, [r2, #16]
	nop
.L33:
	ldr	r3, .L38
	ldr	r3, [r3, #20]
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L33
	b	.L37
.L31:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L37
	nop
.L35:
	ldr	r3, .L38+4
	ldr	r3, [r3, #20]
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L35
	ldr	r2, .L38+4
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	str	r3, [r2, #16]
	nop
.L36:
	ldr	r3, .L38+4
	ldr	r3, [r3, #20]
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L36
.L37:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L39:
	.align	2
.L38:
	.word	1073764351
	.word	1073765375
	.size	i2c_data, .-i2c_data
	.align	1
	.global	i2c_stop
	.syntax unified
	.thumb
	.thumb_func
	.type	i2c_stop, %function
i2c_stop:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L41
	ldr	r3, .L44
	ldr	r3, [r3, #20]
	str	r3, [r7, #12]
	ldr	r3, .L44
	ldr	r3, [r3, #24]
	str	r3, [r7, #12]
	ldr	r3, .L44
	ldr	r3, [r3]
	ldr	r2, .L44
	orr	r3, r3, #512
	str	r3, [r2]
	b	.L43
.L41:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L43
	ldr	r3, .L44+4
	ldr	r3, [r3, #20]
	str	r3, [r7, #12]
	ldr	r3, .L44+4
	ldr	r3, [r3, #24]
	str	r3, [r7, #12]
	ldr	r3, .L44+4
	ldr	r3, [r3]
	ldr	r2, .L44+4
	orr	r3, r3, #512
	str	r3, [r2]
.L43:
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L45:
	.align	2
.L44:
	.word	1073764351
	.word	1073765375
	.size	i2c_stop, .-i2c_stop
	.align	1
	.global	i2c_write
	.syntax unified
	.thumb
	.thumb_func
	.type	i2c_write, %function
i2c_write:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	mov	r3, r0
	str	r2, [r7]
	strb	r3, [r7, #7]
	mov	r3, r1
	strb	r3, [r7, #6]
	movs	r3, #0
	str	r3, [r7, #12]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r0, r3
	bl	i2c_start
	ldrb	r1, [r7, #6]	@ zero_extendqisi2
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r2, #0
	mov	r0, r3
	bl	i2c_add
	b	.L47
.L48:
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	add	r3, r3, r2
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	i2c_data
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L47:
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L48
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r0, r3
	bl	i2c_stop
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	i2c_write, .-i2c_write
	.ident	"GCC: (Arm GNU Toolchain 12.2.Rel1 (Build arm-12.24)) 12.2.1 20221205"
