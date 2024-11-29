.global _start
_start:
	
	mov r4,#10
	mov r1,#2
	mov r3,r4
	mov r2,#0
	
bcl: 
	
	cmp r3,r1
	blo fin
	add r2,r2,#1
	sub r3,r3,#1
	b bcl

fin: