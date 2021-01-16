.model small
.stack 100h
.data
g_string db "Enter Your Grade $"
g_input db ?
g_output db 0ah,"Your Grade is $"
a_string db 0ah,"Enter Your Age $"
a_input db ?
a_output db 0ah,"You Age is $"
.code 
main proc
mov ax,@data
mov ds,ax
mov dx,offset g_string
mov ah,9
int 21h

mov ah,1 
int 21h

mov dx,offset g_output
mov ah,9 
int 21h

mov g_input,al
mov dl ,g_input
mov ah,2
int 21h

mov dx,offset a_string
mov ah,9
int 21h

mov ah,1
int 21h


mov ah,offset a_string
mov ah,9
int 21h

mov dl,al
mov ah,2
int 21h

mov ah,4ch
int 21h
main endp
end main