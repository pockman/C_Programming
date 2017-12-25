	.text
Ltext0:
	.cstring
lC0:
	.ascii "%d\12\0"
	.text
	.globl _two
_two:
LFB1:
LM1:
	pushq	%rbp
LCFI0:
	movq	%rsp, %rbp
LCFI1:
LM2:
	movl	$2, %esi
	leaq	lC0(%rip), %rdi
	movl	$0, %eax
	call	_printf
LM3:
	movl	$2, %eax
LM4:
	popq	%rbp
LCFI2:
	ret
LFE1:
	.globl _three
_three:
LFB2:
LM5:
	pushq	%rbp
LCFI3:
	movq	%rsp, %rbp
LCFI4:
LM6:
	movl	$3, %esi
	leaq	lC0(%rip), %rdi
	movl	$0, %eax
	call	_printf
LM7:
	movl	$3, %eax
LM8:
	popq	%rbp
LCFI5:
	ret
LFE2:
	.globl _four
_four:
LFB3:
LM9:
	pushq	%rbp
LCFI6:
	movq	%rsp, %rbp
LCFI7:
LM10:
	movl	$4, %esi
	leaq	lC0(%rip), %rdi
	movl	$0, %eax
	call	_printf
LM11:
	movl	$4, %eax
LM12:
	popq	%rbp
LCFI8:
	ret
LFE3:
	.globl _main
_main:
LFB4:
LM13:
	pushq	%rbp
LCFI9:
	movq	%rsp, %rbp
LCFI10:
	pushq	%rbx
	subq	$24, %rsp
LCFI11:
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
LM14:
	movl	$0, %eax
	call	_two
	movl	%eax, %ebx
	movl	$0, %eax
	call	_three
	imull	%eax, %ebx
	movl	$0, %eax
	call	_four
	imull	%ebx, %eax
LM15:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
LCFI12:
	ret
LFE4:
	.section __DWARF,__debug_frame,regular,debug
Lsection__debug_frame:
Lframe0:
	.set L$set$0,LECIE0-LSCIE0
	.long L$set$0
LSCIE0:
	.long	0xffffffff
	.byte	0x1
	.ascii "\0"
	.byte	0x1
	.byte	0x78
	.byte	0x10
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x90
	.byte	0x1
	.align 3
LECIE0:
LSFDE0:
	.set L$set$1,LEFDE0-LASFDE0
	.long L$set$1
LASFDE0:
	.set L$set$2,Lframe0-Lsection__debug_frame
	.long L$set$2
	.quad	LFB1
	.set L$set$3,LFE1-LFB1
	.quad L$set$3
	.byte	0x4
	.set L$set$4,LCFI0-LFB1
	.long L$set$4
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$5,LCFI1-LCFI0
	.long L$set$5
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$6,LCFI2-LCFI1
	.long L$set$6
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE0:
LSFDE2:
	.set L$set$7,LEFDE2-LASFDE2
	.long L$set$7
LASFDE2:
	.set L$set$8,Lframe0-Lsection__debug_frame
	.long L$set$8
	.quad	LFB2
	.set L$set$9,LFE2-LFB2
	.quad L$set$9
	.byte	0x4
	.set L$set$10,LCFI3-LFB2
	.long L$set$10
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$11,LCFI4-LCFI3
	.long L$set$11
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$12,LCFI5-LCFI4
	.long L$set$12
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE2:
LSFDE4:
	.set L$set$13,LEFDE4-LASFDE4
	.long L$set$13
LASFDE4:
	.set L$set$14,Lframe0-Lsection__debug_frame
	.long L$set$14
	.quad	LFB3
	.set L$set$15,LFE3-LFB3
	.quad L$set$15
	.byte	0x4
	.set L$set$16,LCFI6-LFB3
	.long L$set$16
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$17,LCFI7-LCFI6
	.long L$set$17
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$18,LCFI8-LCFI7
	.long L$set$18
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE4:
LSFDE6:
	.set L$set$19,LEFDE6-LASFDE6
	.long L$set$19
LASFDE6:
	.set L$set$20,Lframe0-Lsection__debug_frame
	.long L$set$20
	.quad	LFB4
	.set L$set$21,LFE4-LFB4
	.quad L$set$21
	.byte	0x4
	.set L$set$22,LCFI9-LFB4
	.long L$set$22
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$23,LCFI10-LCFI9
	.long L$set$23
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$24,LCFI11-LCFI10
	.long L$set$24
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$25,LCFI12-LCFI11
	.long L$set$25
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE6:
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$26,LECIE1-LSCIE1
	.long L$set$26
LSCIE1:
	.long	0
	.byte	0x1
	.ascii "zR\0"
	.byte	0x1
	.byte	0x78
	.byte	0x10
	.byte	0x1
	.byte	0x10
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x90
	.byte	0x1
	.align 3
LECIE1:
LSFDE9:
	.set L$set$27,LEFDE9-LASFDE9
	.long L$set$27
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB1-.
	.set L$set$28,LFE1-LFB1
	.quad L$set$28
	.byte	0
	.byte	0x4
	.set L$set$29,LCFI0-LFB1
	.long L$set$29
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$30,LCFI1-LCFI0
	.long L$set$30
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$31,LCFI2-LCFI1
	.long L$set$31
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE9:
LSFDE11:
	.set L$set$32,LEFDE11-LASFDE11
	.long L$set$32
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB2-.
	.set L$set$33,LFE2-LFB2
	.quad L$set$33
	.byte	0
	.byte	0x4
	.set L$set$34,LCFI3-LFB2
	.long L$set$34
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$35,LCFI4-LCFI3
	.long L$set$35
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$36,LCFI5-LCFI4
	.long L$set$36
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE11:
LSFDE13:
	.set L$set$37,LEFDE13-LASFDE13
	.long L$set$37
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB3-.
	.set L$set$38,LFE3-LFB3
	.quad L$set$38
	.byte	0
	.byte	0x4
	.set L$set$39,LCFI6-LFB3
	.long L$set$39
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$40,LCFI7-LCFI6
	.long L$set$40
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$41,LCFI8-LCFI7
	.long L$set$41
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE13:
LSFDE15:
	.set L$set$42,LEFDE15-LASFDE15
	.long L$set$42
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB4-.
	.set L$set$43,LFE4-LFB4
	.quad L$set$43
	.byte	0
	.byte	0x4
	.set L$set$44,LCFI9-LFB4
	.long L$set$44
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$45,LCFI10-LCFI9
	.long L$set$45
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$46,LCFI11-LCFI10
	.long L$set$46
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$47,LCFI12-LCFI11
	.long L$set$47
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE15:
	.text
Letext0:
	.section __DWARF,__debug_info,regular,debug
Lsection__debug_info:
Ldebug_info0:
	.long	0x518
	.word	0x2
	.set L$set$48,Ldebug_abbrev0-Lsection__debug_abbrev
	.long L$set$48
	.byte	0x8
	.byte	0x1
	.ascii "GNU C11 6.3.0 -fPIC -feliminate-unused-debug-symbols -mmacosx-version-min=10.11.6 -mtune=core2 -g\0"
	.byte	0x1
	.ascii "234.c\0"
	.ascii "/Users/huiw/Programming/C/examples/234\0"
	.quad	Ltext0
	.quad	Letext0
	.set L$set$49,Ldebug_line0-Lsection__debug_line
	.long L$set$49
	.byte	0x1
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.byte	0x3
	.long	0xf4
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.byte	0x4
	.ascii "__int64_t\0"
	.byte	0x2
	.byte	0x2e
	.long	0x121
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.ascii "long int\0"
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.ascii "sizetype\0"
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.byte	0x3
	.long	0x164
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.ascii "long unsigned int\0"
	.byte	0x5
	.byte	0x8
	.byte	0x4
	.ascii "__darwin_off_t\0"
	.byte	0x3
	.byte	0x47
	.long	0x110
	.byte	0x4
	.ascii "fpos_t\0"
	.byte	0x4
	.byte	0x4d
	.long	0x188
	.byte	0x6
	.ascii "__sbuf\0"
	.byte	0x10
	.byte	0x4
	.byte	0x58
	.long	0x1dc
	.byte	0x7
	.ascii "_base\0"
	.byte	0x4
	.byte	0x59
	.long	0x1dc
	.byte	0x2
	.byte	0x23
	.byte	0
	.byte	0x7
	.ascii "_size\0"
	.byte	0x4
	.byte	0x5a
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0
	.byte	0x8
	.byte	0x8
	.long	0xc0
	.byte	0x6
	.ascii "__sFILE\0"
	.byte	0x98
	.byte	0x4
	.byte	0x7a
	.long	0x332
	.byte	0x7
	.ascii "_p\0"
	.byte	0x4
	.byte	0x7b
	.long	0x1dc
	.byte	0x2
	.byte	0x23
	.byte	0
	.byte	0x7
	.ascii "_r\0"
	.byte	0x4
	.byte	0x7c
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0x7
	.ascii "_w\0"
	.byte	0x4
	.byte	0x7d
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0x7
	.ascii "_flags\0"
	.byte	0x4
	.byte	0x7e
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0x7
	.ascii "_file\0"
	.byte	0x4
	.byte	0x7f
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.byte	0x12
	.byte	0x7
	.ascii "_bf\0"
	.byte	0x4
	.byte	0x80
	.long	0x1ac
	.byte	0x2
	.byte	0x23
	.byte	0x18
	.byte	0x7
	.ascii "_lbfsize\0"
	.byte	0x4
	.byte	0x81
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.byte	0x28
	.byte	0x7
	.ascii "_cookie\0"
	.byte	0x4
	.byte	0x84
	.long	0x186
	.byte	0x2
	.byte	0x23
	.byte	0x30
	.byte	0x7
	.ascii "_close\0"
	.byte	0x4
	.byte	0x85
	.long	0x342
	.byte	0x2
	.byte	0x23
	.byte	0x38
	.byte	0x7
	.ascii "_read\0"
	.byte	0x4
	.byte	0x86
	.long	0x368
	.byte	0x2
	.byte	0x23
	.byte	0x40
	.byte	0x7
	.ascii "_seek\0"
	.byte	0x4
	.byte	0x87
	.long	0x388
	.byte	0x2
	.byte	0x23
	.byte	0x48
	.byte	0x7
	.ascii "_write\0"
	.byte	0x4
	.byte	0x88
	.long	0x3b3
	.byte	0x2
	.byte	0x23
	.byte	0x50
	.byte	0x7
	.ascii "_ub\0"
	.byte	0x4
	.byte	0x8b
	.long	0x1ac
	.byte	0x2
	.byte	0x23
	.byte	0x58
	.byte	0x7
	.ascii "_extra\0"
	.byte	0x4
	.byte	0x8c
	.long	0x3c4
	.byte	0x2
	.byte	0x23
	.byte	0x68
	.byte	0x7
	.ascii "_ur\0"
	.byte	0x4
	.byte	0x8d
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.byte	0x70
	.byte	0x7
	.ascii "_ubuf\0"
	.byte	0x4
	.byte	0x90
	.long	0x3ca
	.byte	0x2
	.byte	0x23
	.byte	0x74
	.byte	0x7
	.ascii "_nbuf\0"
	.byte	0x4
	.byte	0x91
	.long	0x3da
	.byte	0x2
	.byte	0x23
	.byte	0x77
	.byte	0x7
	.ascii "_lb\0"
	.byte	0x4
	.byte	0x94
	.long	0x1ac
	.byte	0x2
	.byte	0x23
	.byte	0x78
	.byte	0x7
	.ascii "_blksize\0"
	.byte	0x4
	.byte	0x97
	.long	0xf4
	.byte	0x3
	.byte	0x23
	.byte	0x88,0x1
	.byte	0x7
	.ascii "_offset\0"
	.byte	0x4
	.byte	0x98
	.long	0x19e
	.byte	0x3
	.byte	0x23
	.byte	0x90,0x1
	.byte	0
	.byte	0x9
	.byte	0x1
	.long	0xf4
	.long	0x342
	.byte	0xa
	.long	0x186
	.byte	0
	.byte	0x8
	.byte	0x8
	.long	0x332
	.byte	0x9
	.byte	0x1
	.long	0xf4
	.long	0x362
	.byte	0xa
	.long	0x186
	.byte	0xa
	.long	0x362
	.byte	0xa
	.long	0xf4
	.byte	0
	.byte	0x8
	.byte	0x8
	.long	0x164
	.byte	0x8
	.byte	0x8
	.long	0x348
	.byte	0x9
	.byte	0x1
	.long	0x19e
	.long	0x388
	.byte	0xa
	.long	0x186
	.byte	0xa
	.long	0x19e
	.byte	0xa
	.long	0xf4
	.byte	0
	.byte	0x8
	.byte	0x8
	.long	0x36e
	.byte	0x9
	.byte	0x1
	.long	0xf4
	.long	0x3a8
	.byte	0xa
	.long	0x186
	.byte	0xa
	.long	0x3a8
	.byte	0xa
	.long	0xf4
	.byte	0
	.byte	0x8
	.byte	0x8
	.long	0x16c
	.byte	0x3
	.long	0x3a8
	.byte	0x8
	.byte	0x8
	.long	0x38e
	.byte	0xb
	.ascii "__sFILEX\0"
	.byte	0x1
	.byte	0x8
	.byte	0x8
	.long	0x3b9
	.byte	0xc
	.long	0xc0
	.long	0x3da
	.byte	0xd
	.long	0x158
	.byte	0x2
	.byte	0
	.byte	0xc
	.long	0xc0
	.long	0x3ea
	.byte	0xd
	.long	0x158
	.byte	0
	.byte	0
	.byte	0x4
	.ascii "FILE\0"
	.byte	0x4
	.byte	0x99
	.long	0x1e2
	.byte	0xe
	.ascii "__stdinp\0"
	.byte	0x4
	.byte	0x9c
	.long	0x408
	.byte	0x1
	.byte	0x1
	.byte	0x8
	.byte	0x8
	.long	0x3ea
	.byte	0xe
	.ascii "__stdoutp\0"
	.byte	0x4
	.byte	0x9d
	.long	0x408
	.byte	0x1
	.byte	0x1
	.byte	0xe
	.ascii "__stderrp\0"
	.byte	0x4
	.byte	0x9e
	.long	0x408
	.byte	0x1
	.byte	0x1
	.byte	0xf
	.ascii "sys_nerr\0"
	.byte	0x4
	.word	0x1c4
	.long	0xfb
	.byte	0x1
	.byte	0x1
	.byte	0xc
	.long	0x3ae
	.long	0x452
	.byte	0x10
	.byte	0
	.byte	0x3
	.long	0x447
	.byte	0xf
	.ascii "sys_errlist\0"
	.byte	0x4
	.word	0x1c5
	.long	0x452
	.byte	0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.ascii "main\0"
	.byte	0x1
	.byte	0x14
	.byte	0x1
	.long	0xf4
	.quad	LFB4
	.quad	LFE4
	.set L$set$50,LLST3-Lsection__debug_loc
	.long L$set$50
	.long	0x4b2
	.byte	0x12
	.ascii "argc\0"
	.byte	0x1
	.byte	0x14
	.long	0xf4
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x12
	.ascii "argv\0"
	.byte	0x1
	.byte	0x14
	.long	0x4b2
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0
	.byte	0x8
	.byte	0x8
	.long	0x362
	.byte	0x13
	.byte	0x1
	.ascii "four\0"
	.byte	0x1
	.byte	0xe
	.long	0xf4
	.quad	LFB3
	.quad	LFE3
	.set L$set$51,LLST2-Lsection__debug_loc
	.long L$set$51
	.byte	0x13
	.byte	0x1
	.ascii "three\0"
	.byte	0x1
	.byte	0x8
	.long	0xf4
	.quad	LFB2
	.quad	LFE2
	.set L$set$52,LLST1-Lsection__debug_loc
	.long L$set$52
	.byte	0x13
	.byte	0x1
	.ascii "two\0"
	.byte	0x1
	.byte	0x2
	.long	0xf4
	.quad	LFB1
	.quad	LFE1
	.set L$set$53,LLST0-Lsection__debug_loc
	.long L$set$53
	.byte	0
	.section __DWARF,__debug_abbrev,regular,debug
Lsection__debug_abbrev:
Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0x8
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0x1b
	.byte	0x8
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x10
	.byte	0x6
	.byte	0xb4,0x42
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0x8
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0xc
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3c
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0xc
	.byte	0x3c
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0xc
	.byte	0x3c
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x21
	.byte	0
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0xc
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x27
	.byte	0xc
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0xc
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.section __DWARF,__debug_loc,regular,debug
Lsection__debug_loc:
Ldebug_loc0:
LLST3:
	.set L$set$54,LFB4-Ltext0
	.quad L$set$54
	.set L$set$55,LCFI9-Ltext0
	.quad L$set$55
	.word	0x2
	.byte	0x77
	.byte	0x8
	.set L$set$56,LCFI9-Ltext0
	.quad L$set$56
	.set L$set$57,LCFI10-Ltext0
	.quad L$set$57
	.word	0x2
	.byte	0x77
	.byte	0x10
	.set L$set$58,LCFI10-Ltext0
	.quad L$set$58
	.set L$set$59,LCFI12-Ltext0
	.quad L$set$59
	.word	0x2
	.byte	0x76
	.byte	0x10
	.set L$set$60,LCFI12-Ltext0
	.quad L$set$60
	.set L$set$61,LFE4-Ltext0
	.quad L$set$61
	.word	0x2
	.byte	0x77
	.byte	0x8
	.quad	0
	.quad	0
LLST2:
	.set L$set$62,LFB3-Ltext0
	.quad L$set$62
	.set L$set$63,LCFI6-Ltext0
	.quad L$set$63
	.word	0x2
	.byte	0x77
	.byte	0x8
	.set L$set$64,LCFI6-Ltext0
	.quad L$set$64
	.set L$set$65,LCFI7-Ltext0
	.quad L$set$65
	.word	0x2
	.byte	0x77
	.byte	0x10
	.set L$set$66,LCFI7-Ltext0
	.quad L$set$66
	.set L$set$67,LCFI8-Ltext0
	.quad L$set$67
	.word	0x2
	.byte	0x76
	.byte	0x10
	.set L$set$68,LCFI8-Ltext0
	.quad L$set$68
	.set L$set$69,LFE3-Ltext0
	.quad L$set$69
	.word	0x2
	.byte	0x77
	.byte	0x8
	.quad	0
	.quad	0
LLST1:
	.set L$set$70,LFB2-Ltext0
	.quad L$set$70
	.set L$set$71,LCFI3-Ltext0
	.quad L$set$71
	.word	0x2
	.byte	0x77
	.byte	0x8
	.set L$set$72,LCFI3-Ltext0
	.quad L$set$72
	.set L$set$73,LCFI4-Ltext0
	.quad L$set$73
	.word	0x2
	.byte	0x77
	.byte	0x10
	.set L$set$74,LCFI4-Ltext0
	.quad L$set$74
	.set L$set$75,LCFI5-Ltext0
	.quad L$set$75
	.word	0x2
	.byte	0x76
	.byte	0x10
	.set L$set$76,LCFI5-Ltext0
	.quad L$set$76
	.set L$set$77,LFE2-Ltext0
	.quad L$set$77
	.word	0x2
	.byte	0x77
	.byte	0x8
	.quad	0
	.quad	0
LLST0:
	.set L$set$78,LFB1-Ltext0
	.quad L$set$78
	.set L$set$79,LCFI0-Ltext0
	.quad L$set$79
	.word	0x2
	.byte	0x77
	.byte	0x8
	.set L$set$80,LCFI0-Ltext0
	.quad L$set$80
	.set L$set$81,LCFI1-Ltext0
	.quad L$set$81
	.word	0x2
	.byte	0x77
	.byte	0x10
	.set L$set$82,LCFI1-Ltext0
	.quad L$set$82
	.set L$set$83,LCFI2-Ltext0
	.quad L$set$83
	.word	0x2
	.byte	0x76
	.byte	0x10
	.set L$set$84,LCFI2-Ltext0
	.quad L$set$84
	.set L$set$85,LFE1-Ltext0
	.quad L$set$85
	.word	0x2
	.byte	0x77
	.byte	0x8
	.quad	0
	.quad	0
	.section __DWARF,__debug_pubnames,regular,debug
Lsection__debug_pubnames:
	.long	0x32
	.word	0x2
	.set L$set$86,Ldebug_info0-Lsection__debug_info
	.long L$set$86
	.long	0x51c
	.long	0x46d
	.ascii "main\0"
	.long	0x4b8
	.ascii "four\0"
	.long	0x4d9
	.ascii "three\0"
	.long	0x4fb
	.ascii "two\0"
	.long	0
	.section __DWARF,__debug_pubtypes,regular,debug
Lsection__debug_pubtypes:
	.long	0x120
	.word	0x2
	.set L$set$87,Ldebug_info0-Lsection__debug_info
	.long L$set$87
	.long	0x51c
	.long	0xb1
	.ascii "signed char\0"
	.long	0xc0
	.ascii "unsigned char\0"
	.long	0xd1
	.ascii "short int\0"
	.long	0xde
	.ascii "short unsigned int\0"
	.long	0xf4
	.ascii "int\0"
	.long	0x100
	.ascii "unsigned int\0"
	.long	0x121
	.ascii "long long int\0"
	.long	0x110
	.ascii "__int64_t\0"
	.long	0x132
	.ascii "long long unsigned int\0"
	.long	0x14c
	.ascii "long int\0"
	.long	0x158
	.ascii "sizetype\0"
	.long	0x164
	.ascii "char\0"
	.long	0x171
	.ascii "long unsigned int\0"
	.long	0x188
	.ascii "__darwin_off_t\0"
	.long	0x19e
	.ascii "fpos_t\0"
	.long	0x1ac
	.ascii "__sbuf\0"
	.long	0x1e2
	.ascii "__sFILE\0"
	.long	0x3ea
	.ascii "FILE\0"
	.long	0
	.section __DWARF,__debug_aranges,regular,debug
Lsection__debug_aranges:
	.long	0x2c
	.word	0x2
	.set L$set$88,Ldebug_info0-Lsection__debug_info
	.long L$set$88
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	Ltext0
	.set L$set$89,Letext0-Ltext0
	.quad L$set$89
	.quad	0
	.quad	0
	.section __DWARF,__debug_line,regular,debug
Lsection__debug_line:
Ldebug_line0:
	.set L$set$90,LELT0-LSLT0
	.long L$set$90
LSLT0:
	.word	0x2
	.set L$set$91,LELTP0-LASLTP0
	.long L$set$91
LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf2
	.byte	0xd
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1
	.ascii "/usr/include"
	.byte	0
	.ascii "/usr/include/i386"
	.byte	0
	.ascii "/usr/include/sys"
	.byte	0
	.byte	0
	.ascii "234.c\0"
	.byte	0
	.byte	0
	.byte	0
	.ascii "i386/_types.h\0"
	.byte	0x1
	.byte	0
	.byte	0
	.ascii "sys/_types.h\0"
	.byte	0x1
	.byte	0
	.byte	0
	.ascii "stdio.h\0"
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
LELTP0:
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM1
	.byte	0x19
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM2
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM3
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM4
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM5
	.byte	0x1a
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM6
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM7
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM8
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM9
	.byte	0x1a
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM10
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM11
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM12
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM13
	.byte	0x19
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM14
	.byte	0x19
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM15
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	Letext0
	.byte	0
	.byte	0x1
	.byte	0x1
LELT0:
	.section __DWARF,__debug_str,regular,debug
Lsection__debug_str:
	.subsections_via_symbols
