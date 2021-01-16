.model tiny
.stack 100h
.data
.code
main proc
mov cl,2
mov ah,1
int 21h
mov bl,48
mov bl,al

add bl,cl
mov dl,bl
add dl,48
mov ah,2
int 21h
mov ah,4ch
int 21h
main endp
end main
