INCLUDE io.h 
cr EQU 0dh 
lf EQU 0ah 

DATA SEGMENT 	                                                                        
prompt1 DB cr,lf,'Enter the 1st Number :',0
prompt2 DB cr,lf,'Enter the 2nd Number :',0
prompt3 DB cr,lf,'Enter the 3rd Number :',0
prompt4 DB cr,lf,'Enter the 4th Number :',0
prompt5 DB cr,lf,'Enter the 5th Number :',0
summ DW ?
d DW 5
sum DW 10 dup(?)
values DW 10 dup(?)
label2 DB cr,lf,'the Sum of the 5 Numbers is:',0
label3 DB cr,lf,'the Average of the 5 Numbers is:',0
DATA ENDS   
					
CODE SEGMENT
ASSUME  cs:CODE, ds:DATA
START: 	MOV ax, data
MOV ds, ax

output prompt1
inputs values,10
atoi values
add  summ,ax

output prompt2
inputs values,10
atoi values
add  summ,ax

output prompt3
inputs values,10
atoi values
add  summ,ax

output prompt4
inputs values,10
atoi values
add  summ,ax

output prompt5
inputs values,10
atoi values
add  summ,ax

mov ax,summ
itoa sum,ax
output label2
output sum

cwd
div d
itoa sum,ax
output label3
output sum

quit: mov ah,4ch
int 21h
CODE ENDS
END START