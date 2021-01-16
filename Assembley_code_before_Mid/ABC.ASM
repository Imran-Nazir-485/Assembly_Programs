.model small
.stack 100h
.data
.code
main proc
mov dx,97
mov cx,26
l:
mov ah,2
int 21h
add dx,1
loop l
mov ah,4ch
int 21h

main endp
end main

