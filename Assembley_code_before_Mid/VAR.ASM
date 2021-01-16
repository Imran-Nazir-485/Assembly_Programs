.model small
.stack 100h
.data
nme db 'nomi$'
.code
main proc
mov ax,@data
mov ds,ax
mov dx,offset nme
mov ah,9
int 21h
mov ah,4ch
int 21h

main endp
end main
