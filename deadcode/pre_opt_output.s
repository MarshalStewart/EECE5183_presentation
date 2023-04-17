	.text
	.file	"main.c"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc 		# -- Start function

# %bb.0:

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

	# store 10 for variable b
	movl	$10, -12(%rbp)

	# store a into register eax
	movl	-8(%rbp), %eax

	# conditional jump less than, compare mem for b to eax (loaded with a)
	cmpl	-12(%rbp), %eax
	jle	.LBB0_2

# branch where a <= b
# %bb.1:
	# Getting ready for printf system call
	
	# loading a as format parameter
	movl	-8(%rbp), %esi
	
	# loading formatted string as parameter
	movabsq	$.L.str, %rdi
	
	# unused parameter by printf, could be optimized away
	movb	$0, %al
	callq	printf

# branch where a > b, or fall through after printf call
.LBB0_2:
	# Removing function scope from stack pointer, preparing to end program
	# set eax to 0
	xorl	%eax, %eax
	# deallocate stack space
	addq	$16, %rsp
	# pop stack frame
	popq	%rbp
	# rsp is canonical frame address (CFA)
	.cfi_def_cfa %rsp, 8
	# Returns control from current function to calling function
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
