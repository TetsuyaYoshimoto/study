	.file	"test.cpp"
	.section	.rodata
.LC0:
	.string	"%d %d %d"
.LC2:
	.string	"%lf"
.LC4:
	.string	"\347\233\270\351\226\242\344\277\202\346\225\260 %f\n"
.LC5:
	.string	"   a"
.LC6:
	.string	" %f"
.LC7:
	.string	"   b"
	.align 8
.LC8:
	.string	"***error  \350\247\243\343\202\222\346\261\202\343\202\201\343\202\213\343\201\223\343\201\250\343\201\214\343\201\247\343\201\215\343\201\276\343\201\233\343\202\223\343\201\247\343\201\227\343\201\237"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	leaq	-68(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	leaq	-76(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	scanf
	movl	-76(%rbp), %edx
	movl	-72(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -56(%rbp)
	movl	-76(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L2
	salq	$3, %rax
	jmp	.L3
.L2:
	movq	$-1, %rax
.L3:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, -48(%rbp)
	movl	-76(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L4
	salq	$3, %rax
	jmp	.L5
.L4:
	movq	$-1, %rax
.L5:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, -40(%rbp)
	movl	-56(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L6
	salq	$3, %rax
	jmp	.L7
.L6:
	movq	$-1, %rax
.L7:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, -32(%rbp)
	movl	-76(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L8
	salq	$3, %rax
	jmp	.L9
.L8:
	movq	$-1, %rax
.L9:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, -24(%rbp)
	movl	$0, -64(%rbp)
	jmp	.L10
.L13:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-68(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L11
	salq	$3, %rax
	jmp	.L12
.L11:
	movq	$-1, %rax
.L12:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, (%rbx)
	addl	$1, -64(%rbp)
.L10:
	movl	-64(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L13
	movl	$0, -64(%rbp)
	jmp	.L14
.L17:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-56(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L15
	salq	$3, %rax
	jmp	.L16
.L15:
	movq	$-1, %rax
.L16:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, (%rbx)
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movabsq	$4607182418800017408, %rax
	movq	%rax, (%rdx)
	addl	$1, -64(%rbp)
.L14:
	movl	-76(%rbp), %eax
	cmpl	%eax, -64(%rbp)
	jl	.L17
	movl	$0, -64(%rbp)
	jmp	.L18
.L21:
	movl	$0, -60(%rbp)
	jmp	.L19
.L20:
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	scanf
	addl	$1, -60(%rbp)
.L19:
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L20
	addl	$1, -64(%rbp)
.L18:
	movl	-68(%rbp), %eax
	cmpl	%eax, -64(%rbp)
	jl	.L21
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %esi
	movl	-76(%rbp), %edi
	movabsq	$4457293557087583675, %rax
	movq	-24(%rbp), %r9
	movq	-48(%rbp), %r10
	movq	-32(%rbp), %rcx
	movl	$200, 16(%rsp)
	movl	$15, 8(%rsp)
	movq	-40(%rbp), %r8
	movq	%r8, (%rsp)
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	movq	%r10, %r8
	call	_Z9canonicaliiiPPdS_S0_dS_ii
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jle	.L22
	movl	$0, -64(%rbp)
	jmp	.L23
.L28:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	movl	$.LC4, %edi
	movl	$1, %eax
	call	printf
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	movl	$0, -60(%rbp)
	jmp	.L24
.L25:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	movl	$.LC6, %edi
	movl	$1, %eax
	call	printf
	addl	$1, -60(%rbp)
.L24:
	movl	-76(%rbp), %eax
	cmpl	%eax, -60(%rbp)
	jl	.L25
	movl	$10, %edi
	call	putchar
	movl	$.LC7, %edi
	movl	$0, %eax
	call	printf
	movl	$0, -60(%rbp)
	jmp	.L26
.L27:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-76(%rbp), %ecx
	movl	-60(%rbp), %edx
	addl	%ecx, %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	movl	$.LC6, %edi
	movl	$1, %eax
	call	printf
	addl	$1, -60(%rbp)
.L26:
	movl	-72(%rbp), %eax
	cmpl	%eax, -60(%rbp)
	jl	.L27
	movl	$10, %edi
	call	putchar
	addl	$1, -64(%rbp)
.L23:
	movl	-64(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L28
	jmp	.L29
.L22:
	movl	$.LC8, %edi
	call	puts
.L29:
	movl	$0, -64(%rbp)
	jmp	.L30
.L32:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L31
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L31:
	addl	$1, -64(%rbp)
.L30:
	movl	-64(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L32
	movl	$0, -64(%rbp)
	jmp	.L33
.L35:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L34
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L34:
	addl	$1, -64(%rbp)
.L33:
	movl	-76(%rbp), %eax
	cmpl	%eax, -64(%rbp)
	jl	.L35
	cmpq	$0, -32(%rbp)
	je	.L36
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L36:
	cmpq	$0, -24(%rbp)
	je	.L37
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L37:
	cmpq	$0, -48(%rbp)
	je	.L38
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L38:
	cmpq	$0, -40(%rbp)
	je	.L39
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L39:
	movl	$0, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	_Z9canonicaliiiPPdS_S0_dS_ii
	.type	_Z9canonicaliiiPPdS_S0_dS_ii, @function
_Z9canonicaliiiPPdS_S0_dS_ii:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$280, %rsp
	.cfi_offset 3, -24
	movl	%edi, -180(%rbp)
	movl	%esi, -184(%rbp)
	movl	%edx, -188(%rbp)
	movq	%rcx, -200(%rbp)
	movq	%r8, -208(%rbp)
	movq	%r9, -216(%rbp)
	movsd	%xmm0, -224(%rbp)
	movl	$0, -156(%rbp)
	movl	-184(%rbp), %eax
	movl	-180(%rbp), %edx
	addl	%edx, %eax
	movl	%eax, -152(%rbp)
	movl	-152(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L42
	salq	$3, %rax
	jmp	.L43
.L42:
	movq	$-1, %rax
.L43:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, -128(%rbp)
	movl	-184(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L44
	salq	$3, %rax
	jmp	.L45
.L44:
	movq	$-1, %rax
.L45:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, -120(%rbp)
	movl	-180(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L46
	salq	$3, %rax
	jmp	.L47
.L46:
	movq	$-1, %rax
.L47:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, -112(%rbp)
	movl	-180(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L48
	salq	$3, %rax
	jmp	.L49
.L48:
	movq	$-1, %rax
.L49:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, -104(%rbp)
	movl	-184(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L50
	salq	$3, %rax
	jmp	.L51
.L50:
	movq	$-1, %rax
.L51:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, -96(%rbp)
	movl	-180(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L52
	salq	$3, %rax
	jmp	.L53
.L52:
	movq	$-1, %rax
.L53:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, -88(%rbp)
	movl	-152(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L54
	salq	$3, %rax
	jmp	.L55
.L54:
	movq	$-1, %rax
.L55:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, -80(%rbp)
	movl	-180(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L56
	salq	$3, %rax
	jmp	.L57
.L56:
	movq	$-1, %rax
.L57:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, -72(%rbp)
	movl	-180(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L58
	salq	$3, %rax
	jmp	.L59
.L58:
	movq	$-1, %rax
.L59:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, -64(%rbp)
	movl	-180(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L60
	salq	$3, %rax
	jmp	.L61
.L60:
	movq	$-1, %rax
.L61:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, -56(%rbp)
	movl	-184(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L62
	salq	$3, %rax
	jmp	.L63
.L62:
	movq	$-1, %rax
.L63:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, -48(%rbp)
	movl	-184(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L64
	salq	$3, %rax
	jmp	.L65
.L64:
	movq	$-1, %rax
.L65:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, -40(%rbp)
	movl	-184(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L66
	salq	$3, %rax
	jmp	.L67
.L66:
	movq	$-1, %rax
.L67:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, -32(%rbp)
	movl	-184(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L68
	salq	$3, %rax
	jmp	.L69
.L68:
	movq	$-1, %rax
.L69:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, -24(%rbp)
	movl	$0, -168(%rbp)
	jmp	.L70
.L73:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-152(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L71
	salq	$3, %rax
	jmp	.L72
.L71:
	movq	$-1, %rax
.L72:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, (%rbx)
	addl	$1, -168(%rbp)
.L70:
	movl	-168(%rbp), %eax
	cmpl	-152(%rbp), %eax
	jl	.L73
	movl	$0, -168(%rbp)
	jmp	.L74
.L83:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-180(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L75
	salq	$3, %rax
	jmp	.L76
.L75:
	movq	$-1, %rax
.L76:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, (%rbx)
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-180(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L77
	salq	$3, %rax
	jmp	.L78
.L77:
	movq	$-1, %rax
.L78:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, (%rbx)
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-180(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L79
	salq	$3, %rax
	jmp	.L80
.L79:
	movq	$-1, %rax
.L80:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, (%rbx)
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-184(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L81
	salq	$3, %rax
	jmp	.L82
.L81:
	movq	$-1, %rax
.L82:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, (%rbx)
	addl	$1, -168(%rbp)
.L74:
	movl	-168(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jl	.L83
	movl	$0, -168(%rbp)
	jmp	.L84
.L95:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-184(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L85
	salq	$3, %rax
	jmp	.L86
.L85:
	movq	$-1, %rax
.L86:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, (%rbx)
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-180(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L87
	salq	$3, %rax
	jmp	.L88
.L87:
	movq	$-1, %rax
.L88:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, (%rbx)
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-184(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L89
	salq	$3, %rax
	jmp	.L90
.L89:
	movq	$-1, %rax
.L90:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, (%rbx)
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-184(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L91
	salq	$3, %rax
	jmp	.L92
.L91:
	movq	$-1, %rax
.L92:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, (%rbx)
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-184(%rbp), %eax
	addl	%eax, %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L93
	salq	$3, %rax
	jmp	.L94
.L93:
	movq	$-1, %rax
.L94:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, (%rbx)
	addl	$1, -168(%rbp)
.L84:
	movl	-168(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jl	.L95
	movl	$0, -168(%rbp)
	jmp	.L96
.L99:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rax, %rdx
	movl	$0, %eax
	movq	%rax, (%rdx)
	movl	$0, -164(%rbp)
	jmp	.L97
.L98:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movl	-168(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-128(%rbp), %rdx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm1
	movl	-168(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-200(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-164(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -164(%rbp)
.L97:
	movl	-164(%rbp), %eax
	cmpl	-188(%rbp), %eax
	jl	.L98
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movl	-168(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-128(%rbp), %rdx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm1
	cvtsi2sd	-188(%rbp), %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -168(%rbp)
.L96:
	movl	-168(%rbp), %eax
	cmpl	-152(%rbp), %eax
	jl	.L99
	movl	$0, -168(%rbp)
	jmp	.L100
.L106:
	movl	-168(%rbp), %eax
	movl	%eax, -164(%rbp)
	jmp	.L101
.L105:
	movl	$0, %eax
	movq	%rax, -144(%rbp)
	movl	$0, -160(%rbp)
	jmp	.L102
.L103:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-200(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movl	-164(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-200(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movl	-164(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm2
	subsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-144(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -144(%rbp)
	addl	$1, -160(%rbp)
.L102:
	movl	-160(%rbp), %eax
	cmpl	-188(%rbp), %eax
	jl	.L103
	movl	-188(%rbp), %eax
	subl	$1, %eax
	cvtsi2sd	%eax, %xmm0
	movsd	-144(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -144(%rbp)
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-164(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-144(%rbp), %rax
	movq	%rax, (%rdx)
	movl	-168(%rbp), %eax
	cmpl	-164(%rbp), %eax
	je	.L104
	movl	-164(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-168(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-144(%rbp), %rax
	movq	%rax, (%rdx)
.L104:
	addl	$1, -164(%rbp)
.L101:
	movl	-164(%rbp), %eax
	cmpl	-152(%rbp), %eax
	jl	.L105
	addl	$1, -168(%rbp)
.L100:
	movl	-168(%rbp), %eax
	cmpl	-152(%rbp), %eax
	jl	.L106
	movl	$0, -168(%rbp)
	jmp	.L107
.L110:
	movl	$0, -164(%rbp)
	jmp	.L108
.L109:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-164(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-80(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-180(%rbp), %ecx
	movl	-164(%rbp), %esi
	addl	%esi, %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addl	$1, -164(%rbp)
.L108:
	movl	-164(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jl	.L109
	addl	$1, -168(%rbp)
.L107:
	movl	-168(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jl	.L110
	movl	$0, -168(%rbp)
	jmp	.L111
.L114:
	movl	$0, -164(%rbp)
	jmp	.L112
.L113:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-164(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movl	-180(%rbp), %eax
	movl	-168(%rbp), %ecx
	addl	%ecx, %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-80(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-164(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addl	$1, -164(%rbp)
.L112:
	movl	-164(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jl	.L113
	addl	$1, -168(%rbp)
.L111:
	movl	-168(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jl	.L114
	movl	$0, -168(%rbp)
	jmp	.L115
.L120:
	movl	$0, -164(%rbp)
	jmp	.L116
.L117:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-164(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-80(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-164(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-164(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-80(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-164(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addl	$1, -164(%rbp)
.L116:
	movl	-164(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jl	.L117
	movl	-180(%rbp), %eax
	movl	%eax, -164(%rbp)
	jmp	.L118
.L119:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-164(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movl	$0, %eax
	movq	%rax, (%rdx)
	addl	$1, -164(%rbp)
.L118:
	movl	-180(%rbp), %eax
	addl	%eax, %eax
	cmpl	-164(%rbp), %eax
	jg	.L119
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-180(%rbp), %edx
	movl	-168(%rbp), %ecx
	addl	%ecx, %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movabsq	$4607182418800017408, %rax
	movq	%rax, (%rdx)
	addl	$1, -168(%rbp)
.L115:
	movl	-168(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jl	.L120
	movabsq	$4457293557087583675, %rax
	movl	-180(%rbp), %edx
	movl	-180(%rbp), %esi
	movq	-24(%rbp), %rcx
	movq	%rax, -232(%rbp)
	movsd	-232(%rbp), %xmm0
	movq	%rcx, %rdi
	call	_Z5gaussPPdiid
	movl	%eax, -148(%rbp)
	cmpl	$0, -148(%rbp)
	jne	.L121
	movl	$0, -168(%rbp)
	jmp	.L122
.L125:
	movl	$0, -164(%rbp)
	jmp	.L123
.L124:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-164(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-180(%rbp), %ecx
	movl	-164(%rbp), %esi
	addl	%esi, %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addl	$1, -164(%rbp)
.L123:
	movl	-164(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jl	.L124
	addl	$1, -168(%rbp)
.L122:
	movl	-168(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jl	.L125
	jmp	.L126
.L121:
	movl	$1, -156(%rbp)
.L126:
	movl	$0, -168(%rbp)
	jmp	.L127
.L132:
	movl	$0, -164(%rbp)
	jmp	.L128
.L129:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-164(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movl	-180(%rbp), %eax
	movl	-168(%rbp), %ecx
	addl	%ecx, %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-80(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-180(%rbp), %ecx
	movl	-164(%rbp), %esi
	addl	%esi, %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-164(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movl	-180(%rbp), %eax
	movl	-168(%rbp), %ecx
	addl	%ecx, %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-80(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-180(%rbp), %ecx
	movl	-164(%rbp), %esi
	addl	%esi, %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addl	$1, -164(%rbp)
.L128:
	movl	-164(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jl	.L129
	movl	-184(%rbp), %eax
	movl	%eax, -164(%rbp)
	jmp	.L130
.L131:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-164(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movl	$0, %eax
	movq	%rax, (%rdx)
	addl	$1, -164(%rbp)
.L130:
	movl	-184(%rbp), %eax
	addl	%eax, %eax
	cmpl	-164(%rbp), %eax
	jg	.L131
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-184(%rbp), %edx
	movl	-168(%rbp), %ecx
	addl	%ecx, %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movabsq	$4607182418800017408, %rax
	movq	%rax, (%rdx)
	addl	$1, -168(%rbp)
.L127:
	movl	-168(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jl	.L132
	movq	-224(%rbp), %rax
	movl	-184(%rbp), %edx
	movl	-184(%rbp), %esi
	movq	-24(%rbp), %rcx
	movq	%rax, -232(%rbp)
	movsd	-232(%rbp), %xmm0
	movq	%rcx, %rdi
	call	_Z5gaussPPdiid
	movl	%eax, -148(%rbp)
	cmpl	$0, -148(%rbp)
	jne	.L133
	movl	$0, -168(%rbp)
	jmp	.L134
.L137:
	movl	$0, -164(%rbp)
	jmp	.L135
.L136:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-164(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-184(%rbp), %ecx
	movl	-164(%rbp), %esi
	addl	%esi, %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addl	$1, -164(%rbp)
.L135:
	movl	-164(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jl	.L136
	addl	$1, -168(%rbp)
.L134:
	movl	-168(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jl	.L137
	jmp	.L138
.L133:
	movl	$1, -156(%rbp)
.L138:
	cmpl	$0, -156(%rbp)
	jne	.L139
	movl	$0, -168(%rbp)
	jmp	.L140
.L145:
	movl	$0, -164(%rbp)
	jmp	.L141
.L144:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-164(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movl	$0, %eax
	movq	%rax, (%rdx)
	movl	$0, -160(%rbp)
	jmp	.L142
.L143:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-164(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movl	-168(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-96(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-164(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm1
	movl	-168(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-160(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm2
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-48(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-164(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -160(%rbp)
.L142:
	movl	-160(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jl	.L143
	addl	$1, -164(%rbp)
.L141:
	movl	-164(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jl	.L144
	addl	$1, -168(%rbp)
.L140:
	movl	-168(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jl	.L145
	movl	$0, -168(%rbp)
	jmp	.L146
.L151:
	movl	$0, -164(%rbp)
	jmp	.L147
.L150:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-164(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movl	$0, %eax
	movq	%rax, (%rdx)
	movl	$0, -160(%rbp)
	jmp	.L148
.L149:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-164(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movl	-168(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-164(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm1
	movl	-168(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-160(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm2
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-96(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-164(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -160(%rbp)
.L148:
	movl	-160(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jl	.L149
	addl	$1, -164(%rbp)
.L147:
	movl	-164(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jl	.L150
	addl	$1, -168(%rbp)
.L146:
	movl	-168(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jl	.L151
	movl	$0, -168(%rbp)
	jmp	.L152
.L157:
	movl	$0, -164(%rbp)
	jmp	.L153
.L156:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-164(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movl	$0, %eax
	movq	%rax, (%rdx)
	movl	$0, -160(%rbp)
	jmp	.L154
.L155:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-164(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movl	-168(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-96(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-164(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm1
	movl	-168(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-64(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-160(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm2
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-164(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -160(%rbp)
.L154:
	movl	-160(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jl	.L155
	addl	$1, -164(%rbp)
.L153:
	movl	-164(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jl	.L156
	addl	$1, -168(%rbp)
.L152:
	movl	-168(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jl	.L157
	movl	$0, -168(%rbp)
	jmp	.L158
.L161:
	movl	$0, -164(%rbp)
	jmp	.L159
.L160:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-164(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movl	$0, %eax
	movq	%rax, (%rdx)
	addl	$1, -164(%rbp)
.L159:
	movl	-164(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jl	.L160
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-168(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movabsq	$4607182418800017408, %rax
	movq	%rax, (%rdx)
	addl	$1, -168(%rbp)
.L158:
	movl	-168(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jl	.L161
	movq	-88(%rbp), %r9
	movq	-96(%rbp), %r8
	movq	-224(%rbp), %rax
	movl	32(%rbp), %ecx
	movl	24(%rbp), %edx
	movl	-180(%rbp), %esi
	movq	-104(%rbp), %rdi
	movq	%rdi, 40(%rsp)
	movq	-112(%rbp), %rdi
	movq	%rdi, 32(%rsp)
	movq	16(%rbp), %rdi
	movq	%rdi, 24(%rsp)
	movq	-216(%rbp), %rdi
	movq	%rdi, 16(%rsp)
	movq	-208(%rbp), %rdi
	movq	%rdi, 8(%rsp)
	movq	-80(%rbp), %rdi
	movq	%rdi, (%rsp)
	movq	%rax, -232(%rbp)
	movsd	-232(%rbp), %xmm0
	movl	$0, %edi
	call	_Z5poweriiiidPPdS0_S0_S_S0_S_S_S_
	movl	%eax, -156(%rbp)
	cmpl	$0, -156(%rbp)
	jle	.L162
	movl	$0, -168(%rbp)
	jmp	.L163
.L190:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-208(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-208(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movsd	-232(%rbp), %xmm0
	call	sqrt
	movsd	%xmm0, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, (%rbx)
	movl	$0, -164(%rbp)
	jmp	.L164
.L167:
	movl	-164(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rax, %rdx
	movl	$0, %eax
	movq	%rax, (%rdx)
	movl	$0, -160(%rbp)
	jmp	.L165
.L166:
	movl	-164(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	-164(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-120(%rbp), %rdx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm1
	movl	-164(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-72(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-160(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm2
	movl	-168(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-216(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-160(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -160(%rbp)
.L165:
	movl	-160(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jl	.L166
	addl	$1, -164(%rbp)
.L164:
	movl	-164(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jl	.L167
	movl	$0, %eax
	movq	%rax, -136(%rbp)
	movl	$0, -164(%rbp)
	jmp	.L168
.L169:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-164(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movl	-164(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-136(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -136(%rbp)
	addl	$1, -164(%rbp)
.L168:
	movl	-164(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jl	.L169
	movq	-136(%rbp), %rax
	movq	%rax, -232(%rbp)
	movsd	-232(%rbp), %xmm0
	call	sqrt
	movsd	%xmm0, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -136(%rbp)
	movl	$0, -164(%rbp)
	jmp	.L170
.L171:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-164(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movl	-168(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-216(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-164(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm0
	divsd	-136(%rbp), %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -164(%rbp)
.L170:
	movl	-164(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jl	.L171
	movl	$0, -164(%rbp)
	jmp	.L172
.L175:
	movl	-164(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rax, %rdx
	movl	$0, %eax
	movq	%rax, (%rdx)
	movl	$0, -160(%rbp)
	jmp	.L173
.L174:
	movl	-164(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	-164(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-120(%rbp), %rdx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm1
	movl	-164(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-48(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-160(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm2
	movl	-168(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-216(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-160(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -160(%rbp)
.L173:
	movl	-160(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jl	.L174
	addl	$1, -164(%rbp)
.L172:
	movl	-164(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jl	.L175
	movl	$0, -164(%rbp)
	jmp	.L176
.L179:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-180(%rbp), %edx
	movl	-164(%rbp), %ecx
	addl	%ecx, %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movl	$0, %eax
	movq	%rax, (%rdx)
	movl	$0, -160(%rbp)
	jmp	.L177
.L178:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-180(%rbp), %edx
	movl	-164(%rbp), %ecx
	addl	%ecx, %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movl	-168(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-216(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-180(%rbp), %ecx
	movl	-164(%rbp), %esi
	addl	%esi, %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm1
	movl	-164(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-160(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm2
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-120(%rbp), %rdx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -160(%rbp)
.L177:
	movl	-160(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jl	.L178
	addl	$1, -164(%rbp)
.L176:
	movl	-164(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jl	.L179
	movl	$0, -164(%rbp)
	jmp	.L180
.L181:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-180(%rbp), %edx
	movl	-164(%rbp), %ecx
	addl	%ecx, %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movl	-168(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-216(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-180(%rbp), %ecx
	movl	-164(%rbp), %esi
	addl	%esi, %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm0
	movl	-168(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-208(%rbp), %rdx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -164(%rbp)
.L180:
	movl	-164(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jl	.L181
	movl	$0, -164(%rbp)
	jmp	.L182
.L185:
	movl	-164(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rax, %rdx
	movl	$0, %eax
	movq	%rax, (%rdx)
	movl	$0, -160(%rbp)
	jmp	.L183
.L184:
	movl	-164(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	-164(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-120(%rbp), %rdx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm1
	movl	-164(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-160(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm2
	movl	-168(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-216(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-180(%rbp), %ecx
	movl	-160(%rbp), %esi
	addl	%esi, %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -160(%rbp)
.L183:
	movl	-160(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jl	.L184
	addl	$1, -164(%rbp)
.L182:
	movl	-164(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jl	.L185
	movl	$0, %eax
	movq	%rax, -136(%rbp)
	movl	$0, -164(%rbp)
	jmp	.L186
.L187:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-180(%rbp), %edx
	movl	-164(%rbp), %ecx
	addl	%ecx, %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movl	-164(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-136(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -136(%rbp)
	addl	$1, -164(%rbp)
.L186:
	movl	-164(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jl	.L187
	movq	-136(%rbp), %rax
	movq	%rax, -232(%rbp)
	movsd	-232(%rbp), %xmm0
	call	sqrt
	movsd	%xmm0, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -136(%rbp)
	movl	$0, -164(%rbp)
	jmp	.L188
.L189:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-180(%rbp), %edx
	movl	-164(%rbp), %ecx
	addl	%ecx, %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movl	-168(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-216(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-180(%rbp), %ecx
	movl	-164(%rbp), %esi
	addl	%esi, %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm0
	divsd	-136(%rbp), %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -164(%rbp)
.L188:
	movl	-164(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jl	.L189
	addl	$1, -168(%rbp)
.L163:
	movl	-168(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jl	.L190
	jmp	.L162
.L139:
	movl	$0, -156(%rbp)
.L162:
	movl	$0, -168(%rbp)
	jmp	.L191
.L193:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L192
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L192:
	addl	$1, -168(%rbp)
.L191:
	movl	-168(%rbp), %eax
	cmpl	-152(%rbp), %eax
	jl	.L193
	movl	$0, -168(%rbp)
	jmp	.L194
.L199:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L195
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L195:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L196
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L196:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L197
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L197:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L198
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L198:
	addl	$1, -168(%rbp)
.L194:
	movl	-168(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jl	.L199
	movl	$0, -168(%rbp)
	jmp	.L200
.L206:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L201
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L201:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L202
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L202:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L203
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L203:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L204
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L204:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L205
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L205:
	addl	$1, -168(%rbp)
.L200:
	movl	-168(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jl	.L206
	cmpq	$0, -128(%rbp)
	je	.L207
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L207:
	cmpq	$0, -120(%rbp)
	je	.L208
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L208:
	cmpq	$0, -112(%rbp)
	je	.L209
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L209:
	cmpq	$0, -104(%rbp)
	je	.L210
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L210:
	cmpq	$0, -96(%rbp)
	je	.L211
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L211:
	cmpq	$0, -88(%rbp)
	je	.L212
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L212:
	cmpq	$0, -80(%rbp)
	je	.L213
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L213:
	cmpq	$0, -72(%rbp)
	je	.L214
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L214:
	cmpq	$0, -64(%rbp)
	je	.L215
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L215:
	cmpq	$0, -56(%rbp)
	je	.L216
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L216:
	cmpq	$0, -48(%rbp)
	je	.L217
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L217:
	cmpq	$0, -40(%rbp)
	je	.L218
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L218:
	cmpq	$0, -32(%rbp)
	je	.L219
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L219:
	cmpq	$0, -24(%rbp)
	je	.L220
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L220:
	movl	-156(%rbp), %eax
	addq	$280, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_Z9canonicaliiiPPdS_S0_dS_ii, .-_Z9canonicaliiiPPdS_S0_dS_ii
	.globl	_Z5gaussPPdiid
	.type	_Z5gaussPPdiid, @function
_Z5gaussPPdiid:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movsd	%xmm0, -72(%rbp)
	movl	$0, -44(%rbp)
	movl	-64(%rbp), %eax
	movl	-60(%rbp), %edx
	addl	%edx, %eax
	movl	%eax, -24(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L223
.L241:
	movl	$0, %eax
	movq	%rax, -16(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$0, -40(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -32(%rbp)
	jmp	.L224
.L227:
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movsd	.LC10(%rip), %xmm0
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	ucomisd	-16(%rbp), %xmm0
	jbe	.L225
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -40(%rbp)
.L225:
	addl	$1, -32(%rbp)
.L224:
	movl	-32(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L227
	movsd	-72(%rbp), %xmm0
	ucomisd	-16(%rbp), %xmm0
	jbe	.L245
	movl	$1, -44(%rbp)
	jmp	.L230
.L245:
	movl	-36(%rbp), %eax
	movl	%eax, -32(%rbp)
	jmp	.L231
.L232:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	addl	$1, -32(%rbp)
.L231:
	movl	-32(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L232
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movsd	.LC1(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -32(%rbp)
	jmp	.L233
.L234:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm0
	mulsd	-16(%rbp), %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -32(%rbp)
.L233:
	movl	-32(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L234
	movl	$0, -32(%rbp)
	jmp	.L235
.L239:
	movl	-32(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.L236
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.L237
.L238:
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm1
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm2
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm0
	mulsd	%xmm2, %xmm0
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -28(%rbp)
.L237:
	movl	-28(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L238
.L236:
	addl	$1, -32(%rbp)
.L235:
	movl	-32(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L239
.L230:
	addl	$1, -36(%rbp)
.L223:
	movl	-36(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.L240
	cmpl	$0, -44(%rbp)
	je	.L241
.L240:
	movl	-44(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	_Z5gaussPPdiid, .-_Z5gaussPPdiid
	.globl	_Z5poweriiiidPPdS0_S0_S_S0_S_S_S_
	.type	_Z5poweriiiidPPdS0_S0_S_S0_S_S_S_, @function
_Z5poweriiiidPPdS0_S0_S_S0_S_S_S_:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movl	%edi, -52(%rbp)
	movl	%esi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movl	%ecx, -64(%rbp)
	movsd	%xmm0, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, %eax
	movq	%rax, -24(%rbp)
	movl	$0, -48(%rbp)
	jmp	.L247
.L248:
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	40(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	40(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	48(%rbp), %rax
	addq	%rax, %rdx
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	40(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addl	$1, -48(%rbp)
.L247:
	movl	-48(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L248
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	movsd	-96(%rbp), %xmm0
	call	sqrt
	movsd	%xmm0, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L249
.L295:
	movl	-32(%rbp), %eax
	cltd
	idivl	-60(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L250
	movl	$0, %eax
	movq	%rax, -16(%rbp)
	movl	$0, -48(%rbp)
	jmp	.L251
.L254:
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	56(%rbp), %rax
	addq	%rax, %rdx
	movl	$0, %eax
	movq	%rax, (%rdx)
	movl	$0, -44(%rbp)
	jmp	.L252
.L253:
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	56(%rbp), %rax
	addq	%rdx, %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	56(%rbp), %rdx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm1
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-88(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-44(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm2
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	48(%rbp), %rdx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -44(%rbp)
.L252:
	movl	-44(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L253
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	addl	$1, -48(%rbp)
.L251:
	movl	-48(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L254
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	movsd	-96(%rbp), %xmm0
	call	sqrt
	movsd	%xmm0, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -48(%rbp)
	jmp	.L255
.L256:
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	48(%rbp), %rax
	addq	%rdx, %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	56(%rbp), %rdx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm0
	divsd	-16(%rbp), %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -48(%rbp)
.L255:
	movl	-48(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L256
.L250:
	movl	$0, %eax
	movq	%rax, -16(%rbp)
	movl	$0, -48(%rbp)
	jmp	.L257
.L260:
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	56(%rbp), %rax
	addq	%rax, %rdx
	movl	$0, %eax
	movq	%rax, (%rdx)
	movl	$0, -44(%rbp)
	jmp	.L258
.L259:
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	56(%rbp), %rax
	addq	%rdx, %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	56(%rbp), %rdx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm1
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-80(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-44(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm2
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	48(%rbp), %rdx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -44(%rbp)
.L258:
	movl	-44(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L259
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	addl	$1, -48(%rbp)
.L257:
	movl	-48(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L260
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	movsd	-96(%rbp), %xmm0
	call	sqrt
	movsd	%xmm0, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -48(%rbp)
	jmp	.L261
.L262:
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	56(%rbp), %rax
	addq	%rdx, %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	56(%rbp), %rdx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm0
	divsd	-16(%rbp), %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -48(%rbp)
.L261:
	movl	-48(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L262
	movsd	-16(%rbp), %xmm0
	subsd	-24(%rbp), %xmm0
	divsd	-24(%rbp), %xmm0
	movsd	.LC10(%rip), %xmm1
	andpd	%xmm1, %xmm0
	movsd	-72(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.L300
	movl	$-1, -28(%rbp)
	movl	$0, -48(%rbp)
	jmp	.L265
.L270:
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movsd	.LC10(%rip), %xmm0
	andpd	%xmm1, %xmm0
	ucomisd	.LC11(%rip), %xmm0
	jbe	.L266
	movl	-48(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	48(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm1, %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.L266
	movsd	-16(%rbp), %xmm1
	movsd	.LC12(%rip), %xmm0
	xorpd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
.L266:
	addl	$1, -48(%rbp)
.L265:
	movl	-48(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.L269
	cmpl	$0, -28(%rbp)
	js	.L270
.L269:
	movl	-64(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	24(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	movl	$0, -48(%rbp)
	jmp	.L271
.L272:
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	56(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addl	$1, -48(%rbp)
.L271:
	movl	-48(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L272
	movl	-56(%rbp), %eax
	subl	$1, %eax
	cmpl	-52(%rbp), %eax
	jne	.L273
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.L249
.L273:
	movl	$0, -48(%rbp)
	jmp	.L275
.L282:
	movl	$0, -44(%rbp)
	jmp	.L276
.L281:
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movl	$0, %eax
	movq	%rax, (%rdx)
	movl	$0, -40(%rbp)
	jmp	.L277
.L280:
	movl	-48(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jne	.L278
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	subsd	-16(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	movq	-96(%rbp), %rax
	jmp	.L279
.L278:
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
.L279:
	movq	%rax, -8(%rbp)
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	16(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-44(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm1
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-88(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-44(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm0
	mulsd	-8(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -40(%rbp)
.L277:
	movl	-40(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L280
	addl	$1, -44(%rbp)
.L276:
	movl	-44(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L281
	addl	$1, -48(%rbp)
.L275:
	movl	-48(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L282
	movl	$0, -48(%rbp)
	jmp	.L283
.L286:
	movl	$0, -44(%rbp)
	jmp	.L284
.L285:
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	16(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-44(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addl	$1, -44(%rbp)
.L284:
	movl	-44(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L285
	addl	$1, -48(%rbp)
.L283:
	movl	-48(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L286
	movl	$0, -48(%rbp)
	jmp	.L287
.L290:
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	48(%rbp), %rax
	addq	%rax, %rdx
	movl	$0, %eax
	movq	%rax, (%rdx)
	movl	$0, -44(%rbp)
	jmp	.L288
.L289:
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	48(%rbp), %rax
	addq	%rdx, %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	48(%rbp), %rdx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm1
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-88(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-44(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm2
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	40(%rbp), %rdx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -44(%rbp)
.L288:
	movl	-44(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L289
	addl	$1, -48(%rbp)
.L287:
	movl	-48(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L290
	movl	$0, -48(%rbp)
	jmp	.L291
.L292:
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	40(%rbp), %rax
	addq	%rax, %rdx
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	48(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addl	$1, -48(%rbp)
.L291:
	movl	-48(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L292
	movl	-52(%rbp), %eax
	leal	1(%rax), %r10d
	movq	-88(%rbp), %r9
	movq	-80(%rbp), %r8
	movq	-72(%rbp), %rax
	movl	-64(%rbp), %ecx
	movl	-60(%rbp), %edx
	movl	-56(%rbp), %esi
	movq	56(%rbp), %rdi
	movq	%rdi, 40(%rsp)
	movq	48(%rbp), %rdi
	movq	%rdi, 32(%rsp)
	movq	40(%rbp), %rdi
	movq	%rdi, 24(%rsp)
	movq	32(%rbp), %rdi
	movq	%rdi, 16(%rsp)
	movq	24(%rbp), %rdi
	movq	%rdi, 8(%rsp)
	movq	16(%rbp), %rdi
	movq	%rdi, (%rsp)
	movq	%rax, -96(%rbp)
	movsd	-96(%rbp), %xmm0
	movl	%r10d, %edi
	call	_Z5poweriiiidPPdS0_S0_S_S0_S_S_S_
	movl	%eax, -36(%rbp)
	jmp	.L249
.L300:
	movl	$0, -48(%rbp)
	jmp	.L293
.L294:
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	48(%rbp), %rax
	addq	%rax, %rdx
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	56(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addl	$1, -48(%rbp)
.L293:
	movl	-48(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L294
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	addl	$1, -32(%rbp)
.L249:
	movl	-32(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jl	.L295
	movl	-36(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	_Z5poweriiiidPPdS0_S0_S_S0_S_S_S_, .-_Z5poweriiiidPPdS0_S0_S_S0_S_S_S_
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 16
.LC10:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC11:
	.long	3539053052
	.long	1062232653
	.align 16
.LC12:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
