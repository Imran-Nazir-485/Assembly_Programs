.model small
.stack 100h
.data 
name4 db  10 dup (2 dup('a'),3 dup ('b') )
.code 
main proc
mov ax,@data
mov ds,ax

mov  dx,offset name4
mov ah,9
int 21h
 mov ah,4ch

int 21h
main endp
end main