	.section	.text
	.align	16
	#Procedure 0x8048350

	# 0x8048350:	movl	$0x804a01f, %eax [IMM <DATAREF>, REG]
	.globl deregister_tm_clones
	.type deregister_tm_clones, @function
deregister_tm_clones:
	movl	$completed.7209 - 1,  %eax
	# 0x8048355:	subl	$0x804a01c, %eax [IMM <DATAREF>, REG]
	subl	$__TMC_END__,  %eax
	# 0x804835a:	cmpl	$6, %eax [IMM, REG]
	cmpl	$6, %eax
	# 0x804835d:	jbe	0x8048379 [IMM <CODEREF>]
	jbe	.label_48
	# 0x804835f:	movl	$0, %eax [IMM, REG]
	movl	$0, %eax
	# 0x8048364:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x8048366:	je	0x8048379 [IMM <CODEREF>]
	je	.label_48
	# 0x8048368:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x8048369:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804836b:	subl	$0x14, %esp [IMM, REG]
	subl	$0x14, %esp
	# 0x804836e:	pushl	$0x804a01c [IMM <DATAREF>]
	pushl	$__TMC_END__
	# 0x8048373:	calll	*%eax [REG]
	calll	*%eax
	# 0x8048375:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8048378:	leave	 []
	leave	
	# 0x8048379:	retl	 []
.label_48:
	retl	
	.section	.text
	.align	16
	#Procedure 0x8048380
	.globl register_tm_clones
	.type register_tm_clones, @function
register_tm_clones:

	# 0x8048380:	movl	$0x804a01c, %eax [IMM <DATAREF>, REG]
	movl	$__TMC_END__,  %eax
	# 0x8048385:	subl	$0x804a01c, %eax [IMM <DATAREF>, REG]
	subl	$__TMC_END__,  %eax
	# 0x804838a:	sarl	$2, %eax [IMM, REG]
	sarl	$2, %eax
	# 0x804838d:	movl	%eax, %edx [REG, REG]
	movl	%eax, %edx
	# 0x804838f:	shrl	$0x1f, %edx [IMM, REG]
	shrl	$0x1f, %edx
	# 0x8048392:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x8048394:	sarl	$1, %eax [IMM, REG]
	sarl	$1, %eax
	# 0x8048396:	je	0x80483b3 [IMM <CODEREF>]
	je	.label_49
	# 0x8048398:	movl	$0, %edx [IMM, REG]
	movl	$0, %edx
	# 0x804839d:	testl	%edx, %edx [REG, REG]
	testl	%edx, %edx
	# 0x804839f:	je	0x80483b3 [IMM <CODEREF>]
	je	.label_49
	# 0x80483a1:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x80483a2:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x80483a4:	subl	$0x10, %esp [IMM, REG]
	subl	$0x10, %esp
	# 0x80483a7:	pushl	%eax [REG]
	pushl	%eax
	# 0x80483a8:	pushl	$0x804a01c [IMM <DATAREF>]
	pushl	$__TMC_END__
	# 0x80483ad:	calll	*%edx [REG]
	calll	*%edx
	# 0x80483af:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x80483b2:	leave	 []
	leave	
	# 0x80483b3:	retl	 []
.label_49:
	retl	
	.section	.text
	.align	16
	#Procedure 0x80483c0

	# 0x80483c0:	cmpb	$0, 0x804a020 [IMM, MEM]
	.globl __do_global_dtors_aux
	.type __do_global_dtors_aux, @function
__do_global_dtors_aux:
	cmpb	$0, completed.7209
	# 0x80483c7:	jne	0x80483dc [IMM <CODEREF>]
	jne	.label_50
	# 0x80483c9:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x80483ca:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x80483cc:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x80483cf:	calll	0x8048350 [IMM <CODEREF>]
	calll	deregister_tm_clones
	# 0x80483d4:	movb	$1, 0x804a020 [IMM, MEM]
	movb	$1, completed.7209
	# 0x80483db:	leave	 []
	leave	
	# 0x80483dc:	retl	 []
.label_50:
	retl	
	.section	.text
	.align	16
	#Procedure 0x804840b
	.globl main
	.type main, @function
main:

	# 0x804840b:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804840c:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804840e:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x8048411:	pushl	$0x8048510 [IMM <DATAREF>]
	pushl	$label_51
	# 0x8048416:	calll	0x80482e0 [IMM <CODEREF>]
	calll	puts
	# 0x804841b:	addl	$4, %esp [IMM, REG]
	addl	$4, %esp
	# 0x804841e:	movl	$7, 0x804a080 [IMM, MEM]
	movl	$7, a
	# 0x8048428:	pushl	$0x8048520 [IMM <DATAREF>]
	pushl	$label_55
	# 0x804842d:	calll	0x80482e0 [IMM <CODEREF>]
	calll	puts
	# 0x8048432:	addl	$4, %esp [IMM, REG]
	addl	$4, %esp
	# 0x8048435:	movl	$0x804a080, 0x804a040 [IMM <DATAREF>, MEM]
	movl	$a, a_ptr
	# 0x804843f:	movl	0x804a040, %eax [MEM, REG]
	movl	a_ptr,  %eax
	# 0x8048444:	movl	$9, 0(%eax) [IMM, MEM]
	movl	$9, 0(%eax)
	# 0x804844a:	pushl	$0x8048540 [IMM <DATAREF>]
	pushl	$label_53
	# 0x804844f:	calll	0x80482e0 [IMM <CODEREF>]
	calll	puts
	# 0x8048454:	addl	$4, %esp [IMM, REG]
	addl	$4, %esp
	# 0x8048457:	movl	$0, -4(%ebp) [IMM, MEM]
	movl	$0, -4(%ebp)
	# 0x804845e:	jmp	0x804846f [IMM <CODEREF>]
	jmp	.label_54
	# 0x8048460:	movl	-4(%ebp), %eax [MEM, REG]
.label_52:
	movl	-4(%ebp), %eax
	# 0x8048463:	addl	$0x804a060, %eax [IMM <DATAREF>, REG]
	addl	$buf,  %eax
	# 0x8048468:	movb	$0x41, 0(%eax) [IMM, MEM]
	movb	$0x41, 0(%eax)
	# 0x804846b:	addl	$1, -4(%ebp) [IMM, MEM]
	addl	$1, -4(%ebp)
	# 0x804846f:	cmpl	$0x1e, -4(%ebp) [IMM, MEM]
.label_54:
	cmpl	$0x1e, -4(%ebp)
	# 0x8048473:	jle	0x8048460 [IMM <CODEREF>]
	jle	.label_52
	# 0x8048475:	movb	$0, 0x804a080 [IMM, MEM]
	movb	$0, a
	# 0x804847c:	movl	$0, %eax [IMM, REG]
	movl	$0, %eax
	# 0x8048481:	leave	 []
	leave	
	# 0x8048482:	retl	 []
	retl	
	.section .plt.got
	.align 32
	# data @ 0x8048308
	.label_66:
	.section .text
	.align 16
	# data @ 0x80484f2
	.label_67:
	.section .rodata
	.align 8
	# data @ 0x8048508
	.byte 3
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8048510
label_51:
	.asciz "assign 7 to a"
	# data @ 0x804851e
	.byte 0
	.byte 0
	# data @ 0x8048520
label_55:
	.asciz "assign 9 to a using point a_ptr"
	# data @ 0x8048540
label_53:
	.asciz "fill buf with 'A'"
	# data @ 0x8048552
	.label_68:
	.section .data
	.align 4
	# data @ 0x804a014
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.section .bss
	.align 32
	# data @ 0x804a020
	.globl completed.7209
	.type completed.7209, @object
completed.7209:
	.byte 0x0
	# data @ 0x804a021
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x804a040
	.globl a_ptr
	.type a_ptr, @object
a_ptr:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.globl buf
	.type buf, @object
buf:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x804a080
	.globl a
	.type a, @object
a:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x804a084
		.globl _end
	.type _end, @notype
_end:
