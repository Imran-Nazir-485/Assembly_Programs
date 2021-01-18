;;MAIN PROGRAM;;;
.model small
.stack 100h
.data
	fname  db "pfile.txt",0
	fhandle dw 0
    fbuffer db 0
readbytes db 0	

.code
main proc
	mov ax, @data
	mov ds, ax
	mov es, ax


mov dx,offset fname
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
mov dl,offset fbuffer
int 21h
mov readbytes,al


;;;;Display data on screen
mov dl,offset fbuffer
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