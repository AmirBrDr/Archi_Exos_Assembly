.global _start
_start:

adr r1,tab 
adr r2,fintab
mov r0,#0

bcl: cmp r1,r2
    beq fin
    ldrb r3,[r1],#1
    tst r3,#1
    addne r0,r0,#1
    b bcl
fin:

tab: .byte 12,5,8,10,9,3,5
fintab:
.align