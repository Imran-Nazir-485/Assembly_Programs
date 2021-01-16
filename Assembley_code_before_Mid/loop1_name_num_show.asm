.model small
.stack 100h
.data  
array1 db "nomi$"
line db 0Ah,0Dh
.code 
main proc
mov ax,@data
mov ds,ax 
mov cx,5
mov bl,48
Loop1:
   mov dl,bl
   mov ah,2
   int 21h
   
   mov dl,line
   mov ah,2
   int 21h
   inc bl
   loop Loop1
   
mov cx,3
Loop2:
   mov dl,line
   mov ah,2 
   int 21h
   mov dx,offset array1
   mov ah,9
   int 21h
   loop Loop2
 
mov ah,04ch
int 21h
main endp
end main