.model small
.stack 100h
.data
var1 db '1'
var2 db 'nomi$'
.code
main proc
mov cx,5
text :
mov ax,@data
mov ds,ax
mov dl,var1
mov ah,2
int 21h
mov dx,offset var2
mov ah,9
int 21h
text loop


mov ah,4ch
int 21h

main endp
end main
