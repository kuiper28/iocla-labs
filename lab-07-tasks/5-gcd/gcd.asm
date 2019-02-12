%include "io.inc"
section .data
    format1 db "gdc(",0
    format2 db ")=",0
section .text
global CMAIN
CMAIN:
    mov eax, 49
    mov edx, 28

    push eax
    push edx

gcd:
    neg     eax
    je      L3
    

L1:
    neg eax
    push eax
    push edx
    pop eax
    pop edx

L2:
    sub     eax,edx
    jg      L2
    jne     L1

L3:
    add     eax,edx
    jne     print
    inc     eax
print:
    
    PRINT_STRING format1
    PRINT_UDEC 4, [esp+4]
    PRINT_STRING ","
    PRINT_UDEC 4, [esp]
    PRINT_STRING format2
    PRINT_UDEC 4,eax ; output value in eax
    pop eax
    pop eax
    xor eax, eax
    ret
