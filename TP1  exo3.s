.global _start
_start:

    mov r1,#0
    add r2,r1,#1
    lsl r2,r2,#1

bcl: cmp r2,#16
    bgt fin
    add r1,r1,#1
    add r2,r1,#1
    lsl r2,r2,#1
    b bcl
fin: