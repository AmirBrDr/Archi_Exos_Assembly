.global _start
_start:

mov r0,#0
mov r1,#1

bcl: cmp r1,N
    bgt fin
    mov r3,#1
    mov r2,#2
bcl2: cmp r2,r1
    bgt fin2
    mul r3,r3,r2
    add r2,r2,#1
    b bcl2
fin2:
    add r0,r0,r3
    add r1,r1,#1
    b bcl
fin:




.equ N,10