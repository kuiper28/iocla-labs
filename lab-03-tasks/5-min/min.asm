%include "io.inc"

section .text
global CMAIN
CMAIN:
    ;cele doua numere se gasesc in eax si ebx
    mov eax, 4
    mov ebx, 1 
    cmp eax,ebx
    jg salt
    ;jmp salt
    ;TODO: aflati minimul
    ;PRINT_DEC 4, eax ; afiseaza minimul
    ;NEWLINE
print:
    PRINT_DEC 4, eax ; afiseaza minimul
    NEWLINE
    ret
salt:
    ;jg
    xchg eax,ebx
    jmp print;
    ;ret