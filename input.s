	.file	"input.cpp"
	.text
	.align 2
	.globl	_ZN4PortC2Et
	.type	_ZN4PortC2Et, @function
_ZN4PortC2Et:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movw	%ax, -12(%rbp)
	movq	-8(%rbp), %rax
	movzwl	-12(%rbp), %edx
	movw	%dx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN4PortC2Et, .-_ZN4PortC2Et
	.globl	_ZN4PortC1Et
	.set	_ZN4PortC1Et,_ZN4PortC2Et
	.align 2
	.globl	_ZN4PortD2Ev
	.type	_ZN4PortD2Ev, @function
_ZN4PortD2Ev:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	_ZN4PortD2Ev, .-_ZN4PortD2Ev
	.globl	_ZN4PortD1Ev
	.set	_ZN4PortD1Ev,_ZN4PortD2Ev
	.align 2
	.globl	_ZN5Port8C2Et
	.type	_ZN5Port8C2Et, @function
_ZN5Port8C2Et:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movw	%ax, -12(%rbp)
	movq	-8(%rbp), %rax
	movzwl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN4PortC2Et
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	_ZN5Port8C2Et, .-_ZN5Port8C2Et
	.globl	_ZN5Port8C1Et
	.set	_ZN5Port8C1Et,_ZN5Port8C2Et
	.align 2
	.globl	_ZN5Port8D2Ev
	.type	_ZN5Port8D2Ev, @function
_ZN5Port8D2Ev:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4PortD2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	_ZN5Port8D2Ev, .-_ZN5Port8D2Ev
	.globl	_ZN5Port8D1Ev
	.set	_ZN5Port8D1Ev,_ZN5Port8D2Ev
	.align 2
	.globl	_ZN5Port85WriteEh
	.type	_ZN5Port85WriteEh, @function
_ZN5Port85WriteEh:
.LFB12:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	movq	-8(%rbp), %rax
	movzwl	(%rax), %edx
	movzbl	-12(%rbp), %eax
#APP
# 60 "boot/input.cpp" 1
	outb %al, %dx
# 0 "" 2
#NO_APP
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	_ZN5Port85WriteEh, .-_ZN5Port85WriteEh
	.align 2
	.globl	_ZN5Port84ReadEv
	.type	_ZN5Port84ReadEv, @function
_ZN5Port84ReadEv:
.LFB13:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	movl	%eax, %edx
#APP
# 66 "boot/input.cpp" 1
	inb %dx, %al
# 0 "" 2
#NO_APP
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	_ZN5Port84ReadEv, .-_ZN5Port84ReadEv
	.align 2
	.globl	_ZN6Port16C2Et
	.type	_ZN6Port16C2Et, @function
_ZN6Port16C2Et:
.LFB15:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movw	%ax, -12(%rbp)
	movq	-8(%rbp), %rax
	movzwl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN4PortC2Et
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	_ZN6Port16C2Et, .-_ZN6Port16C2Et
	.globl	_ZN6Port16C1Et
	.set	_ZN6Port16C1Et,_ZN6Port16C2Et
	.align 2
	.globl	_ZN6Port16D2Ev
	.type	_ZN6Port16D2Ev, @function
_ZN6Port16D2Ev:
.LFB18:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4PortD2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	_ZN6Port16D2Ev, .-_ZN6Port16D2Ev
	.globl	_ZN6Port16D1Ev
	.set	_ZN6Port16D1Ev,_ZN6Port16D2Ev
	.align 2
	.globl	_ZN6Port165WriteEt
	.type	_ZN6Port165WriteEt, @function
_ZN6Port165WriteEt:
.LFB20:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movw	%ax, -12(%rbp)
	movq	-8(%rbp), %rax
	movzwl	(%rax), %edx
	movzwl	-12(%rbp), %eax
#APP
# 78 "boot/input.cpp" 1
	outw %ax, %dx
# 0 "" 2
#NO_APP
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	_ZN6Port165WriteEt, .-_ZN6Port165WriteEt
	.align 2
	.globl	_ZN6Port164ReadEv
	.type	_ZN6Port164ReadEv, @function
_ZN6Port164ReadEv:
.LFB21:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	movl	%eax, %edx
#APP
# 84 "boot/input.cpp" 1
	inw %dx, %ax
# 0 "" 2
#NO_APP
	movw	%ax, -2(%rbp)
	movzwl	-2(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	_ZN6Port164ReadEv, .-_ZN6Port164ReadEv
	.align 2
	.globl	_ZN6Port32C2Et
	.type	_ZN6Port32C2Et, @function
_ZN6Port32C2Et:
.LFB23:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movw	%ax, -12(%rbp)
	movq	-8(%rbp), %rax
	movzwl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN4PortC2Et
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	_ZN6Port32C2Et, .-_ZN6Port32C2Et
	.globl	_ZN6Port32C1Et
	.set	_ZN6Port32C1Et,_ZN6Port32C2Et
	.align 2
	.globl	_ZN6Port32D2Ev
	.type	_ZN6Port32D2Ev, @function
_ZN6Port32D2Ev:
.LFB26:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4PortD2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	_ZN6Port32D2Ev, .-_ZN6Port32D2Ev
	.globl	_ZN6Port32D1Ev
	.set	_ZN6Port32D1Ev,_ZN6Port32D2Ev
	.align 2
	.globl	_ZN6Port325WriteEj
	.type	_ZN6Port325WriteEj, @function
_ZN6Port325WriteEj:
.LFB28:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movzwl	(%rax), %edx
	movl	-12(%rbp), %eax
#APP
# 96 "boot/input.cpp" 1
	outl %eax, %dx
# 0 "" 2
#NO_APP
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	_ZN6Port325WriteEj, .-_ZN6Port325WriteEj
	.align 2
	.globl	_ZN6Port324ReadEv
	.type	_ZN6Port324ReadEv, @function
_ZN6Port324ReadEv:
.LFB29:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	movl	%eax, %edx
#APP
# 102 "boot/input.cpp" 1
	inl %dx, %eax
# 0 "" 2
#NO_APP
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	_ZN6Port324ReadEv, .-_ZN6Port324ReadEv
	.align 2
	.globl	_ZN9Port8SlowC2Et
	.type	_ZN9Port8SlowC2Et, @function
_ZN9Port8SlowC2Et:
.LFB31:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movw	%ax, -12(%rbp)
	movq	-8(%rbp), %rax
	movzwl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN5Port8C2Et
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	_ZN9Port8SlowC2Et, .-_ZN9Port8SlowC2Et
	.globl	_ZN9Port8SlowC1Et
	.set	_ZN9Port8SlowC1Et,_ZN9Port8SlowC2Et
	.align 2
	.globl	_ZN9Port8SlowD2Ev
	.type	_ZN9Port8SlowD2Ev, @function
_ZN9Port8SlowD2Ev:
.LFB34:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Port8D2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	_ZN9Port8SlowD2Ev, .-_ZN9Port8SlowD2Ev
	.globl	_ZN9Port8SlowD1Ev
	.set	_ZN9Port8SlowD1Ev,_ZN9Port8SlowD2Ev
	.align 2
	.globl	_ZN9Port8Slow5WriteEh
	.type	_ZN9Port8Slow5WriteEh, @function
_ZN9Port8Slow5WriteEh:
.LFB36:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	movq	-8(%rbp), %rax
	movzwl	(%rax), %edx
	movzbl	-12(%rbp), %eax
#APP
# 114 "boot/input.cpp" 1
	outb %al, %dx
jmp 1f
1: jmp 1f
1:
# 0 "" 2
#NO_APP
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	_ZN9Port8Slow5WriteEh, .-_ZN9Port8Slow5WriteEh
	.align 2
	.globl	_ZN16InterruptManager15HandleInterruptEhj
	.type	_ZN16InterruptManager15HandleInterruptEhj, @function
_ZN16InterruptManager15HandleInterruptEhj:
.LFB37:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movl	%esi, -8(%rbp)
	movb	%al, -4(%rbp)
	movl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	_ZN16InterruptManager15HandleInterruptEhj, .-_ZN16InterruptManager15HandleInterruptEhj
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
