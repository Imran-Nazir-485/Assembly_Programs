.model small
.stack 100h
.data  
array db 10 dup(?)
.code 
main proc
mov ax,@data
mov ds,ax
mov  bx,offset array
Input:
mov ah,01
int 21h
cmp al,0dh
je EndInput
mov [bx],al
inc bx
jmp Input
EndInput:
mov dx,offset array
mov ah,9
int 21h

mov ah,4ch
int 21h
main endp
end main