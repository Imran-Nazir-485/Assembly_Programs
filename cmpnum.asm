.model small
.stack 100h
.data
ch db 'Numbers are Equal$'
ch1 db 'Numbers are not Equal$'

.code
main proc
mov ax ,@data
mov ds,ax

mov dl,'3'
mov ah,01
int 21h


cmp al,dl

je l1
mov dx,offset ch1
mov ah,9
int 21h

mov ah,4ch
int 21h


l1:
mov dx,offset ch
mov ah,9
int 21h

mov ah,4ch
int 21h


main endp
end main