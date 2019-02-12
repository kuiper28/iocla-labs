%include "io.inc"

section .text
global CMAIN
CMAIN:
    ;cele doua multimi se gasesc in eax si ebx
    mov eax, 139 
    mov ebx, 169
    mov ecx, ebx
    or ecx, eax
    or ecx, 189
    mov edx, eax
    and edx, ebx
    mov esi, eax
    not esi 
    and eax, 247
    mov edi, ebx
    not edi
    and edi, eax
    PRINT_DEC 4, eax ; afiseaza prima multime
    NEWLINE
    PRINT_DEC 4, ebx ; afiseaza cea de-a doua multime
    NEWLINE
    PRINT_DEC 4, ecx
    NEWLINE
    PRINT_DEC 4, edx
    NEWLINE
    PRINT_DEC 4, esi
    NEWLINE
    PRINT_DEC 4, edi
    NEWLINE
    ; TODO1: reuniunea a doua multimi


    ; TODO2: adaugarea unui element in multime


    ; TODO3: intersectia a doua multimi


    ; TODO4: complementul unei multimi


    ; TODO5: eliminarea unui element


    ; TODO6: diferenta de multimi EAX-EBX


    xor eax, eax
    ret
