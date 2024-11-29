.global _start
_start:

mov r0,#0
mov r1,#N

bcl: cmp r1,#0
    beq fin
    mov r2,#1
    mov r3,#1
bcl2 : cmp r3,r1
    bgt fin2
    add r2,r2,r2
    add r3,r3,#1
    b bcl2
fin2:
    add r0,r0,r2
    sub r1,r1,#1
    b bcl
fin:


.equ N,8