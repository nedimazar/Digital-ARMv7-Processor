main:
	mov r0, #4
	mov r1, #3
	mov r2, #2
	mov r3, #1
	bl quadratic_a
	b end
end:
	b end
quadratic_a:
	mul r12, r1, r0
	mul r12, r0, r12
	mul r1, r2, r0
	add r12, r12, r1
	add r12, r12, r3
	mov r0, r12
	bx lr
