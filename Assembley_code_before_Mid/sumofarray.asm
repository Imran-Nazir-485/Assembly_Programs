.model small
.stack 100h
.data  
array db 3 dup(1)
sum db 0
.code 
main proc
mov ax,@data
mov ds,ax
mov bx,offset array
add dx,[bx]
inc bx
add dx,[bx]
inc bx
add dx,[bx]
add dx,48
mov ah,9
int 21h
mov ah,04ch
int 21h
main endp
end main