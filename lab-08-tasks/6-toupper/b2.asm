%include "io.inc"
extern printf

section .data
    before_format db "before %s", 13, 10, 0
    after_format db "after %s", 13, 10, 0
    mystring db "abcdefghz", 0

section .text
global CMAIN

rot13:
    push ebp
    mov ebp, esp

    mov eax, dword [ebp + 8]
    mov ecx, 8
upper:
    mov bl, byte [eax]
    mov dl, bl
    add dl, 0xD
    mov byte[eax], dl
    inc eax
    dec ecx
    cmp ecx, 0
    jg upper
    leave
    ret

CMAIN:
    push ebp
    mov ebp, esp

    push mystring
    push before_format
    call printf
    add esp, 8

    push mystring
    call rot13
    add esp, 4

    push mystring
    push after_format
    call printf
    add esp, 8

    leave
    ret