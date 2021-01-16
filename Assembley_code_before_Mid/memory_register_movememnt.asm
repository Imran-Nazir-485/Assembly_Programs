.model small
.stack 100h
.data  
number db 55 
number1 db ?
.code 
main proc
 mov ax,@data
 mov ds,ax
 mov number,56
 mov cl,number
 mov cl,50
 mov number1,cl
 mov dl,number1
 mov ah,2
 int 21h
mov ah,04ch
int 21h
main endp
end main