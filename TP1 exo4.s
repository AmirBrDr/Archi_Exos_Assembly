.global _start
_start:
    mov r0,#0
    mov r4,#1
    mov r2,#7
    mov r3,#2
    mov r1,#0b111000101011

    sub r2,r2,r3
    add r2,r2,#1

    lsl r4,r4,r3

bcl: cmp r2,#0
    beq fin
    lsr r5,r1,r2
    and r5,r5,r4
    orr r0,r0,r5

    lsl r4,r4,#1
    sub r2,r2,#1
    b bcl

fin: