.model small
.stack 100h
.data  
array db 3 dup(?)
string db "Enter Number please$",0ah
.code 
main proc
mov ax,@data
mov ds,ax
mov bx,offset array
Input:
mov dx,offset string
mov ah,9
int 21h
mov ah,01h
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
mov ah,04ch
int 21h
main endp
end main