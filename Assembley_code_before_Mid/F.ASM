Microsoft (R) Macro Assembler Version 5.00                  9/23/20 14:18:51
                                                             Page     1-1


				ddosseg 
o.asm(1): error A2105: Expected: instruction or directive
				.model small 
 0100				.stack 100h    
 0000				.data 
 0000  31			var1 db '1' 
 0001  6E 6F 6D 69 24		var2 db 'nomi$' 
 0000				.code 
				 
 0000				main proc 
 0000  B8 ---- R		mov ax,@data 
 0003  8E D8			mov ds,ax 
 0005  8A 16 0000 R		mov dl,var1 
 0009  B4 02			mov ah,2 
 000B  CD 21			int 21h 
 000D  BA 0001 R		mov dx,offset var2 
 0010  B4 09			mov ah,9 
 0012  CD 21			int 21h 
 0014  B4 4C			mov ah,4ch 
				 
 0016  CD 21			int 21h 
 0018				main endp 
 0018				end main 
Microsoft (R) Macro Assembler Version 5.00                  9/23/20 14:18:51
                                                             Symbols-1


Segments and Groups:

                N a m e         	Length	 Align	Combine Class

DGROUP . . . . . . . . . . . . .  	GROUP
  _DATA  . . . . . . . . . . . .  	0006	WORD	PUBLIC	'DATA'
  STACK  . . . . . . . . . . . .  	0100	PARA	STACK	'STACK'
_TEXT  . . . . . . . . . . . . .  	0018	WORD	PUBLIC	'CODE'

Symbols:            

                N a m e         	Type	 Value	 Attr

MAIN . . . . . . . . . . . . . .  	N PROC	0000	_TEXT	Length = 0018

VAR1 . . . . . . . . . . . . . .  	L BYTE	0000	_DATA
VAR2 . . . . . . . . . . . . . .  	L BYTE	0001	_DATA

@CODE  . . . . . . . . . . . . .  	TEXT  _TEXT		
@CODESIZE  . . . . . . . . . . .  	TEXT  0		
@DATASIZE  . . . . . . . . . . .  	TEXT  0		
@FILENAME  . . . . . . . . . . .  	TEXT  o		


     22 Source  Lines
     22 Total   Lines
     17 Symbols

  51146 + 465398 Bytes symbol space free

      0 Warning Errors
      1 Severe  Errors
