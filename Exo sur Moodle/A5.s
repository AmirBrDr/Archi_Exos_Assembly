.global _start
_start:

mov r3,#0
mov r1,#24
mov r2,#8
mov r0,#'/'

cmp r0,#'+'
addeq r3,r1,r2
cmp r0,#'-'
subeq r3,r1,r2
cmp r0,#'*'
muleq r3,r1,r2
cmp r0,#'/'
bne not_division
mov r3,#0
mov r4,r1
division_loop: cmp r4,r2
    blt fin_division
    add r3,r3,#1
    sub r4,r4,r2
    b division_loop
fin_division:
not_division:
