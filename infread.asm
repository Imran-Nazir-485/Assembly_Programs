;;MAIN PROGRAM;;;
.model small
.stack 100h
.data
msg  db 0ah,0dh ,"Input file name with extension$"
	fname1 db 20 dup('$')

	fname  db 0
	fhandle dw 0
    fbuffer dw 0
readbytes dw 0	

.code
main proc
	mov ax, @data
	mov ds, ax
	mov es, ax

mov ah,09h
lea  dx,msg
int 21h




mov si,offset fname1

l:
mov ah,1
int 21h
cmp al,0dh
je  endinput
mov [si],al
inc si
jmp l


endinput:




mov dx,offset fname1
mov ah,03dh
mov al,0h
int 21h
jc exit
mov fhandle,ax

;;;;read from file

redagain:
mov ah,03fh
mov bx,fhandle
mov cx,8
mov dx,offset fbuffer
int 21h
mov readbytes,ax


;;;;Display data on screen
mov dx,offset fbuffer
mov ah,9
int 21h
cmp readbytes,0  ;;;read until end of file
jne redagain








	;file closing
	exit:
	mov ah,03eh
	mov bx,fhandle
	int 21h
	
	;;;;;;;;
	
	
	
	
	
	
	mov ah, 04ch
	int 21h
main endp
end