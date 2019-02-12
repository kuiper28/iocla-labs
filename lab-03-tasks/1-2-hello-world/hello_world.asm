    %include "io.inc"

section .data
    myString: db "Hello, World!",0
    myString1: db "Goodbye world!",0
section .text
global CMAIN
CMAIN:
    mov ecx, 6                 ; N = valoarea registrului ecx
    mov eax, 2
    mov ebx, 1
    mov edx,ecx
    jmp print1
    cmp eax, ebx
    jg print                   ; TODO1: eax > ebx?
    ret
print1:
     PRINT_STRING myString
     NEWLINE
     sub edx,1
     cmp edx, 1
     jg print1
print:
    PRINT_STRING myString
    NEWLINE
    PRINT_STRING myString1
    NEWLINE
                               ; TODO2.2: afisati "Hello, World!" de N ori
                               ; TODO2.1: afisati "Goodbye, World!"

    ret
