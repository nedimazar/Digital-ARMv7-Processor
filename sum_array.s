main:
    mov sp, #128
    sub sp, sp, #24
    mov r0, #10
    str r0, [sp]
    mov r0, #4
    str r0, [sp, #4]
    mov r0, #12
    str r0, [sp, #8]
    mov r0, #14
    str r0, [sp, #12]
    mov r0, #2
    str r0, [sp, #16]
    mov r0, sp
    mov r1, #5
    bl sum_array_a
    b end
end:
    b end
sum_array_a:
	mov r12, #0
	mov r2, #0
again:
	cmp r1, #0
	beq done
	sub r1, #1
	ldr r3, [r0, r2]
	add r12, r3, r12
	add r2, r2, #4
	b again
done:
	mov r0, r12
	bx lr
