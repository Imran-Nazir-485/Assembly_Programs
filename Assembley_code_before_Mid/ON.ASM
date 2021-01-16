.model small
.stack 100h
.data
nam1 db "my name is$"
.code
main proc
mov ax,@data
mov ds,ax
;displaying message here
mov dx,offset nam1
mov ah,9
int 21h
;terminating here

mov ah,4ch
int 21h
main endp
end main
