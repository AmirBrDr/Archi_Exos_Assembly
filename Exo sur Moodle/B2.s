.global _start
_start:

mov r0,#0
adr r1,tab 
bcl: cmp r0,#10
    beq fin
    str r0,[r1,r0,lsl #2]
    add r0,r0,#1
    b bcl
fin:

tab: .fill 10,4