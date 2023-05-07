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
	.global	print_buffer
	.syntax unified
	.thumb
	.thumb_func
	.type	print_buffer, %function
print_buffer:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r2, #0
	movs	r1, #0
	mov	r0, r3
	bl	oled_pos
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L21
.L24:
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L22
.L23:
	ldr	r3, [r7, #12]
	lsls	r3, r3, #7
	ldr	r2, [r7]
	add	r2, r2, r3
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
.L22:
	ldr	r3, [r7, #8]
	cmp	r3, #83
	ble	.L23
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L21:
	ldr	r3, [r7, #12]
	cmp	r3, #5
	ble	.L24
	nop
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	print_buffer, .-print_buffer
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
	b	.L27
.L28:
	ldr	r1, .L29
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
.L27:
	ldr	r3, [r7, #12]
	cmp	r3, #4
	ble	.L28
	nop
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L30:
	.align	2
.L29:
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
	ldr	r2, .L32
	smull	r1, r2, r2, r3
	asrs	r2, r2, #2
	asrs	r3, r3, #31
	subs	r1, r2, r3
	ldr	r3, .L32
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
	ldr	r3, .L32
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
.L33:
	.align	2
.L32:
	.word	1717986919
	.size	oled_clock, .-oled_clock
	.align	1
	.global	oled_clear_buffer
	.syntax unified
	.thumb
	.thumb_func
	.type	oled_clear_buffer, %function
oled_clear_buffer:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L35
.L38:
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L36
.L37:
	ldr	r3, [r7, #12]
	lsls	r3, r3, #7
	ldr	r2, [r7, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L36:
	ldr	r3, [r7, #8]
	cmp	r3, #127
	ble	.L37
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L35:
	ldr	r3, [r7, #12]
	cmp	r3, #7
	ble	.L38
	nop
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	oled_clear_buffer, .-oled_clear_buffer
	.align	1
	.global	oled_update_buffer
	.syntax unified
	.thumb
	.thumb_func
	.type	oled_update_buffer, %function
oled_update_buffer:
	@ args = 144, pretend = 16, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	add	ip, r7, #32
	stm	ip, {r0, r1, r2, r3}
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #160]
	add	r3, r3, r2
	cmp	r3, #128
	bls	.L40
	movs	r3, #127
	str	r3, [r7, #12]
	b	.L41
.L40:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #160]
	add	r3, r3, r2
	subs	r3, r3, #1
	str	r3, [r7, #12]
.L41:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #164]
	add	r3, r3, r2
	cmp	r3, #8
	bls	.L42
	movs	r3, #7
	str	r3, [r7, #8]
	b	.L43
.L42:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #164]
	add	r3, r3, r2
	subs	r3, r3, #1
	str	r3, [r7, #8]
.L43:
	movs	r3, #0
	str	r3, [r7, #4]
	ldr	r3, [r7, #164]
	str	r3, [r7, #16]
	b	.L44
.L47:
	ldr	r3, [r7, #160]
	str	r3, [r7, #20]
	b	.L45
.L46:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #164]
	subs	r3, r2, r3
	ldr	r2, [r7, #36]
	mul	r2, r3, r2
	ldr	r3, [r7, #20]
	add	r2, r2, r3
	ldr	r3, [r7, #160]
	subs	r3, r2, r3
	str	r3, [r7, #4]
	ldrh	r3, [r7, #168]
	adds	r3, r3, #2
	add	r2, r7, #32
	ldr	r2, [r2, r3, lsl #2]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	ldr	r2, [r7, #16]
	lsls	r2, r2, #7
	ldr	r1, [r7, #172]
	add	r2, r2, r1
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	mov	r2, r1
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L45:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	ble	.L46
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L44:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	ble	.L47
	nop
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	add	sp, sp, #16
	bx	lr
	.size	oled_update_buffer, .-oled_update_buffer
	.align	1
	.global	update_str_buffer
	.syntax unified
	.thumb
	.thumb_func
	.type	update_str_buffer, %function
update_str_buffer:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r2, [r7, #8]
	str	r3, [r7, #4]
	mov	r3, r0	@ movhi
	strh	r3, [r7, #14]	@ movhi
	mov	r3, r1	@ movhi
	strh	r3, [r7, #12]	@ movhi
	ldrsh	r3, [r7, #12]
	str	r3, [r7, #20]
	ldrsh	r3, [r7, #14]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L49
.L58:
	ldr	r3, [r7, #16]
	cmp	r3, #8
	bgt	.L59
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L52
.L57:
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r2, r3, #32
	ldr	r3, [r7, #16]
	lsls	r3, r3, #7
	ldr	r1, [r7, #4]
	add	r1, r1, r3
	ldr	r0, .L62
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	adds	r2, r0, r3
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #20]
	add	r3, r3, r1
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	cmp	r3, #126
	ble	.L53
	ldr	r3, [r7, #16]
	cmp	r3, #7
	bgt	.L60
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
	ldrsh	r3, [r7, #12]
	str	r3, [r7, #20]
	b	.L56
.L53:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L56:
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L52:
	ldr	r3, [r7, #24]
	cmp	r3, #7
	ble	.L57
	b	.L55
.L60:
	nop
.L55:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L49:
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L58
	b	.L61
.L59:
	nop
.L61:
	nop
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L63:
	.align	2
.L62:
	.word	ASCII
	.size	update_str_buffer, .-update_str_buffer
	.ident	"GCC: (Arm GNU Toolchain 12.2.Rel1 (Build arm-12.24)) 12.2.1 20221205"
