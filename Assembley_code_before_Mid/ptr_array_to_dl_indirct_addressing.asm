

.model small
.stack 100h
.data  
array db 5 dup(5)
.code 
main proc
 mov ax,@data
 mov ds,ax
 mov bx,offset array
 mov dl,[bx]
 add dl,48
  mov ah,2
  int 21h
mov ah,04ch
int 21h
main endp
end main