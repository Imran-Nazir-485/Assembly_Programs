.model small
.stack 100h
.data
e db "Enter Your Grade$",10,13
g_i db 0ah,"My Grade is $"
g_o  db ?
a_i db 0ah,"My age is","$"
a_o db ?
.code
main proc

mov ax,@data
mov ds,ax
mov dx,offset e
mov ah,9h
int 21h

mov ah,1
int 21h

mov dx,offset g_i
mov ah,9h
int 21h

mov dl,al
mov ah,2 
int 21h
mov ah,4ch
int 21h
main endp
end main
