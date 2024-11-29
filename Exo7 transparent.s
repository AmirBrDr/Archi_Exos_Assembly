.global _start
_start:
	
cmp r1,#5
ble else
cmp r1,#10
bge else

mov r2,#15
b fin

else:
	mov r2,#0

fin:
	