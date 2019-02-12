%include "io.inc"

extern printf

%DEFINE LENGTH 20

section .data
    string db "Nunc tristique ante maximus, dictum nunc in, ultricies dui.", 0
    char db 'a'

section .text
global CMAIN

CMAIN:
    push ebp
    mov ebp, esp
    mov al, 'a'
    mov edi, string
    mov ecx, 20

;mn:
 ;   stosb
  ;  dec ecx
   ; cmp ecx,0   
    ;jg mn
    ;mov dword ptr [edi+2],0
    ;PRINT_STRING string
    ;xor eax, eax
    ;leave
    //ret