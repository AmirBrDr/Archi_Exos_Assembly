.global _start
_start:

    mov r1,#N
    mov r0,#1

bcl: cmp r1,#0
    beq fin
    lsl r0,r0,#1
    sub r1,r1,#1
    b bcl 
fin: 