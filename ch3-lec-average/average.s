	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_average
	.align	4, 0x90
_average:                               ## @average
Lfunc_begin0:
	.file	1 "average.c"
	.loc	1 4 0                   ## average.c:4:0
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	movl	$3, %eax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	.loc	1 5 11 prologue_end     ## average.c:5:11
Ltmp3:
	movl	-4(%rbp), %edx
	.loc	1 5 13 is_stmt 0        ## average.c:5:13
	addl	-8(%rbp), %edx
	.loc	1 5 17                  ## average.c:5:17
	addl	-12(%rbp), %edx
	.loc	1 5 22                  ## average.c:5:22
	movl	%eax, -16(%rbp)         ## 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-16(%rbp), %esi         ## 4-byte Reload
	idivl	%esi
	.loc	1 5 3                   ## average.c:5:3
	popq	%rbp
	retq
Ltmp4:
Lfunc_end0:
	.cfi_endproc

	.globl	_square_of
	.align	4, 0x90
_square_of:                             ## @square_of
Lfunc_begin1:
	.loc	1 10 0 is_stmt 1        ## average.c:10:0
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp5:
	.cfi_def_cfa_offset 16
Ltmp6:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp7:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	.loc	1 11 10 prologue_end    ## average.c:11:10
Ltmp8:
	movl	-4(%rbp), %edi
	.loc	1 11 12 is_stmt 0       ## average.c:11:12
	imull	-4(%rbp), %edi
	.loc	1 11 3                  ## average.c:11:3
	movl	%edi, %eax
	popq	%rbp
	retq
Ltmp9:
Lfunc_end1:
	.cfi_endproc

	.globl	_cube_of
	.align	4, 0x90
_cube_of:                               ## @cube_of
Lfunc_begin2:
	.loc	1 15 0 is_stmt 1        ## average.c:15:0
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp10:
	.cfi_def_cfa_offset 16
Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp12:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	.loc	1 16 10 prologue_end    ## average.c:16:10
Ltmp13:
	movl	-4(%rbp), %edi
	.loc	1 16 12 is_stmt 0       ## average.c:16:12
	imull	-4(%rbp), %edi
	.loc	1 16 16                 ## average.c:16:16
	imull	-4(%rbp), %edi
	.loc	1 16 3                  ## average.c:16:3
	movl	%edi, %eax
	popq	%rbp
	retq
Ltmp14:
Lfunc_end2:
	.cfi_endproc

	.globl	_get_solution
	.align	4, 0x90
_get_solution:                          ## @get_solution
Lfunc_begin3:
	.loc	1 21 0 is_stmt 1        ## average.c:21:0
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp15:
	.cfi_def_cfa_offset 16
Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	.loc	1 22 18 prologue_end    ## average.c:22:18
Ltmp18:
	movl	-4(%rbp), %edi
	.loc	1 22 31 is_stmt 0       ## average.c:22:31
	movl	-4(%rbp), %eax
	.loc	1 22 21                 ## average.c:22:21
	movl	%edi, -8(%rbp)          ## 4-byte Spill
	movl	%eax, %edi
	callq	_square_of
	.loc	1 22 43                 ## average.c:22:43
	movl	-4(%rbp), %edi
	.loc	1 22 35                 ## average.c:22:35
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	callq	_cube_of
	.loc	1 22 10                 ## average.c:22:10
	movl	-8(%rbp), %edi          ## 4-byte Reload
	movl	-12(%rbp), %esi         ## 4-byte Reload
	movl	%eax, %edx
	callq	_average
	.loc	1 22 3                  ## average.c:22:3
	addq	$16, %rsp
	popq	%rbp
	retq
Ltmp19:
Lfunc_end3:
	.cfi_endproc

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
Lfunc_begin4:
	.loc	1 26 0 is_stmt 1        ## average.c:26:0
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp20:
	.cfi_def_cfa_offset 16
Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$10, %eax
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc	1 28 16 prologue_end    ## average.c:28:16
Ltmp23:
	movl	%eax, %edi
	callq	_get_solution
	leaq	L_.str(%rip), %rdi
	.loc	1 28 7 is_stmt 0        ## average.c:28:7
	movl	%eax, -20(%rbp)
	.loc	1 29 18 is_stmt 1       ## average.c:29:18
	movl	-20(%rbp), %esi
	.loc	1 29 3 is_stmt 0        ## average.c:29:3
	movb	$0, %al
	callq	_printf
	xorl	%esi, %esi
	.loc	1 31 3 is_stmt 1        ## average.c:31:3
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	movl	%esi, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
Ltmp24:
Lfunc_end4:
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d\n"

	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple LLVM version 8.0.0 (clang-800.0.42.1)" ## string offset=0
	.asciz	"average.c"             ## string offset=44
	.asciz	"/Users/huiw/Programming/C/clab/ch3-lec-average" ## string offset=54
	.asciz	"average"               ## string offset=101
	.asciz	"square_of"             ## string offset=109
	.asciz	"cube_of"               ## string offset=119
	.asciz	"get_solution"          ## string offset=127
	.asciz	"main"                  ## string offset=140
	.asciz	"int"                   ## string offset=145
	.asciz	"a"                     ## string offset=149
	.asciz	"b"                     ## string offset=151
	.asciz	"c"                     ## string offset=153
	.asciz	"x"                     ## string offset=155
	.asciz	"argc"                  ## string offset=157
	.asciz	"argv"                  ## string offset=162
	.asciz	"char"                  ## string offset=167
	.asciz	"result"                ## string offset=172
	.section	__DWARF,__debug_loc,regular,debug
Lsection_debug_loc:
	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1                       ## Abbreviation Code
	.byte	17                      ## DW_TAG_compile_unit
	.byte	1                       ## DW_CHILDREN_yes
	.byte	37                      ## DW_AT_producer
	.byte	14                      ## DW_FORM_strp
	.byte	19                      ## DW_AT_language
	.byte	5                       ## DW_FORM_data2
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	16                      ## DW_AT_stmt_list
	.byte	6                       ## DW_FORM_data4
	.byte	27                      ## DW_AT_comp_dir
	.byte	14                      ## DW_FORM_strp
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	1                       ## DW_FORM_addr
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	2                       ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	1                       ## DW_FORM_addr
	.byte	64                      ## DW_AT_frame_base
	.byte	10                      ## DW_FORM_block1
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	39                      ## DW_AT_prototyped
	.byte	12                      ## DW_FORM_flag
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	63                      ## DW_AT_external
	.byte	12                      ## DW_FORM_flag
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	3                       ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	2                       ## DW_AT_location
	.byte	10                      ## DW_FORM_block1
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	4                       ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	2                       ## DW_AT_location
	.byte	10                      ## DW_FORM_block1
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	5                       ## Abbreviation Code
	.byte	36                      ## DW_TAG_base_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	62                      ## DW_AT_encoding
	.byte	11                      ## DW_FORM_data1
	.byte	11                      ## DW_AT_byte_size
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	6                       ## Abbreviation Code
	.byte	15                      ## DW_TAG_pointer_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	0                       ## EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
	.long	353                     ## Length of Unit
	.short	2                       ## DWARF version number
Lset0 = Lsection_abbrev-Lsection_abbrev ## Offset Into Abbrev. Section
	.long	Lset0
	.byte	8                       ## Address Size (in bytes)
	.byte	1                       ## Abbrev [1] 0xb:0x15a DW_TAG_compile_unit
	.long	0                       ## DW_AT_producer
	.short	12                      ## DW_AT_language
	.long	44                      ## DW_AT_name
Lset1 = Lline_table_start0-Lsection_line ## DW_AT_stmt_list
	.long	Lset1
	.long	54                      ## DW_AT_comp_dir
	.quad	Lfunc_begin0            ## DW_AT_low_pc
	.quad	Lfunc_end4              ## DW_AT_high_pc
	.byte	2                       ## Abbrev [2] 0x2e:0x4a DW_TAG_subprogram
	.quad	Lfunc_begin0            ## DW_AT_low_pc
	.quad	Lfunc_end0              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	101                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	4                       ## DW_AT_decl_line
	.byte	1                       ## DW_AT_prototyped
	.long	332                     ## DW_AT_type
	.byte	1                       ## DW_AT_external
	.byte	3                       ## Abbrev [3] 0x4d:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	124
	.long	149                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	4                       ## DW_AT_decl_line
	.long	332                     ## DW_AT_type
	.byte	3                       ## Abbrev [3] 0x5b:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	120
	.long	151                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	4                       ## DW_AT_decl_line
	.long	332                     ## DW_AT_type
	.byte	3                       ## Abbrev [3] 0x69:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	116
	.long	153                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	4                       ## DW_AT_decl_line
	.long	332                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	2                       ## Abbrev [2] 0x78:0x2e DW_TAG_subprogram
	.quad	Lfunc_begin1            ## DW_AT_low_pc
	.quad	Lfunc_end1              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	109                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	10                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_prototyped
	.long	332                     ## DW_AT_type
	.byte	1                       ## DW_AT_external
	.byte	3                       ## Abbrev [3] 0x97:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	124
	.long	155                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	10                      ## DW_AT_decl_line
	.long	332                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	2                       ## Abbrev [2] 0xa6:0x2e DW_TAG_subprogram
	.quad	Lfunc_begin2            ## DW_AT_low_pc
	.quad	Lfunc_end2              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	119                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	15                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_prototyped
	.long	332                     ## DW_AT_type
	.byte	1                       ## DW_AT_external
	.byte	3                       ## Abbrev [3] 0xc5:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	124
	.long	155                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	15                      ## DW_AT_decl_line
	.long	332                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	2                       ## Abbrev [2] 0xd4:0x2e DW_TAG_subprogram
	.quad	Lfunc_begin3            ## DW_AT_low_pc
	.quad	Lfunc_end3              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	127                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	21                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_prototyped
	.long	332                     ## DW_AT_type
	.byte	1                       ## DW_AT_external
	.byte	3                       ## Abbrev [3] 0xf3:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	124
	.long	149                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	21                      ## DW_AT_decl_line
	.long	332                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	2                       ## Abbrev [2] 0x102:0x4a DW_TAG_subprogram
	.quad	Lfunc_begin4            ## DW_AT_low_pc
	.quad	Lfunc_end4              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	140                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	26                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_prototyped
	.long	332                     ## DW_AT_type
	.byte	1                       ## DW_AT_external
	.byte	3                       ## Abbrev [3] 0x121:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	120
	.long	157                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	26                      ## DW_AT_decl_line
	.long	332                     ## DW_AT_type
	.byte	3                       ## Abbrev [3] 0x12f:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	112
	.long	162                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	26                      ## DW_AT_decl_line
	.long	339                     ## DW_AT_type
	.byte	4                       ## Abbrev [4] 0x13d:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	108
	.long	172                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	28                      ## DW_AT_decl_line
	.long	332                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	5                       ## Abbrev [5] 0x14c:0x7 DW_TAG_base_type
	.long	145                     ## DW_AT_name
	.byte	5                       ## DW_AT_encoding
	.byte	4                       ## DW_AT_byte_size
	.byte	6                       ## Abbrev [6] 0x153:0x5 DW_TAG_pointer_type
	.long	344                     ## DW_AT_type
	.byte	6                       ## Abbrev [6] 0x158:0x5 DW_TAG_pointer_type
	.long	349                     ## DW_AT_type
	.byte	5                       ## Abbrev [5] 0x15d:0x7 DW_TAG_base_type
	.long	167                     ## DW_AT_name
	.byte	6                       ## DW_AT_encoding
	.byte	1                       ## DW_AT_byte_size
	.byte	0                       ## End Of Children Mark
	.section	__DWARF,__debug_ranges,regular,debug
Ldebug_range:
	.section	__DWARF,__debug_macinfo,regular,debug
Ldebug_macinfo:
Lcu_macro_begin0:
	.byte	0                       ## End Of Macro List Mark
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	5                       ## Header Bucket Count
	.long	5                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	-1                      ## Bucket 0
	.long	0                       ## Bucket 1
	.long	2                       ## Bucket 2
	.long	-1                      ## Bucket 3
	.long	3                       ## Bucket 4
	.long	1228223776              ## Hash in Bucket 1
	.long	2090499946              ## Hash in Bucket 1
	.long	1033847937              ## Hash in Bucket 2
	.long	-1476633302             ## Hash in Bucket 4
	.long	-526969832              ## Hash in Bucket 4
	.long	LNames3-Lnames_begin    ## Offset in Bucket 1
	.long	LNames2-Lnames_begin    ## Offset in Bucket 1
	.long	LNames4-Lnames_begin    ## Offset in Bucket 2
	.long	LNames1-Lnames_begin    ## Offset in Bucket 4
	.long	LNames0-Lnames_begin    ## Offset in Bucket 4
LNames3:
	.long	101                     ## average
	.long	1                       ## Num DIEs
	.long	46
	.long	0
LNames2:
	.long	140                     ## main
	.long	1                       ## Num DIEs
	.long	258
	.long	0
LNames4:
	.long	127                     ## get_solution
	.long	1                       ## Num DIEs
	.long	212
	.long	0
LNames1:
	.long	109                     ## square_of
	.long	1                       ## Num DIEs
	.long	120
	.long	0
LNames0:
	.long	119                     ## cube_of
	.long	1                       ## Num DIEs
	.long	166
	.long	0
	.section	__DWARF,__apple_objc,regular,debug
Lobjc_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	1                       ## Header Bucket Count
	.long	0                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	-1                      ## Bucket 0
	.section	__DWARF,__apple_namespac,regular,debug
Lnamespac_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	1                       ## Header Bucket Count
	.long	0                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	-1                      ## Bucket 0
	.section	__DWARF,__apple_types,regular,debug
Ltypes_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	2                       ## Header Bucket Count
	.long	2                       ## Header Hash Count
	.long	20                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	3                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.short	3                       ## DW_ATOM_die_tag
	.short	5                       ## DW_FORM_data2
	.short	4                       ## DW_ATOM_type_flags
	.short	11                      ## DW_FORM_data1
	.long	0                       ## Bucket 0
	.long	1                       ## Bucket 1
	.long	193495088               ## Hash in Bucket 0
	.long	2090147939              ## Hash in Bucket 1
	.long	Ltypes0-Ltypes_begin    ## Offset in Bucket 0
	.long	Ltypes1-Ltypes_begin    ## Offset in Bucket 1
Ltypes0:
	.long	145                     ## int
	.long	1                       ## Num DIEs
	.long	332
	.short	36
	.byte	0
	.long	0
Ltypes1:
	.long	167                     ## char
	.long	1                       ## Num DIEs
	.long	349
	.short	36
	.byte	0
	.long	0
	.section	__DWARF,__apple_exttypes,regular,debug
Lexttypes_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	1                       ## Header Bucket Count
	.long	0                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	7                       ## DW_ATOM_ext_types
	.short	6                       ## DW_FORM_data4
	.long	-1                      ## Bucket 0

.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
