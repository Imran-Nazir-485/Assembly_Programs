.model small
.stack 100h
.data 
arr db 100 dup('$')
cap db 0
words db 0
MSG1 DB 0DH, 0AH, "Lenght of Paragraph: $"
MSG2 DB 0DH, 0AH, "No of words: $"
.code
main proc
mov ax,@data
mov ds,ax

;count the length of string
mov bl,0
mov si,offset arr

l1:
mov ah,1
int 21h











cmp al,13
je printstring
mov [si],al
inc si
inc bl
jmp l1
printstring:
MOV AH, 9
     LEA DX, MSG1
     INT 21H
     
mov dl,bl
mov ah,2
add dl,48
int 21h




mov bx,arr
count:
     mov al, [bx]
     cmp al, "$"
     ;JE EXIT
     cmp al, " "
     je word_completed      
     inc bx
     jmp count

word_completed:
     inc words
     inc bx 
     jmp count     

EXIT:
     ;INC WORDS
MOV AH, 9
     LEA DX, MSG2
     INT 21H
     
mov dl,words
mov ah,2
add dl,48
int 21h














mov ah,4ch
int 21h
main endp
end main

