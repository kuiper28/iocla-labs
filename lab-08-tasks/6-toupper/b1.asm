%include "io.inc"
extern printf

section .data
    before_format db "before %s", 13, 10, 0
    after_format db "after %s", 13, 10, 0
    mystring db "abcdefgh>09Aijk", 0

section .text
global CMAIN

toupper:
    push ebp
    mov ebp, esp

    mov eax, dword [ebp + 8]
    mov ecx, 11
upper:
    mov bl, byte [eax]
    cmp bl, '`'
    jg  upper2
    inc eax
    cmp ecx,0
    jg  upper
upper2:
    mov dl, bl
    sub dl, 0x20
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
    call toupper
    add esp, 4

    push mystring
    push after_format
    call printf
    add esp, 8

    leave
    ret