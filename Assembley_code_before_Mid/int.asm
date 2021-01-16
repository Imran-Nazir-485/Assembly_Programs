.model small
.stack 100h
.data
var1 db 2
.code
main proc
mov  dl,2
add dl,48
mov ah,2h
int 21h
mov ah,4ch
int 21h
main endp
end main
