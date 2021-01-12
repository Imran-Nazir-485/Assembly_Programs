;;MAIN PROGRAM;;;
.model small
.stack 100h
.data
	msg DB " strings are Not Equal$"
	fname  db "file.txt",0
	fhandle dw 0
.code
main proc
	mov ax, @data
	mov ds, ax
	mov es, ax

	;;;;;;;;;;;;;;;;;;;;;
	;file creation
	mov ah,03ch
	mov dx,offset fname
	mov cx,0dh
	int 21h
	jc exit
	mov fhandle,ax
	;write in a file
	mov ah,40h
	mov bx,fhandle
	mov cx,21
	mov dx,offset msg
	int 21h
	
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