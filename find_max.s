main:
    mov sp, #128
    sub sp, sp, #24
    mov r0, #12
    str r0, [sp]
    mov r0, #4
    str r0, [sp, #4]
    mov r0, #190
    str r0, [sp, #8]
    mov r0, #200
    str r0, [sp, #12]
    mov r0, #3
    str r0, [sp, #16]
    mov r0, sp
    mov r1, #5
    bl find_max_a
    b end
end:
    b end
find_max_a:
    ldr r12, [r0]
    mov r2, r12
    sub r1, #1
    add r0, r0, #4
loop:
    sub r1, #1
    ldr r12, [r0]
    cmp r12, r2
    ble proceed
    mov r2, r12
proceed:
    add r0, r0, #4
    cmp r1, #0
    bgt loop
    mov r0, r2
    bx lr