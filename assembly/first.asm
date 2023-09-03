[ORG 0x100]
mov ax, [Num1]

mov bx, [Num1+2]

add ax, bx

mov bx, [Num1+4]

add ax, bx

mov [Num1+6], ax

mov ax, 0x4c00

int 0x21

Num1:
db 5, 10, 15, 0	
