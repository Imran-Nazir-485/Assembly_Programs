getch macro
mov ah, 01h
int 21h
endm
line macro
mov dl, 0Ah
mov ah, 02h
int 21h
mov dl, 0Dh
mov ah, 02h
int 21h
endm
.model small
.stack 100h
.data
pno dw 0
cno dw 0
d db 2
.code
main proc
mov ax, @data
mov ds, ax
l1:
  getch
  cmp al, 0Dh
  je EndInput
  sub al, 48 
  mov ah, 0
  mov cno, ax
  mov dx, 0h
  mov ax, pno
  mov bx, 10
  mul bx
  add ax, cno
  mov pno, ax
jmp l1
EndInput:
  line
; To binary
  mov dx, 0h
  mov ax, pno
  mov bx, 2
  mov cx, 0
  l2:
   div bx
   push dx
   mov dx, 0
   inc cx
   cmp ax, 0
   je Binary
  jmp l2
  Binary:
   pop dx
   add dl, 48
   mov ah, 02h
   int 21h
  loop Binary
  
; To Octa
  line
  mov dx, 0h
  mov ax, pno
  mov bx, 8
  mov cx, 0
  l3:
   div bx
   push dx
   mov dx, 0
   inc cx
   cmp ax, 0
   je Octa
  jmp l3
  Octal:
   pop dx
   add dl, 48
   mov ah, 02h
   int 21h
  loop Octal
; To Hexa
  line
  mov dx, 0h
  mov ax, pno
  mov bx, 16
  mov cx, 0
  l4:
   div bx
   push dx
   mov dx, 0
   inc cx
   cmp ax, 0
   je Hexadecimal
  jmp l4
  Hexadecimal:
   pop dx
   add dl, 48
   mov ah, 02h
   int 21h
  loop Hexa
mov ah,4ch
int 21h
main endp
end
