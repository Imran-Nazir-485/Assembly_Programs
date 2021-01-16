.model small
.stack 100h
.data  
array1 db "nomi$"
array2 db "nomi$"
s1 db "Not Equal$"
s2 db "Equal$"
ch1 db 31
ch2 db 3
line db 0Ah,0Dh
.code 
main proc
mov ax,@data
mov ds,ax  
mov cl,ch1
mov bl,ch2
cmp cl,bl
jl Equal
mov dx,offset s1
mov ah,9
int 21h
mov ah,04ch
int 21h
Equal :
  mov dx,offset s2
  mov ah,9
  int 21h
mov ah,04ch
int 21h
main endp
end main