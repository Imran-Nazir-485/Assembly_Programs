.model small
.stack 100h
.data
.code
main proc
mov dx,"nomi$"
mov ah,09h
int 21h
mov ah,4ch
int 21h
main endp
end main
