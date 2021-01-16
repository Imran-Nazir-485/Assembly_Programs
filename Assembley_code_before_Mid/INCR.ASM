.model small
.stack 100h
.data
var1 dw 2
.code
main proc
mov ax,@data
mov ds,ax
inc var1
add var1,48
mov dl,var1
mov ah,2
int 21h
mov ah,4ch
int 21h
main endp
end main
