.global _start
_start:
   
main:

    adr r0,tab
	mov r1,#N
	mov r2,#1
	bl sous_prog

    
sous_prog: stmfd sp!,{r1}

bcl: cmp r1,#0
	
	beq fin
	str r2,[r0],#4
	sub r1,r1,#1
	b bcl
fin:

	ldmfd sp!,{r1}
	mov pc,lr
	
.equ N,10
tab: .fill N,1