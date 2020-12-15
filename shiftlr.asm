pushReg Macro
push ax
push bx
push cx
push dx
endm
popReg Macro
pop ax
pop bx
pop cx
pop dx
endm


.model small
.stack 100h
.data
cno dw 0
pno dw 0
.code
main proc
mov ax,@data
mov ds,ax



mov al,5
shr al,1




DisplayData proc
mov ah,2
mov dl,al
add dl,48
int 21h




ret
DisplayData endp









mov ah, 04ch
int 21h
main endp
end 
