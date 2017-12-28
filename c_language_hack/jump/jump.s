	.text
Ltext0:
	.globl _sum_of_squares
_sum_of_squares:
LFB0:
LM1:
LVL0:
LM2:
	movl	$1, %edx
LM3:
	movl	$0, %eax
LVL1:
L2:
LM4:
	movl	%edx, %ecx
	imull	%edx, %ecx
	addl	%ecx, %eax
LVL2:
LM5:
	addl	$1, %edx
LVL3:
LM6:
	cmpl	%edi, %edx
	jbe	L2
LM7:
	ret
LFE0:
	.globl _sum_of_squares_fast
_sum_of_squares_fast:
LFB1:
LM8:
LVL4:
LM9:
	leal	1(%rdi), %edx
	imull	%edi, %edx
	leal	1(%rdi,%rdi), %eax
	imull	%eax, %edx
	movl	$-1431655765, %ecx
	movl	%edx, %eax
	mull	%ecx
	movl	%edx, %eax
	shrl	$2, %eax
LM10:
	ret
LFE1:
	.cstring
	.align 3
lC0:
	.ascii "sum_of_squares(5) == sum_of_squares_fast(5)\0"
lC1:
	.ascii "jump.c\0"
	.section __TEXT,__text_startup,regular,pure_instructions
	.globl _main
_main:
LFB2:
LM11:
LVL5:
	subq	$8, %rsp
LCFI0:
LM12:
	movl	$5, %edi
LVL6:
	call	_sum_of_squares
LVL7:
LM13:
	cmpl	$55, %eax
	jne	L8
LM14:
	movl	$0, %eax
	addq	$8, %rsp
LCFI1:
	ret
L8:
LCFI2:
LM15:
	leaq	lC0(%rip), %rcx
	movl	$27, %edx
	leaq	lC1(%rip), %rsi
	leaq	___func__.1790(%rip), %rdi
	call	___assert_rtn
LVL8:
LFE2:
	.const
___func__.1790:
	.ascii "main\0"
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
	.quad	LFB0
	.set L$set$3,LFE0-LFB0
	.quad L$set$3
	.align 3
LEFDE0:
LSFDE2:
	.set L$set$4,LEFDE2-LASFDE2
	.long L$set$4
LASFDE2:
	.set L$set$5,Lframe0-Lsection__debug_frame
	.long L$set$5
	.quad	LFB1
	.set L$set$6,LFE1-LFB1
	.quad L$set$6
	.align 3
LEFDE2:
LSFDE4:
	.set L$set$7,LEFDE4-LASFDE4
	.long L$set$7
LASFDE4:
	.set L$set$8,Lframe0-Lsection__debug_frame
	.long L$set$8
	.quad	LFB2
	.set L$set$9,LFE2-LFB2
	.quad L$set$9
	.byte	0x4
	.set L$set$10,LCFI0-LFB2
	.long L$set$10
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$11,LCFI1-LCFI0
	.long L$set$11
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$12,LCFI2-LCFI1
	.long L$set$12
	.byte	0xb
	.align 3
LEFDE4:
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
LSFDE7:
	.set L$set$14,LEFDE7-LASFDE7
	.long L$set$14
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB0-.
	.set L$set$15,LFE0-LFB0
	.quad L$set$15
	.byte	0
	.align 3
LEFDE7:
LSFDE9:
	.set L$set$16,LEFDE9-LASFDE9
	.long L$set$16
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB1-.
	.set L$set$17,LFE1-LFB1
	.quad L$set$17
	.byte	0
	.align 3
LEFDE9:
LSFDE11:
	.set L$set$18,LEFDE11-LASFDE11
	.long L$set$18
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB2-.
	.set L$set$19,LFE2-LFB2
	.quad L$set$19
	.byte	0
	.byte	0x4
	.set L$set$20,LCFI0-LFB2
	.long L$set$20
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$21,LCFI1-LCFI0
	.long L$set$21
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$22,LCFI2-LCFI1
	.long L$set$22
	.byte	0xb
	.align 3
LEFDE11:
	.text
Letext0:
	.section __DWARF,__debug_info,regular,debug
Lsection__debug_info:
Ldebug_info0:
	.long	0x224
	.word	0x2
	.set L$set$23,Ldebug_abbrev0-Lsection__debug_abbrev
	.long L$set$23
	.byte	0x8
	.byte	0x1
	.ascii "GNU C11 6.3.0 -fPIC -feliminate-unused-debug-symbols -mmacosx-version-min=10.11.6 -mtune=core2 -g -O\0"
	.byte	0x1
	.ascii "jump.c\0"
	.ascii "/Users/huiw/Programming/C/examples/jump\0"
	.quad	Ltext0
	.quad	Letext0
	.set L$set$24,Ldebug_line0-Lsection__debug_line
	.long L$set$24
	.byte	0x1
	.byte	0x2
	.byte	0x1
	.ascii "main\0"
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.long	0x116
	.quad	LFB2
	.quad	LFE2
	.set L$set$25,LLST2-Lsection__debug_loc
	.long L$set$25
	.long	0x116
	.byte	0x3
	.ascii "argc\0"
	.byte	0x1
	.byte	0x19
	.long	0x116
	.set L$set$26,LLST3-Lsection__debug_loc
	.long L$set$26
	.byte	0x3
	.ascii "argv\0"
	.byte	0x1
	.byte	0x19
	.long	0x11d
	.set L$set$27,LLST4-Lsection__debug_loc
	.long L$set$27
	.byte	0x4
	.ascii "__func__\0"
	.long	0x146
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	___func__.1790
	.byte	0
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.byte	0x6
	.byte	0x8
	.long	0x123
	.byte	0x6
	.byte	0x8
	.long	0x129
	.byte	0x5
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.byte	0x7
	.long	0x129
	.byte	0x8
	.long	0x131
	.long	0x146
	.byte	0x9
	.long	0x14b
	.byte	0x4
	.byte	0
	.byte	0x7
	.long	0x136
	.byte	0x5
	.byte	0x8
	.byte	0x7
	.ascii "sizetype\0"
	.byte	0xa
	.byte	0x1
	.ascii "sum_of_squares_fast\0"
	.byte	0x1
	.byte	0x13
	.byte	0x1
	.long	0x183
	.byte	0x1
	.long	0x183
	.byte	0xb
	.ascii "n\0"
	.byte	0x1
	.byte	0x13
	.long	0x183
	.byte	0
	.byte	0x5
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.byte	0xc
	.byte	0x1
	.ascii "sum_of_squares\0"
	.byte	0x1
	.byte	0x4
	.byte	0x1
	.long	0x183
	.quad	LFB0
	.quad	LFE0
	.byte	0x2
	.byte	0x77
	.byte	0x8
	.long	0x207
	.byte	0xd
	.ascii "n\0"
	.byte	0x1
	.byte	0x4
	.long	0x183
	.byte	0x1
	.byte	0x55
	.byte	0xe
	.ascii "sum\0"
	.byte	0x1
	.byte	0x6
	.long	0x183
	.set L$set$28,LLST0-Lsection__debug_loc
	.long L$set$28
	.byte	0xe
	.ascii "current_number\0"
	.byte	0x1
	.byte	0x7
	.long	0x183
	.set L$set$29,LLST1-Lsection__debug_loc
	.long L$set$29
	.byte	0xf
	.ascii "loop\0"
	.byte	0x1
	.byte	0x9
	.quad	L2
	.byte	0
	.byte	0x10
	.long	0x157
	.quad	LFB1
	.quad	LFE1
	.byte	0x2
	.byte	0x77
	.byte	0x8
	.byte	0x11
	.long	0x179
	.byte	0x1
	.byte	0x55
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
	.byte	0x3
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
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x49
	.byte	0x13
	.byte	0x34
	.byte	0xc
	.byte	0x2
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0x5
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
	.byte	0x6
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xa
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0x2
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0xa
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x2e
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0
	.section __DWARF,__debug_loc,regular,debug
Lsection__debug_loc:
Ldebug_loc0:
LLST2:
	.quad	LFB2
	.quad	LCFI0
	.word	0x2
	.byte	0x77
	.byte	0x8
	.quad	LCFI0
	.quad	LCFI1
	.word	0x2
	.byte	0x77
	.byte	0x10
	.quad	LCFI1
	.quad	LCFI2
	.word	0x2
	.byte	0x77
	.byte	0x8
	.quad	LCFI2
	.quad	LFE2
	.word	0x2
	.byte	0x77
	.byte	0x10
	.quad	0
	.quad	0
LLST3:
	.quad	LVL5
	.quad	LVL6
	.word	0x1
	.byte	0x55
	.quad	0
	.quad	0
LLST4:
	.quad	LVL5
	.quad	LVL7-1
	.word	0x1
	.byte	0x54
	.quad	0
	.quad	0
LLST0:
	.quad	LVL1
	.quad	LFE0
	.word	0x1
	.byte	0x50
	.quad	0
	.quad	0
LLST1:
	.quad	LVL1
	.quad	LFE0
	.word	0x1
	.byte	0x51
	.quad	0
	.quad	0
	.section __DWARF,__debug_pubnames,regular,debug
Lsection__debug_pubnames:
	.long	0x42
	.word	0x2
	.set L$set$30,Ldebug_info0-Lsection__debug_info
	.long L$set$30
	.long	0x228
	.long	0xb6
	.ascii "main\0"
	.long	0x157
	.ascii "sum_of_squares_fast\0"
	.long	0x193
	.ascii "sum_of_squares\0"
	.long	0
	.section __DWARF,__debug_pubtypes,regular,debug
Lsection__debug_pubtypes:
	.long	0x3d
	.word	0x2
	.set L$set$31,Ldebug_info0-Lsection__debug_info
	.long L$set$31
	.long	0x228
	.long	0x116
	.ascii "int\0"
	.long	0x129
	.ascii "char\0"
	.long	0x14b
	.ascii "sizetype\0"
	.long	0x183
	.ascii "unsigned int\0"
	.long	0
	.section __DWARF,__debug_aranges,regular,debug
Lsection__debug_aranges:
	.long	0x3c
	.word	0x2
	.set L$set$32,Ldebug_info0-Lsection__debug_info
	.long L$set$32
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	Ltext0
	.set L$set$33,Letext0-Ltext0
	.quad L$set$33
	.quad	LFB2
	.set L$set$34,LFE2-LFB2
	.quad L$set$34
	.quad	0
	.quad	0
	.section __DWARF,__debug_line,regular,debug
Lsection__debug_line:
Ldebug_line0:
	.set L$set$35,LELT0-LSLT0
	.long L$set$35
LSLT0:
	.word	0x2
	.set L$set$36,LELTP0-LASLTP0
	.long L$set$36
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
	.byte	0
	.ascii "jump.c\0"
	.byte	0
	.byte	0
	.byte	0
	.byte	0
LELTP0:
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM11
	.byte	0x2f
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM12
	.byte	0x19
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM13
	.byte	0x1
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM14
	.byte	0x1a
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM15
	.byte	0x14
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LFE2
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM1
	.byte	0x1b
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM2
	.byte	0x19
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM3
	.byte	0x16
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM4
	.byte	0x1b
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM5
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM6
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM7
	.byte	0x1b
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM8
	.byte	0x1b
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
	.quad	Letext0
	.byte	0
	.byte	0x1
	.byte	0x1
LELT0:
	.section __DWARF,__debug_str,regular,debug
Lsection__debug_str:
	.subsections_via_symbols
