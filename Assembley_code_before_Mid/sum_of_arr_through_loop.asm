.model small
.stack 100h
.data
array db '1213$'
var db 0
.code
 main proc
 
 mov ax ,@data
 mov ds,ax
 mov bx,offset array
 mov cx,4
Loop1:
  mov dl,[bx]
  sub dl,48
 add var,dl   
 inc bx
 loop Loop1 
 add var,48
 mov dl,var
 mov ah,2
 int 21h
 mov ah,4ch
 int 21h
 main endp
 end main
 