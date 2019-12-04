first:
	mov r0, #19
	bl fib_iter_a
	b end
end:
	b end
	
fib_iter_a:
 	cmp r0, #0
 	moveq r2, #0 
 	beq fib_end
 	mov r1, #0
 	mov r2, #1
 	sub r0, #1
 	cmp r0, #0
 	beq fib_end
 	b loop
loop:
	add r3, r1, r2
	mov r1, r2
	mov r2, r3
	sub r0, #1
 	cmp r0, #0
 	beq fib_end
 	b loop
 fib_end:
 	mov r0, r2
 	bx lr
