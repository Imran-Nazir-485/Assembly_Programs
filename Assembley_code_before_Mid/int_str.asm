.model small
.stack 100h
.data
var1 db 3
var2 db 3
sum db 2
.code
main proc
mov ax,@data
mov ds,ax
mov al,sum
add al,var1
add al,var2
add al,1
add al,48
mov dl,51
mov ah,2h
int 21h
mov ah,4ch
int 21h
main endp 
end main

