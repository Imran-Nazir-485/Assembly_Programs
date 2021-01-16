.model small
.stack 100h
.data  
.code 
main proc
mov cl,48
Again:
mov dl,cl
mov ah,2
int 21h
inc cl
jmp Again

mov ah,04ch
int 21h
main endp
end main
