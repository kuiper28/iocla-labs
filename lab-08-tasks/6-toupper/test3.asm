%include "io.inc"
%define buf_len 32
section .bss
    expr: resd buf_len
section .text
section .data
    array_1 db 27, 46, 55, 83, 84   
global CMAIN
f:
    
    ;write your code here
    ;xor eax, eax
    ;GET_STRING expr, buf_len
    push ebp
    mov ebp,esp
   ; GET_STRING expr, buf_len
    mov ebx, [ebp + 8]
    mov al,2
    mov [ebx + 2], al
    leave
    ret
CMAIN:
    xor eax, eax
    ;GET_STRING expr, buf_len
    mov al, 'v'
    push array_1
    call f
    add esp, 4
print:
    PRINT_UDEC 1, [array_1 + ecx*1]
    NEWLINE
    inc ecx
    cmp ecx, 5
    jb print
    ret