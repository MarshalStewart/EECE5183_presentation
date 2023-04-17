	.text
	.file	"example.c"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	$1, 20(%rsp)	# a
	movl	$2, 16(%rsp)	# b
	movl	$3, 12(%rsp)	# c
	movl	$4, 8(%rsp)		# d

	leaq	20(%rsp), %rsi
	leaq	16(%rsp), %rdx
	leaq	12(%rsp), %rcx
	leaq	8(%rsp), %r8
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	__isoc99_scanf

======================================

	movl	16(%rsp), %edx		# load b into edx
	movl	20(%rsp), %esi		# load a into esi
	addl	%edx, %esi			# store b + a into esi
	
	movl	12(%rsp), %ecx		# load c into ecx
	addl	%ecx, %edx			# => store c + b into edx
	
	addl	8(%rsp), %ecx		# store c + d into ecx

======================================


	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
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
