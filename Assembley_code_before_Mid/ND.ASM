.model small
.stack 100h
.data
var1 db "nomi$"
.code
main proc
mov ax,@data
mov ds,ax
lea dx,"nomi$"
mov ah,9h
int 21h
mov ah,4ch
int 21h                
main endp
end main
