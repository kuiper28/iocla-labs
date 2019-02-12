%include "io.inc"

section .data
source_text: db "ABABCCABCBABCBABCBBBABABBCBABCBAAACCANAAREMERECBBABCBABCBABCOBABANAAREMERECBABCBABCBAANAAREMEREBC", 0
substring: db "ANAAREMERE", 0
len: db 4
print_format: db "Found ", 0

section .text
global CMAIN
CMAIN:
    push ebp
    mov ebp, esp
    mov esi, source_text
    mov edi, substring
    mov ecx, 1
find:
    mov al,byte[esi]
    mov bl, byte[edi]
    cmp al, bl
    je verification
    inc esi
    inc ecx
    mov edi, substring
    cmp byte[esi], 0
    je exit
    jmp find
verification:
    cmp byte[edi + 1], 0x0
    je print
    inc esi
    inc edi
    inc ecx
    cmp byte[esi], 0
    je exit
    jmp find
print:
    PRINT_STRING print_format
    mov edx,ecx
    sub edx, 10
    PRINT_UDEC 4,edx
    NEWLINE
    mov edi, substring
    ;inc ecx
    cmp byte[esi + 1], 0
    je exit
    jmp find
    NEWLINE
exit:
    leave
    ret