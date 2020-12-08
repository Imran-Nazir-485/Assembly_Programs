
.model small
.stack 100h
.data
.code
main proc
mov ax,@data
mov ds,ax


;mov al,3
;mov bl,6
;mul bl
;aam
;mov ch,ah
;mov cl,al
;mov dl,ch
;mov ah,2
;add dl,48
;int 21h;
;mov dl,cl
;mov ah,2
;add dl,48
;int 21h




mov ax,35
mov bl,5
div bl

mov ch,ah
mov cl,al

mov dl,ch
mov ah,2
add dl,48
int 21h

mov dl,cl
mov ah,2
add dl,48
int 21h



mov ah, 04ch
int 21h
main endp
end 
