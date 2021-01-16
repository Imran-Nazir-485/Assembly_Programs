.model tiny
.stack 100h
.data
.code
main proc
mov bl,3

mov ah,1
int 21h
sub  bl,al
add  bl,48
mov dl,bl
mov dh,0
mov ah,2
int 21h
mov ah,4ch
int 21h

main endp
end main
