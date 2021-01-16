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
;1st input
mov ah,1
int 21h 
mov dl,al
;jb mein input krwaonga tou uska ascii number jayega

;1st output
mov ah,2 
int 21h

;2nd Input
mov ah,1
int 21h 
add dl,al
sub dl,48
;2nd output
mov ah,2 
int 21h

;3rd Input

mov ah,1
int 21h 

add dl,al
sub dl,48
;3rd output
mov ah,2 
int 21h
 
 
    
 mov ah,4ch
 int 21h
 main endp
 end main
   