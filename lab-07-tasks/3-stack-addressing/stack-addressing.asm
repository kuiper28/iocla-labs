%include "io.inc"

%define NUM 5

section .text
global CMAIN
CMAIN:
    mov ebp, esp

    ; TODO 1: replace every push by an equivalent sequence of commands
    mov ecx, NUM
push_nums:
   ; push ecx   
    sub esp, 4
    mov [esp], ecx
    sub esp, 4
    mov eax,ecx
    mov [esp+4*ecx-4],eax
    loop push_nums
    ;sub esp, 4
    ;mov eax,1
    ;sub 
    ;mov eax,"mere"
    ;mov [esp+8], eax
    ;sub esp, 4
    ;mov eax,"are"
    ;mov [esp+12], eax
    ;sub esp, 4
    ;mov eax,"Ana"
    ;mov [esp+16], eax
    PRINT_HEX 4,esp
    PRINT_STRING ": "
    PRINT_HEX 4,[esp]
    NEWLINE
    PRINT_HEX 4,esp - 4
    PRINT_STRING ": "
    PRINT_HEX 4,[esp - 4]
    NEWLINE
    PRINT_HEX 4,esp-8
    PRINT_STRING ": "
    PRINT_HEX 4,[esp - 8]
    NEWLINE
    PRINT_HEX 4,esp-12
    PRINT_STRING ": "
    PRINT_HEX 4,[esp-12]
    NEWLINE
    PRINT_HEX 4,esp-16
    PRINT_STRING ": "
    PRINT_HEX 4,[esp-16]
    NEWLINE
    PRINT_HEX 4,ebp
    PRINT_STRING ": "
    PRINT_HEX 4,[ebp]
    NEWLINE    
    PRINT_HEX 4,esp-16
    PRINT_STRING ": "
    PRINT_HEX 4,[esp-16]
    NEWLINE
    PRINT_HEX 4,esp-12
    PRINT_STRING ": "
    PRINT_HEX 4,[esp-12]
    NEWLINE
    PRINT_HEX 4,esp-8
    PRINT_STRING ": "
    PRINT_HEX 4,[esp-8]

    ; TODO 2: print the stack in "address: value" format in the range of [ESP:EBP]

    ; TODO 3: print the string

    ; restore the previous value of the EBP (Base Pointer)
    mov esp, ebp

    ; exit without errors
    xor eax, eax
    ret
