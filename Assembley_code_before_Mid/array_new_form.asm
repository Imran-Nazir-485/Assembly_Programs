.model small
.stack 100h
.data
name1 db "My Name is Nauman$"
 var db '$'
 var1 db 48
 
 
.code
 main proc
 
mov ax,@data
mov ds,ax
mov si,offset name1
mov cl,var
start:
 cmp [si+var1],cl
 je EndString
 mov dl,[si+var1]
 mov ah,2
int 21h
inc var1
loop start
EndString:
mov dl,10
mov ah,2
int 21h
   lea dx,name1
   mov ah,9
   int 21h
   
 mov ah,4ch
 int 21h
 main endp
 end main
   