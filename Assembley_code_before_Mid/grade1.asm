.model small
.stack 100h
.data
 
 
 
.code
 main proc
 
mov ax,@data
mov ds,ax
 
 
mov ax,50
mov bx,51
push ax
push bx
pop ax
pop bx
mov dx,ax
mov ah,2
int 21h

mov dx,bx
mov ah,2
int 21h
 mov ah,4ch
 int 21h
 main endp
 end main
   