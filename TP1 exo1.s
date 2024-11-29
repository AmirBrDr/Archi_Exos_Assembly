.global _start
_start:

mov r1,#nb1
mov r2,#nb2

bcl: cmp r1,r2
    beq fin 
    addhi r2,r2,#nb2
    addlo r1,r1,#nb1
    b bcl
fin:

.equ nb1,9
.equ nb2,6