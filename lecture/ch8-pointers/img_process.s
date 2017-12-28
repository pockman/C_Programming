	.text
Ltext0:
	.globl _image
	.data
	.align 5
_image:
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
	.text
	.globl _swap
_swap:
LFB1:
LM1:
	pushq	%rbp
LCFI0:
	movq	%rsp, %rbp
LCFI1:
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
LM2:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
LM3:
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
LM4:
	movq	-32(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
LM5:
	nop
	popq	%rbp
LCFI2:
	ret
LFE1:
	.globl _horiz_flip
_horiz_flip:
LFB2:
LM6:
	pushq	%rbp
LCFI3:
	movq	%rsp, %rbp
LCFI4:
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
LBB2:
LM7:
	movl	$0, -4(%rbp)
	jmp	L3
L6:
LBB3:
LM8:
	movl	$0, -8(%rbp)
	jmp	L4
L5:
LM9:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	$2, %eax
	subl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_swap
LM10:
	addl	$1, -8(%rbp)
L4:
	cmpl	$0, -8(%rbp)
	jle	L5
LBE3:
LM11:
	addl	$1, -4(%rbp)
L3:
	cmpl	$2, -4(%rbp)
	jle	L6
LBE2:
LM12:
	movq	-24(%rbp), %rax
LM13:
	leave
LCFI5:
	ret
LFE2:
	.globl _transpose
_transpose:
LFB3:
LM14:
	pushq	%rbp
LCFI6:
	movq	%rsp, %rbp
LCFI7:
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
LBB4:
LM15:
	movl	$0, -4(%rbp)
	jmp	L9
L12:
LBB5:
LM16:
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	L10
L11:
LM17:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_swap
LM18:
	addl	$1, -8(%rbp)
L10:
	cmpl	$2, -8(%rbp)
	jle	L11
LBE5:
LM19:
	addl	$1, -4(%rbp)
L9:
	cmpl	$2, -4(%rbp)
	jle	L12
LBE4:
LM20:
	movq	-24(%rbp), %rax
LM21:
	leave
LCFI8:
	ret
LFE3:
	.cstring
lC0:
	.ascii "%2d\0"
	.text
	.globl _print_image
_print_image:
LFB4:
LM22:
	pushq	%rbp
LCFI9:
	movq	%rsp, %rbp
LCFI10:
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
LBB6:
LM23:
	movl	$0, -4(%rbp)
	jmp	L15
L18:
LBB7:
LM24:
	movl	$0, -8(%rbp)
	jmp	L16
L17:
LM25:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	lC0(%rip), %rdi
	movl	$0, %eax
	call	_printf
LM26:
	addl	$1, -8(%rbp)
L16:
	cmpl	$2, -8(%rbp)
	jle	L17
LBE7:
LM27:
	movl	$10, %edi
	call	_putchar
LM28:
	addl	$1, -4(%rbp)
L15:
	cmpl	$2, -4(%rbp)
	jle	L18
LBE6:
LM29:
	movq	-24(%rbp), %rax
LM30:
	leave
LCFI11:
	ret
LFE4:
	.globl _main
_main:
LFB5:
LM31:
	pushq	%rbp
LCFI12:
	movq	%rsp, %rbp
LCFI13:
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
LM32:
	leaq	_image(%rip), %rdi
	call	_print_image
LM33:
	leaq	_image(%rip), %rdi
	call	_transpose
	movq	%rax, %rdi
	call	_print_image
LM34:
	movl	$0, %eax
LM35:
	leave
LCFI14:
	ret
LFE5:
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
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE6:
LSFDE8:
	.set L$set$25,LEFDE8-LASFDE8
	.long L$set$25
LASFDE8:
	.set L$set$26,Lframe0-Lsection__debug_frame
	.long L$set$26
	.quad	LFB5
	.set L$set$27,LFE5-LFB5
	.quad L$set$27
	.byte	0x4
	.set L$set$28,LCFI12-LFB5
	.long L$set$28
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$29,LCFI13-LCFI12
	.long L$set$29
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$30,LCFI14-LCFI13
	.long L$set$30
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE8:
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$31,LECIE1-LSCIE1
	.long L$set$31
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
LSFDE11:
	.set L$set$32,LEFDE11-LASFDE11
	.long L$set$32
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB1-.
	.set L$set$33,LFE1-LFB1
	.quad L$set$33
	.byte	0
	.byte	0x4
	.set L$set$34,LCFI0-LFB1
	.long L$set$34
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$35,LCFI1-LCFI0
	.long L$set$35
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$36,LCFI2-LCFI1
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
	.quad	LFB2-.
	.set L$set$38,LFE2-LFB2
	.quad L$set$38
	.byte	0
	.byte	0x4
	.set L$set$39,LCFI3-LFB2
	.long L$set$39
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$40,LCFI4-LCFI3
	.long L$set$40
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$41,LCFI5-LCFI4
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
	.quad	LFB3-.
	.set L$set$43,LFE3-LFB3
	.quad L$set$43
	.byte	0
	.byte	0x4
	.set L$set$44,LCFI6-LFB3
	.long L$set$44
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$45,LCFI7-LCFI6
	.long L$set$45
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$46,LCFI8-LCFI7
	.long L$set$46
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE15:
LSFDE17:
	.set L$set$47,LEFDE17-LASFDE17
	.long L$set$47
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB4-.
	.set L$set$48,LFE4-LFB4
	.quad L$set$48
	.byte	0
	.byte	0x4
	.set L$set$49,LCFI9-LFB4
	.long L$set$49
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$50,LCFI10-LCFI9
	.long L$set$50
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$51,LCFI11-LCFI10
	.long L$set$51
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE17:
LSFDE19:
	.set L$set$52,LEFDE19-LASFDE19
	.long L$set$52
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LFB5-.
	.set L$set$53,LFE5-LFB5
	.quad L$set$53
	.byte	0
	.byte	0x4
	.set L$set$54,LCFI12-LFB5
	.long L$set$54
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$55,LCFI13-LCFI12
	.long L$set$55
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$56,LCFI14-LCFI13
	.long L$set$56
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE19:
	.text
Letext0:
	.section __DWARF,__debug_info,regular,debug
Lsection__debug_info:
Ldebug_info0:
	.long	0x709
	.word	0x2
	.set L$set$57,Ldebug_abbrev0-Lsection__debug_abbrev
	.long L$set$57
	.byte	0x8
	.byte	0x1
	.ascii "GNU C11 6.3.0 -fPIC -feliminate-unused-debug-symbols -mmacosx-version-min=10.11.6 -mtune=core2 -g\0"
	.byte	0x1
	.ascii "img_process.c\0"
	.ascii "/Users/huiw/Desktop/Courseware/C_Programming_A_Modern_Approach/C/examples/ch9-pointers\0"
	.quad	Ltext0
	.quad	Letext0
	.set L$set$58,Ldebug_line0-Lsection__debug_line
	.long L$set$58
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
	.long	0x12c
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.byte	0x4
	.ascii "__int64_t\0"
	.byte	0x2
	.byte	0x2e
	.long	0x159
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
	.long	0x19c
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
	.long	0x148
	.byte	0x4
	.ascii "fpos_t\0"
	.byte	0x4
	.byte	0x4d
	.long	0x1c0
	.byte	0x6
	.ascii "__sbuf\0"
	.byte	0x10
	.byte	0x4
	.byte	0x58
	.long	0x214
	.byte	0x7
	.ascii "_base\0"
	.byte	0x4
	.byte	0x59
	.long	0x214
	.byte	0x2
	.byte	0x23
	.byte	0
	.byte	0x7
	.ascii "_size\0"
	.byte	0x4
	.byte	0x5a
	.long	0x12c
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0
	.byte	0x8
	.byte	0x8
	.long	0xf8
	.byte	0x6
	.ascii "__sFILE\0"
	.byte	0x98
	.byte	0x4
	.byte	0x7a
	.long	0x36a
	.byte	0x7
	.ascii "_p\0"
	.byte	0x4
	.byte	0x7b
	.long	0x214
	.byte	0x2
	.byte	0x23
	.byte	0
	.byte	0x7
	.ascii "_r\0"
	.byte	0x4
	.byte	0x7c
	.long	0x12c
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0x7
	.ascii "_w\0"
	.byte	0x4
	.byte	0x7d
	.long	0x12c
	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0x7
	.ascii "_flags\0"
	.byte	0x4
	.byte	0x7e
	.long	0x109
	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0x7
	.ascii "_file\0"
	.byte	0x4
	.byte	0x7f
	.long	0x109
	.byte	0x2
	.byte	0x23
	.byte	0x12
	.byte	0x7
	.ascii "_bf\0"
	.byte	0x4
	.byte	0x80
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.byte	0x18
	.byte	0x7
	.ascii "_lbfsize\0"
	.byte	0x4
	.byte	0x81
	.long	0x12c
	.byte	0x2
	.byte	0x23
	.byte	0x28
	.byte	0x7
	.ascii "_cookie\0"
	.byte	0x4
	.byte	0x84
	.long	0x1be
	.byte	0x2
	.byte	0x23
	.byte	0x30
	.byte	0x7
	.ascii "_close\0"
	.byte	0x4
	.byte	0x85
	.long	0x37a
	.byte	0x2
	.byte	0x23
	.byte	0x38
	.byte	0x7
	.ascii "_read\0"
	.byte	0x4
	.byte	0x86
	.long	0x3a0
	.byte	0x2
	.byte	0x23
	.byte	0x40
	.byte	0x7
	.ascii "_seek\0"
	.byte	0x4
	.byte	0x87
	.long	0x3c0
	.byte	0x2
	.byte	0x23
	.byte	0x48
	.byte	0x7
	.ascii "_write\0"
	.byte	0x4
	.byte	0x88
	.long	0x3eb
	.byte	0x2
	.byte	0x23
	.byte	0x50
	.byte	0x7
	.ascii "_ub\0"
	.byte	0x4
	.byte	0x8b
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.byte	0x58
	.byte	0x7
	.ascii "_extra\0"
	.byte	0x4
	.byte	0x8c
	.long	0x3fc
	.byte	0x2
	.byte	0x23
	.byte	0x68
	.byte	0x7
	.ascii "_ur\0"
	.byte	0x4
	.byte	0x8d
	.long	0x12c
	.byte	0x2
	.byte	0x23
	.byte	0x70
	.byte	0x7
	.ascii "_ubuf\0"
	.byte	0x4
	.byte	0x90
	.long	0x402
	.byte	0x2
	.byte	0x23
	.byte	0x74
	.byte	0x7
	.ascii "_nbuf\0"
	.byte	0x4
	.byte	0x91
	.long	0x412
	.byte	0x2
	.byte	0x23
	.byte	0x77
	.byte	0x7
	.ascii "_lb\0"
	.byte	0x4
	.byte	0x94
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.byte	0x78
	.byte	0x7
	.ascii "_blksize\0"
	.byte	0x4
	.byte	0x97
	.long	0x12c
	.byte	0x3
	.byte	0x23
	.byte	0x88,0x1
	.byte	0x7
	.ascii "_offset\0"
	.byte	0x4
	.byte	0x98
	.long	0x1d6
	.byte	0x3
	.byte	0x23
	.byte	0x90,0x1
	.byte	0
	.byte	0x9
	.byte	0x1
	.long	0x12c
	.long	0x37a
	.byte	0xa
	.long	0x1be
	.byte	0
	.byte	0x8
	.byte	0x8
	.long	0x36a
	.byte	0x9
	.byte	0x1
	.long	0x12c
	.long	0x39a
	.byte	0xa
	.long	0x1be
	.byte	0xa
	.long	0x39a
	.byte	0xa
	.long	0x12c
	.byte	0
	.byte	0x8
	.byte	0x8
	.long	0x19c
	.byte	0x8
	.byte	0x8
	.long	0x380
	.byte	0x9
	.byte	0x1
	.long	0x1d6
	.long	0x3c0
	.byte	0xa
	.long	0x1be
	.byte	0xa
	.long	0x1d6
	.byte	0xa
	.long	0x12c
	.byte	0
	.byte	0x8
	.byte	0x8
	.long	0x3a6
	.byte	0x9
	.byte	0x1
	.long	0x12c
	.long	0x3e0
	.byte	0xa
	.long	0x1be
	.byte	0xa
	.long	0x3e0
	.byte	0xa
	.long	0x12c
	.byte	0
	.byte	0x8
	.byte	0x8
	.long	0x1a4
	.byte	0x3
	.long	0x3e0
	.byte	0x8
	.byte	0x8
	.long	0x3c6
	.byte	0xb
	.ascii "__sFILEX\0"
	.byte	0x1
	.byte	0x8
	.byte	0x8
	.long	0x3f1
	.byte	0xc
	.long	0xf8
	.long	0x412
	.byte	0xd
	.long	0x190
	.byte	0x2
	.byte	0
	.byte	0xc
	.long	0xf8
	.long	0x422
	.byte	0xd
	.long	0x190
	.byte	0
	.byte	0
	.byte	0x4
	.ascii "FILE\0"
	.byte	0x4
	.byte	0x99
	.long	0x21a
	.byte	0xe
	.ascii "__stdinp\0"
	.byte	0x4
	.byte	0x9c
	.long	0x440
	.byte	0x1
	.byte	0x1
	.byte	0x8
	.byte	0x8
	.long	0x422
	.byte	0xe
	.ascii "__stdoutp\0"
	.byte	0x4
	.byte	0x9d
	.long	0x440
	.byte	0x1
	.byte	0x1
	.byte	0xe
	.ascii "__stderrp\0"
	.byte	0x4
	.byte	0x9e
	.long	0x440
	.byte	0x1
	.byte	0x1
	.byte	0xf
	.ascii "sys_nerr\0"
	.byte	0x4
	.word	0x1c4
	.long	0x133
	.byte	0x1
	.byte	0x1
	.byte	0xc
	.long	0x3e6
	.long	0x48a
	.byte	0x10
	.byte	0
	.byte	0x3
	.long	0x47f
	.byte	0xf
	.ascii "sys_errlist\0"
	.byte	0x4
	.word	0x1c5
	.long	0x48a
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.ascii "image_t\0"
	.byte	0x1
	.byte	0x5
	.long	0x4b4
	.byte	0xc
	.long	0x12c
	.long	0x4ca
	.byte	0xd
	.long	0x190
	.byte	0x2
	.byte	0xd
	.long	0x190
	.byte	0x2
	.byte	0
	.byte	0x4
	.ascii "ptr_image_t\0"
	.byte	0x1
	.byte	0x7
	.long	0x4dd
	.byte	0x8
	.byte	0x8
	.long	0x4a5
	.byte	0x11
	.ascii "image\0"
	.byte	0x1
	.byte	0x9
	.long	0x4a5
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	_image
	.byte	0x12
	.byte	0x1
	.ascii "main\0"
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.long	0x12c
	.quad	LFB5
	.quad	LFE5
	.set L$set$59,LLST4-Lsection__debug_loc
	.long L$set$59
	.long	0x540
	.byte	0x13
	.ascii "argc\0"
	.byte	0x1
	.byte	0x33
	.long	0x12c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x13
	.ascii "argv\0"
	.byte	0x1
	.byte	0x33
	.long	0x540
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x8
	.byte	0x8
	.long	0x39a
	.byte	0x12
	.byte	0x1
	.ascii "print_image\0"
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.long	0x4ca
	.quad	LFB4
	.quad	LFE4
	.set L$set$60,LLST3-Lsection__debug_loc
	.long L$set$60
	.long	0x5c3
	.byte	0x13
	.ascii "pimg\0"
	.byte	0x1
	.byte	0x27
	.long	0x4ca
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x14
	.quad	LBB6
	.quad	LBE6
	.byte	0x15
	.ascii "row\0"
	.byte	0x1
	.byte	0x29
	.long	0x12c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x14
	.quad	LBB7
	.quad	LBE7
	.byte	0x15
	.ascii "col\0"
	.byte	0x1
	.byte	0x2a
	.long	0x12c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x1
	.ascii "transpose\0"
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.long	0x4ca
	.quad	LFB3
	.quad	LFE3
	.set L$set$61,LLST2-Lsection__debug_loc
	.long L$set$61
	.long	0x63e
	.byte	0x13
	.ascii "pimg\0"
	.byte	0x1
	.byte	0x1c
	.long	0x4ca
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x14
	.quad	LBB4
	.quad	LBE4
	.byte	0x15
	.ascii "row\0"
	.byte	0x1
	.byte	0x1e
	.long	0x12c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x14
	.quad	LBB5
	.quad	LBE5
	.byte	0x15
	.ascii "col\0"
	.byte	0x1
	.byte	0x1f
	.long	0x12c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x1
	.ascii "horiz_flip\0"
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.long	0x4ca
	.quad	LFB2
	.quad	LFE2
	.set L$set$62,LLST1-Lsection__debug_loc
	.long L$set$62
	.long	0x6ba
	.byte	0x13
	.ascii "pimg\0"
	.byte	0x1
	.byte	0x11
	.long	0x4ca
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x14
	.quad	LBB2
	.quad	LBE2
	.byte	0x15
	.ascii "row\0"
	.byte	0x1
	.byte	0x13
	.long	0x12c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x14
	.quad	LBB3
	.quad	LBE3
	.byte	0x15
	.ascii "col\0"
	.byte	0x1
	.byte	0x14
	.long	0x12c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x1
	.ascii "swap\0"
	.byte	0x1
	.byte	0xb
	.byte	0x1
	.quad	LFB1
	.quad	LFE1
	.set L$set$63,LLST0-Lsection__debug_loc
	.long L$set$63
	.long	0x706
	.byte	0x13
	.ascii "pa\0"
	.byte	0x1
	.byte	0xb
	.long	0x706
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x13
	.ascii "pb\0"
	.byte	0x1
	.byte	0xb
	.long	0x706
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x15
	.ascii "temp\0"
	.byte	0x1
	.byte	0xc
	.long	0x12c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x8
	.byte	0x8
	.long	0x12c
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
	.byte	0x2
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
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
	.byte	0
	.section __DWARF,__debug_loc,regular,debug
Lsection__debug_loc:
Ldebug_loc0:
LLST4:
	.set L$set$64,LFB5-Ltext0
	.quad L$set$64
	.set L$set$65,LCFI12-Ltext0
	.quad L$set$65
	.word	0x2
	.byte	0x77
	.byte	0x8
	.set L$set$66,LCFI12-Ltext0
	.quad L$set$66
	.set L$set$67,LCFI13-Ltext0
	.quad L$set$67
	.word	0x2
	.byte	0x77
	.byte	0x10
	.set L$set$68,LCFI13-Ltext0
	.quad L$set$68
	.set L$set$69,LCFI14-Ltext0
	.quad L$set$69
	.word	0x2
	.byte	0x76
	.byte	0x10
	.set L$set$70,LCFI14-Ltext0
	.quad L$set$70
	.set L$set$71,LFE5-Ltext0
	.quad L$set$71
	.word	0x2
	.byte	0x77
	.byte	0x8
	.quad	0
	.quad	0
LLST3:
	.set L$set$72,LFB4-Ltext0
	.quad L$set$72
	.set L$set$73,LCFI9-Ltext0
	.quad L$set$73
	.word	0x2
	.byte	0x77
	.byte	0x8
	.set L$set$74,LCFI9-Ltext0
	.quad L$set$74
	.set L$set$75,LCFI10-Ltext0
	.quad L$set$75
	.word	0x2
	.byte	0x77
	.byte	0x10
	.set L$set$76,LCFI10-Ltext0
	.quad L$set$76
	.set L$set$77,LCFI11-Ltext0
	.quad L$set$77
	.word	0x2
	.byte	0x76
	.byte	0x10
	.set L$set$78,LCFI11-Ltext0
	.quad L$set$78
	.set L$set$79,LFE4-Ltext0
	.quad L$set$79
	.word	0x2
	.byte	0x77
	.byte	0x8
	.quad	0
	.quad	0
LLST2:
	.set L$set$80,LFB3-Ltext0
	.quad L$set$80
	.set L$set$81,LCFI6-Ltext0
	.quad L$set$81
	.word	0x2
	.byte	0x77
	.byte	0x8
	.set L$set$82,LCFI6-Ltext0
	.quad L$set$82
	.set L$set$83,LCFI7-Ltext0
	.quad L$set$83
	.word	0x2
	.byte	0x77
	.byte	0x10
	.set L$set$84,LCFI7-Ltext0
	.quad L$set$84
	.set L$set$85,LCFI8-Ltext0
	.quad L$set$85
	.word	0x2
	.byte	0x76
	.byte	0x10
	.set L$set$86,LCFI8-Ltext0
	.quad L$set$86
	.set L$set$87,LFE3-Ltext0
	.quad L$set$87
	.word	0x2
	.byte	0x77
	.byte	0x8
	.quad	0
	.quad	0
LLST1:
	.set L$set$88,LFB2-Ltext0
	.quad L$set$88
	.set L$set$89,LCFI3-Ltext0
	.quad L$set$89
	.word	0x2
	.byte	0x77
	.byte	0x8
	.set L$set$90,LCFI3-Ltext0
	.quad L$set$90
	.set L$set$91,LCFI4-Ltext0
	.quad L$set$91
	.word	0x2
	.byte	0x77
	.byte	0x10
	.set L$set$92,LCFI4-Ltext0
	.quad L$set$92
	.set L$set$93,LCFI5-Ltext0
	.quad L$set$93
	.word	0x2
	.byte	0x76
	.byte	0x10
	.set L$set$94,LCFI5-Ltext0
	.quad L$set$94
	.set L$set$95,LFE2-Ltext0
	.quad L$set$95
	.word	0x2
	.byte	0x77
	.byte	0x8
	.quad	0
	.quad	0
LLST0:
	.set L$set$96,LFB1-Ltext0
	.quad L$set$96
	.set L$set$97,LCFI0-Ltext0
	.quad L$set$97
	.word	0x2
	.byte	0x77
	.byte	0x8
	.set L$set$98,LCFI0-Ltext0
	.quad L$set$98
	.set L$set$99,LCFI1-Ltext0
	.quad L$set$99
	.word	0x2
	.byte	0x77
	.byte	0x10
	.set L$set$100,LCFI1-Ltext0
	.quad L$set$100
	.set L$set$101,LCFI2-Ltext0
	.quad L$set$101
	.word	0x2
	.byte	0x76
	.byte	0x10
	.set L$set$102,LCFI2-Ltext0
	.quad L$set$102
	.set L$set$103,LFE1-Ltext0
	.quad L$set$103
	.word	0x2
	.byte	0x77
	.byte	0x8
	.quad	0
	.quad	0
	.section __DWARF,__debug_pubnames,regular,debug
Lsection__debug_pubnames:
	.long	0x57
	.word	0x2
	.set L$set$104,Ldebug_info0-Lsection__debug_info
	.long L$set$104
	.long	0x70d
	.long	0x4e3
	.ascii "image\0"
	.long	0x4fb
	.ascii "main\0"
	.long	0x546
	.ascii "print_image\0"
	.long	0x5c3
	.ascii "transpose\0"
	.long	0x63e
	.ascii "horiz_flip\0"
	.long	0x6ba
	.ascii "swap\0"
	.long	0
	.section __DWARF,__debug_pubtypes,regular,debug
Lsection__debug_pubtypes:
	.long	0x13c
	.word	0x2
	.set L$set$105,Ldebug_info0-Lsection__debug_info
	.long L$set$105
	.long	0x70d
	.long	0xe9
	.ascii "signed char\0"
	.long	0xf8
	.ascii "unsigned char\0"
	.long	0x109
	.ascii "short int\0"
	.long	0x116
	.ascii "short unsigned int\0"
	.long	0x12c
	.ascii "int\0"
	.long	0x138
	.ascii "unsigned int\0"
	.long	0x159
	.ascii "long long int\0"
	.long	0x148
	.ascii "__int64_t\0"
	.long	0x16a
	.ascii "long long unsigned int\0"
	.long	0x184
	.ascii "long int\0"
	.long	0x190
	.ascii "sizetype\0"
	.long	0x19c
	.ascii "char\0"
	.long	0x1a9
	.ascii "long unsigned int\0"
	.long	0x1c0
	.ascii "__darwin_off_t\0"
	.long	0x1d6
	.ascii "fpos_t\0"
	.long	0x1e4
	.ascii "__sbuf\0"
	.long	0x21a
	.ascii "__sFILE\0"
	.long	0x422
	.ascii "FILE\0"
	.long	0x4a5
	.ascii "image_t\0"
	.long	0x4ca
	.ascii "ptr_image_t\0"
	.long	0
	.section __DWARF,__debug_aranges,regular,debug
Lsection__debug_aranges:
	.long	0x2c
	.word	0x2
	.set L$set$106,Ldebug_info0-Lsection__debug_info
	.long L$set$106
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	Ltext0
	.set L$set$107,Letext0-Ltext0
	.quad L$set$107
	.quad	0
	.quad	0
	.section __DWARF,__debug_line,regular,debug
Lsection__debug_line:
Ldebug_line0:
	.set L$set$108,LELT0-LSLT0
	.long L$set$108
LSLT0:
	.word	0x2
	.set L$set$109,LELTP0-LASLTP0
	.long L$set$109
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
	.ascii "img_process.c\0"
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
	.byte	0x21
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
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM6
	.byte	0x19
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM7
	.byte	0x19
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM8
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM9
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM10
	.byte	0x16
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM11
	.byte	0x16
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM12
	.byte	0x1d
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM13
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM14
	.byte	0x19
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
	.quad	LM17
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM18
	.byte	0x16
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM19
	.byte	0x16
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM20
	.byte	0x1d
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM21
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM22
	.byte	0x19
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM23
	.byte	0x19
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM24
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM25
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM26
	.byte	0x16
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM27
	.byte	0x1a
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM28
	.byte	0x13
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM29
	.byte	0x1e
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM30
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM31
	.byte	0x19
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM32
	.byte	0x19
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM33
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM34
	.byte	0x19
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM35
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
