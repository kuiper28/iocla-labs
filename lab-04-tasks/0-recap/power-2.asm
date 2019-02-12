%include "io.inc"

section .text
global CMAIN
CMAIN:
   ;mov ebp, esp; for correct debugging
    push ebp
    mov ebp, esp
    mov eax, 211    ; to be broken down into powers of 2
    mov ebx, 1
    PRINT_DEC 4, ebx
    NEWLINE
    mov ecx,2
    jmp do1
print:
    PRINT_DEC 4,ebx
    NEWLINE
    jmp dos
dos:
    shl ecx,1
    cmp ecx, 211
    jb do1
    jmp exit
    ret
do1:
    mov ebx, ecx
    and ebx, eax
    cmp ebx, 0
    jg print
    jmp dos
exit:
    pop ebp
    ret 