.model small
.stack 100h
.data  
array db 5 dup( 1 dup('8'), 2 dup('3'))
.code 
main proc
mov ax,@data
mov ds,ax
mov bx,offset array
inc bx
inc bx
inc bx
mov byte ptr [bx],49
mov dx,offset array
mov ah,09h
int 21h
mov ah,04ch
int 21h
main endp
end main