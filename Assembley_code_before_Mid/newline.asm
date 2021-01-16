.model small
.stack 100h
.data
name2 db 0ah,"Enter Your Name Sir $"
name3 db "My Name is Nauman$"
name1 db 0ah,'nomi$'
name4 db 0ah,"$"
.code 
main proc
mov ax,@data
mov ds,ax
mov  dx,offset name1
mov ah,9
int 21h

mov  dx,offset name4
mov ah,9
int 21h

mov  dx,offset name3
mov ah,9
int 21h


mov dl,50
mov ah,2
int 21h



mov ax,offset name3
mov ah,9
int 21h

mov dl,3
add dl,5
add dl,48

mov ah,2
int 21h
mov ah,4ch
int 21h
main endp
end main