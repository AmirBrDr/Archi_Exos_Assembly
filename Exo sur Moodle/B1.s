.global _start
_start:

adr r0,val1
ldr r1,[r0]
adr r0,val2
ldr r2,[r0]
add r3,r1,r2
adr r0,somme
str r3,[r0]

val1: .int 12
val2: .int 8
somme: .fill 4,1