INCLUDE io.h 
cr EQU 0dh 
lf EQU 0ah 

DATA SEGMENT 	                                                                        
x DW 9
label1 DB cr,lf,'value of x:',0
prompt1 DB cr,lf,'enter the value of y :',0
y DW ?
sum DW 10 dup(?)
values DW 10 dup(?)
label2 DB cr,lf,'the result is:',0
DATA ENDS   					
CODE SEGMENT
ASSUME  cs:CODE, ds:DATA
START: 	MOV ax, data
MOV ds, ax
output label1
mov ax,x
itoa values,ax
output values
output prompt1
inputs values,10
atoi values
mov  y,ax
add ax,x
itoa sum,ax
output label2
output sum
quit: mov ah,4ch
int 21h
CODE ENDS
END START