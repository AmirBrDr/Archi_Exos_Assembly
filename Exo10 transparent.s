.global _start
_start:
	
	mov r0,#10
	mov r2,r0
	mov r1,#1
	
bcl:

	cmp r2,#2
	blo fin
	mul r1,r1,r2
	sub r2,r2,#1
	b bcl
	
fin: