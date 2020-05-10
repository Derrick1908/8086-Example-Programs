INCLUDE io.h 
cr EQU 0dh 
lf EQU 0ah 

DATA SEGMENT 	                                                                        
prompt1 DB cr,lf,'enter the value of a :',0
prompt2 DB cr,lf,'enter the value of b :',0
prompt3 DB cr,lf,'enter the value of c :',0
prompt4 DB cr,lf,'enter the value of d :',0
a DW ?
b DW ?
ab DW ?
c DW ?
d DW ?
cd DW ?
sum DW 10 dup(?)
values DW 10 dup(?)
label2 DB cr,lf,'the result is:',0
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
add ax,a
mov ab,ax

output prompt3
inputs values,10
atoi values
mov  c,ax

output prompt4
inputs values,10
atoi values
mov  d,ax
add ax,c
mov cd,ax

mov ax,ab
sub ax,cd
itoa sum,ax
output label2
output sum
quit: mov ah,4ch
int 21h
CODE ENDS
END START