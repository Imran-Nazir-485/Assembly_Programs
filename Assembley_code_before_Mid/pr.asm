.model small 
.stack 100h
.data
var1 db "nomi$"
var2 db 1
var3 db 0dh," $"
.code
main proc
mov ax,@data
mov ds,ax;
mov dx, offset var1
mov ah,9
int 21h

mov dx,offset var3
mov ah,9 
int 21h

mov dl,var2
add dl,48
mov ah,2
int 21h

mov ah,4ch
int 21h
main endp
end main

