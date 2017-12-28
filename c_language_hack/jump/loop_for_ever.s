	.text
Ltext0:
	.section __TEXT,__text_startup,regular,pure_instructions
	.globl _main
_main:
LFB0:
LM1:
L2:
LVL0:
L3:
	jmp	L3
LFE0:
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
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$4,LECIE1-LSCIE1
	.long L$set$4
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
LSFDE3:
	.set L$set$5,LEFDE3-LASFDE3
	.long L$set$5
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB0-.
	.set L$set$6,LFE0-LFB0
	.quad L$set$6
	.byte	0
	.align 3
LEFDE3:
	.text
Letext0:
	.section __DWARF,__debug_info,regular,debug
Lsection__debug_info:
Ldebug_info0:
	.long	0x119
	.word	0x2
	.set L$set$7,Ldebug_abbrev0-Lsection__debug_abbrev
	.long L$set$7
	.byte	0x8
	.byte	0x1
	.ascii "GNU C11 6.3.0 -fPIC -feliminate-unused-debug-symbols -mmacosx-version-min=10.11.6 -mtune=core2 -g -O\0"
	.byte	0x1
	.ascii "loop_for_ever.c\0"
	.ascii "/Users/huiw/Programming/C/examples/jump\0"
	.set L$set$8,Ldebug_line0-Lsection__debug_line
	.long L$set$8
	.byte	0x1
	.byte	0x2
	.byte	0x1
	.ascii "main\0"
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.long	0x101
	.quad	LFB0
	.quad	LFE0
	.byte	0x2
	.byte	0x77
	.byte	0x8
	.long	0x101
	.byte	0x3
	.ascii "argc\0"
	.byte	0x1
	.byte	0x1
	.long	0x101
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.ascii "argv\0"
	.byte	0x1
	.byte	0x1
	.long	0x108
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.ascii "loop\0"
	.byte	0x1
	.byte	0x3
	.quad	L2
	.byte	0
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.byte	0x6
	.byte	0x8
	.long	0x10e
	.byte	0x6
	.byte	0x8
	.long	0x114
	.byte	0x5
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
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
	.byte	0xa
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
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0x4
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
	.byte	0
	.section __DWARF,__debug_pubnames,regular,debug
Lsection__debug_pubnames:
	.long	0x17
	.word	0x2
	.set L$set$9,Ldebug_info0-Lsection__debug_info
	.long L$set$9
	.long	0x11d
	.long	0xaf
	.ascii "main\0"
	.long	0
	.section __DWARF,__debug_pubtypes,regular,debug
Lsection__debug_pubtypes:
	.long	0x1f
	.word	0x2
	.set L$set$10,Ldebug_info0-Lsection__debug_info
	.long L$set$10
	.long	0x11d
	.long	0x101
	.ascii "int\0"
	.long	0x114
	.ascii "char\0"
	.long	0
	.section __DWARF,__debug_aranges,regular,debug
Lsection__debug_aranges:
	.long	0x2c
	.word	0x2
	.set L$set$11,Ldebug_info0-Lsection__debug_info
	.long L$set$11
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	LFB0
	.set L$set$12,LFE0-LFB0
	.quad L$set$12
	.quad	0
	.quad	0
	.section __DWARF,__debug_line,regular,debug
Lsection__debug_line:
Ldebug_line0:
	.set L$set$13,LELT0-LSLT0
	.long L$set$13
LSLT0:
	.word	0x2
	.set L$set$14,LELTP0-LASLTP0
	.long L$set$14
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
	.ascii "loop_for_ever.c\0"
	.byte	0
	.byte	0
	.byte	0
	.byte	0
LELTP0:
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LM1
	.byte	0x1
	.byte	0
	.byte	0x9
	.byte	0x2
	.quad	LFE0
	.byte	0
	.byte	0x1
	.byte	0x1
LELT0:
	.section __DWARF,__debug_str,regular,debug
Lsection__debug_str:
	.subsections_via_symbols
