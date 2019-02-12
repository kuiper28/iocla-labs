%include "io.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    xor eax, eax
    
    mov al, 4
    mov bl, 6
    and ax,0ffh
    and bx,0ffh
    push ax
    push bx
    pop ax 
    pop bx   
    PRINT_DEC 2,ax
    NEWLINE
    PRINT_DEC 2,bx
    ret