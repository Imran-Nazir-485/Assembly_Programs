.model small
.stack 100h
.data
array db 'nauman'
.code
 main proc
 
 mov ax ,@data
 mov ds,ax
 mov bx,offset array
 mov al,1
 int 21h
 sub al,48
 xlatb
 mov dl,al
 mov ah,2
 int 21h
 
 mov ah,4ch
 int 21h
 main endp
 end main