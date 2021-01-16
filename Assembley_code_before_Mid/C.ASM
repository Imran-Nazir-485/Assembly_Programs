Microsoft (R) Macro Assembler Version 5.00                  9/23/20 14:44:39
                                                             Page     1-1


				.model small 
 0100				.stack 100h 
 0000				.data 
 0000				.code 
 0000				main proc 
 0000  B1 01			mov cl,1 
 0002  B3 02			mov bl,2 
 0004  02 D9			add bl,cl 
 0006  8A D3			mov dl,bl 
 0008  B4 02			mov ah,2 
 000A  CD 21			int 21h 
 000C  B4 4C			mov ah,4ch 
 000E  E4 00			in 21h 
a3.asm(13): error A2105: Expected: comma
 0010				main endp 
 0010				end main 
Microsoft (R) Macro Assembler Version 5.00                  9/23/20 14:44:39
                                                             Symbols-1


Segments and Groups:

                N a m e         	Length	 Align	Combine Class

DGROUP . . . . . . . . . . . . .  	GROUP
  _DATA  . . . . . . . . . . . .  	0000	WORD	PUBLIC	'DATA'
  STACK  . . . . . . . . . . . .  	0100	PARA	STACK	'STACK'
_TEXT  . . . . . . . . . . . . .  	0010	WORD	PUBLIC	'CODE'

Symbols:            

                N a m e         	Type	 Value	 Attr

MAIN . . . . . . . . . . . . . .  	N PROC	0000	_TEXT	Length = 0010

@CODE  . . . . . . . . . . . . .  	TEXT  _TEXT		
@CODESIZE  . . . . . . . . . . .  	TEXT  0		
@DATASIZE  . . . . . . . . . . .  	TEXT  0		
@FILENAME  . . . . . . . . . . .  	TEXT  a3		


     15 Source  Lines
     15 Total   Lines
     15 Symbols

  51180 + 465364 Bytes symbol space free

      0 Warning Errors
      1 Severe  Errors
