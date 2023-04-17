	.text
	.file	"example.c"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %if.end.3
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movl	$0, 36(%rsp)
	movl	$0, 20(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, 28(%rsp)
	movl	$0, 24(%rsp)
	movl	$0, 16(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	36(%rsp), %rsi
	leaq	20(%rsp), %rdx
	leaq	32(%rsp), %rcx
	leaq	28(%rsp), %r8
	leaq	24(%rsp), %r9
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	__isoc99_scanf
	movl	32(%rsp), %ecx
	movl	20(%rsp), %eax
	leal	(%rcx,%rax), %edx
	addl	%eax, %edx
	imull	16(%rsp), %edx
	addl	%ecx, %edx
	leal	(%rdx,%rcx), %eax
	leal	(%rcx,%rax), %edi
	addl	%eax, %edi
	imull	%edx, %edi
	addl	%ecx, %edi
	movl	%edi, 16(%rsp)
	leal	(%rdi,%rcx), %edx
	leal	(%rcx,%rdx), %esi
	leal	(%rsi,%rdx), %r8d
	movl	%edi, %r9d
	imull	%r8d, %r9d
	movl	%edx, 20(%rsp)
	movl	%esi, 36(%rsp)
	movl	%r8d, 28(%rsp)
	movl	%r9d, 24(%rsp)
	movl	%edi, (%rsp)
	movl	$.L.str.1, %edi
                                        # kill: def $esi killed $esi killed $rsi
                                        # kill: def $edx killed $edx killed $rdx
                                        # kill: def $ecx killed $ecx killed $rcx
	xorl	%eax, %eax
	callq	printf
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d\n,%d\n,%d\n,%d\n,%d\n,%d\n"
	.size	.L.str, 24

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"p:%d,q:%d,r:%d,s:%d,u:%d,v:%d\n"
	.size	.L.str.1, 31

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
