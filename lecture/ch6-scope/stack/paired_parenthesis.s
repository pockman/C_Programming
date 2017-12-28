	.text
Ltext0:
	.cstring
lC0:
	.ascii "a[i] == '(' || a[i] == ')'\0"
lC1:
	.ascii "paired_parenthesis.c\0"
	.text
	.globl _paired_parentheses
_paired_parentheses:
LFB1:
LM1:
	pushq	%rbp
LCFI0:
	movq	%rsp, %rbp
LCFI1:
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
LM2:
	call	_make_empty
LBB2:
LM3:
	movl	$0, -4(%rbp)
	jmp	L2
L6:
LM4:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$40, %al
	setne	%al
LM5:
	movzbl	%al, %eax
LM6:
	testq	%rax, %rax
	je	L3
LM7:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	setne	%al
LM8:
	movzbl	%al, %eax
LM9:
	testq	%rax, %rax
	je	L3
LM10:
	leaq	lC0(%rip), %rcx
	movl	$22, %edx
	leaq	lC1(%rip), %rsi
	leaq	___func__.2440(%rip), %rdi
	call	___assert_rtn
L3:
LM11:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$40, %al
	jne	L4
LM12:
	movl	$40, %edi
	call	_push
L4:
LM13:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	jne	L5
LM14:
	call	_pop
L5:
LM15:
	addl	$1, -4(%rbp)
L2:
	movl	-4(%rbp), %eax
	cltq
	cmpq	-32(%rbp), %rax
	jb	L6
LBE2:
LM16:
	call	_is_empty
LM17:
	leave
LCFI2:
	ret
LFE1:
	.cstring
lC2:
	.ascii "bad characters.\0"
	.text
	.globl _paired_parentheses_switch
_paired_parentheses_switch:
LFB2:
LM18:
	pushq	%rbp
LCFI3:
	movq	%rsp, %rbp
LCFI4:
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
LM19:
	call	_make_empty
LBB3:
LM20:
	movl	$0, -4(%rbp)
	jmp	L9
L14:
LM21:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$40, %eax
	je	L11
	cmpl	$41, %eax
	je	L12
	jmp	L16
L11:
LM22:
	movl	$40, %edi
	call	_push
LM23:
	jmp	L13
L12:
LM24:
	call	_pop
LM25:
	jmp	L13
L16:
LM26:
	leaq	lC2(%rip), %rsi
	movl	$-1, %edi
	movl	$0, %eax
	call	_err
L13:
LM27:
	addl	$1, -4(%rbp)
L9:
	movl	-4(%rbp), %eax
	cltq
	cmpq	-32(%rbp), %rax
	jb	L14
LBE3:
LM28:
	call	_is_empty
LM29:
	leave
LCFI5:
	ret
LFE2:
	.cstring
lC3:
	.ascii "paired_parentheses(a, sz)\0"
	.align 3
lC4:
	.ascii "paired_parentheses_switch(a, sz)\0"
	.text
	.globl _main
_main:
LFB3:
LM30:
	pushq	%rbp
LCFI6:
	movq	%rsp, %rbp
LCFI7:
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
LM31:
	movabsq	$2965947082049398824, %rax
	movq	%rax, -32(%rbp)
	movabsq	$2965947082049333288, %rax
	movq	%rax, -24(%rbp)
	movw	$10537, -16(%rbp)
	movb	$0, -14(%rbp)
LM32:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_strlen
	movq	%rax, -8(%rbp)
LM33:
	movq	-8(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_paired_parentheses
LM34:
	xorl	$1, %eax
	movzbl	%al, %eax
LM35:
	testq	%rax, %rax
	je	L18
LM36:
	leaq	lC3(%rip), %rcx
	movl	$62, %edx
	leaq	lC1(%rip), %rsi
	leaq	___func__.2462(%rip), %rdi
	call	___assert_rtn
L18:
LM37:
	movq	-8(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_paired_parentheses_switch
LM38:
	xorl	$1, %eax
	movzbl	%al, %eax
LM39:
	testq	%rax, %rax
	je	L19
LM40:
	leaq	lC4(%rip), %rcx
	movl	$63, %edx
	leaq	lC1(%rip), %rsi
	leaq	___func__.2462(%rip), %rdi
	call	___assert_rtn
L19:
LM41:
	movl	$0, %eax
LM42:
	leave
LCFI8:
	ret
LFE3:
	.const
	.align 4
___func__.2440:
	.ascii "paired_parentheses\0"
___func__.2462:
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
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$19,LECIE1-LSCIE1
	.long L$set$19
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
	.set L$set$20,LEFDE7-LASFDE7
	.long L$set$20
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB1-.
	.set L$set$21,LFE1-LFB1
	.quad L$set$21
	.byte	0
	.byte	0x4
	.set L$set$22,LCFI0-LFB1
	.long L$set$22
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$23,LCFI1-LCFI0
	.long L$set$23
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$24,LCFI2-LCFI1
	.long L$set$24
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE7:
LSFDE9:
	.set L$set$25,LEFDE9-LASFDE9
	.long L$set$25
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB2-.
	.set L$set$26,LFE2-LFB2
	.quad L$set$26
	.byte	0
	.byte	0x4
	.set L$set$27,LCFI3-LFB2
	.long L$set$27
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$28,LCFI4-LCFI3
	.long L$set$28
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$29,LCFI5-LCFI4
	.long L$set$29
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE9:
LSFDE11:
	.set L$set$30,LEFDE11-LASFDE11
	.long L$set$30
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB3-.
	.set L$set$31,LFE3-LFB3
	.quad L$set$31
	.byte	0
	.byte	0x4
	.set L$set$32,LCFI6-LFB3
	.long L$set$32
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$33,LCFI7-LCFI6
	.long L$set$33
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$34,LCFI8-LCFI7
	.long L$set$34
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE11:
	.text
Letext0:
	.section __DWARF,__debug_info,regular,debug
Lsection__debug_info:
Ldebug_info0:
	.long	0x67f
	.word	0x2
	.set L$set$35,Ldebug_abbrev0-Lsection__debug_abbrev
	.long L$set$35
	.byte	0x8
	.byte	0x1
	.ascii "GNU C11 6.3.0 -fPIC -feliminate-unused-debug-symbols -mmacosx-version-min=10.11.6 -mtune=core2 -g\0"
	.byte	0x1
	.ascii "paired_parenthesis.c\0"
	.ascii "/Users/huiw/Desktop/Courseware/C_Programming_A_Modern_Approach/C/examples/ch6-scope/stack\0"
	.quad	Ltext0
	.quad	Letext0
	.set L$set$36,Ldebug_line0-Lsection__debug_line
	.long L$set$36
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
	.long	0x136
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.byte	0x4
	.ascii "__int64_t\0"
	.byte	0x2
	.byte	0x2e
	.long	0x163
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
	.long	0x1a6
	.byte	0x4
	.ascii "__darwin_size_t\0"
	.byte	0x2
	.byte	0x5c
	.long	0x1ca
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
	.long	0x152
	.byte	0x4
	.ascii "size_t\0"
	.byte	0x4
	.byte	0x1e
	.long	0x1b3
	.byte	0x4
	.ascii "fpos_t\0"
	.byte	0x5
	.byte	0x4d
	.long	0x1e1
	.byte	0x6
	.ascii "__sbuf\0"
	.byte	0x10
	.byte	0x5
	.byte	0x58
	.long	0x243
	.byte	0x7
	.ascii "_base\0"
	.byte	0x5
	.byte	0x59
	.long	0x243
	.byte	0x2
	.byte	0x23
	.byte	0
	.byte	0x7
	.ascii "_size\0"
	.byte	0x5
	.byte	0x5a
	.long	0x136
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0
	.byte	0x8
	.byte	0x8
	.long	0x102
	.byte	0x6
	.ascii "__sFILE\0"
	.byte	0x98
	.byte	0x5
	.byte	0x7a
	.long	0x399
	.byte	0x7
	.ascii "_p\0"
	.byte	0x5
	.byte	0x7b
	.long	0x243
	.byte	0x2
	.byte	0x23
	.byte	0
	.byte	0x7
	.ascii "_r\0"
	.byte	0x5
	.byte	0x7c
	.long	0x136
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0x7
	.ascii "_w\0"
	.byte	0x5
	.byte	0x7d
	.long	0x136
	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0x7
	.ascii "_flags\0"
	.byte	0x5
	.byte	0x7e
	.long	0x113
	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0x7
	.ascii "_file\0"
	.byte	0x5
	.byte	0x7f
	.long	0x113
	.byte	0x2
	.byte	0x23
	.byte	0x12
	.byte	0x7
	.ascii "_bf\0"
	.byte	0x5
	.byte	0x80
	.long	0x213
	.byte	0x2
	.byte	0x23
	.byte	0x18
	.byte	0x7
	.ascii "_lbfsize\0"
	.byte	0x5
	.byte	0x81
	.long	0x136
	.byte	0x2
	.byte	0x23
	.byte	0x28
	.byte	0x7
	.ascii "_cookie\0"
	.byte	0x5
	.byte	0x84
	.long	0x1df
	.byte	0x2
	.byte	0x23
	.byte	0x30
	.byte	0x7
	.ascii "_close\0"
	.byte	0x5
	.byte	0x85
	.long	0x3a9
	.byte	0x2
	.byte	0x23
	.byte	0x38
	.byte	0x7
	.ascii "_read\0"
	.byte	0x5
	.byte	0x86
	.long	0x3cf
	.byte	0x2
	.byte	0x23
	.byte	0x40
	.byte	0x7
	.ascii "_seek\0"
	.byte	0x5
	.byte	0x87
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.byte	0x48
	.byte	0x7
	.ascii "_write\0"
	.byte	0x5
	.byte	0x88
	.long	0x41a
	.byte	0x2
	.byte	0x23
	.byte	0x50
	.byte	0x7
	.ascii "_ub\0"
	.byte	0x5
	.byte	0x8b
	.long	0x213
	.byte	0x2
	.byte	0x23
	.byte	0x58
	.byte	0x7
	.ascii "_extra\0"
	.byte	0x5
	.byte	0x8c
	.long	0x42b
	.byte	0x2
	.byte	0x23
	.byte	0x68
	.byte	0x7
	.ascii "_ur\0"
	.byte	0x5
	.byte	0x8d
	.long	0x136
	.byte	0x2
	.byte	0x23
	.byte	0x70
	.byte	0x7
	.ascii "_ubuf\0"
	.byte	0x5
	.byte	0x90
	.long	0x431
	.byte	0x2
	.byte	0x23
	.byte	0x74
	.byte	0x7
	.ascii "_nbuf\0"
	.byte	0x5
	.byte	0x91
	.long	0x441
	.byte	0x2
	.byte	0x23
	.byte	0x77
	.byte	0x7
	.ascii "_lb\0"
	.byte	0x5
	.byte	0x94
	.long	0x213
	.byte	0x2
	.byte	0x23
	.byte	0x78
	.byte	0x7
	.ascii "_blksize\0"
	.byte	0x5
	.byte	0x97
	.long	0x136
	.byte	0x3
	.byte	0x23
	.byte	0x88,0x1
	.byte	0x7
	.ascii "_offset\0"
	.byte	0x5
	.byte	0x98
	.long	0x205
	.byte	0x3
	.byte	0x23
	.byte	0x90,0x1
	.byte	0
	.byte	0x9
	.byte	0x1
	.long	0x136
	.long	0x3a9
	.byte	0xa
	.long	0x1df
	.byte	0
	.byte	0x8
	.byte	0x8
	.long	0x399
	.byte	0x9
	.byte	0x1
	.long	0x136
	.long	0x3c9
	.byte	0xa
	.long	0x1df
	.byte	0xa
	.long	0x3c9
	.byte	0xa
	.long	0x136
	.byte	0
	.byte	0x8
	.byte	0x8
	.long	0x1a6
	.byte	0x8
	.byte	0x8
	.long	0x3af
	.byte	0x9
	.byte	0x1
	.long	0x205
	.long	0x3ef
	.byte	0xa
	.long	0x1df
	.byte	0xa
	.long	0x205
	.byte	0xa
	.long	0x136
	.byte	0
	.byte	0x8
	.byte	0x8
	.long	0x3d5
	.byte	0x9
	.byte	0x1
	.long	0x136
	.long	0x40f
	.byte	0xa
	.long	0x1df
	.byte	0xa
	.long	0x40f
	.byte	0xa
	.long	0x136
	.byte	0
	.byte	0x8
	.byte	0x8
	.long	0x1ae
	.byte	0x3
	.long	0x40f
	.byte	0x8
	.byte	0x8
	.long	0x3f5
	.byte	0xb
	.ascii "__sFILEX\0"
	.byte	0x1
	.byte	0x8
	.byte	0x8
	.long	0x420
	.byte	0xc
	.long	0x102
	.long	0x441
	.byte	0xd
	.long	0x19a
	.byte	0x2
	.byte	0
	.byte	0xc
	.long	0x102
	.long	0x451
	.byte	0xd
	.long	0x19a
	.byte	0
	.byte	0
	.byte	0x4
	.ascii "FILE\0"
	.byte	0x5
	.byte	0x99
	.long	0x249
	.byte	0xe
	.ascii "__stdinp\0"
	.byte	0x5
	.byte	0x9c
	.long	0x46f
	.byte	0x1
	.byte	0x1
	.byte	0x8
	.byte	0x8
	.long	0x451
	.byte	0xe
	.ascii "__stdoutp\0"
	.byte	0x5
	.byte	0x9d
	.long	0x46f
	.byte	0x1
	.byte	0x1
	.byte	0xe
	.ascii "__stderrp\0"
	.byte	0x5
	.byte	0x9e
	.long	0x46f
	.byte	0x1
	.byte	0x1
	.byte	0xf
	.ascii "sys_nerr\0"
	.byte	0x5
	.word	0x1c4
	.long	0x13d
	.byte	0x1
	.byte	0x1
	.byte	0xc
	.long	0x415
	.long	0x4b9
	.byte	0x10
	.byte	0
	.byte	0x3
	.long	0x4ae
	.byte	0xf
	.ascii "sys_errlist\0"
	.byte	0x5
	.word	0x1c5
	.long	0x4b9
	.byte	0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.ascii "main\0"
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.long	0x136
	.quad	LFB3
	.quad	LFE3
	.set L$set$37,LLST2-Lsection__debug_loc
	.long L$set$37
	.long	0x546
	.byte	0x12
	.ascii "argc\0"
	.byte	0x1
	.byte	0x39
	.long	0x136
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x12
	.ascii "argv\0"
	.byte	0x1
	.byte	0x39
	.long	0x546
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x13
	.ascii "a\0"
	.byte	0x1
	.byte	0x3a
	.long	0x54c
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x13
	.ascii "sz\0"
	.byte	0x1
	.byte	0x3c
	.long	0x1f7
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x14
	.set L$set$38,LASF0-Lsection__debug_str
	.long L$set$38
	.long	0x56c
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	___func__.2462
	.byte	0
	.byte	0x8
	.byte	0x8
	.long	0x3c9
	.byte	0xc
	.long	0x1a6
	.long	0x55c
	.byte	0xd
	.long	0x19a
	.byte	0x12
	.byte	0
	.byte	0xc
	.long	0x1ae
	.long	0x56c
	.byte	0xd
	.long	0x19a
	.byte	0x4
	.byte	0
	.byte	0x3
	.long	0x55c
	.byte	0x11
	.byte	0x1
	.ascii "paired_parentheses_switch\0"
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.long	0x5e4
	.quad	LFB2
	.quad	LFE2
	.set L$set$39,LLST1-Lsection__debug_loc
	.long L$set$39
	.long	0x5e4
	.byte	0x12
	.ascii "a\0"
	.byte	0x1
	.byte	0x23
	.long	0x3c9
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x12
	.ascii "sz\0"
	.byte	0x1
	.byte	0x23
	.long	0x1f7
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x15
	.quad	LBB3
	.quad	LBE3
	.byte	0x13
	.ascii "i\0"
	.byte	0x1
	.byte	0x26
	.long	0x136
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.ascii "_Bool\0"
	.byte	0x11
	.byte	0x1
	.ascii "paired_parentheses\0"
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.long	0x5e4
	.quad	LFB1
	.quad	LFE1
	.set L$set$40,LLST0-Lsection__debug_loc
	.long L$set$40
	.long	0x66d
	.byte	0x12
	.ascii "a\0"
	.byte	0x1
	.byte	0x11
	.long	0x3c9
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x12
	.ascii "sz\0"
	.byte	0x1
	.byte	0x11
	.long	0x1f7
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x14
	.set L$set$41,LASF0-Lsection__debug_str
	.long L$set$41
	.long	0x67d
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	___func__.2440
	.byte	0x15
	.quad	LBB2
	.quad	LBE2
	.byte	0x13
	.ascii "i\0"
	.byte	0x1
	.byte	0x14
	.long	0x136
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0xc
	.long	0x1ae
	.long	0x67d
	.byte	0xd
	.long	0x19a
	.byte	0x12
	.byte	0
	.byte	0x3
	.long	0x66d
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
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x49
	.byte	0x13
	.byte	0x34
	.byte	0xc
	.byte	0x2
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.section __DWARF,__debug_loc,regular,debug
Lsection__debug_loc:
Ldebug_loc0:
LLST2:
	.set L$set$42,LFB3-Ltext0
	.quad L$set$42
	.set L$set$43,LCFI6-Ltext0
	.quad L$set$43
	.word	0x2
	.byte	0x77
	.byte	0x8
	.set L$set$44,LCFI6-Ltext0
	.quad L$set$44
	.set L$set$45,LCFI7-Ltext0
	.quad L$set$45
	.word	0x2
	.byte	0x77
	.byte	0x10
	.set L$set$46,LCFI7-Ltext0
	.quad L$set$46
	.set L$set$47,LCFI8-Ltext0
	.quad L$set$47
	.word	0x2
	.byte	0x76
	.byte	0x10
	.set L$set$48,LCFI8-Ltext0
	.quad L$set$48
	.set L$set$49,LFE3-Ltext0
	.quad L$set$49
	.word	0x2
	.byte	0x77
	.byte	0x8
	.quad	0
	.quad	0
LLST1:
	.set L$set$50,LFB2-Ltext0
	.quad L$set$50
	.set L$set$51,LCFI3-Ltext0
	.quad L$set$51
	.word	0x2
	.byte	0x77
	.byte	0x8
	.set L$set$52,LCFI3-Ltext0
	.quad L$set$52
	.set L$set$53,LCFI4-Ltext0
	.quad L$set$53
	.word	0x2
	.byte	0x77
	.byte	0x10
	.set L$set$54,LCFI4-Ltext0
	.quad L$set$54
	.set L$set$55,LCFI5-Ltext0
	.quad L$set$55
	.word	0x2
	.byte	0x76
	.byte	0x10
	.set L$set$56,LCFI5-Ltext0
	.quad L$set$56
	.set L$set$57,LFE2-Ltext0
	.quad L$set$57
	.word	0x2
	.byte	0x77
	.byte	0x8
	.quad	0
	.quad	0
LLST0:
	.set L$set$58,LFB1-Ltext0
	.quad L$set$58
	.set L$set$59,LCFI0-Ltext0
	.quad L$set$59
	.word	0x2
	.byte	0x77
	.byte	0x8
	.set L$set$60,LCFI0-Ltext0
	.quad L$set$60
	.set L$set$61,LCFI1-Ltext0
	.quad L$set$61
	.word	0x2
	.byte	0x77
	.byte	0x10
	.set L$set$62,LCFI1-Ltext0
	.quad L$set$62
	.set L$set$63,LCFI2-Ltext0
	.quad L$set$63
	.word	0x2
	.byte	0x76
	.byte	0x10
	.set L$set$64,LCFI2-Ltext0
	.quad L$set$64
	.set L$set$65,LFE1-Ltext0
	.quad L$set$65
	.word	0x2
	.byte	0x77
	.byte	0x8
	.quad	0
	.quad	0
	.section __DWARF,__debug_pubnames,regular,debug
Lsection__debug_pubnames:
	.long	0x4c
	.word	0x2
	.set L$set$66,Ldebug_info0-Lsection__debug_info
	.long L$set$66
	.long	0x683
	.long	0x4d4
	.ascii "main\0"
	.long	0x571
	.ascii "paired_parentheses_switch\0"
	.long	0x5ed
	.ascii "paired_parentheses\0"
	.long	0
	.section __DWARF,__debug_pubtypes,regular,debug
Lsection__debug_pubtypes:
	.long	0x149
	.word	0x2
	.set L$set$67,Ldebug_info0-Lsection__debug_info
	.long L$set$67
	.long	0x683
	.long	0xf3
	.ascii "signed char\0"
	.long	0x102
	.ascii "unsigned char\0"
	.long	0x113
	.ascii "short int\0"
	.long	0x120
	.ascii "short unsigned int\0"
	.long	0x136
	.ascii "int\0"
	.long	0x142
	.ascii "unsigned int\0"
	.long	0x163
	.ascii "long long int\0"
	.long	0x152
	.ascii "__int64_t\0"
	.long	0x174
	.ascii "long long unsigned int\0"
	.long	0x18e
	.ascii "long int\0"
	.long	0x19a
	.ascii "sizetype\0"
	.long	0x1a6
	.ascii "char\0"
	.long	0x1ca
	.ascii "long unsigned int\0"
	.long	0x1b3
	.ascii "__darwin_size_t\0"
	.long	0x1e1
	.ascii "__darwin_off_t\0"
	.long	0x1f7
	.ascii "size_t\0"
	.long	0x205
	.ascii "fpos_t\0"
	.long	0x213
	.ascii "__sbuf\0"
	.long	0x249
	.ascii "__sFILE\0"
	.long	0x451
	.ascii "FILE\0"
	.long	0x5e4
	.ascii "_Bool\0"
	.long	0
	.section __DWARF,__debug_aranges,regular,debug
Lsection__debug_aranges:
	.long	0x2c
	.word	0x2
	.set L$set$68,Ldebug_info0-Lsection__debug_info
	.long L$set$68
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	Ltext0
	.set L$set$69,Letext0-Ltext0
	.quad L$set$69
	.quad	0
	.quad	0
	.section __DWARF,__debug_line,regular,debug
Lsection__debug_line:
Ldebug_line0:
	.set L$set$70,LELT0-LSLT0
	.long L$set$70
LSLT0:
	.word	0x2
	.set L$set$71,LELTP0-LASLTP0
	.long L$set$71
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
	.ascii "/usr/include/sys/_types"
	.byte	0
	.byte	0
	.ascii "paired_parenthesis.c\0"
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
	.ascii "sys/_types/_size_t.h\0"
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
	.byte	0x27
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM2
	.byte	0x19
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM3
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM4
	.byte	0x19
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM5
	.byte	0x1
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM6
	.byte	0x1
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM7
	.byte	0x1
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM8
	.byte	0x1
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM9
	.byte	0x1
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM10
	.byte	0x1
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM11
	.byte	0x19
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
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM15
	.byte	0xf
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM16
	.byte	0x22
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM17
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM18
	.byte	0x1a
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM19
	.byte	0x19
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM20
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM21
	.byte	0x19
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM22
	.byte	0x19
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM23
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM24
	.byte	0x19
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM25
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM26
	.byte	0x1a
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM27
	.byte	0x3
	.byte	0x75
	.byte	0x1
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM28
	.byte	0x27
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM29
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM30
	.byte	0x19
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM31
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM32
	.byte	0x19
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM33
	.byte	0x19
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM34
	.byte	0x1
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM35
	.byte	0x1
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM36
	.byte	0x1
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM37
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM38
	.byte	0x1
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM39
	.byte	0x1
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM40
	.byte	0x1
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM41
	.byte	0x1a
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM42
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
LASF0:
	.ascii "__func__\0"
	.subsections_via_symbols
