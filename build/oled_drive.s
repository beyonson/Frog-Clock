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
	.file	"oled_drive.c"
	.text
	.section	.rodata
	.align	2
	.type	ASCII, %object
	.size	ASCII, 480
ASCII:
	.ascii	"\000\000\000\000\000"
	.ascii	"\000\000_\000\000"
	.ascii	"\000\007\000\007\000"
	.ascii	"\024\177\024\177\024"
	.ascii	"$*\177*\022"
	.ascii	"#\023\010db"
	.ascii	"6IU\"P"
	.ascii	"\000\005\003\000\000"
	.ascii	"\000\034\"A\000"
	.ascii	"\000A\"\034\000"
	.ascii	"\024\010>\010\024"
	.ascii	"\010\010>\010\010"
	.ascii	"\000P0\000\000"
	.ascii	"\010\010\010\010\010"
	.ascii	"\000``\000\000"
	.ascii	" \020\010\004\002"
	.ascii	">QIE>"
	.ascii	"\000B\177@\000"
	.ascii	"BaQIF"
	.ascii	"!AEK1"
	.ascii	"\030\024\022\177\020"
	.ascii	"'EEE9"
	.ascii	"<JII0"
	.ascii	"\001q\011\005\003"
	.ascii	"6III6"
	.ascii	"\006II)\036"
	.ascii	"\00066\000\000"
	.ascii	"\000V6\000\000"
	.ascii	"\010\024\"A\000"
	.ascii	"\024\024\024\024\024"
	.ascii	"\000A\"\024\010"
	.ascii	"\002\001Q\011\006"
	.ascii	"2IyA>"
	.ascii	"~\021\021\021~"
	.ascii	"\177III6"
	.ascii	">AAA\""
	.ascii	"\177AA\"\034"
	.ascii	"\177IIIA"
	.ascii	"\177\011\011\011\001"
	.ascii	">AIIz"
	.ascii	"\177\010\010\010\177"
	.ascii	"\000A\177A\000"
	.ascii	" @A?\001"
	.ascii	"\177\010\024\"A"
	.ascii	"\177@@@@"
	.ascii	"\177\002\014\002\177"
	.ascii	"\177\004\010\020\177"
	.ascii	">AAA>"
	.ascii	"\177\011\011\011\006"
	.ascii	">AQ!^"
	.ascii	"\177\011\031)F"
	.ascii	"FIII1"
	.ascii	"\001\001\177\001\001"
	.ascii	"?@@@?"
	.ascii	"\037 @ \037"
	.ascii	"?@8@?"
	.ascii	"c\024\010\024c"
	.ascii	"\007\010p\010\007"
	.ascii	"aQIEC"
	.ascii	"\000\177AA\000"
	.ascii	"\002\004\010\020 "
	.ascii	"\000AA\177\000"
	.ascii	"\004\002\001\002\004"
	.ascii	"@@@@@"
	.ascii	"\000\001\002\004\000"
	.ascii	" TTTx"
	.ascii	"\177HDD8"
	.ascii	"8DDD "
	.ascii	"8DDH\177"
	.ascii	"8TTT\030"
	.ascii	"\010~\011\001\002"
	.ascii	"\014RRR>"
	.ascii	"\177\010\004\004x"
	.ascii	"\000D}@\000"
	.ascii	" @D=\000"
	.ascii	"\177\020(D\000"
	.ascii	"\000A\177@\000"
	.ascii	"|\004\030\004x"
	.ascii	"|\010\004\004x"
	.ascii	"8DDD8"
	.ascii	"|\024\024\024\010"
	.ascii	"\010\024\024\030|"
	.ascii	"|\010\004\004\010"
	.ascii	"HTTT "
	.ascii	"\004?D@ "
	.ascii	"<@@ |"
	.ascii	"\034 @ \034"
	.ascii	"<@0@<"
	.ascii	"D(\020(D"
	.ascii	"\014PPP<"
	.ascii	"DdTLD"
	.ascii	"\000\0106A\000"
	.ascii	"\000\000\177\000\000"
	.ascii	"\000A6\010\000"
	.ascii	"\020\010\010\020\010"
	.ascii	"xFAFx"
	.text
	.align	1
	.global	oled_cmd_1byte
	.syntax unified
	.thumb
	.thumb_func
	.type	oled_cmd_1byte, %function
oled_cmd_1byte:
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
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r0, r3
	bl	i2c_start
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r2, #0
	movs	r1, #120
	mov	r0, r3
	bl	i2c_add
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r1, #0
	mov	r0, r3
	bl	i2c_data
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	i2c_data
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r0, r3
	bl	i2c_stop
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	oled_cmd_1byte, .-oled_cmd_1byte
	.align	1
	.global	oled_cmd_2byte
	.syntax unified
	.thumb
	.thumb_func
	.type	oled_cmd_2byte, %function
oled_cmd_2byte:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r0, r3
	bl	i2c_start
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r2, #0
	movs	r1, #120
	mov	r0, r3
	bl	i2c_add
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r1, #0
	mov	r0, r3
	bl	i2c_data
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L3
.L4:
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
.L3:
	ldr	r3, [r7, #12]
	cmp	r3, #1
	ble	.L4
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r0, r3
	bl	i2c_stop
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	oled_cmd_2byte, .-oled_cmd_2byte
	.align	1
	.global	oled_init
	.syntax unified
	.thumb
	.thumb_func
	.type	oled_init, %function
oled_init:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r1, #45
	mov	r0, r3
	bl	i2c_init
	movw	r3, #16296
	strh	r3, [r7, #36]	@ movhi
	add	r2, r7, #36
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	oled_cmd_2byte
	movs	r3, #211
	strh	r3, [r7, #32]	@ movhi
	add	r2, r7, #32
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	oled_cmd_2byte
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r1, #64
	mov	r0, r3
	bl	oled_cmd_1byte
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r1, #161
	mov	r0, r3
	bl	oled_cmd_1byte
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r1, #200
	mov	r0, r3
	bl	oled_cmd_1byte
	movw	r3, #4826
	strh	r3, [r7, #28]	@ movhi
	add	r2, r7, #28
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	oled_cmd_2byte
	movw	r3, #32641
	strh	r3, [r7, #24]	@ movhi
	add	r2, r7, #24
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	oled_cmd_2byte
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r1, #164
	mov	r0, r3
	bl	oled_cmd_1byte
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r1, #166
	mov	r0, r3
	bl	oled_cmd_1byte
	movw	r3, #32981
	strh	r3, [r7, #20]	@ movhi
	add	r2, r7, #20
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	oled_cmd_2byte
	movw	r3, #5261
	strh	r3, [r7, #16]	@ movhi
	add	r2, r7, #16
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	oled_cmd_2byte
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r1, #175
	mov	r0, r3
	bl	oled_cmd_1byte
	mov	r3, #4128
	strh	r3, [r7, #12]	@ movhi
	add	r2, r7, #12
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	oled_cmd_2byte
	nop
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	oled_init, .-oled_init
	.align	1
	.global	oled_data
	.syntax unified
	.thumb
	.thumb_func
	.type	oled_data, %function
oled_data:
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
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r0, r3
	bl	i2c_start
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r2, #0
	movs	r1, #120
	mov	r0, r3
	bl	i2c_add
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r1, #64
	mov	r0, r3
	bl	i2c_data
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	i2c_data
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r0, r3
	bl	i2c_stop
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	oled_data, .-oled_data
	.align	1
	.global	oled_pos
	.syntax unified
	.thumb
	.thumb_func
	.type	oled_pos, %function
oled_pos:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	mov	r3, r1
	strb	r3, [r7, #6]
	mov	r3, r2
	strb	r3, [r7, #5]
	ldrb	r3, [r7, #5]
	and	r3, r3, #15
	uxtb	r2, r3
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	oled_cmd_1byte
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	lsrs	r3, r3, #4
	uxtb	r3, r3
	adds	r3, r3, #16
	uxtb	r2, r3
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	oled_cmd_1byte
	ldrb	r3, [r7, #6]
	subs	r3, r3, #80
	uxtb	r2, r3
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	oled_cmd_1byte
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	oled_pos, .-oled_pos
	.align	1
	.global	oled_blank
	.syntax unified
	.thumb
	.thumb_func
	.type	oled_blank, %function
oled_blank:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r2, #0
	movs	r1, #0
	mov	r0, r3
	bl	oled_pos
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L9
.L12:
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L10
.L11:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r1, #0
	mov	r0, r3
	bl	oled_data
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L10:
	ldr	r3, [r7, #8]
	cmp	r3, #127
	ble	.L11
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L9:
	ldr	r3, [r7, #12]
	cmp	r3, #7
	ble	.L12
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r2, #0
	movs	r1, #0
	mov	r0, r3
	bl	oled_pos
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	oled_blank, .-oled_blank
	.align	1
	.global	oled_print
	.syntax unified
	.thumb
	.thumb_func
	.type	oled_print, %function
oled_print:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L14
.L17:
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L15
.L16:
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r2, r3, #32
	ldr	r1, .L18
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	adds	r2, r1, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	oled_data
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L15:
	ldr	r3, [r7, #8]
	cmp	r3, #4
	ble	.L16
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L14:
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L17
	nop
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L19:
	.align	2
.L18:
	.word	ASCII
	.size	oled_print, .-oled_print
	.align	1
	.global	oled_msg
	.syntax unified
	.thumb
	.thumb_func
	.type	oled_msg, %function
oled_msg:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r3, [r7]
	mov	r3, r0
	strb	r3, [r7, #7]
	mov	r3, r1
	strb	r3, [r7, #6]
	mov	r3, r2
	strb	r3, [r7, #5]
	ldrb	r2, [r7, #5]	@ zero_extendqisi2
	ldrb	r1, [r7, #6]	@ zero_extendqisi2
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r0, r3
	bl	oled_pos
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	ldr	r1, [r7]
	mov	r0, r3
	bl	oled_print
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	oled_msg, .-oled_msg
	.align	1
	.global	oled_Aprint
	.syntax unified
	.thumb
	.thumb_func
	.type	oled_Aprint, %function
oled_Aprint:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L22
.L23:
	ldr	r1, .L24
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	adds	r2, r1, r3
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	oled_data
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L22:
	ldr	r3, [r7, #12]
	cmp	r3, #4
	ble	.L23
	nop
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L25:
	.align	2
.L24:
	.word	ASCII
	.size	oled_Aprint, .-oled_Aprint
	.align	1
	.global	oled_clock
	.syntax unified
	.thumb
	.thumb_func
	.type	oled_clock, %function
oled_clock:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	ldr	r3, [r7]
	ldr	r2, .L27
	smull	r1, r2, r2, r3
	asrs	r2, r2, #2
	asrs	r3, r3, #31
	subs	r1, r2, r3
	ldr	r3, .L27
	smull	r2, r3, r3, r1
	asrs	r2, r3, #2
	asrs	r3, r1, #31
	subs	r2, r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	subs	r2, r1, r3
	adds	r2, r2, #16
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	oled_Aprint
	ldr	r1, [r7]
	ldr	r3, .L27
	smull	r2, r3, r3, r1
	asrs	r2, r3, #2
	asrs	r3, r1, #31
	subs	r2, r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	subs	r2, r1, r3
	adds	r2, r2, #16
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	oled_Aprint
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L28:
	.align	2
.L27:
	.word	1717986919
	.size	oled_clock, .-oled_clock
	.ident	"GCC: (Arm GNU Toolchain 12.2.Rel1 (Build arm-12.24)) 12.2.1 20221205"
