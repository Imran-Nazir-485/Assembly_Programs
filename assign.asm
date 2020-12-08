.model small
.stack 100h
.data
arr1 db "Final$$"
arr db 100 dup('$')
chr db 0
var db 0
.code
main proc
mov ax,@data
mov ds,ax
mov si ,offset arr
jmp Input
check:
cmp chr, 47
jg digit
jmp notdigit
digit:

jmp Input

Input:
mov ah,1
int 21h
mov cl, al
mov chr, al
cmp chr, 0dh
je Output

cmp chr, 58
jl check
notdigit:
mov byte ptr [si], cl
inc si
jmp Input



Output:
lea dx,arr1
mov ah,9
int 21h

mov ah,13
int 21h
mov ah,10
int 21h

lea dx,arr
mov ah,9
int 21h








mov ah,4ch
int 21h





main endp
end 