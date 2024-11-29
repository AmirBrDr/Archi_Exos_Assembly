.global _start
_start:

	adr r0,tab
	mov r1,#0
	
bcl: 
	cmp r1,#tailletab
	bhs fin
	strb r1,[r0,r1]
	add r1,r1,#1
	b bcl

fin:


.equ tailletab,10
tab: .fill tailletab,1
