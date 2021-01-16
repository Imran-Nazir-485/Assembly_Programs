.model small
.stack 100h
.data
array db 5 dup (?)
number1 db 0ah,"Enter Number $"
number2 db 0ah,"Entered Number $"
line db 0ah
sum db 0
 
.code
 main proc
 
 mov ax ,@data
 mov ds,ax
 mov si,offset array
 mov cx,4
Loop1:
 mov dx,offset number1
 mov ah,9
 int 21h
 
 mov ah,1
 int 21h
 
 mov  byte ptr [si],al
 inc si
 loop Loop1
mov cx,4
mov bx,offset array
Loop2:
mov dx,offset number2
mov ah,9
int 21h
   mov dl,[bx]
   mov ah,2
   int 21h
   inc bx
   loop Loop2
mov bx,offset array
mov cx,4  
mov dl,sum   
Loop3:
   mov  dl,[bx]
   sub dl,48
   add sum,dl
inc bx
   
loop Loop3
;key point jb mein array per loop laagata hn tou phir muje character (user se liya hwa input) convert krwana ho number ko int 
;mein tou 48 se subtract krwaonga otherwise muje nahi krwana prregha
add sum,48
mov dl,sum
mov ah,2
 int 21h
   
 mov ah,4ch
 int 21h
 main endp
 end main