	.text
Ltext0:
	.globl _void_sz
	.const
	.align 2
_void_sz:
	.long	1
	.globl _void_pointer_sz
	.align 2
_void_pointer_sz:
	.long	4
	.cstring
lC0:
	.ascii "%ld\12\0"
	.text
	.globl _main
_main:
LFB5:
LM1:
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	pushl	%ebx
	subl	$4, %esp
LCFI2:
	call	___x86.get_pc_thunk.bx
L1$pb:
LM2:
	movl	$1, %eax
	subl	$8, %esp
	pushl	%eax
	leal	lC0-L1$pb(%ebx), %eax
	pushl	%eax
	call	_printf
	addl	$16, %esp
LM3:
	movl	$4, %eax
	subl	$8, %esp
	pushl	%eax
	leal	lC0-L1$pb(%ebx), %eax
	pushl	%eax
	call	_printf
	addl	$16, %esp
LM4:
	movl	$0, %eax
LM5:
	movl	-4(%ebp), %ebx
	leave
LCFI3:
	ret
LFE5:
	.weak_definition	___x86.get_pc_thunk.bx
	.private_extern	___x86.get_pc_thunk.bx
___x86.get_pc_thunk.bx:
LFB6:
	movl	(%esp), %ebx
	ret
LFE6:
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
	.byte	0x7c
	.byte	0x8
	.byte	0xc
	.byte	0x4
	.byte	0x4
	.byte	0x88
	.byte	0x1
	.align 2
LECIE0:
LSFDE0:
	.set L$set$1,LEFDE0-LASFDE0
	.long L$set$1
LASFDE0:
	.set L$set$2,Lframe0-Lsection__debug_frame
	.long L$set$2
	.long	LFB5
	.set L$set$3,LFE5-LFB5
	.long L$set$3
	.byte	0x4
	.set L$set$4,LCFI0-LFB5
	.long L$set$4
	.byte	0xe
	.byte	0x8
	.byte	0x85
	.byte	0x2
	.byte	0x4
	.set L$set$5,LCFI1-LCFI0
	.long L$set$5
	.byte	0xd
	.byte	0x5
	.byte	0x4
	.set L$set$6,LCFI2-LCFI1
	.long L$set$6
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$7,LCFI3-LCFI2
	.long L$set$7
	.byte	0xc5
	.byte	0xc3
	.byte	0xc
	.byte	0x4
	.byte	0x4
	.align 2
LEFDE0:
LSFDE2:
	.set L$set$8,LEFDE2-LASFDE2
	.long L$set$8
LASFDE2:
	.set L$set$9,Lframe0-Lsection__debug_frame
	.long L$set$9
	.long	LFB6
	.set L$set$10,LFE6-LFB6
	.long L$set$10
	.align 2
LEFDE2:
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$11,LECIE1-LSCIE1
	.long L$set$11
LSCIE1:
	.long	0
	.byte	0x1
	.ascii "zR\0"
	.byte	0x1
	.byte	0x7c
	.byte	0x8
	.byte	0x1
	.byte	0x10
	.byte	0xc
	.byte	0x5
	.byte	0x4
	.byte	0x88
	.byte	0x1
	.align 2
LECIE1:
LSFDE5:
	.set L$set$12,LEFDE5-LASFDE5
	.long L$set$12
LASFDE5:
	.long	LASFDE5-EH_frame1
	.long	LFB5-.
	.set L$set$13,LFE5-LFB5
	.long L$set$13
	.byte	0
	.byte	0x4
	.set L$set$14,LCFI0-LFB5
	.long L$set$14
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$15,LCFI1-LCFI0
	.long L$set$15
	.byte	0xd
	.byte	0x4
	.byte	0x4
	.set L$set$16,LCFI2-LCFI1
	.long L$set$16
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$17,LCFI3-LCFI2
	.long L$set$17
	.byte	0xc4
	.byte	0xc3
	.byte	0xc
	.byte	0x5
	.byte	0x4
	.align 2
LEFDE5:
LSFDE7:
	.set L$set$18,LEFDE7-LASFDE7
	.long L$set$18
LASFDE7:
	.long	LASFDE7-EH_frame1
	.long	LFB6-.
	.set L$set$19,LFE6-LFB6
	.long L$set$19
	.byte	0
	.align 2
LEFDE7:
	.text
Letext0:
	.section __DWARF,__debug_info,regular,debug
Lsection__debug_info:
Ldebug_info0:
	.long	0x592
	.word	0x2
	.set L$set$20,Ldebug_abbrev0-Lsection__debug_abbrev
	.long L$set$20
	.byte	0x4
	.byte	0x1
	.ascii "GNU C11 6.3.0 -fPIC -feliminate-unused-debug-symbols -m32 -mmacosx-version-min=10.11.6 -mtune=core2 -g\0"
	.byte	0x1
	.ascii "sizeof.c\0"
	.ascii "/Users/huiw/Programming/C/examples/sizeof_void\0"
	.long	Ltext0
	.long	Letext0
	.set L$set$21,Ldebug_line0-Lsection__debug_line
	.long L$set$21
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
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.ascii "sizetype\0"
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.byte	0x3
	.long	0x16c
	.byte	0x4
	.ascii "__darwin_size_t\0"
	.byte	0x2
	.byte	0x5c
	.long	0x190
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.byte	0x4
	.ascii "__darwin_off_t\0"
	.byte	0x3
	.byte	0x47
	.long	0x118
	.byte	0x5
	.byte	0x4
	.byte	0x4
	.ascii "size_t\0"
	.byte	0x4
	.byte	0x1e
	.long	0x179
	.byte	0x3
	.long	0x1bd
	.byte	0x4
	.ascii "fpos_t\0"
	.byte	0x5
	.byte	0x4d
	.long	0x1a5
	.byte	0x6
	.ascii "__sbuf\0"
	.byte	0x8
	.byte	0x5
	.byte	0x58
	.long	0x20e
	.byte	0x7
	.ascii "_base\0"
	.byte	0x5
	.byte	0x59
	.long	0x20e
	.byte	0x2
	.byte	0x23
	.byte	0
	.byte	0x7
	.ascii "_size\0"
	.byte	0x5
	.byte	0x5a
	.long	0xfc
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0
	.byte	0x8
	.byte	0x4
	.long	0xc8
	.byte	0x6
	.ascii "__sFILE\0"
	.byte	0x58
	.byte	0x5
	.byte	0x7a
	.long	0x362
	.byte	0x7
	.ascii "_p\0"
	.byte	0x5
	.byte	0x7b
	.long	0x20e
	.byte	0x2
	.byte	0x23
	.byte	0
	.byte	0x7
	.ascii "_r\0"
	.byte	0x5
	.byte	0x7c
	.long	0xfc
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0x7
	.ascii "_w\0"
	.byte	0x5
	.byte	0x7d
	.long	0xfc
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0x7
	.ascii "_flags\0"
	.byte	0x5
	.byte	0x7e
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0x7
	.ascii "_file\0"
	.byte	0x5
	.byte	0x7f
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.byte	0xe
	.byte	0x7
	.ascii "_bf\0"
	.byte	0x5
	.byte	0x80
	.long	0x1de
	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0x7
	.ascii "_lbfsize\0"
	.byte	0x5
	.byte	0x81
	.long	0xfc
	.byte	0x2
	.byte	0x23
	.byte	0x18
	.byte	0x7
	.ascii "_cookie\0"
	.byte	0x5
	.byte	0x84
	.long	0x1bb
	.byte	0x2
	.byte	0x23
	.byte	0x1c
	.byte	0x7
	.ascii "_close\0"
	.byte	0x5
	.byte	0x85
	.long	0x372
	.byte	0x2
	.byte	0x23
	.byte	0x20
	.byte	0x7
	.ascii "_read\0"
	.byte	0x5
	.byte	0x86
	.long	0x398
	.byte	0x2
	.byte	0x23
	.byte	0x24
	.byte	0x7
	.ascii "_seek\0"
	.byte	0x5
	.byte	0x87
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.byte	0x28
	.byte	0x7
	.ascii "_write\0"
	.byte	0x5
	.byte	0x88
	.long	0x3e3
	.byte	0x2
	.byte	0x23
	.byte	0x2c
	.byte	0x7
	.ascii "_ub\0"
	.byte	0x5
	.byte	0x8b
	.long	0x1de
	.byte	0x2
	.byte	0x23
	.byte	0x30
	.byte	0x7
	.ascii "_extra\0"
	.byte	0x5
	.byte	0x8c
	.long	0x3f4
	.byte	0x2
	.byte	0x23
	.byte	0x38
	.byte	0x7
	.ascii "_ur\0"
	.byte	0x5
	.byte	0x8d
	.long	0xfc
	.byte	0x2
	.byte	0x23
	.byte	0x3c
	.byte	0x7
	.ascii "_ubuf\0"
	.byte	0x5
	.byte	0x90
	.long	0x3fa
	.byte	0x2
	.byte	0x23
	.byte	0x40
	.byte	0x7
	.ascii "_nbuf\0"
	.byte	0x5
	.byte	0x91
	.long	0x40a
	.byte	0x2
	.byte	0x23
	.byte	0x43
	.byte	0x7
	.ascii "_lb\0"
	.byte	0x5
	.byte	0x94
	.long	0x1de
	.byte	0x2
	.byte	0x23
	.byte	0x44
	.byte	0x7
	.ascii "_blksize\0"
	.byte	0x5
	.byte	0x97
	.long	0xfc
	.byte	0x2
	.byte	0x23
	.byte	0x4c
	.byte	0x7
	.ascii "_offset\0"
	.byte	0x5
	.byte	0x98
	.long	0x1d0
	.byte	0x2
	.byte	0x23
	.byte	0x50
	.byte	0
	.byte	0x9
	.byte	0x1
	.long	0xfc
	.long	0x372
	.byte	0xa
	.long	0x1bb
	.byte	0
	.byte	0x8
	.byte	0x4
	.long	0x362
	.byte	0x9
	.byte	0x1
	.long	0xfc
	.long	0x392
	.byte	0xa
	.long	0x1bb
	.byte	0xa
	.long	0x392
	.byte	0xa
	.long	0xfc
	.byte	0
	.byte	0x8
	.byte	0x4
	.long	0x16c
	.byte	0x8
	.byte	0x4
	.long	0x378
	.byte	0x9
	.byte	0x1
	.long	0x1d0
	.long	0x3b8
	.byte	0xa
	.long	0x1bb
	.byte	0xa
	.long	0x1d0
	.byte	0xa
	.long	0xfc
	.byte	0
	.byte	0x8
	.byte	0x4
	.long	0x39e
	.byte	0x9
	.byte	0x1
	.long	0xfc
	.long	0x3d8
	.byte	0xa
	.long	0x1bb
	.byte	0xa
	.long	0x3d8
	.byte	0xa
	.long	0xfc
	.byte	0
	.byte	0x8
	.byte	0x4
	.long	0x174
	.byte	0x3
	.long	0x3d8
	.byte	0x8
	.byte	0x4
	.long	0x3be
	.byte	0xb
	.ascii "__sFILEX\0"
	.byte	0x1
	.byte	0x8
	.byte	0x4
	.long	0x3e9
	.byte	0xc
	.long	0xc8
	.long	0x40a
	.byte	0xd
	.long	0x160
	.byte	0x2
	.byte	0
	.byte	0xc
	.long	0xc8
	.long	0x41a
	.byte	0xd
	.long	0x160
	.byte	0
	.byte	0
	.byte	0x4
	.ascii "FILE\0"
	.byte	0x5
	.byte	0x99
	.long	0x214
	.byte	0xe
	.ascii "__stdinp\0"
	.byte	0x5
	.byte	0x9c
	.long	0x438
	.byte	0x1
	.byte	0x1
	.byte	0x8
	.byte	0x4
	.long	0x41a
	.byte	0xe
	.ascii "__stdoutp\0"
	.byte	0x5
	.byte	0x9d
	.long	0x438
	.byte	0x1
	.byte	0x1
	.byte	0xe
	.ascii "__stderrp\0"
	.byte	0x5
	.byte	0x9e
	.long	0x438
	.byte	0x1
	.byte	0x1
	.byte	0xf
	.ascii "sys_nerr\0"
	.byte	0x5
	.word	0x1c4
	.long	0x103
	.byte	0x1
	.byte	0x1
	.byte	0xc
	.long	0x3de
	.long	0x482
	.byte	0x10
	.byte	0
	.byte	0x3
	.long	0x477
	.byte	0xf
	.ascii "sys_errlist\0"
	.byte	0x5
	.word	0x1c5
	.long	0x482
	.byte	0x1
	.byte	0x1
	.byte	0xe
	.ascii "__mb_cur_max\0"
	.byte	0x6
	.byte	0x75
	.long	0xfc
	.byte	0x1
	.byte	0x1
	.byte	0xf
	.ascii "suboptarg\0"
	.byte	0x6
	.word	0x13b
	.long	0x392
	.byte	0x1
	.byte	0x1
	.byte	0xf
	.ascii "optarg\0"
	.byte	0x7
	.word	0x1fe
	.long	0x392
	.byte	0x1
	.byte	0x1
	.byte	0xf
	.ascii "optind\0"
	.byte	0x7
	.word	0x1ff
	.long	0xfc
	.byte	0x1
	.byte	0x1
	.byte	0xf
	.ascii "opterr\0"
	.byte	0x7
	.word	0x1ff
	.long	0xfc
	.byte	0x1
	.byte	0x1
	.byte	0xf
	.ascii "optopt\0"
	.byte	0x7
	.word	0x1ff
	.long	0xfc
	.byte	0x1
	.byte	0x1
	.byte	0xf
	.ascii "optreset\0"
	.byte	0x7
	.word	0x2ed
	.long	0xfc
	.byte	0x1
	.byte	0x1
	.byte	0x11
	.ascii "void_sz\0"
	.byte	0x1
	.byte	0x7
	.long	0x1cb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_void_sz
	.byte	0x11
	.ascii "void_pointer_sz\0"
	.byte	0x1
	.byte	0x8
	.long	0x1cb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_void_pointer_sz
	.byte	0x12
	.byte	0x1
	.ascii "main\0"
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.long	0xfc
	.long	LFB5
	.long	LFE5
	.set L$set$22,LLST0-Lsection__debug_loc
	.long L$set$22
	.long	0x58f
	.byte	0x13
	.ascii "argc\0"
	.byte	0x1
	.byte	0xc
	.long	0xfc
	.byte	0x2
	.byte	0x91
	.byte	0
	.byte	0x13
	.ascii "argv\0"
	.byte	0x1
	.byte	0xc
	.long	0x58f
	.byte	0x2
	.byte	0x91
	.byte	0x4
	.byte	0
	.byte	0x8
	.byte	0x4
	.long	0x392
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
	.byte	0
	.section __DWARF,__debug_loc,regular,debug
Lsection__debug_loc:
Ldebug_loc0:
LLST0:
	.set L$set$23,LFB5-Ltext0
	.long L$set$23
	.set L$set$24,LCFI0-Ltext0
	.long L$set$24
	.word	0x2
	.byte	0x74
	.byte	0x4
	.set L$set$25,LCFI0-Ltext0
	.long L$set$25
	.set L$set$26,LCFI1-Ltext0
	.long L$set$26
	.word	0x2
	.byte	0x74
	.byte	0x8
	.set L$set$27,LCFI1-Ltext0
	.long L$set$27
	.set L$set$28,LCFI3-Ltext0
	.long L$set$28
	.word	0x2
	.byte	0x75
	.byte	0x8
	.set L$set$29,LCFI3-Ltext0
	.long L$set$29
	.set L$set$30,LFE5-Ltext0
	.long L$set$30
	.word	0x2
	.byte	0x74
	.byte	0x4
	.long	0
	.long	0
	.section __DWARF,__debug_pubnames,regular,debug
Lsection__debug_pubnames:
	.long	0x37
	.word	0x2
	.set L$set$31,Ldebug_info0-Lsection__debug_info
	.long L$set$31
	.long	0x596
	.long	0x51e
	.ascii "void_sz\0"
	.long	0x534
	.ascii "void_pointer_sz\0"
	.long	0x552
	.ascii "main\0"
	.long	0
	.section __DWARF,__debug_pubtypes,regular,debug
Lsection__debug_pubtypes:
	.long	0x13f
	.word	0x2
	.set L$set$32,Ldebug_info0-Lsection__debug_info
	.long L$set$32
	.long	0x596
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
	.long	0x190
	.ascii "long unsigned int\0"
	.long	0x179
	.ascii "__darwin_size_t\0"
	.long	0x1a5
	.ascii "__darwin_off_t\0"
	.long	0x1bd
	.ascii "size_t\0"
	.long	0x1d0
	.ascii "fpos_t\0"
	.long	0x1de
	.ascii "__sbuf\0"
	.long	0x214
	.ascii "__sFILE\0"
	.long	0x41a
	.ascii "FILE\0"
	.long	0
	.section __DWARF,__debug_aranges,regular,debug
Lsection__debug_aranges:
	.long	0x1c
	.word	0x2
	.set L$set$33,Ldebug_info0-Lsection__debug_info
	.long L$set$33
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	Ltext0
	.set L$set$34,Letext0-Ltext0
	.long L$set$34
	.long	0
	.long	0
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
	.ascii "/usr/include"
	.byte	0
	.ascii "/usr/include/i386"
	.byte	0
	.ascii "/usr/include/sys"
	.byte	0
	.ascii "/usr/include/sys/_types"
	.byte	0
	.byte	0
	.ascii "sizeof.c\0"
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
	.ascii "stdlib.h\0"
	.byte	0x1
	.byte	0
	.byte	0
	.ascii "unistd.h\0"
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
LELTP0:
	.byte	0
	.byte	0x5
	.byte	0x2
	.long	LM1
	.byte	0x22
	.byte	0
	.byte	0x5
	.byte	0x2
	.long	LM2
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.long	LM3
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.long	LM4
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.long	LM5
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.long	Letext0
	.byte	0
	.byte	0x1
	.byte	0x1
LELT0:
	.section __DWARF,__debug_str,regular,debug
Lsection__debug_str:
	.subsections_via_symbols
