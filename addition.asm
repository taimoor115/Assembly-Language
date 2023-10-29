[ORG 0x100]
jmp start
num: dw 2,4,5,4,7,54,6,7,4,1
res: dw 0
Addnum: mov si, 0
dec cx
shl cx,1
l1: add ax,[bx+si]
add si,2
cmp si, cx
jnz l1
ret
start :mov cx, 10
mov bx, num
mov ax,0
call Addnum
mov [res] ,ax
mov ax,0x4c00
int 0x21
