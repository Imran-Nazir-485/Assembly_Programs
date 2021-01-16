.model small
.stack 100h
.data
msg db "my name is $"
.code
main proc
mov ax,@data
mov ds,ax
mov dx,offset msg
mov ah,9h
int 21h


mov ah,4ch
int 21h
main endp
end main
