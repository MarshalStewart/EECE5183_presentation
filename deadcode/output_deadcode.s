	.text
	.file	"main.c"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry

	# save the current value of rbp onto the stack
	pushq	%rbp

	# define the CFA as 16 bytes from the current stack pointer
	.cfi_def_cfa_offset 16

	# save the current value of the base pointer at an offset of -16 bytes from the CFA
	.cfi_offset %rbp, -16

	# Move stack pointer to function
	movq	%rsp, %rbp

	# define CFA for conditional
	.cfi_def_cfa_register %rbp

	# reserve 16 bytes of space on the stack 
	subq	$16, %rsp

	# store 0, -4 bytes from base pointer (base of current stack)
	movl	$0, -4(%rbp)

	# store 5 for variable a
	movl	$5, -8(%rbp)
	movl	$10, -12(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.LBB0_2
# %bb.1:                                # %if.then
	movl	-8(%rbp), %esi
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
.LBB0_2:                                # %if.end
	xorl	%eax, %eax
	addq	$16, %rsp
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
	.asciz	"The value of a is %d\n"
	.size	.L.str, 22

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
