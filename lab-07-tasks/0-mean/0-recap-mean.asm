%include "io.inc"

%define ARRAY_SIZE 13
%define DECIMAL_PLACES 5

section .data
    num_array dw 76, 12, 65, 19, 781, 671, 431, 761, 782, 12, 91, 25, 9
    array_sum_prefix db "Sum of numbers: ",0
    array_mean_prefix db "Numbers mean: ",0
    decimal_point db ".",0

section .text
global CMAIN
CMAIN:
    xor eax, eax
    mov ecx, ARRAY_SIZE
    
    ; TODO1 - compute the sum of the vector numbers - store it in ax
cmain:
    mov dx, word [num_array + 2*(ecx - 1)]
    add ax,dx
    loop cmain
    PRINT_STRING array_sum_prefix
    PRINT_UDEC 2, ax
    NEWLINE
    mov dx,0
    mov cx, ARRAY_SIZE
    div cx
    PRINT_STRING array_mean_prefix
    PRINT_UDEC 2, ax
    PRINT_STRING decimal_point
    mov ecx, DECIMAL_PLACES
    mov ebx, ARRAY_SIZE
compute_decimal_place:   
    mov ax, 10
    mul dx
    div bl
    PRINT_UDEC 1,al
    xor edx, edx
    mov dl, ah
    xor eax, eax
    dec ecx
    cmp ecx, 0
    jg compute_decimal_place

    NEWLINE

    xor eax, eax
    ret
