	.text
Ltext0:
	.globl _add
_add:
LFB1:
LM1:
	pushq	%rbp
LCFI0:
	movq	%rsp, %rbp
LCFI1:
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
LM2:
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
LM3:
	popq	%rbp
LCFI2:
	ret
LFE1:
	.cstring
lC0:
	.ascii "%p\12\0"
	.text
	.globl _main
_main:
LFB2:
LM4:
	pushq	%rbp
LCFI3:
	movq	%rsp, %rbp
LCFI4:
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
LM5:
	leaq	_add(%rip), %rax
	movq	%rax, -8(%rbp)
LM6:
	leaq	_add(%rip), %rsi
	leaq	lC0(%rip), %rdi
	movl	$0, %eax
	call	_printf
LM7:
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	lC0(%rip), %rdi
	movl	$0, %eax
	call	_printf
LM8:
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	lC0(%rip), %rdi
	movl	$0, %eax
	call	_printf
LM9:
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	lC0(%rip), %rdi
	movl	$0, %eax
	call	_printf
LM10:
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	lC0(%rip), %rdi
	movl	$0, %eax
	call	_printf
LM11:
	movq	-8(%rbp), %rax
	movl	$4, %esi
	movl	$3, %edi
	call	*%rax
LVL0:
LM12:
	movq	-8(%rbp), %rax
	movl	$4, %esi
	movl	$3, %edi
	call	*%rax
LVL1:
LM13:
	movq	-8(%rbp), %rax
	movl	$4, %esi
	movl	$3, %edi
	call	*%rax
LVL2:
LM14:
	movq	-8(%rbp), %rax
	movl	$4, %esi
	movl	$3, %edi
	call	*%rax
LVL3:
LM15:
	movl	$0, %eax
LM16:
	leave
LCFI5:
	ret
LFE2:
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
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$13,LECIE1-LSCIE1
	.long L$set$13
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
LSFDE5:
	.set L$set$14,LEFDE5-LASFDE5
	.long L$set$14
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB1-.
	.set L$set$15,LFE1-LFB1
	.quad L$set$15
	.byte	0
	.byte	0x4
	.set L$set$16,LCFI0-LFB1
	.long L$set$16
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$17,LCFI1-LCFI0
	.long L$set$17
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$18,LCFI2-LCFI1
	.long L$set$18
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE5:
LSFDE7:
	.set L$set$19,LEFDE7-LASFDE7
	.long L$set$19
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB2-.
	.set L$set$20,LFE2-LFB2
	.quad L$set$20
	.byte	0
	.byte	0x4
	.set L$set$21,LCFI3-LFB2
	.long L$set$21
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$22,LCFI4-LCFI3
	.long L$set$22
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$23,LCFI5-LCFI4
	.long L$set$23
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE7:
	.text
Letext0:
	.section __DWARF,__debug_info,regular,debug
Lsection__debug_info:
Ldebug_info0:
	.long	0x530
	.word	0x2
	.set L$set$24,Ldebug_abbrev0-Lsection__debug_abbrev
	.long L$set$24
	.byte	0x8
	.byte	0x1
	.ascii "GNU C11 6.3.0 -feliminate-unused-debug-symbols -mmacosx-version-min=10.11.6 -mtune=core2 -g\0"
	.byte	0x1
	.ascii "func-pointer.c\0"
	.ascii "/Users/huiw/Programming/C/examples/func-ptr\0"
	.quad	Ltext0
	.quad	Letext0
	.set L$set$25,Ldebug_line0-Lsection__debug_line
	.long L$set$25
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
	.long	0xfc
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.byte	0x4
	.ascii "__int64_t\0"
	.byte	0x2
	.byte	0x2e
	.long	0x129
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
	.long	0x16c
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
	.long	0x118
	.byte	0x4
	.ascii "fpos_t\0"
	.byte	0x4
	.byte	0x4d
	.long	0x190
	.byte	0x6
	.ascii "__sbuf\0"
	.byte	0x10
	.byte	0x4
	.byte	0x58
	.long	0x1e4
	.byte	0x7
	.ascii "_base\0"
	.byte	0x4
	.byte	0x59
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.byte	0
	.byte	0x7
	.ascii "_size\0"
	.byte	0x4
	.byte	0x5a
	.long	0xfc
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0
	.byte	0x8
	.byte	0x8
	.long	0xc8
	.byte	0x6
	.ascii "__sFILE\0"
	.byte	0x98
	.byte	0x4
	.byte	0x7a
	.long	0x33a
	.byte	0x7
	.ascii "_p\0"
	.byte	0x4
	.byte	0x7b
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.byte	0
	.byte	0x7
	.ascii "_r\0"
	.byte	0x4
	.byte	0x7c
	.long	0xfc
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0x7
	.ascii "_w\0"
	.byte	0x4
	.byte	0x7d
	.long	0xfc
	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0x7
	.ascii "_flags\0"
	.byte	0x4
	.byte	0x7e
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0x7
	.ascii "_file\0"
	.byte	0x4
	.byte	0x7f
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.byte	0x12
	.byte	0x7
	.ascii "_bf\0"
	.byte	0x4
	.byte	0x80
	.long	0x1b4
	.byte	0x2
	.byte	0x23
	.byte	0x18
	.byte	0x7
	.ascii "_lbfsize\0"
	.byte	0x4
	.byte	0x81
	.long	0xfc
	.byte	0x2
	.byte	0x23
	.byte	0x28
	.byte	0x7
	.ascii "_cookie\0"
	.byte	0x4
	.byte	0x84
	.long	0x18e
	.byte	0x2
	.byte	0x23
	.byte	0x30
	.byte	0x7
	.ascii "_close\0"
	.byte	0x4
	.byte	0x85
	.long	0x34a
	.byte	0x2
	.byte	0x23
	.byte	0x38
	.byte	0x7
	.ascii "_read\0"
	.byte	0x4
	.byte	0x86
	.long	0x370
	.byte	0x2
	.byte	0x23
	.byte	0x40
	.byte	0x7
	.ascii "_seek\0"
	.byte	0x4
	.byte	0x87
	.long	0x390
	.byte	0x2
	.byte	0x23
	.byte	0x48
	.byte	0x7
	.ascii "_write\0"
	.byte	0x4
	.byte	0x88
	.long	0x3bb
	.byte	0x2
	.byte	0x23
	.byte	0x50
	.byte	0x7
	.ascii "_ub\0"
	.byte	0x4
	.byte	0x8b
	.long	0x1b4
	.byte	0x2
	.byte	0x23
	.byte	0x58
	.byte	0x7
	.ascii "_extra\0"
	.byte	0x4
	.byte	0x8c
	.long	0x3cc
	.byte	0x2
	.byte	0x23
	.byte	0x68
	.byte	0x7
	.ascii "_ur\0"
	.byte	0x4
	.byte	0x8d
	.long	0xfc
	.byte	0x2
	.byte	0x23
	.byte	0x70
	.byte	0x7
	.ascii "_ubuf\0"
	.byte	0x4
	.byte	0x90
	.long	0x3d2
	.byte	0x2
	.byte	0x23
	.byte	0x74
	.byte	0x7
	.ascii "_nbuf\0"
	.byte	0x4
	.byte	0x91
	.long	0x3e2
	.byte	0x2
	.byte	0x23
	.byte	0x77
	.byte	0x7
	.ascii "_lb\0"
	.byte	0x4
	.byte	0x94
	.long	0x1b4
	.byte	0x2
	.byte	0x23
	.byte	0x78
	.byte	0x7
	.ascii "_blksize\0"
	.byte	0x4
	.byte	0x97
	.long	0xfc
	.byte	0x3
	.byte	0x23
	.byte	0x88,0x1
	.byte	0x7
	.ascii "_offset\0"
	.byte	0x4
	.byte	0x98
	.long	0x1a6
	.byte	0x3
	.byte	0x23
	.byte	0x90,0x1
	.byte	0
	.byte	0x9
	.byte	0x1
	.long	0xfc
	.long	0x34a
	.byte	0xa
	.long	0x18e
	.byte	0
	.byte	0x8
	.byte	0x8
	.long	0x33a
	.byte	0x9
	.byte	0x1
	.long	0xfc
	.long	0x36a
	.byte	0xa
	.long	0x18e
	.byte	0xa
	.long	0x36a
	.byte	0xa
	.long	0xfc
	.byte	0
	.byte	0x8
	.byte	0x8
	.long	0x16c
	.byte	0x8
	.byte	0x8
	.long	0x350
	.byte	0x9
	.byte	0x1
	.long	0x1a6
	.long	0x390
	.byte	0xa
	.long	0x18e
	.byte	0xa
	.long	0x1a6
	.byte	0xa
	.long	0xfc
	.byte	0
	.byte	0x8
	.byte	0x8
	.long	0x376
	.byte	0x9
	.byte	0x1
	.long	0xfc
	.long	0x3b0
	.byte	0xa
	.long	0x18e
	.byte	0xa
	.long	0x3b0
	.byte	0xa
	.long	0xfc
	.byte	0
	.byte	0x8
	.byte	0x8
	.long	0x174
	.byte	0x3
	.long	0x3b0
	.byte	0x8
	.byte	0x8
	.long	0x396
	.byte	0xb
	.ascii "__sFILEX\0"
	.byte	0x1
	.byte	0x8
	.byte	0x8
	.long	0x3c1
	.byte	0xc
	.long	0xc8
	.long	0x3e2
	.byte	0xd
	.long	0x160
	.byte	0x2
	.byte	0
	.byte	0xc
	.long	0xc8
	.long	0x3f2
	.byte	0xd
	.long	0x160
	.byte	0
	.byte	0
	.byte	0x4
	.ascii "FILE\0"
	.byte	0x4
	.byte	0x99
	.long	0x1ea
	.byte	0xe
	.ascii "__stdinp\0"
	.byte	0x4
	.byte	0x9c
	.long	0x410
	.byte	0x1
	.byte	0x1
	.byte	0x8
	.byte	0x8
	.long	0x3f2
	.byte	0xe
	.ascii "__stdoutp\0"
	.byte	0x4
	.byte	0x9d
	.long	0x410
	.byte	0x1
	.byte	0x1
	.byte	0xe
	.ascii "__stderrp\0"
	.byte	0x4
	.byte	0x9e
	.long	0x410
	.byte	0x1
	.byte	0x1
	.byte	0xf
	.ascii "sys_nerr\0"
	.byte	0x4
	.word	0x1c4
	.long	0x103
	.byte	0x1
	.byte	0x1
	.byte	0xc
	.long	0x3b6
	.long	0x45a
	.byte	0x10
	.byte	0
	.byte	0x3
	.long	0x44f
	.byte	0xf
	.ascii "sys_errlist\0"
	.byte	0x4
	.word	0x1c5
	.long	0x45a
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.ascii "func_ptr_t\0"
	.byte	0x1
	.byte	0x4
	.long	0x487
	.byte	0x8
	.byte	0x8
	.long	0x48d
	.byte	0x9
	.byte	0x1
	.long	0xfc
	.long	0x4a2
	.byte	0xa
	.long	0xfc
	.byte	0xa
	.long	0xfc
	.byte	0
	.byte	0x11
	.byte	0x1
	.ascii "main\0"
	.byte	0x1
	.byte	0xd
	.byte	0x1
	.long	0xfc
	.quad	LFB2
	.quad	LFE2
	.set L$set$26,LLST1-Lsection__debug_loc
	.long L$set$26
	.long	0x4f3
	.byte	0x12
	.ascii "argc\0"
	.byte	0x1
	.byte	0xd
	.long	0xfc
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x12
	.ascii "argv\0"
	.byte	0x1
	.byte	0xd
	.long	0x4f3
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x13
	.ascii "f\0"
	.byte	0x1
	.byte	0xf
	.long	0x475
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x8
	.byte	0x8
	.long	0x36a
	.byte	0x14
	.byte	0x1
	.ascii "add\0"
	.byte	0x1
	.byte	0x7
	.byte	0x1
	.long	0xfc
	.quad	LFB1
	.quad	LFE1
	.set L$set$27,LLST0-Lsection__debug_loc
	.long L$set$27
	.byte	0x12
	.ascii "a\0"
	.byte	0x1
	.byte	0x7
	.long	0xfc
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x12
	.ascii "b\0"
	.byte	0x1
	.byte	0x7
	.long	0xfc
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
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
	.byte	0x2
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0
	.byte	0
	.byte	0
	.section __DWARF,__debug_loc,regular,debug
Lsection__debug_loc:
Ldebug_loc0:
LLST1:
	.set L$set$28,LFB2-Ltext0
	.quad L$set$28
	.set L$set$29,LCFI3-Ltext0
	.quad L$set$29
	.word	0x2
	.byte	0x77
	.byte	0x8
	.set L$set$30,LCFI3-Ltext0
	.quad L$set$30
	.set L$set$31,LCFI4-Ltext0
	.quad L$set$31
	.word	0x2
	.byte	0x77
	.byte	0x10
	.set L$set$32,LCFI4-Ltext0
	.quad L$set$32
	.set L$set$33,LCFI5-Ltext0
	.quad L$set$33
	.word	0x2
	.byte	0x76
	.byte	0x10
	.set L$set$34,LCFI5-Ltext0
	.quad L$set$34
	.set L$set$35,LFE2-Ltext0
	.quad L$set$35
	.word	0x2
	.byte	0x77
	.byte	0x8
	.quad	0
	.quad	0
LLST0:
	.set L$set$36,LFB1-Ltext0
	.quad L$set$36
	.set L$set$37,LCFI0-Ltext0
	.quad L$set$37
	.word	0x2
	.byte	0x77
	.byte	0x8
	.set L$set$38,LCFI0-Ltext0
	.quad L$set$38
	.set L$set$39,LCFI1-Ltext0
	.quad L$set$39
	.word	0x2
	.byte	0x77
	.byte	0x10
	.set L$set$40,LCFI1-Ltext0
	.quad L$set$40
	.set L$set$41,LCFI2-Ltext0
	.quad L$set$41
	.word	0x2
	.byte	0x76
	.byte	0x10
	.set L$set$42,LCFI2-Ltext0
	.quad L$set$42
	.set L$set$43,LFE1-Ltext0
	.quad L$set$43
	.word	0x2
	.byte	0x77
	.byte	0x8
	.quad	0
	.quad	0
	.section __DWARF,__debug_pubnames,regular,debug
Lsection__debug_pubnames:
	.long	0x1f
	.word	0x2
	.set L$set$44,Ldebug_info0-Lsection__debug_info
	.long L$set$44
	.long	0x534
	.long	0x4a2
	.ascii "main\0"
	.long	0x4f9
	.ascii "add\0"
	.long	0
	.section __DWARF,__debug_pubtypes,regular,debug
Lsection__debug_pubtypes:
	.long	0x12f
	.word	0x2
	.set L$set$45,Ldebug_info0-Lsection__debug_info
	.long L$set$45
	.long	0x534
	.long	0xb9
	.ascii "signed char\0"
	.long	0xc8
	.ascii "unsigned char\0"
	.long	0xd9
	.ascii "short int\0"
	.long	0xe6
	.ascii "short unsigned int\0"
	.long	0xfc
	.ascii "int\0"
	.long	0x108
	.ascii "unsigned int\0"
	.long	0x129
	.ascii "long long int\0"
	.long	0x118
	.ascii "__int64_t\0"
	.long	0x13a
	.ascii "long long unsigned int\0"
	.long	0x154
	.ascii "long int\0"
	.long	0x160
	.ascii "sizetype\0"
	.long	0x16c
	.ascii "char\0"
	.long	0x179
	.ascii "long unsigned int\0"
	.long	0x190
	.ascii "__darwin_off_t\0"
	.long	0x1a6
	.ascii "fpos_t\0"
	.long	0x1b4
	.ascii "__sbuf\0"
	.long	0x1ea
	.ascii "__sFILE\0"
	.long	0x3f2
	.ascii "FILE\0"
	.long	0x475
	.ascii "func_ptr_t\0"
	.long	0
	.section __DWARF,__debug_aranges,regular,debug
Lsection__debug_aranges:
	.long	0x2c
	.word	0x2
	.set L$set$46,Ldebug_info0-Lsection__debug_info
	.long L$set$46
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	Ltext0
	.set L$set$47,Letext0-Ltext0
	.quad L$set$47
	.quad	0
	.quad	0
	.section __DWARF,__debug_line,regular,debug
Lsection__debug_line:
Ldebug_line0:
	.set L$set$48,LELT0-LSLT0
	.long L$set$48
LSLT0:
	.word	0x2
	.set L$set$49,LELTP0-LASLTP0
	.long L$set$49
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
	.ascii "func-pointer.c\0"
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
	.byte	0x1e
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
	.byte	0x1a
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM5
	.byte	0x19
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM6
	.byte	0x19
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM7
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM8
	.byte	0x19
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM9
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM10
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM11
	.byte	0x1a
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM12
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM13
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM14
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM15
	.byte	0x19
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM16
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
