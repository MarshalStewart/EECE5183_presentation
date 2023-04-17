	.text
	.file	"example.c"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, -4(%rbp)	# a
	movl	$2, -8(%rbp)	# b
	movl	$3, -12(%rbp)	# c
	movl	$4, -16(%rbp)	# d
	movl	$5, -20(%rbp)	# x
	movl	$6, -24(%rbp)	# y
	movl	$7, -28(%rbp)	# z
	movabsq	$.L.str, %rdi
	leaq	-4(%rbp), %rsi
	leaq	-8(%rbp), %rdx
	leaq	-12(%rbp), %rcx
	leaq	-16(%rbp), %r8
	movb	$0, %al
	callq	__isoc99_scanf

======================================

	movl	-4(%rbp), %r9d		# load a into r9d
	addl	-8(%rbp), %r9d		# store a + b into r9d
	movl	%r9d, -20(%rbp)		# store a + b at x

	movl	-8(%rbp), %r9d		# load b into r9d
	addl	-12(%rbp), %r9d		# store b + c into r9d
	movl	%r9d, -24(%rbp)		# store b + c at y

	movl	-12(%rbp), %r9d		# load c into r9d
	addl	-16(%rbp), %r9d		# load d into r9d
	movl	%r9d, -28(%rbp)		# store c + d at z

	# printf register parameters
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx

======================================

	movabsq	$.L.str.1, %rdi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d\n,%d\n,%d\n,%d\n"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"x:%d,y:%d,z:%d\n"
	.size	.L.str.1, 16

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __isoc99_scanf
	.addrsig_sym printf
