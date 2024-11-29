.global _start
_start:

	adr r2,tab 
	mov r0,#0 @numero
	mov r3,#1 @i
	ldr r1,[r2] @max
bcl: 
	cmp r3,#tailletab
	bhs fin
	ldr r4,[r2,r3,lsl#2]
	cmp r4,r1
	ble else
	mov r1,r4
	mov r0,r3
	
else:
	add r3,r3,#1
	b bcl

fin:


.equ tailletab,10
tab: .word 1,4,10,3,2,12,6,5,14,13
