%include "io.inc"

%define NUM_FIBO 10

section .text
global CMAIN
CMAIN:
    mov ebp, esp
    mov eax, 1
    push eax
    mov eax, 1
    push eax
    mov ecx,8
loop1:
    xor eax,eax
    xor ebx,ebx
    pop eax
    push eax
    add eax,[esp + 4]
    push eax
    
    dec ecx
    cmp ecx, 0
    jg loop1
    mov ecx, 10
print:
   PRINT_UDEC 4, [esp + (ecx - 1) * 4]
   PRINT_STRING " "
    dec ecx
    cmp ecx, 0
    ja print

    mov esp, ebp
    xor eax, eax
    ret
