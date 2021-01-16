.model small
.stack 100h
.data
.code
main proc
mov dx,offset "nomi$"
mov ah,9h
int 21h
mov ah,4ch
int 21h
main endp
end main