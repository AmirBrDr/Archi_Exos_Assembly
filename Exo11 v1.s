.global _start
_start:

	mov r2,#0
	adr r0,tab
	adr r1,fintab
	
bcl: 
	cmp r0,r1
	bhs fin
	strb r2,[r0],#1
	add r2,r2,#1
	b bcl

fin:


tab: .fill 10,1
fintab:

