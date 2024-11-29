.global _start
_start:
	
	mov r1,#0
	mov r2,#0
	
bcl: 
	cmp r2,#48
	bhi fin
	add r1,r1,r2
	add r2,r2,#1
	b bcl

fin:
	