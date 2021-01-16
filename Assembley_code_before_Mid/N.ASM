Microsoft (R) Macro Assembler Version 5.00                  9/22/20 23:36:57
                                                             Page     1-1


				.model small 
 0100				.stack 100h 
 0000				.data 
 0000				.code 
 0000				main proc 
 0000  B4 01			mov ah,1 
 0002  CD 21			int 21h 
 0004  8A D0			mov dl,al 
 0006  B4 02			mov ah,2 
 0008  CD 21			int 21h 
 000A  B4 4C			mov ah,4ch 
 000C  CD 21			int 21h 
 000E				main endp 
 000E				end main 
Microsoft (R) Macro Assembler Version 5.00                  9/22/20 23:36:57
                                                             Symbols-1


Segments and Groups:

                N a m e         	Length	 Align	Combine Class

DGROUP . . . . . . . . . . . . .  	GROUP
  _DATA  . . . . . . . . . . . .  	0000	WORD	PUBLIC	'DATA'
  STACK  . . . . . . . . . . . .  	0100	PARA	STACK	'STACK'
_TEXT  . . . . . . . . . . . . .  	000E	WORD	PUBLIC	'CODE'

Symbols:            

                N a m e         	Type	 Value	 Attr

MAIN . . . . . . . . . . . . . .  	N PROC	0000	_TEXT	Length = 000E

@CODE  . . . . . . . . . . . . .  	TEXT  _TEXT		
@CODESIZE  . . . . . . . . . . .  	TEXT  0		
@DATASIZE  . . . . . . . . . . .  	TEXT  0		
@FILENAME  . . . . . . . . . . .  	TEXT  s_p		


     14 Source  Lines
     14 Total   Lines
     15 Symbols

  51180 + 465364 Bytes symbol space free

      0 Warning Errors
      0 Severe  Errors
