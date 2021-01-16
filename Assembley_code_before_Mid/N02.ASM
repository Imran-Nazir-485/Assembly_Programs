.model small
.stack 100h
.data
var1 db ?
.code
main proc
mov ah,01h
int 21h
mov var1,al
mov  dl,al
mov ah,2h
int 21h
mov ah,4ch
int 21h
main endp
end main
