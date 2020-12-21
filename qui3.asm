pushRegs Macro
  push ax
  push bx
  push cx
  push dx
endM
popRegs Macro
  pop ax
  pop bx
  pop cx
  pop dx
endM
;;;;;;;;;;;;;;;;;;;;;
nextline macro
  mov dl,13 
  mov ah,02h  
  INT 21h
 
  mov dl,10
  mov ah,02h
  int 21h
endM 
str macro
  mov ah,09h
  int 21h
endM
char_out macro
  mov ah,02h
  int 21h
endM
char_in macro
  mov ah,01h
  int 21h
endM
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.model samll
.stack 100h
.data
  preNo dw 0
  currNo dw 0
  greater dw 0
  divide dw 2
  zero dw 0
 
.code
main proc
  mov ax,@data
  mov ds,ax 
;;;;;;;;;;;;;;;;;;;;;;;;;;;      
  call Check_Odd 
  mov dl,greater
  add dl,48
  char_out
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  mov ah,04ch
  int 21h
main endp 

Check_Odd proc
  pushRegs
    mov preNo,0
    mov currNo,0
    
    mov bl,10 
Inputagain:    
    char_in   
    cmp al,0dh
    je endInput
    sub al,48
 
    mov ah,0h 
    mov currNo,al
    cmp al , greater
    jl continue
    div divide
    cmp ah,zero
    je continue
    mov al,currNo
    mov greater,al
  continue:
    mov al,preNo
    mov dx,0h 
    mul bl
    add al,currNo 
    mov preNo,al
    jmp InputAgain
endInput:
popRegs
Ret
Check_Odd endp
end 