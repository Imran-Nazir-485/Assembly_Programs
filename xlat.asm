.model small
.stack 100h
.data
ch db 'ABCDEF'
.code
main proc
mov ax ,@data
mov ds,ax


mov bx,offset ch
mov al,2
xlatb
mov dl,al
mov ah,02h
int 21h

mov ah,04ch
int 21h


main endp
end main