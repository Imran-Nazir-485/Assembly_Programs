.model small
.stack 100h
.data
name1 db "Enter Number","$"
name2 db "Try Again Suggest other number,"$"
name3 db "You Win","$"
 
.code
 main proc
 
mov ax,@data
mov ds,ax
n:
mov dx,offset name1
mov ah,9
int 21h

mov ah,1
int 21h
cmp al,51
je endloop

mov dl,10
mov ah,2
int 21h

mov dx,offset name2
mov ah,9
int 21h
jmp n
 
endloop:

mov dl,10
mov ah,2
int 21h

mov dx,offset name3
mov ah,9
int 21h

   
 mov ah,4ch
 int 21h
 main endp
 end main
   