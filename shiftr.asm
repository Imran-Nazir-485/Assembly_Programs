;;MAIN PROGRAM;;;
.model small
.stack 100h
.data
	msg DB "Number Before Division$"
    msg1 DB 0dh,0ah, "Number After Division$"

.code
main proc
	mov ax, @data
	mov ds, ax
	mov es, ax

lea dx,msg
mov ah,09h
int 21h


mov al,34h
mov bl,al

mov ah,2
mov dl,al
int 21h


lea dx,msg1
mov ah,09h
int 21h

and bl,0fh

mov cl,2
shr bl,cl


or bl, 30h
mov dl,bl
mov ah,2
int 21h

	
	
	
	
	
	mov ah, 04ch
	int 21h
main endp
end