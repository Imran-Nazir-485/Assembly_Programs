;;MAIN PROGRAM;;;
.model small
.stack 100h
.data
	;msg DB " strings are Not Equal$"
	fname  db "pfile.txt",0
	para  db 100 dup('$')
	fhandle dw 0
count db 0	
	
.code
main proc
	mov ax, @data
	mov ds, ax
	mov es, ax

mov si,offset para

l:
mov ah,1
int 21h
cmp al,0dh
je  endinput
mov [si],al
inc si
inc count
jmp l


endinput:
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
	mov cx,count
	mov dx,offset para
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