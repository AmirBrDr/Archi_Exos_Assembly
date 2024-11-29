.global _start
_start:
	
	mov r1,#0
	mov r3,#0
	adr r4,chaine
	
bcl:
	ldrb r5,[r4],#1
	cmp r5,#0
	beq fin
	cmp r5,#'a'
	bne suite
	cmp r1,#0
	moveq r2,r3
	add r1,r1,#1
	
suite:
	add r3,r3,#1
	b bcl

fin:
	

chaine: .asciz "asasasasasa"
