.global _start
_start:

mov r2,#0
mov r3,#0
mov r0,#1024
mov r1,#10

bcl1: cmp r0,0
    blt fin1

bcl2: cmp r0,r1
    blt fin2
    sub r0,r0,r1
    add r2,r2,#1
    b bcl2
fin2:

    ldr r4,='0'
    add r2,r2,r4
    add r3,r3,r2
    mov r2,#0
    b bcl1

fin1:

mov r3, r3, lsl #8