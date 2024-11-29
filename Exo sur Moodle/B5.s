.global _start
_start

adr r1,tab
mov r2,#1
str r2,[r1],#4
mov r2,#2
str r2,[r1],#4
mov r3,#2

bcl: cmp r3,N
    beq fin 
    ldr r2,[r1,#-4]
    ldr r5,[r1,#-8]
    add r4,r2,r5
    str r4,[r1],#4
    add r3,r3,#1
    b bcl
fin:

.equ N, 10 
tab: .fill N, 4