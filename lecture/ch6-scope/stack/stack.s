	.text
Ltext0:
	.comm	_contents,400,5
	.globl _top
	.zerofill __DATA,__pu_bss2,_top,4,2
	.text
	.globl _make_empty
_make_empty:
LFB0:
LM1:
	pushq	%rbp
LCFI0:
	movq	%rsp, %rbp
LCFI1:
LM2:
	movl	$0, _top(%rip)
	nop
	popq	%rbp
LCFI2:
	ret
LFE0:
	.globl _is_empty
_is_empty:
LFB1:
LM3:
	pushq	%rbp
LCFI3:
	movq	%rsp, %rbp
LCFI4:
LM4:
	movl	_top(%rip), %eax
	testl	%eax, %eax
	sete	%al
	popq	%rbp
LCFI5:
	ret
LFE1:
	.globl _is_full
_is_full:
LFB2:
LM5:
	pushq	%rbp
LCFI6:
	movq	%rsp, %rbp
LCFI7:
LM6:
	movl	_top(%rip), %eax
	cmpl	$100, %eax
	sete	%al
	popq	%rbp
LCFI8:
	ret
LFE2:
	.cstring
lC0:
	.ascii "!is_full()\0"
lC1:
	.ascii "stack.c\0"
	.text
	.globl _push
_push:
LFB3:
LM7:
	pushq	%rbp
LCFI9:
	movq	%rsp, %rbp
LCFI10:
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
LM8:
	call	_is_full
LM9:
	movzbl	%al, %eax
LM10:
	testq	%rax, %rax
	je	L7
LM11:
	leaq	lC0(%rip), %rcx
	movl	$18, %edx
	leaq	lC1(%rip), %rsi
	leaq	___func__.1791(%rip), %rdi
	call	___assert_rtn
L7:
LM12:
	movl	_top(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, _top(%rip)
	movq	_contents@GOTPCREL(%rip), %rdx
	cltq
	movl	-4(%rbp), %ecx
	movl	%ecx, (%rdx,%rax,4)
LM13:
	nop
	leave
LCFI11:
	ret
LFE3:
	.cstring
lC2:
	.ascii "!is_empty()\0"
	.text
	.globl _pop
_pop:
LFB4:
LM14:
	pushq	%rbp
LCFI12:
	movq	%rsp, %rbp
LCFI13:
LM15:
	call	_is_empty
LM16:
	movzbl	%al, %eax
LM17:
	testq	%rax, %rax
	je	L9
LM18:
	leaq	lC2(%rip), %rcx
	movl	$23, %edx
	leaq	lC1(%rip), %rsi
	leaq	___func__.1795(%rip), %rdi
	call	___assert_rtn
L9:
LM19:
	movl	_top(%rip), %eax
	subl	$1, %eax
	movl	%eax, _top(%rip)
	movl	_top(%rip), %edx
	movq	_contents@GOTPCREL(%rip), %rax
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
LM20:
	popq	%rbp
LCFI14:
	ret
LFE4:
	.const
___func__.1791:
	.ascii "push\0"
___func__.1795:
	.ascii "pop\0"
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
	.byte	0x4
	.set L$set$4,LCFI0-LFB0
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
	.quad	LFB1
	.set L$set$9,LFE1-LFB1
	.quad L$set$9
	.byte	0x4
	.set L$set$10,LCFI3-LFB1
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
	.quad	LFB2
	.set L$set$15,LFE2-LFB2
	.quad L$set$15
	.byte	0x4
	.set L$set$16,LCFI6-LFB2
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
	.quad	LFB3
	.set L$set$21,LFE3-LFB3
	.quad L$set$21
	.byte	0x4
	.set L$set$22,LCFI9-LFB3
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
	.quad	LFB4
	.set L$set$27,LFE4-LFB4
	.quad L$set$27
	.byte	0x4
	.set L$set$28,LCFI12-LFB4
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
	.quad	LFB0-.
	.set L$set$33,LFE0-LFB0
	.quad L$set$33
	.byte	0
	.byte	0x4
	.set L$set$34,LCFI0-LFB0
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
	.quad	LFB1-.
	.set L$set$38,LFE1-LFB1
	.quad L$set$38
	.byte	0
	.byte	0x4
	.set L$set$39,LCFI3-LFB1
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
	.quad	LFB2-.
	.set L$set$43,LFE2-LFB2
	.quad L$set$43
	.byte	0
	.byte	0x4
	.set L$set$44,LCFI6-LFB2
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
	.quad	LFB3-.
	.set L$set$48,LFE3-LFB3
	.quad L$set$48
	.byte	0
	.byte	0x4
	.set L$set$49,LCFI9-LFB3
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
	.quad	LFB4-.
	.set L$set$53,LFE4-LFB4
	.quad L$set$53
	.byte	0
	.byte	0x4
	.set L$set$54,LCFI12-LFB4
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
	.long	0x263
	.word	0x2
	.set L$set$57,Ldebug_abbrev0-Lsection__debug_abbrev
	.long L$set$57
	.byte	0x8
	.byte	0x1
	.ascii "GNU C11 6.3.0 -fPIC -feliminate-unused-debug-symbols -mmacosx-version-min=10.11.6 -mtune=core2 -g\0"
	.byte	0x1
	.ascii "stack.c\0"
	.ascii "/Users/huiw/Desktop/Courseware/C_Programming_A_Modern_Approach/C/examples/ch6-scope/stack\0"
	.quad	Ltext0
	.quad	Letext0
	.set L$set$58,Ldebug_line0-Lsection__debug_line
	.long L$set$58
	.byte	0x1
	.byte	0x2
	.long	0x102
	.long	0xf6
	.byte	0x3
	.long	0xf6
	.byte	0x63
	.byte	0
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.ascii "sizetype\0"
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.byte	0x5
	.ascii "contents\0"
	.byte	0x1
	.byte	0x9
	.long	0xe6
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	_contents
	.byte	0x5
	.ascii "top\0"
	.byte	0x1
	.byte	0xa
	.long	0x102
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	_top
	.byte	0x6
	.byte	0x1
	.ascii "pop\0"
	.byte	0x1
	.byte	0x16
	.byte	0x1
	.long	0x102
	.quad	LFB4
	.quad	LFE4
	.set L$set$59,LLST4-Lsection__debug_loc
	.long L$set$59
	.long	0x174
	.byte	0x7
	.set L$set$60,LASF0-Lsection__debug_str
	.long L$set$60
	.long	0x184
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	___func__.1795
	.byte	0
	.byte	0x2
	.long	0x191
	.long	0x184
	.byte	0x3
	.long	0xf6
	.byte	0x3
	.byte	0
	.byte	0x8
	.long	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.byte	0x8
	.long	0x189
	.byte	0x9
	.byte	0x1
	.ascii "push\0"
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.quad	LFB3
	.quad	LFE3
	.set L$set$61,LLST3-Lsection__debug_loc
	.long L$set$61
	.long	0x1d9
	.byte	0xa
	.ascii "i\0"
	.byte	0x1
	.byte	0x11
	.long	0x102
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x7
	.set L$set$62,LASF0-Lsection__debug_str
	.long L$set$62
	.long	0x1e9
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	___func__.1791
	.byte	0
	.byte	0x2
	.long	0x191
	.long	0x1e9
	.byte	0x3
	.long	0xf6
	.byte	0x4
	.byte	0
	.byte	0x8
	.long	0x1d9
	.byte	0xb
	.byte	0x1
	.ascii "is_full\0"
	.byte	0x1
	.byte	0xf
	.byte	0x1
	.long	0x213
	.quad	LFB2
	.quad	LFE2
	.set L$set$63,LLST2-Lsection__debug_loc
	.long L$set$63
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.ascii "_Bool\0"
	.byte	0xb
	.byte	0x1
	.ascii "is_empty\0"
	.byte	0x1
	.byte	0xd
	.byte	0x1
	.long	0x213
	.quad	LFB1
	.quad	LFE1
	.set L$set$64,LLST1-Lsection__debug_loc
	.long L$set$64
	.byte	0xc
	.byte	0x1
	.ascii "make_empty\0"
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.quad	LFB0
	.quad	LFE0
	.set L$set$65,LLST0-Lsection__debug_loc
	.long L$set$65
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x4
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
	.byte	0x5
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
	.byte	0x6
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
	.byte	0x7
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
	.byte	0x8
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
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
	.byte	0x27
	.byte	0xc
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
LLST4:
	.set L$set$66,LFB4-Ltext0
	.quad L$set$66
	.set L$set$67,LCFI12-Ltext0
	.quad L$set$67
	.word	0x2
	.byte	0x77
	.byte	0x8
	.set L$set$68,LCFI12-Ltext0
	.quad L$set$68
	.set L$set$69,LCFI13-Ltext0
	.quad L$set$69
	.word	0x2
	.byte	0x77
	.byte	0x10
	.set L$set$70,LCFI13-Ltext0
	.quad L$set$70
	.set L$set$71,LCFI14-Ltext0
	.quad L$set$71
	.word	0x2
	.byte	0x76
	.byte	0x10
	.set L$set$72,LCFI14-Ltext0
	.quad L$set$72
	.set L$set$73,LFE4-Ltext0
	.quad L$set$73
	.word	0x2
	.byte	0x77
	.byte	0x8
	.quad	0
	.quad	0
LLST3:
	.set L$set$74,LFB3-Ltext0
	.quad L$set$74
	.set L$set$75,LCFI9-Ltext0
	.quad L$set$75
	.word	0x2
	.byte	0x77
	.byte	0x8
	.set L$set$76,LCFI9-Ltext0
	.quad L$set$76
	.set L$set$77,LCFI10-Ltext0
	.quad L$set$77
	.word	0x2
	.byte	0x77
	.byte	0x10
	.set L$set$78,LCFI10-Ltext0
	.quad L$set$78
	.set L$set$79,LCFI11-Ltext0
	.quad L$set$79
	.word	0x2
	.byte	0x76
	.byte	0x10
	.set L$set$80,LCFI11-Ltext0
	.quad L$set$80
	.set L$set$81,LFE3-Ltext0
	.quad L$set$81
	.word	0x2
	.byte	0x77
	.byte	0x8
	.quad	0
	.quad	0
LLST2:
	.set L$set$82,LFB2-Ltext0
	.quad L$set$82
	.set L$set$83,LCFI6-Ltext0
	.quad L$set$83
	.word	0x2
	.byte	0x77
	.byte	0x8
	.set L$set$84,LCFI6-Ltext0
	.quad L$set$84
	.set L$set$85,LCFI7-Ltext0
	.quad L$set$85
	.word	0x2
	.byte	0x77
	.byte	0x10
	.set L$set$86,LCFI7-Ltext0
	.quad L$set$86
	.set L$set$87,LCFI8-Ltext0
	.quad L$set$87
	.word	0x2
	.byte	0x76
	.byte	0x10
	.set L$set$88,LCFI8-Ltext0
	.quad L$set$88
	.set L$set$89,LFE2-Ltext0
	.quad L$set$89
	.word	0x2
	.byte	0x77
	.byte	0x8
	.quad	0
	.quad	0
LLST1:
	.set L$set$90,LFB1-Ltext0
	.quad L$set$90
	.set L$set$91,LCFI3-Ltext0
	.quad L$set$91
	.word	0x2
	.byte	0x77
	.byte	0x8
	.set L$set$92,LCFI3-Ltext0
	.quad L$set$92
	.set L$set$93,LCFI4-Ltext0
	.quad L$set$93
	.word	0x2
	.byte	0x77
	.byte	0x10
	.set L$set$94,LCFI4-Ltext0
	.quad L$set$94
	.set L$set$95,LCFI5-Ltext0
	.quad L$set$95
	.word	0x2
	.byte	0x76
	.byte	0x10
	.set L$set$96,LCFI5-Ltext0
	.quad L$set$96
	.set L$set$97,LFE1-Ltext0
	.quad L$set$97
	.word	0x2
	.byte	0x77
	.byte	0x8
	.quad	0
	.quad	0
LLST0:
	.set L$set$98,LFB0-Ltext0
	.quad L$set$98
	.set L$set$99,LCFI0-Ltext0
	.quad L$set$99
	.word	0x2
	.byte	0x77
	.byte	0x8
	.set L$set$100,LCFI0-Ltext0
	.quad L$set$100
	.set L$set$101,LCFI1-Ltext0
	.quad L$set$101
	.word	0x2
	.byte	0x77
	.byte	0x10
	.set L$set$102,LCFI1-Ltext0
	.quad L$set$102
	.set L$set$103,LCFI2-Ltext0
	.quad L$set$103
	.word	0x2
	.byte	0x76
	.byte	0x10
	.set L$set$104,LCFI2-Ltext0
	.quad L$set$104
	.set L$set$105,LFE0-Ltext0
	.quad L$set$105
	.word	0x2
	.byte	0x77
	.byte	0x8
	.quad	0
	.quad	0
	.section __DWARF,__debug_pubnames,regular,debug
Lsection__debug_pubnames:
	.long	0x69
	.word	0x2
	.set L$set$106,Ldebug_info0-Lsection__debug_info
	.long L$set$106
	.long	0x267
	.long	0x109
	.ascii "contents\0"
	.long	0x124
	.ascii "top\0"
	.long	0x109
	.ascii "contents\0"
	.long	0x13a
	.ascii "pop\0"
	.long	0x196
	.ascii "push\0"
	.long	0x1ee
	.ascii "is_full\0"
	.long	0x21c
	.ascii "is_empty\0"
	.long	0x242
	.ascii "make_empty\0"
	.long	0
	.section __DWARF,__debug_pubtypes,regular,debug
Lsection__debug_pubtypes:
	.long	0x36
	.word	0x2
	.set L$set$107,Ldebug_info0-Lsection__debug_info
	.long L$set$107
	.long	0x267
	.long	0xf6
	.ascii "sizetype\0"
	.long	0x102
	.ascii "int\0"
	.long	0x189
	.ascii "char\0"
	.long	0x213
	.ascii "_Bool\0"
	.long	0
	.section __DWARF,__debug_aranges,regular,debug
Lsection__debug_aranges:
	.long	0x2c
	.word	0x2
	.set L$set$108,Ldebug_info0-Lsection__debug_info
	.long L$set$108
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	Ltext0
	.set L$set$109,Letext0-Ltext0
	.quad L$set$109
	.quad	0
	.quad	0
	.section __DWARF,__debug_line,regular,debug
Lsection__debug_line:
Ldebug_line0:
	.set L$set$110,LELT0-LSLT0
	.long L$set$110
LSLT0:
	.word	0x2
	.set L$set$111,LELTP0-LASLTP0
	.long L$set$111
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
	.ascii "stack.c\0"
	.byte	0
	.byte	0
	.byte	0
	.byte	0
LELTP0:
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM1
	.byte	0x22
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM2
	.byte	0x1
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM3
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM4
	.byte	0x1
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM5
	.byte	0x19
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM6
	.byte	0x1
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
	.byte	0x1
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
	.byte	0x19
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM15
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM16
	.byte	0x1
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM17
	.byte	0x1
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM18
	.byte	0x1
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM19
	.byte	0x18
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM20
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
