.model small
.stack 100h
.data  
array db 7 dup(?)
string db "Enter Number please$",0ah
line db 0ah,"$"
line2 db 0ah,"You Pressed Enter Sir !$"
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
mov dx,offset line
mov ah,9
int 21h
jmp Input
EndInput:
mov dx,offset line2
mov ah,9
int 21h
mov dx,offset array
mov ah,9
int 21h

mov bx , offset array
mov ax,[bx]
mov ah,2
int 21h
mov ah,04ch
int 21h
main endp
end main