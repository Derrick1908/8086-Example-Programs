INCLUDE io.h 
cr EQU 0dh 
lf EQU 0ah 

DATA SEGMENT 	                                                                        
prompt1 DB cr,lf,'Enter the side of the Cube :',0
label1 DB cr,lf,'The Volume of the Cube is:',0
y DW ?
sum DW 10 dup(?)
values DW 10 dup(?)

DATA ENDS
  					
CODE SEGMENT
ASSUME  cs:CODE, ds:DATA
START: 	MOV ax, data
MOV ds, ax
output prompt1
inputs values,10
atoi values

mov  y,ax
mul y
mul y
itoa sum,ax
output label1
output sum

quit: mov ah,4ch
int 21h
CODE ENDS
END START