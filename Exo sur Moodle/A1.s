.global _start
_start

mov r0,#0
mov r1,#0

bcl: cmp r1,#100
    bgt fin
    add r0,r1,r0
    add r1,r1,#2
    b bcl
fin:
    add r0,r0,r0