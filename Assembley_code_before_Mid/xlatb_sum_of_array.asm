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
 
 mov ax ,@data
 mov ds,ax
 mov bx,offset array
 mov dx,offset number1
 mov cx,3
 loop1:
 mov ah,9
 int 21h
 mov ah,1
 int 21h
 mov [bx],al
 inc bx
 loop loop1
 
 ;output
   mov bx,offset array
   mov cx,3
loop2:
mov dl,[bx]
mov ah,2
int 21h
inc bx
loop loop2   

mov bx,offset array
mov cx,3
loop3:
   mov al,var
   xlatb
     sub al,48
    add sum,al
	mov dl,al
	mov ah,2
	int 21h
	inc var

loop loop3
 
 
mov dl,sum
mov ah,2 
int 21h
    
 mov ah,4ch
 int 21h
 main endp
 end main