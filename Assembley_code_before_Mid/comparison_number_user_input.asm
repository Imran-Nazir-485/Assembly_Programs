.model small
.stack 100h
.data
name1 db "Enter Number","$"
name2 db "Entered Number are equal","$"
name3 db "Entered  Number are not equal","$"
var db 65
.code
 main proc
;1st input
mov ax,@data
mov ds,ax

mov dx,offset name1
mov ah,9
int 21h

mov ah,1
int 21h
mov dl,51

cmp dl,al
je Equal
mov dx,offset name3
int 21h
mov ah,4ch
int 21h
Equal:
mov dx,offset name2
mov ah,9
int 21h

   
 mov ah,4ch
 int 21h
 main endp
 end main
   