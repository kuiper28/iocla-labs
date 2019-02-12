%include "io.inc"
section .data
    array db 10,4,5,42
section .text
global CMAIN
CMAIN:
    ;write your code here
    xor eax, eax
    mov word [array + 2], 500
    PRINT_UDEC 2,[array + 2]
    ret