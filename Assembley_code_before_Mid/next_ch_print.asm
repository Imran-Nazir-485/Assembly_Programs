.model small
.stack 100h
.data
array db 3 dup (?)
number1 db 0ah,"Enter Number $"
number2 db 0ah,"Entered Number $"
line db 0ah
sum db 0
var db 48
 
.code
 main proc
mov ah,1
int 21h
add al,1
mov dl,al

 
mov ah,2 
int 21h
    
 mov ah,4ch
 int 21h
 main endp
 end main
 