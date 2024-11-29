.global _start
_start:

	mov r1,#32
	mov r0,#1

bcl: cmp r1,#1
    beq fin
    lsr r1,r1,#1
    add r0,r0,#1
    b bcl 
fin: 