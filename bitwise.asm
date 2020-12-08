.model small
.stack 100h
.data
msg db "Enter First Number$"
msg1 db "Enter 2nd Number$"
msg3 db "Enter 1 For OR opr , 2 For And opr$"

.code
main proc
mov ax,@data
mov ds,ax


mov dx, offset msg
mov ah,9
int 21h
mov ah,01
int 21h
mov bl,al



mov dx,10
mov ah,2
int 21h

mov dx,13
mov ah,2
int 21h


mov dx, offset msg1
mov ah,9
int 21h
mov ah,01
int 21h
mov cl,al

mov dx,10
mov ah,2
int 21h

mov dx,13
mov ah,2
int 21h


mov dx, offset msg3
mov ah,9
int 21h
mov ah,01
int 21h
push Ax
;mov dl,al
mov dx,10
mov ah,2
int 21h

mov dx,13
mov ah,2
int 21h

pop Ax


cmp al,1
je AndOp

cmp al,2
je OrOp











AndOp:
and bl,cl
mov dl,bl
mov ah,2
int 21h
mov ah,4ch
int 21h





OrOp:
or bl,cl
mov dl,bl
mov ah,2
int 21h
mov ah,4ch
int 21h


















main endp
end main