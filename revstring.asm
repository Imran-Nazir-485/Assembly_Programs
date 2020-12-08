.model small
.stack 100h
.data
.code
main proc

push 48

l1:
mov ah,1
int 21h
cmp al,13
je output
push ax
jmp l1

output:
l2:
pop dx
cmp dx,48
je pend
mov ah,2
int 21h
jmp l2









pend:
mov ah,4ch
int 21h


main endp
end main