

.model small
.stack 100h
.data
a1 db "Enter Your Age... $"
a2 db ?
a3 db 0ah,"Your age is.... $"
g1 db 0ah,"Enter Your Grade.... $"
g2 db ?
g3 db  0ah,"Your Grade is... $"
.code
main proc
mov ax,@data
mov ds,ax

mov dx,offset a1
mov ah,9
int 21h

mov ah,1 
int 21h

mov dx,offset a3
mov ah,9
int 21h

mov dl,al
mov ah,2
int 21h

mov dx,offset g1
mov ah,9
int 21h

mov ah,1
int 21h

mov dx,offset g3
mov ah,9
int 21h

mov dl,al
mov ah,2
int 21h 
mov ah,4ch
int 21h
main endp
end main