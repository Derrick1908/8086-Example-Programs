INCLUDE io.h 
cr EQU 0dh 
lf EQU 0ah 

DATA SEGMENT 	                                                                        
prompt1 DB cr,lf,'Enter the 1st Number :',0
prompt2 DB cr,lf,'Enter the 2nd Number :',0
a DW ?
b DW ?
res DW 10 dup(?)
values DW 10 dup(?)
label2 DB cr,lf,'The OR Operation of the 2 Numbers is:',0
DATA ENDS   
					
CODE SEGMENT
ASSUME  cs:CODE, ds:DATA
START: 	MOV ax, data
MOV ds, ax

output prompt1
inputs values,10
atoi values
mov  a,ax

output prompt2
inputs values,10
atoi values
mov  b,ax

or ax,a
itoa res,ax
output label2
output res

quit: mov ah,4ch
int 21h
CODE ENDS
END START