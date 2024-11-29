.global _start
_start:

	mov r0,#1024 // nb entrée
	mov r1,#10 // divisé par 10
	mov r2,#0 // résultat de division
	adr r3,fin_chaine // address pour mettre la chaine de caractère
	adr r5,chaine
    
	mov r4,#0
    strb r4,[r3],#-1

conversion_loop: cmp r3,r5
    beq fin_conversion_loop

    division_loop: cmp r0,r1
        blt fin_division_loop
        sub r0,r0,r1
        add r2,r2,#1
        b division_loop
    fin_division_loop:

    add r4,r0,#'0'
    strb r4,[r3],#-1
    mov r0,r2
	mov r2,#0
    mov r4,#0
    b conversion_loop


fin_conversion_loop:
    

chaine: .fill 10,1
fin_chaine: 