.model small
.stack 100h
.data  
input1 db "Enter  $"
input2 db "  Value Sir $"
output db "You entered  $"
array db 3 dup (?)
line db 0Ah,0Dh
.code 
main proc
mov ax,@data
mov ds,ax 
mov bl,49
mov cx,3
mov si,offset array
Loop1:
     mov dx,offset input1
	 mov ah,9
	 int 21h
	 
	 mov dl,bl
     mov ah,2
     int 21h
	 
	 mov dx,offset input2
	 mov ah,9
	 int 21h


	 mov ah,1
	 int 21h 
	 
	 mov byte ptr [si],al
     mov dl,line
	 mov ah,2
	 int 21h
	 inc si
	 add bl,1
	 loop Loop1
mov bl,49
mov si,offset array
mov cx,3
Loop2: 
     mov dx,offset output
	 mov ah,9
	 int 21h
	 
	 mov dl,bl
	 mov ah,2
	 int 21h
	 
	 mov dx,offset input2
	 mov ah,9
	 int 21h
	 
	 mov dl,[si]
	 mov ah,2
	 int 21h
	 
	 mov dl,line
	 mov ah,2
	 int 21h
	 inc si
	 add bl,1
	 loop Loop2
mov ah,04ch
int 21h
main endp
end main