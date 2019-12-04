first:
    mov r0, #19
    bl fib_rec_a
    b end
end:
    b end
fib_rec_a:
    sub sp, sp, #16
    cmp r0, #0
    beq return_zero
    cmp r0, #1
    bne rec_step
    mov r0, #1
    b done
rec_step:
    str lr, [sp] 
    str r0, [sp, #4] 
    sub r0, r0, #1
    bl fib_rec_a
    mov r1, r0 
    str r1, [sp, #8]
    ldr r0, [sp, #4]
    sub r0, r0, #2
    bl fib_rec_a
    ldr r1, [sp, #8]
    ldr lr, [sp]
    add r0, r1, r0 
return_zero:
    add sp, sp, #16
    bx lr
done:
    add sp, sp, #16
    bx lr
