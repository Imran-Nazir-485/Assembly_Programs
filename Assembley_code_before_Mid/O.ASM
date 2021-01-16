dosseg
.model small
.stack 100h   
.data
var1 db '1'
var2 db 'nomi$'
var3 db ?
.code

main proc
mov ax,@data
mov ds,ax
mov dl,var1
dmov ah,2
int 21h
mov dx,offset var2
mov ah,9
int 21h
mov ah,4ch

int 21h
main endp
end main
