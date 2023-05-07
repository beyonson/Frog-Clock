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
	.file	"gpio_drive.c"
	.text
	.align	1
	.global	initGPIO
	.syntax unified
	.thumb
	.thumb_func
	.type	initGPIO, %function
initGPIO:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r7}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r4, r0
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r4
	strb	r3, [r7, #7]
	mov	r3, r0
	strb	r3, [r7, #6]
	mov	r3, r1
	strb	r3, [r7, #5]
	mov	r3, r2
	strb	r3, [r7, #4]
	ldr	r3, .L9
	ldr	r3, [r3, #24]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	adds	r2, r2, #1
	movs	r1, #1
	lsl	r2, r1, r2
	mov	r1, r2
	ldr	r2, .L9
	orrs	r3, r3, r1
	str	r3, [r2, #24]
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L2
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L3
	ldr	r3, .L9+4
	ldr	r3, [r3]
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsls	r2, r2, #2
	movs	r1, #15
	lsl	r2, r1, r2
	mvns	r2, r2
	mov	r1, r2
	ldr	r2, .L9+4
	ands	r3, r3, r1
	str	r3, [r2]
	ldr	r3, .L9+4
	ldr	r3, [r3]
	ldrb	r1, [r7, #5]	@ zero_extendqisi2
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsls	r2, r2, #2
	lsls	r1, r1, r2
	ldrb	r0, [r7, #4]	@ zero_extendqisi2
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsls	r2, r2, #2
	adds	r2, r2, #2
	lsl	r2, r0, r2
	orrs	r2, r2, r1
	mov	r1, r2
	ldr	r2, .L9+4
	orrs	r3, r3, r1
	str	r3, [r2]
	b	.L8
.L3:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L5
	ldr	r3, .L9+8
	ldr	r3, [r3]
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsls	r2, r2, #2
	movs	r1, #15
	lsl	r2, r1, r2
	mvns	r2, r2
	mov	r1, r2
	ldr	r2, .L9+8
	ands	r3, r3, r1
	str	r3, [r2]
	ldr	r3, .L9+8
	ldr	r3, [r3]
	ldrb	r1, [r7, #5]	@ zero_extendqisi2
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsls	r2, r2, #2
	lsls	r1, r1, r2
	ldrb	r0, [r7, #4]	@ zero_extendqisi2
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsls	r2, r2, #2
	adds	r2, r2, #2
	lsl	r2, r0, r2
	orrs	r2, r2, r1
	mov	r1, r2
	ldr	r2, .L9+8
	orrs	r3, r3, r1
	str	r3, [r2]
	b	.L8
.L5:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L8
	ldr	r3, .L9+12
	ldr	r3, [r3]
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsls	r2, r2, #2
	movs	r1, #15
	lsl	r2, r1, r2
	mvns	r2, r2
	mov	r1, r2
	ldr	r2, .L9+12
	ands	r3, r3, r1
	str	r3, [r2]
	ldr	r3, .L9+12
	ldr	r3, [r3]
	ldrb	r1, [r7, #5]	@ zero_extendqisi2
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsls	r2, r2, #2
	lsls	r1, r1, r2
	ldrb	r0, [r7, #4]	@ zero_extendqisi2
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsls	r2, r2, #2
	adds	r2, r2, #2
	lsl	r2, r0, r2
	orrs	r2, r2, r1
	mov	r1, r2
	ldr	r2, .L9+12
	orrs	r3, r3, r1
	str	r3, [r2]
	b	.L8
.L2:
	ldrb	r3, [r7, #6]
	subs	r3, r3, #8
	strb	r3, [r7, #6]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L6
	ldr	r3, .L9+4
	ldr	r3, [r3, #4]
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsls	r2, r2, #2
	movs	r1, #15
	lsl	r2, r1, r2
	mvns	r2, r2
	mov	r1, r2
	ldr	r2, .L9+4
	ands	r3, r3, r1
	str	r3, [r2, #4]
	ldr	r3, .L9+4
	ldr	r3, [r3, #4]
	ldrb	r1, [r7, #5]	@ zero_extendqisi2
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsls	r2, r2, #2
	lsls	r1, r1, r2
	ldrb	r0, [r7, #4]	@ zero_extendqisi2
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsls	r2, r2, #2
	adds	r2, r2, #2
	lsl	r2, r0, r2
	orrs	r2, r2, r1
	mov	r1, r2
	ldr	r2, .L9+4
	orrs	r3, r3, r1
	str	r3, [r2, #4]
	b	.L8
.L6:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L7
	ldr	r3, .L9+8
	ldr	r3, [r3, #4]
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsls	r2, r2, #2
	movs	r1, #15
	lsl	r2, r1, r2
	mvns	r2, r2
	mov	r1, r2
	ldr	r2, .L9+8
	ands	r3, r3, r1
	str	r3, [r2, #4]
	ldr	r3, .L9+8
	ldr	r3, [r3, #4]
	ldrb	r1, [r7, #5]	@ zero_extendqisi2
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsls	r2, r2, #2
	lsls	r1, r1, r2
	ldrb	r0, [r7, #4]	@ zero_extendqisi2
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsls	r2, r2, #2
	adds	r2, r2, #2
	lsl	r2, r0, r2
	orrs	r2, r2, r1
	mov	r1, r2
	ldr	r2, .L9+8
	orrs	r3, r3, r1
	str	r3, [r2, #4]
	b	.L8
.L7:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L8
	ldr	r3, .L9+12
	ldr	r3, [r3, #4]
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsls	r2, r2, #2
	movs	r1, #15
	lsl	r2, r1, r2
	mvns	r2, r2
	mov	r1, r2
	ldr	r2, .L9+12
	ands	r3, r3, r1
	str	r3, [r2, #4]
	ldr	r3, .L9+12
	ldr	r3, [r3, #4]
	ldrb	r1, [r7, #5]	@ zero_extendqisi2
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsls	r2, r2, #2
	lsls	r1, r1, r2
	ldrb	r0, [r7, #4]	@ zero_extendqisi2
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsls	r2, r2, #2
	adds	r2, r2, #2
	lsl	r2, r0, r2
	orrs	r2, r2, r1
	mov	r1, r2
	ldr	r2, .L9+12
	orrs	r3, r3, r1
	str	r3, [r2, #4]
.L8:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r4, r7}
	bx	lr
.L10:
	.align	2
.L9:
	.word	1073876992
	.word	1073809408
	.word	1073810432
	.word	1073811456
	.size	initGPIO, .-initGPIO
	.align	1
	.global	writeGPIO
	.syntax unified
	.thumb
	.thumb_func
	.type	writeGPIO, %function
writeGPIO:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	mov	r3, r1
	strb	r3, [r7, #6]
	mov	r3, r2
	strb	r3, [r7, #5]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L12
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L13
	ldr	r3, .L19
	ldr	r3, [r3, #12]
	ldrb	r1, [r7, #5]	@ zero_extendqisi2
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsl	r2, r1, r2
	mov	r1, r2
	ldr	r2, .L19
	orrs	r3, r3, r1
	str	r3, [r2, #12]
	b	.L18
.L13:
	ldr	r3, .L19
	ldr	r3, [r3, #12]
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r2, r1, r2
	mvns	r2, r2
	mov	r1, r2
	ldr	r2, .L19
	ands	r3, r3, r1
	str	r3, [r2, #12]
	b	.L18
.L12:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L15
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L16
	ldr	r3, .L19+4
	ldr	r3, [r3, #12]
	ldrb	r1, [r7, #5]	@ zero_extendqisi2
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsl	r2, r1, r2
	mov	r1, r2
	ldr	r2, .L19+4
	orrs	r3, r3, r1
	str	r3, [r2, #12]
	b	.L18
.L16:
	ldr	r3, .L19+4
	ldr	r3, [r3, #12]
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r2, r1, r2
	mvns	r2, r2
	mov	r1, r2
	ldr	r2, .L19+4
	ands	r3, r3, r1
	str	r3, [r2, #12]
	b	.L18
.L15:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L18
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L17
	ldr	r3, .L19+8
	ldr	r3, [r3, #12]
	ldrb	r1, [r7, #5]	@ zero_extendqisi2
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsl	r2, r1, r2
	mov	r1, r2
	ldr	r2, .L19+8
	orrs	r3, r3, r1
	str	r3, [r2, #12]
	b	.L18
.L17:
	ldr	r3, .L19+8
	ldr	r3, [r3, #12]
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r2, r1, r2
	mvns	r2, r2
	mov	r1, r2
	ldr	r2, .L19+8
	ands	r3, r3, r1
	str	r3, [r2, #12]
.L18:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L20:
	.align	2
.L19:
	.word	1073809408
	.word	1073810432
	.word	1073811456
	.size	writeGPIO, .-writeGPIO
	.align	1
	.global	readGPIO
	.syntax unified
	.thumb
	.thumb_func
	.type	readGPIO, %function
readGPIO:
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
	bne	.L22
	ldr	r3, .L26
	ldr	r3, [r3, #8]
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r2, r1, r2
	ands	r2, r2, r3
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	lsr	r3, r2, r3
	b	.L21
.L22:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L24
	ldr	r3, .L26+4
	ldr	r3, [r3, #8]
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r2, r1, r2
	ands	r2, r2, r3
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	lsr	r3, r2, r3
	b	.L21
.L24:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L25
	ldr	r3, .L26+8
	ldr	r3, [r3, #8]
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r2, r1, r2
	ands	r2, r2, r3
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	lsr	r3, r2, r3
	b	.L21
.L25:
.L21:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L27:
	.align	2
.L26:
	.word	1073809408
	.word	1073810432
	.word	1073811456
	.size	readGPIO, .-readGPIO
	.align	1
	.global	toggleGPIO
	.syntax unified
	.thumb
	.thumb_func
	.type	toggleGPIO, %function
toggleGPIO:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	mov	r2, r1
	strb	r3, [r7, #7]
	mov	r3, r2
	strb	r3, [r7, #6]
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	readGPIO
	mov	r3, r0
	cmp	r3, #0
	beq	.L29
	ldrb	r1, [r7, #6]	@ zero_extendqisi2
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r2, #0
	mov	r0, r3
	bl	writeGPIO
	b	.L31
.L29:
	ldrb	r1, [r7, #6]	@ zero_extendqisi2
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r2, #1
	mov	r0, r3
	bl	writeGPIO
.L31:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	toggleGPIO, .-toggleGPIO
	.ident	"GCC: (Arm GNU Toolchain 12.2.Rel1 (Build arm-12.24)) 12.2.1 20221205"
