.model small
.stack 100h
.data  
array db 5 dup(2 dup ('8'),3 dup ('7'))
.code 
main proc
mov ax,@data
mov ds,ax
mov  bx,offset array
mov byte ptr [bx],55
inc bx

mov byte ptr [bx],54
inc bx

mov byte ptr [bx],50

lea dx,array
mov ah,09h
int 21h

mov ah,04ch
int 21h
main endp
end main