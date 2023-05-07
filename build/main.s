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
	.data
	.align	1
	.type	weew_stack_rows, %object
	.size	weew_stack_rows, 2
weew_stack_rows:
	.short	6
	.align	1
	.type	weew_stack_cols, %object
	.size	weew_stack_cols, 2
weew_stack_cols:
	.short	84
	.align	2
	.type	weew_stack, %object
	.size	weew_stack, 504
weew_stack:
	.ascii	"\000\000\374\376\376\377\377\376\376\374\370\000\000"
	.ascii	"\200\200\000\000\000\000\000\200@@\200\200\000\000\000"
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.ascii	"\200\340\360\370\370\374\374\374\374\374\370\360\360"
	.ascii	"\340\340\300\300\200\200\000\000\000\000\000\000\000"
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.ascii	"\000\000\000\000\200\300\301\303\307\377\377\377\307"
	.ascii	"\303\300\302\205\030\035\037\340\200\000\001\002\374"
	.ascii	"\374\006\003\001\000\000\000\370DF|8\000\000\300\360"
	.ascii	"\360\374\202\003\037\377?\017\017\037\177?\017\017\317"
	.ascii	"?\037\017OO\017\037?\376|\020\310\340\364\264\220\360"
	.ascii	"\340\200\000 \340\000\000\300`\300\000\000\000\340\377"
	.ascii	"\377\377\377\377\377\377\377\377\377\377\037\377\177"
	.ascii	"\370\340 ?   ?? ?a\341\201\201\201\200\200\200\200\200"
	.ascii	"\016\017\037\037\177\177|\360\340\360\374\376\370\340"
	.ascii	"\340\370\377\377\370\360\362\346\346\342\022\006\001"
	.ascii	"\000\000\007\014\014\014\014\016\006\000\000\000\003"
	.ascii	"\006\016\003\000\001\007\014\007\001\007\007\377\377"
	.ascii	"\177?\177\377\377\377\377p\007\006\377\377\000\377\377"
	.ascii	"\377\377\377\377\377\000\000\377\010\010\010\030x\340"
	.ascii	"\200\016\021\011\006\000\000\000\000\000\000\001\201"
	.ascii	"\203\203\007\007\207\217\217\217\207\207\003\001\000"
	.ascii	"\300\300\000\000\000\000\000\000\200\200\000\000\000"
	.ascii	"\200\200\000\000\000\200\200\000\000\000\000\000\000"
	.ascii	"\000\377\377\000\000\000\377\377\377\377\000\000\000"
	.ascii	"\007\007\004\005\005\005\375\375\005\005\004\004\007"
	.ascii	"\001\001\377\300\000\000\007\011\011\011\006\000\000"
	.ascii	"\000\000\000\207\217\217\331\371\360\001\003\001\377"
	.ascii	"\377\301\001\300\360~\037\033?\374\360\036\177c\303"
	.ascii	"\301\301\300\000\001\037\377\374?w\343\300\200\000\000"
	.ascii	"\000\000\000\377\177\000\000\000\017\177\377\177\000"
	.ascii	"\000xNG?\001\001\001\007o\210\220`\000\000\000\000\003"
	.ascii	"?dDl8\000\000\000\000\000\000\000\000\000\001\001\001"
	.ascii	"\001\000\000\000\000\000\001\000\000\000\000\000\000"
	.ascii	"\000\000\001\001\000\000\000\000\000\000\000\000\000"
	.ascii	"\000\001\001\000\000\000\001\001\000\000\000"
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
	.global	oled_buffer
	.bss
	.align	2
	.type	oled_buffer, %object
	.size	oled_buffer, 1024
oled_buffer:
	.space	1024
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #264
	add	r7, sp, #128
	bl	systick_init
	movs	r0, #2
	bl	oled_init
	movs	r0, #2
	bl	oled_blank
	movs	r0, #200
	bl	DelayMs
	mov	r3, r7
	movs	r2, #136
	movs	r1, #0
	mov	r0, r3
	bl	memset
	ldr	r3, .L3
	ldrh	r3, [r3]
	str	r3, [r7]
	ldr	r3, .L3+4
	ldrh	r3, [r3]
	str	r3, [r7, #4]
	ldr	r3, .L3+8
	str	r3, [r7, #8]
	ldr	r0, .L3+12
	bl	oled_clear_buffer
	ldr	r3, .L3+12
	str	r3, [sp, #124]
	movs	r3, #0
	str	r3, [sp, #120]
	mov	r0, sp
	add	r3, r7, #16
	movs	r2, #120
	mov	r1, r3
	bl	memcpy
	mov	r3, r7
	ldm	r3, {r0, r1, r2, r3}
	bl	oled_update_buffer
	movs	r1, #13
	movs	r0, #3
	bl	toggleGPIO
.L2:
	b	.L2
.L4:
	.align	2
.L3:
	.word	weew_stack_rows
	.word	weew_stack_cols
	.word	weew_stack
	.word	oled_buffer
	.size	main, .-main
	.ident	"GCC: (Arm GNU Toolchain 12.2.Rel1 (Build arm-12.24)) 12.2.1 20221205"
