pushReg Macro
push ax
push bx
push cx
push dx
endm
popReg Macro
pop ax
pop bx
pop cx
pop dx
endm


.model small
.stack 100h
.data
msg db "Enter 16-bits Number$"
msg5 db 0dh ,0ah ,"$"
pno dw 0
cno dw 0
rem dw 0

check dw 2
odd dw 0
.code
main proc
mov ax,@data
mov ds,ax



mov si,offset msg
lea dx,[si]
mov ah,09
int 21h

lea dx,msg5
mov ah,9
int 21h



InputAgain:
mov ah,01h
int 21h
cmp al,0dh
je endInput
sub al,48
mov ah,0
mov cx,pno
mov bx,10
mul bx
add ax,cno
mov pno,ax
jmp InputAgain





endInput:
mov ax,pno
mov bx,10
mov cx,0

divagain:

mov dx,0h
div bx
push dx
call checking
inc cx
cmp ax,0
je shownum
jmp divagain

shownum:
pop dx
add dx,48
mov ah,2
int 21h
loop shownum












checking proc
pop dx
mov odd,ax
mov rem,dx
mov ax,rem
mov bx,check
div bx
cmp dx,0
dec rem
mov dx,rem
push dx
mov ax,odd
inc rem
mov dx,rem

ret

checking endp














mov ah, 04ch
int 21h
main endp
end 
