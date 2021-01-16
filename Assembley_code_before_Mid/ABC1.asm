.model small
.stack 100h
.data
name1 db "nomi","$"
var db 65
.code
 main proc
;1st input
mov ax,@data
mov ds,ax

mov bx,offset name1
mov cx,26
loop1:
   mov dl,var
   mov ah,2
   int 21h
   inc var
   mov dl,10
   mov ah,2
   int 21h
   
loop loop1
 
 
    
 mov ah,4ch
 int 21h
 main endp
 end main
   