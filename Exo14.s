.global _start
_start:
	
	mov r1,#0
	adr r3,chaine
	mov r5,#10
bcl:
	ldrb r2,[r3],#1
	cmp r2,#0
	beq fin
	mul r1,r5,r1
	sub r2,r2,#'0'
	add r1,r1,r2
	b bcl
	
fin:
	
	
chaine: .asciz "1024"
