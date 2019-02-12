%include "io.inc"

section .data
    string db "Lorem ipsum dolor sit amet.", 0
    print_strlen db "strlen: ", 10, 0
    print_occ db "occurences of `i`:", 10, 0

    occurences dd 0
    length dd 0    
    char db 'i'

section .text
global CMAIN
CMAIN:
    push ebp
    mov ebp, esp
    mov al, 0x00
    mov edi, string
    repne scasb
    sub edi, string
    dec edi
    add [length], edi
    PRINT_STRING print_strlen
    PRINT_UDEC 4, [length]
    NEWLINE
    mov al, 'i'
    mov edi, string
    mov ecx, 27
    mov ebx, 0
  loop:
    repne scasb
    inc ebx
    cmp ecx, 0
    jne loop
    dec ebx
    mov edi, occurences
    mov eax, ebx
    stosb
    PRINT_STRING print_occ
    PRINT_UDEC 4, [occurences]
    NEWLINE
    xor eax, eax
    leave
    ret