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
	.file	"main.c"
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
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	movs	r3, #0
	movs	r2, #3
	movs	r1, #13
	movs	r0, #3
	bl	initGPIO
	bl	systick_int_start
	movs	r1, #13
	movs	r0, #3
	bl	toggleGPIO
.L2:
	b	.L2
	.size	main, .-main
	.align	1
	.global	delay
	.syntax unified
	.thumb
	.thumb_func
	.type	delay, %function
delay:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L4
.L5:
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L4:
	ldr	r3, [r7, #4]
	ldr	r2, .L6
	cmp	r3, r2
	ble	.L5
	nop
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L7:
	.align	2
.L6:
	.word	299999
	.size	delay, .-delay
	.ident	"GCC: (Arm GNU Toolchain 12.2.Rel1 (Build arm-12.24)) 12.2.1 20221205"
