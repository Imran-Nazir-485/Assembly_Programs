.model small
.stack 100h
.data
array db 'nauman$'
var db 1
.code
 main proc
 
 mov ax ,@data
 mov ds,ax
 mov bx,offset array
 mov cx,6
Loop1:
  mov dl,[bx]
 mov ah, 2
 int 21h
 
 inc bx
 
 loop Loop1 
 mov ah,4ch
 int 21h
 main endp
 end main