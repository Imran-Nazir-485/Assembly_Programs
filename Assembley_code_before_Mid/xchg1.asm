.model small
.stack 100h
.data  
var1 db 3
var2 db 4
var3 db 5
.code 
main proc
mov ax,@data
mov ds,ax


mov al,var1
mov cl,var2
xchg  al,cl
mov dl,al
add dl,48
mov ah,2
int 21h

mov dl,cl
add dl,48

mov ah,2
int 21h

mov ah,04ch
int 21h
main endp
end main