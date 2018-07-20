	.file	"nCr.c"
	.text
	.globl	Factorial
	.type	Factorial, @function
Factorial:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	##.cfi_def_cfa_offset 16	##remove
	##.cfi_offset 6, -16		##remove
	movq	%rsp, %rbp
	##.cfi_def_cfa_register 6	##remove
	subq	$16, %rsp
	movl	%eax, -4(%rbp)		##edi to eax
	cmpl	$0, -4(%rbp)
	jle	.L2
	##movl	-4(%rbp), %eax		##remove
	subl	$1, %eax
	##movl	%eax, %edi		##remove
	call	Factorial
	imull	-4(%rbp), %eax
	jmp	.L3
.L2:
	movl	$1, %eax
.L3:
	leave
	##.cfi_def_cfa 7, 8		##remove
	ret
	.cfi_endproc
.LFE0:
	.size	Factorial, .-Factorial
	.globl	nCr
	.type	nCr, @function
nCr:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	##.cfi_def_cfa_offset 16	##remove
	##.cfi_offset 6, -16		##remove
	movq	%rsp, %rbp
	##.cfi_def_cfa_register 6	##remove
	##pushq	%r12			##remove
	pushq	%rbx
	subq	$32, %rsp
	##.cfi_offset 12, -24		##remove
	##.cfi_offset 3, -32		##remove
	movl	%eax, -36(%rbp)		##edi to eax
	movl	%esi, -40(%rbp)
	movl	$0, -20(%rbp)
	movl	-36(%rbp), %eax
	##movl	%eax, %edi		##remove
	call	Factorial
	movl	%eax, %ebx
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	Factorial
	movl	%eax, %edx		##r12d to edx
	movl	-36(%rbp), %eax
	subl	-40(%rbp), %eax
	movl	%eax, %edi
	call	Factorial
	##movl	%r12d, %edx		##remove
	imull	%eax, %edx
	movl	%edx, %ecx
	movl	%ebx, %eax
	cltd
	idivl	%ecx
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	addq	$32, %rsp
	popq	%rbx
	##popq	%r12			##remove
	popq	%rbp
	##.cfi_def_cfa 7, 8		##remove
	ret
	.cfi_endproc
.LFE1:
	.size	nCr, .-nCr
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
