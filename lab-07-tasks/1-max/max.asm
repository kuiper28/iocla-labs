%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    mov eax, 10
    mov ebx, 9
    push eax
    push ebx
    cmp eax,ebx
    jg loop1
    jb loop2
    ;pop eax
    ;pop ebx
print:
    cmp ecx,10
    je ppp
    jmp pip
print1:
    PRINT_DEC 4, ebx ; afiseaza minimul  
    NEWLINE
    PRINT_DEC 4, eax
    ret
ppp:
    pop eax
    jmp print1
pip:
    pop ebx
    jmp print1
loop1:
    pop eax
    mov ecx,10
    jmp print
loop2:
    pop ebx
    mov ecx,9
    jmp print