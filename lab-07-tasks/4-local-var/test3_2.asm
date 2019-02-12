%include "io.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    push ebp
    mov ebp,esp
    xor eax, eax
    mov edx ,100
    mov ecx, 2
    mov ebx, 1
    mov eax, 3
    push ecx
    push ebx
    push eax
    call f
    PRINT_DEC 4, [ebp-12]
    ;add esp, 12
    ;PRINT_DEC 4, [ebp+4]
    push ebp
    mov ebp, esp
    push edx
    PRINT_DEC 4, [ebp+4]
    pop ebp
    ret
f:
    push ebp
    mov ebp,esp
    mov eax, [ebp + 8]
    mov ebx, [ebp + 12]
    mov ecx, [ebp + 16]
    add eax,ecx
    add eax,ebx
    leave
    ret