.global _start
_start:
	mov r0,#1024
    mov r1, r0         @ Copy the value from r0 to r1 (number to convert)
	mov r8, #buffer    @ Initialize the buffer pointer
	mov r7,r8
convert_loop:
    cmp r1, #0         @ Compare with zero to end the loop
    beq end_convert

    mov r2, #10        @ Divisor (decimal base)
    mov r4, #0         @ Initialize a register to store the digit

division_loop:
    cmp r1, r2         @ Compare the dividend with the divisor
    blt end_division   @ Exit the division loop if dividend < divisor

    sub r1, r1, r2     @ Subtract the divisor from the dividend
    add r4, r4, #1     @ Increment the digit

    b division_loop    @ Repeat the division loop

end_division:
	ldr r6,='0'
    add r4, r4, r6   @ Convert the digit to ASCII
    strb r4, [r7], #1  @ Store the character in the buffer and increment the pointer

    b convert_loop     @ Repeat the main loop

end_convert:
    mov r4, #0         @ Add the ASCII null character at the end
    strb r4, [r7]

   
    


buffer: .fill 40,1 @ Buffer to store the character string
.align