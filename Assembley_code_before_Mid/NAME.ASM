.model small
.stack 100h
.data
.code
main proc
mov dl,'n'
mov ah,2
int 21h
mov dl,'o'
mov ah,2
int 21h
mov dl,'m'
mov ah,2
int 21h
mov dl,'i'
mov ah,2
int 21h
mov ah,4ch
int 21h

main endp
end main
