	.text
	.intel_syntax noprefix
	.file	"main.c"
	.globl	_Z5startv                       # -- Begin function _Z5startv
	.p2align	4, 0x90
	.type	_Z5startv,@function
_Z5startv:                              # @_Z5startv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	edi, 11
	mov	esi, 29
	mov	edx, 16
	call	_Z11ClearScreeniii
	mov	esi, dword ptr [font_arial_width]
	mov	edx, dword ptr [font_arial_height]
	movabs	rdi, offset _Z17getArialCharacterii
	movabs	rcx, offset .L.str
	mov	r9d, 100
	xor	eax, eax
	mov	r8d, r9d
	mov	dword ptr [rsp], 0
	mov	dword ptr [rsp + 8], 0
	mov	dword ptr [rsp + 16], 0
	call	_Z10DrawStringPFiiiEiiPciiiii
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_1
.Lfunc_end0:
	.size	_Z5startv, .Lfunc_end0-_Z5startv
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Welcome to SaphireOS!\nThis text has been rendered using our own hand built library."
	.size	.L.str, 84

	.ident	"Homebrew clang version 12.0.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z11ClearScreeniii
	.addrsig_sym _Z10DrawStringPFiiiEiiPciiiii
	.addrsig_sym _Z17getArialCharacterii
	.addrsig_sym font_arial_width
	.addrsig_sym font_arial_height
