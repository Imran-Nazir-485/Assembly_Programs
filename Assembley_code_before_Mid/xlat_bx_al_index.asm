.model small
.stack 100h
.data  
 
array db 'nomi$'
line db 0Ah,0Dh
.code 
main proc
mov ax,@data
mov ds,ax 
mov bx,offset array
mov al,2
xlatb
mov dl,al
mov ah,2
int 21h




mov ah,04ch
int 21h
main endp
end main