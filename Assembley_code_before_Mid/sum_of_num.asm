.model small
.stack 100h
.data
msg db "Enter First integer = ","$"
msg2 db "Enter Second integer = ","$"
msg3 db "Sum of two Elements = ","$"
line db 10,13
.code
main proc
mov ax,@data
mov ds,ax
;Access the data code.
mov dx,offset msg 
mov ah,09h
int 21h
;1st Input.
mov ah,01h
int 21h
mov bl,al
;Line Break.
mov dx,10
mov ah,02h
int 21h
mov dx,13
mov ah,02h
int 21h
;Access msg2 from Data.
mov dx,offset msg2
mov ah,09h
int 21h
;2nd Input.
mov ah,01h
int 21h
mov cl,al
;Line Break.
mov dl,line
mov ah,02h
int 21h
 
;Access msg3 from Data.
mov dx,offset msg3
mov ah,09h
int 21h
;Calculating and Displaying Result.
add bl,cl
sub bl,48
mov dl,bl
mov ah,02h
int 21h
mov ah,4ch
int 21h
main endp
end main