.global N
.equ N,286
.global _start
_start:
	mov r4,#0
	mov r1,#0
	mov r2,#0
	mov r3,#0
	ldr r6, =N
	
bcl:
	cmp r4,r6
	bgt fin
	and r5,r4,#1
	cmp r5,#0
	bne else
	add r1,r1,r4
	and r5,r4,#3
	cmp r5,#0
	bne else
	add r2,r2,r4
	and r5,r4,#7
	cmp r5,#0
	addeq r3,r3,r4
	
else:	
	add r4,r4,#1
	
	b bcl
	
fin:
	
