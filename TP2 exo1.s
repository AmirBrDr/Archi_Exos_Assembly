.global _start
_start:

    adr r1,a
    ldrb r3,[r1]
    adr r1,b
    ldrb r4,[r1]
    add r5,r3,r4
    adr r1,somme
    strb r5,[r1]


a: .byte 8
b: .byte 12
somme: .fill 1,1
