.model small
.stack 100h
.data
arr db 'abc'
.code
main proc

mov ax,01
mov bx,ax
push dx



mov ax,01
mov bx,ax
push dx

mov ax,01
mov bx,ax
push dx

pop dx
mov ah,2
int 21h

pop dx
mov ah,2
int 21h

pop dx
mov ah,2
int 21h

pop dx
mov ah,2
int 21h






mov ah,4ch
int 21h


main endp
end main